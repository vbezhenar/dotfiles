# history
setopt extended_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_no_store
setopt hist_no_functions
setopt hist_reduce_blanks
setopt inc_append_history

# prompt
PS1="%# "
RPS1="%40<...<%~"

# misc
setopt auto_cd
setopt extended_glob
setopt multios

# completion
autoload -U compinit
compinit

# path
path+=~/apps/apache-maven-3/bin
export GOPATH=~/.go
path+=$GOPATH/bin

# aliases and simple functions
alias ls="ls -G"
alias ll="ls -hl"
mkcd() {
	mkdir -p "$1" && cd "$1"
}
mkcdtmp() {
	mkcd ~/tmp/$(date "+%y%m%d")
}
