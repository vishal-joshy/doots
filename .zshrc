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
alias ls='ls --color=auto'
alias l='ls -la'
alias lzg='lazygit'
alias lzd='lazydocker'
alias open='xdg-open'
alias fo='_fzf_open'
alias fcd='cd "$(_fzf_dir)"'

_fzf_dir(){
	fd -t directory | fzf \
		--preview='echo "File(s) with index(es) {+n} and query {q} \n" && ls -l {-1}' \
		--preview-label='[ Directory Stats]'
	}

_fzf_open(){
	if [[ -z "$1" ]]; then
		open "$(fd | fzf)"
	else
		$1 "$(fd | fzf)"
	fi
}


# starship prompt
eval "$(starship init zsh)"


#Plugins
# source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# fnm
export PATH="/home/vishal/.local/share/fnm:$PATH"
eval "`fnm env`"
