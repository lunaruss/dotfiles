# Load oh-my-zsh plugins
source $HOME/.oh-my-zsh/plugins/sudo/sudo.plugin.zsh

# General Aliases
alias _='sudo'
alias src='. $HOME/.zshrc'

# ZSH Config File Aliases
alias ezc='lvim $HOME/.zshrc'
alias eza='lvim $HOME/.config/zsh/aliases/aliases.zsh'
alias eze='lvim $HOME/.config/zsh/exports/exports.zsh'

# Systemd Aliases
alias sc-status='sudo systemctl status'
alias sc-start='sudo systemctl start'
alias sc-stop='sudo systemctl stop'
alias sc-restart='sudo systemctl restart'
alias sc-enable='sudo systemctl enable'
alias sc-disable='sudo systemctl disable'

# Colorize Shell
alias ls='exa -la --icons --color=auto --octal-permissions --no-permissions --no-user --no-time'
alias cat='bat'
alias ip='ip -color=auto'
alias grep='egrep --color=auto'
alias diff='diff --color=auto'
alias make='colormake CFLAGS="-march=native -mtune=native -O2 -pipe -falign-functions=32" -j9 -l9'

# Human Readable Disk Space
alias df='df -h'
alias free='free -m'

# Pacman Aliases
alias pacin='sudo pacman -S'
alias pacupg='sudo pacman -Syyu'

# Yay Aliases
alias yain='yay -S'
alias yaupg='yay -Syyu'

# Reflector Aliases
alias mirror='sudo pacman-mirrors -f 30'
