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
PS1=$'\n'"%(?..%F{red}%?%f )%# "
RPS1="%40<...<%~"

setopt auto_cd
setopt extended_glob
setopt multios

path=(~/apps/bin ~/.docker/bin /opt/homebrew/bin /opt/homebrew/sbin $path)
fpath=(~/.zshfunctions /opt/homebrew/share/zsh/site-functions $fpath)

export HOMEBREW_PREFIX=/opt/homebrew
export HOMEBREW_CELLAR=/opt/homebrew/Cellar
export HOMEBREW_REPOSITORY=/opt/homebrew

autoload compinit
autoload mkcd
autoload mkcdtmp

compinit

alias code='open -b com.microsoft.VSCode'
alias ls='ls -G'
alias ll='ls -AGhl'
