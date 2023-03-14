# history
SAVEHIST=100000
HISTSIZE=100000
setopt extended_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_no_store
setopt hist_no_functions
setopt hist_reduce_blanks
setopt inc_append_history
setopt transient_rprompt

# prompt
PS1="%(?..%F{red}%?%f )%# "
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
path=($path /opt/local/bin /opt/local/sbin)

# aliases and simple functions
alias ls="ls -G"
alias ll="ls -Ahl"
autoload ij
autoload mkcd
autoload mkcdtmp
alias cp="cp -i"
alias mv="mv -i"
autoload pwgen
autoload pwgena
autoload setjavahome

compile1() {
  if [[ ! "$1" -nt "$1.zwc" ]]
  then
    zcompile "$1"
  fi
}

compile2() {
  if [[ ! "$1" -nt "$2" ]]
  then
    local f="$1"
    shift
    "$@" > "$f"
    zcompile "$f"
  fi
}
compile1 ~/.zshrc
#compile2 ~/.zshfunctions/_kubectl /opt/local/bin/kubectl completion zsh
compile1 ~/.zshfunctions/mkcd
compile1 ~/.zshfunctions/mkcdtmp

unset compile1 compile2