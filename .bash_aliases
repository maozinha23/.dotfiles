# Colored output
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ls='ls --color=auto'

# Edit configuration files
alias config-alacritty='$EDITOR ~/.config/alacritty/alacritty.toml'
alias config-conky='$EDITOR ~/.config/conky/conky-system.conf ~/.config/conky/conky-os.conf'
alias config-i3='$EDITOR ~/.config/i3/config'
alias config-lf='$EDITOR ~/.config/lf/lfrc ~/.config/lf/preview ~/.config/lf/colors ~/.config/lf/icons'
alias config-nvim='$EDITOR ~/.config/nvim/init.lua'
alias config-polybar='$EDITOR ~/.config/polybar/config.ini ~/.config/polybar/modules-internal.ini ~/.config/polybar/modules-custom.ini ~/.config/polybar/constants.ini'
alias config-rofi='$EDITOR ~/.config/rofi/config.rasi ~/.config/rofi/maozinha23-theme.rasi'
alias config-vim='$EDITOR ~/.config/vim/vimrc'

# Start SSH agent for github push
alias ssh-github='eval $(ssh-agent -s); ssh-add ~/.ssh/github'

# lf + ueberzugpp wrapper
alias lf='~/.config/lf/lfub'

# start libvirtd/smb services and virt-manager
alias virt-manager='~/.config/virt-manager/launch.sh'
