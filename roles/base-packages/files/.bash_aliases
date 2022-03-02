alias reload='source ~/.bashrc'

alias ll='ls -lah'
alias l='ls -la'
alias ..='cd ..'
alias ...='cd ../..'
alias df='df -h'

function cd() {
	if [ -n "$1" ]; then
		builtin cd "$@" && ll
	else
		builtin cd ~ && ll
	fi
}
