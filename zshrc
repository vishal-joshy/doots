# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# HISTORY
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

setopt autocd
bindkey -e

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zmodload zsh/complist
autoload -Uz compinit
compinit

zstyle :compinstall filename '${HOME}/.zshrc'
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' menu select

# End of lines added by compinstall


# ALIAS
alias ..='cd ..'
alias ...='cd ../..'
alias l='eza -laF --icons'
alias ls='eza -F --icons'
alias open='xdg-open'
alias lzg='lazygit'


# PATH
export PATH=$PATH:/usr/local/go/bin


# FUNCTIONS
function cd(){
  builtin cd "$@" && ls
}

function fo(){
  if [[ -z "$1" ]]; then
    open "$(fd | fzf)"
  else
    $1 "$(fd | fzf)"
  fi
}

function fcd(){
  cd "$(fd -t directory | fzf \
    --preview='echo "File(s) with index(es) {+n} and query {q} \n" && ls -l {-1}' \
    --preview-label='[ Directory Stats ]')"
}



# EXTENSIONS
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.local/share/powerlevel10k/powerlevel10k.zsh-theme

eval $(thefuck --alias ff)

# fnm
export PATH="/home/vishal/.local/share/fnm:$PATH"
eval "`fnm env`"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

