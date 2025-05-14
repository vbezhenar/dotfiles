HISTFILE=~/.zsh_history
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

bindkey "^[[2~" overwrite-mode # Insert
bindkey "^[[3~" delete-char-or-list # Delete
bindkey "^[[H" beginning-of-line # Home
bindkey "^[[F" end-of-line # End
bindkey "^[[1;5C" forward-word # Ctrl+Right
bindkey "^[[1;5D" backward-word # Ctrl+Left

PS1=$'\n'"%(?..%F{red}%?%f )%# "
RPS1="%40<...<%~"

function precmd() {
  print -n "\e]0;${PWD/#$HOME/~}\a"
  print -n '\e]7;file://'
  /usr/lib/vte-urlencode-cwd
  print -n '\e\\'
}

function preexec() {
  print -n "\e]0;${1}\a"
}

setopt auto_cd
setopt extended_glob
setopt multios

path=(~/apps/bin $path)
fpath=(~/.zshfunctions $fpath)

autoload compinit

compinit

alias ls='ls --color=auto'
alias ll='ls -Ahl --color=auto'
alias rmt='gio trash'
