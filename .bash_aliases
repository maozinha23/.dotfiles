# Colored output
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ls='ls --color=auto'

# pacman -Syu
alias atualizar='sudo pacman --sync --refresh --sysupgrade'

# pacman -Qdtq | pacman -Rns -
alias remover='sudo pacman --query --deps --unrequired --quiet | sudo pacman --remove --nosave --recursive -'