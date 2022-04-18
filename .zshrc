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
fpath+=(/opt/local/share/zsh/site-functions ~/.zshfunctions)
autoload -U compinit
compinit

# path
path+=/opt/bin
export GOPATH=~/.go
path+=$GOPATH/bin
path+=~/.cargo/bin

# aliases and simple functions
alias ls="ls -G"
alias ll="ls -Ahl"
autoload mkcd
autoload mkcdtmp
alias cp="cp -i -c"
alias mv="mv -i"
autoload pwgen
autoload pwgena
autoload setjavahome
