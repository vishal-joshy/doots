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
alias firefox="flatpak run org.mozilla.firefox"

# starship prompt
eval "$(starship init zsh)"
