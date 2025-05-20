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
# 5 - Pós-instalação
################################################################################
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

# Atualiza o sistema
sudo pacman --sync --refresh --sysupgrade --noconfirm

# Aplicações para terminal
# 7zip : File archiver for extremely high compression
# apache : A high performance Unix-based HTTP server
# bridge-utils : Utilities for configuring the Linux ethernet bridge
# brightnessctl : Lightweight brightness control tool
# btop: A monitor of system resources, bpytop ported to C++
# clojure : Lisp dialect for the JVM
# dnsmasq : Lightweight, easy to configure DNS forwarder and DHCP server
# docx2txt : Recovers text from DOCX files, with good formatting
# ffmpegthumbnailer : Lightweight video thumbnailer that can be used by file managers
# fuse3 : Interface for userspace programs to export a filesystem to the Linux kernel
# fzf : Command-line fuzzy finder
# gdb : The GNU Debugger
# git : the fast distributed version control system
# jdk-openjdk : OpenJDK Java 24 development kit
# lf : A terminal file manager inspired by ranger
# leiningen : Automate Clojure projects
# libqalculate : Multi-purpose desktop calculator
# lsof : Lists open files for running Unix processes
# ly : TUI display manager
# mariadb : Fast SQL database server, derived from MySQL
# neovim : Fork of Vim aiming to improve user experience, plugins, and GUIs
# openssh : SSH protocol implementation for remote login, command execution and file transfer
# perl-image-exiftool : Reader and rewriter of EXIF information that supports raw files
# php : A general-purpose scripting language that is especially suited to web development
# php-apache : Apache SAPI for PHP
# phpmyadmin : PHP web-based tool to administrate MySQL and MariaDB databases over the web
# pipewire-jack : Low-latency audio/video router and processor - JACK replacement
# pipewire-pulse : Low-latency audio/video router and processor - PulseAudio replacement
# qemu-desktop : A QEMU setup for desktop environments
# rclone : Sync files to and from Google Drive, S3, Swift, Cloudfiles, Dropbox and Google Cloud Storage
# rlwrap : Adds readline-style editing and history to programs
# rust : Systems programming language focused on safety, speed and concurrency
# samba : SMB Fileserver and AD Domain server
# stow : Manage installation of multiple softwares in the same directory tree
# transmission-cli : Fast, easy, and free BitTorrent client (CLI tools, daemon and web client)
# trash-cli : Command line trashcan (recycle bin) interface
# ueberzugpp : Command line utility which allows to display images in the terminal, written in C++
# unarchiver : unar and lsar: Objective-C tools for uncompressing archive files
# usbutils : A collection of USB tools to query connected USB devices
# virt-manager : Desktop user interface for managing virtual machines
# xdg-user-dirs : Manage user directories like ~/Desktop and ~/Music
package_list="7zip apache bridge-utils brightnessctl btop dnsmasq docx2txt clojure ffmpegthumbnailer fuse3 fzf gdb git jdk-openjdk lf leiningen libqalculate lsof ly mariadb neovim openssh perl-image-exiftool php php-apache phpmyadmin pipewire-jack pipewire-pulse qemu-desktop rclone rlwrap rust samba stow transmission-cli trash-cli ueberzugpp unarchiver usbutils virt-manager xdg-user-dirs"

# Window Manager e aplicações relacionadas
# dex : Program to generate and execute DesktopEntry files of type Application
# i3-wm : Improved dynamic tiling window manager
# perl-anyevent-i3 : Communicate with the i3 window manager
# perl-json-xs : JSON::XS - JSON serialising/deserialising, done correctly and fast
# polybar : A fast and easy-to-use status bar
# rofi : A window switcher, application launcher and dmenu replacement
# xclip : Command line interface to the X11 clipboard
# xorg-server : xorg-server-common, xorg-server-devel, xorg-server-xephyr, xorg-server-xnest, xorg-server-xvfb
# xorg-xev : Print contents of X events
# xorg-xinit : X.Org initialisation program
# xss-lock : Use external locker as X screen saver
package_list="${package_list} dex i3-wm perl-anyevent-i3 perl-json-xs polybar rofi xclip xorg-server xorg-xev xorg-xinit xss-lock"

# Aplicações para interface gráfica: Sistema
# alacritty : A cross-platform, GPU-accelerated terminal emulator
# arandr : Provide a simple visual front end for XRandR 1.2
# blueman : GTK+ Bluetooth Manager
# conky : Light-weight system monitor for X, Wayland, and other things, too
# pavucontrol : PulseAudio Volume Control
# udiskie : Removable disk automounter using udisks
package_list="${package_list} alacritty arandr blueman conky pavucontrol udiskie"

# Aplicações para interface gráfica: Acessórios
# neovide : No Nonsense Neovim Client in Rust
# scrot : Simple command-line screenshot utility for X
# xarchiver : GTK+ frontend to various command line archivers
package_list="${package_list} neovide scrot xarchiver"

# Aplicações para interface gráfica: Internet
# firefox : Fast, Private & Safe Web Browser
# firefox-i18n : Portuguese (Brazilian) language pack for Firefox
# transmission-gtk : Fast, easy, and free BitTorrent client (GTK+ GUI)
package_list="${package_list} firefox firefox-i18 ntransmission-gtk"

# Aplicações para interface gráfica: Imagem
# feh : Fast and light imlib2-based image viewer
package_list="${package_list} feh"

# Aplicações para interface gráfica: Multimídia
# mpv : a free, open source, and cross-platform media player
# obs-studio : Free, open source software for live streaming and recording
package_list="${package_list} mpv" #obs-studio"

# Aplicações para interface gráfica: Escritório
# libreoffice-fresh : LibreOffice branch which contains new features and program enhancements
# libreoffice-fresh-pt-br : Portuguese (Brasil) language pack for LibreOffice Fresh
package_list="${package_list} libreoffice-fresh libreoffice-fresh-pt-br"

# Temas, ícones e fontes
# gnome-themes-extra : Extra Themes for GNOME Applications
# gnu-free-fonts : A free family of scalable outline fonts
# papirus-icon-theme : Papirus icon theme
# ttf-cousine-nerd : Patched font Cousine from nerd fonts library
# xcursor-vanilla-dmz : Vanilla DMZ cursor theme
package_list="${package_list} gnome-themes-extra gnu-free-fonts papirus-icon-theme ttf-cousine-nerd xcursor-vanilla-dmz"

# Instala a lista de pacotes
sudo pacman --sync --noconfirm ${package_list}

# Aplicações AUR
# paru : Feature packed AUR helper
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg --syncdeps --install
cd ..
rm -r paru

# Atualiza o sistema
paru

# i3lock-color : The world's most popular non-default computer lockscreen
# visual-studio-code-bin : Visual Studio Code (vscode): Editor for building and debugging modern web and cloud applications (official binary version)
package_list="i3lock-color" #visual-studio-code-bin"

# Instala a lista de pacotes da AUR
paru --sync --noconfirm ${package_list}

# Verificador ortográfico para Libreoffice
curl --remote-name "https://pt-br.libreoffice.org/assets/Uploads/PT-BR-Documents/VERO/VeroptBR3215AOC.oxt"
unopkg add VeroptBR3215AOC.oxt
rm VeroptBR3215AOC.oxt
################################################################################
# 6 - Personalização
################################################################################
# Remove o tempo de espera no GRUB
sudo sed --in-place --expression='s/GRUB_TIMEOUT=5/GRUB_TIMEOUT=0/' /etc/default/grub
sudo grub-mkconfig --output=/boot/grub/grub.cfg

# Remove o módulo da placa de rede onboard (está com defeito)
sudo bash -c 'echo "blacklist r8169" > /etc/modprobe.d/onboard-ethernet-blacklist.conf'
sudo mkinitcpio --preset linux

# Define as configurações do touchpad
cat << EOF > 00-touchpad.conf
Section "InputClass"
    Identifier "touchpad"
    Driver "libinput"
    MatchIsTouchpad "on"
    Option "Tapping" "on"
    Option "TappingButtonMap" "lrm"
EndSection
EOF

sudo mv 00-touchpad.conf /etc/X11/xorg.conf.d/00-touchpad.conf

# Define o layout e modelo do teclado
sudo localectl --no-convert set-x11-keymap br pc105

# Habilita indicação visual (*) ao digitar a senha com sudo
sudo sed --in-place '110a ## Enable visual feedback (asterisks) when typing sudo password.\nDefaults pwfeedback\n' /etc/sudoers

# Habilita saída de texto colorida para pacman
sudo sed --in-place 's/#Color/Color/' /etc/pacman.conf

# Clona o repositório do Github que contém arquivos de configuração
eval $(ssh-agent -s)
ssh-add ~/.ssh/github
cd
git clone git@github.com:maozinha23/.dotfiles.git

# Cria links simbólicos para os arquivos de configuração
rm .bashrc
cd .dotfiles
stow --no-folding .

# Cria os diretórios de usuário em $HOME
cd
mkdir Documents Downloads Media
xdg-user-dirs-update

# Inicializa o serviço do display manager Ly
sudo systemctl enable ly.service

# Cria um link simbólico para a configuração do samba
sudo ln --symbolic ~/.dotfiles/etc/samba/smb.conf /etc/samba/smb.conf

# Adiciona o usuário atual ao grupo libvirt
sudo usermod -aG libvirt $(whoami)

# Inicializa o banco de dados do mariadb e melhora a segurança
sudo mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
sudo mariadb-secure-installation

# Remove o script de instalação
rm -- "$0"
