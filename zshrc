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

export EDITOR="code --wait"
export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";

path=(~/apps/bin ~/.cargo/bin $path /opt/homebrew/bin /opt/homebrew/sbin)
manpath+=/opt/homebrew/share/man

fpath+=(~/.zshfunctions ~/.rustup/toolchains/stable-aarch64-apple-darwin/share/zsh/site-functions /opt/homebrew/share/zsh/site-functions)

autoload compinit
autoload k-set-ns
autoload mkcd
autoload mkcdtmp
autoload set-java-home
autoload unar

compinit

alias cpr='cp -Rc'
alias ls='ls -G'
alias ll='ls -AGhl'
alias k=kubectl
