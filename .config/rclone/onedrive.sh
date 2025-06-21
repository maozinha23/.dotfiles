#!/bin/sh

MOUNT='-m'
UNMOUNT='-u'

# Monta o OneDrive (somente para leitura) no diretório ~/OneDrive
if [ "$1" = "${MOUNT}" ]; then
  [ ! -d "${HOME}/OneDrive" ] && mkdir --parents "${HOME}/OneDrive"

  rclone --vfs-cache-mode writes mount OneDrive: ~/OneDrive --read-only --daemon 
  echo 'OneDrive montado em ~/OneDrive'

# Desmonta o OneDrive e remove o diretório ~/OneDrive (se estiver vazio)
elif [ "$1" = "${UNMOUNT}" ]; then
  fusermount3 -u ~/OneDrive/

  [ -d "${HOME}/OneDrive" ] && rmdir "${HOME}/OneDrive"

  echo 'OneDrive desmontado'
else
  echo 'Comando inválido'
fi
