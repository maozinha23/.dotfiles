#!/bin/bash
################################################################################
# Installation guide (Português)
# https://wiki.archlinux.org/title/Installation_guide_(Portugu%C3%AAs)
################################################################################
wifi="s"

# Verifica a conectividade com a internet tentando pingar um servidor confiável
is_connected() {
  local host="8.8.8.8"  # IP do DNS público do Google, evita falhas por DNS
  local count=2         # Número de tentativas de ping
  local timeout=5       # Tempo limite por tentativa em segundos

  if ping -c "${count}" -W "${timeout}" "${host}" &> /dev/null; then
    echo "Conectado à internet"
    return 0
  else
    echo "Não está conectado à internet"
    return 1
  fi
}
################################################################################
# 1 - Pré-instalação
################################################################################
#1.1 - Obter uma imagem de instalação
#
#1.2 - Verificar a assinatura
#
#1.3 - Preparar uma mídia de instalação
#
#1.4 - Inicializar o ambiente live
#

# 1.5 - Definir o layout e fonte do teclado do console
loadkeys br-abnt2
setfont ter-120n

# 1.6 - Definir o idioma do ambiente live
#

# 1.7 - Verificar o modo de inicialização
#cat /sys/firmware/efi/fw_platform_size

# 1.8 - Conectar à internet
# Verifica se foi possível conectar à internet e inicializa a variável
# connected "true" | "false" com base no status da conexão
echo "Verificando a conexão com a internet ..."
is_connected && connected="true" || connected="false"

# Se não foi possível conectar por uma interface ethernet, tenta através de uma
# interface wireless
while [[ "${wifi}" == "s" && "${connected}" == "false" ]]; do
  read -p "Deseja conectar-se a uma rede sem fio? s para confirmar: " wifi

  if [[ "${wifi}" == "s" ]]; then
    echo "Lista de interfaces:"
    iwctl device list | awk '/wl/ { print $2 }'

    read -p "Qual interface deseja usar? " interface
    echo "Tentando ligar a interface ${interface} ..."

    if iwctl device "${interface}" set-property Powered on ; then
      echo "Interface ${interface} ligada com sucesso"
    else
      echo "Não foi possível ligar a interface ${interface}"
      break
    fi

    echo "Lista de redes sem fio disponíveis:"
    iwctl station "${interface}" scan
    iwctl station "${interface}" get-networks

    read -p "A qual rede sem fio deseja conectar-se? " ssid
    read -s -p "Digite a senha: " passphrase

    echo "Tentando conectar-se a rede ${ssid} ..."
    iwctl --passphrase "${passphrase}" station "${interface}" connect "${ssid}"
    is_connected && connected="true" || connected="false"
  fi
done

# Finaliza o script se não foi possível conectar à internet
if [[ "${connected}" == "false" ]]; then
  echo "Não é possível continuar a instalação sem uma conexão com a internet"
  echo "O script de instalação será encerrado"
  exit 1
fi

# 1.9 - Atualizar o relógio do sistema
timedatectl set-timezone America/Sao_Paulo

# 1.10 - Partição dos discos
# GUID para GPT:
# EFI              C12A7328-F81F-11D2-BA4B-00A0C93EC93B
# Linux Filesystem 0FC63DAF-8483-4772-8E79-3D69D8477DE4
# Linux Swap       0657FD6D-A4AB-43C4-84E5-0933C84B4F4F
#sda1	EFI System
#sda2	Linux filesystem
echo "O script utilizará o seguinte esquema de partições:"
echo "label: gpt"
echo "sda1: EFI System       tamanho: escolhido"
echo "sda2: Linux filesystem tamanho: resto do disco"
read -p "Tamanho da partição EFI (valor em MiB): " efi_size

cat << EOF | sfdisk /dev/sda
label: gpt
device: /dev/sda
unit: sectors
first-lba: 2048
sector-size: 512

/dev/sda1 : start= , size=${efi_size}M, type=C12A7328-F81F-11D2-BA4B-00A0C93EC93B
/dev/sda2 : start= , size= , type=0FC63DAF-8483-4772-8E79-3D69D8477DE4
EOF

# 1.11 - Formatar as partições
# -F: FAT SIZE
mkfs.fat -F 32 /dev/sda1
mkfs.ext4 /dev/sda2
#mkswap /dev/partição_swap

# 1.12 - Montar os sistemas de arquivos
mount /dev/sda2 /mnt
mount --mkdir /dev/sda1 /mnt/efi
#swapon /dev/partição_swap
################################################################################
# 2 - Instalação
################################################################################
# 2.1 - Selecionar os espelhos
# /etc/pacman.d/mirrorlist

# 2.2 - Instalar os pacotes essenciais
# Verifica se o sistema possui um CPU AMD ou Intel para instalar o microcode
if [[ $(lscpu | grep --ignore-case --count 'amd') -gt 0 ]]; then
  cpu_microcode=amd-ucode
else
  cpu_microcode=intel-ucode
fi

pacstrap -K /mnt base base-devel linux linux-firmware "${cpu_microcode}" \
  dosfstools ntfs-3g e2fsprogs grub efibootmgr bash-completion networkmanager \
  man-db man-pages
################################################################################
# 3 - Configurar o sistema
################################################################################
# 3.1 - Fstab
genfstab -U /mnt >> /mnt/etc/fstab

# 3.2 - Chroot
arch-chroot /mnt /bin/bash -c '

# 3.3 - Time
ln --symbolic --force /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
hwclock --systohc

# 3.4 - Localização
# Remove o comentário de pt_BR.UTF-8 UTF-8 e gera os locales
sed --in-place "s/#pt_BR.UTF-8/pt_BR.UTF-8/" /etc/locale.gen
locale-gen

# Cria o arquivo locale.conf e define a variável LANG adequadamente
echo "LANG=pt_BR.UTF-8" > /etc/locale.conf

# Armazena as definições do layout do teclado do console em vconsole.conf(5)
echo "KEYMAP=br-abnt2" > /etc/vconsole.conf

# 3.5 - Configuração de rede
# Cria o arquivo hostname:
read -p "Digite seu hostname: " HOSTNAME
echo "${HOSTNAME}" > /etc/hostname

# /etc/hosts
cat << EOF > /etc/hosts
# The following lines are desirable for IPv4 capable hosts
127.0.0.1 localhost
127.0.1.1 ${HOSTNAME}.example.org ${HOSTNAME}

# The following lines are desirable for IPv6 capable hosts
::1 localhost ip6-localhost ip6-loopback
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters
EOF

# Ativa o serviço do NetworkManager na inicialização do sistema
systemctl enable NetworkManager

# 3.6 - Initramfs
#

# 3.7 - Senha do root
read -p "Digite seu nome de usuário: " user
useradd --create-home --groups wheel "${user}"
passwd "${user}"

# Permite que usuários do grupo wheel executem qualquer comando
#visudo
sed --in-place "s/# %wheel ALL=(ALL:ALL) ALL/%wheel ALL=(ALL:ALL) ALL/" /etc/sudoers

# Desabilita o login do usuário root
passwd --lock root

# 3.8 - Gerenciador de boot
grub-install --target=x86_64-efi --efi-directory=/efi --bootloader-id=GRUB
grub-mkconfig --output=/boot/grub/grub.cfg
################################################################################
# 4 - Reiniciar
################################################################################
exit
'
umount -R /mnt
reboot
