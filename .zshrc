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

# paths
path=(/opt/bin $path /opt/arm-gnu-toolchain-12.3.rel1-darwin-arm64-arm-none-eabi/bin)
export JAVA_HOME=/opt/java/jdk-21

# misc
setopt auto_cd
setopt extended_glob
setopt multios
export LANG=en_GB.UTF-8
export BUILDKIT_PROGRESS=plain

# completion
fpath+=(~/.zshfunctions)
autoload compinit
compinit

# aliases and simple functions
alias ls="ls -G"
alias ll="ls -Ahl"
autoload k-set-ns
autoload mkcd
autoload mkcdtmp
autoload set-java-home
alias cp="cp -i"
alias mv="mv -i"
alias k=kubectl
