# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/vishal/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#
# Alias
alias firefox='flatpak run org.mozilla.firefox'
alias ls='ls --color=auto'
alias l='ls -la'
alias lzg='lazygit'
alias lzd='lazydocker'
alias open='xdg-open'
alias fzd='cd ~ && cd $(find * -type d | fzf)'

# Imports
export PATH=/home/$USER/.local/bin:$PATH
export PATH=/home/$USER/Bin:$PATH

# fnm
export PATH="/home/work/.local/share/fnm:$PATH"
eval "`fnm env`"

# starship prompt
eval "$(starship init zsh)"


#Plugins
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

