# Colored output
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ls='ls --color=auto'

# Edit configuration files
alias config-alacritty='vim ~/.config/alacritty/alacritty.toml'
alias config-conky='vim ~/.config/conky/conky-system.conf ~/.config/conky/conky-os.conf'
alias config-i3='vim ~/.config/i3/config'
alias config-lf='vim ~/.config/lf/lfrc ~/.config/lf/preview ~/.config/lf/colors ~/.config/lf/icons'
alias config-polybar='vim ~/.config/polybar/config.ini ~/.config/polybar/modules-internal.ini ~/.config/polybar/modules-custom.ini ~/.config/polybar/constants.ini'
alias config-rofi='vim ~/.config/rofi/config.rasi ~/.config/rofi/maozinha23-theme.rasi'
alias config-vim='vim ~/.vim/vimrc'

# Start SSH agent for github push
alias ssh-github='eval $(ssh-agent -s); ssh-add ~/.ssh/github'

# lf + ueberzugpp wrapper
alias lf='~/.config/lf/lfub'

# Links with enabled graphics
alias xlinks='xlinks -g'

# start services and virt-manager
 alias vm-start='~/.config/virt-manager/launch.sh'
