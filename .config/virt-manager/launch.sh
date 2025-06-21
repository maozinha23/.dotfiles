#!/bin/sh

# Inicia serviço se ainda não estiver ativo
start_service() {
  service="$1"

  if systemctl is-active --quiet "${service}"; then
    echo "Serviço '${service}' já está ativo."
  else
    echo "Iniciando serviço '${service}' ..."
    sudo systemctl start "${service}"

    if systemctl is-active --quiet "${service}"; then
        echo "Serviço '${service}' iniciado com sucesso."
    else
        echo "Falha ao iniciar o serviço '${service}'."
        exit 1
    fi
  fi
}

echo 'Verificando serviços necessários ...'

start_service libvirtd
start_service smb

echo 'Abrindo virt-manager ...'
command virt-manager &
