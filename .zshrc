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
path=(
  /opt/node/node-v20/bin
  /opt/bin
  $path
  /opt/arm-gnu-toolchain-13.2.rel1-darwin-arm64-arm-none-eabi/bin
)
export JAVA_HOME=/opt/java/jdk-17

# misc
setopt auto_cd
setopt extended_glob
setopt multios
export BUILDKIT_PROGRESS=plain

# completion
fpath+=(~/.zshfunctions)
autoload compinit
compinit

# aliases and simple functions
alias ls="ls -G"
alias ll="ls -Ahl"
autoload _set-java-home
autoload _set-node-home
autoload k-set-ns
autoload mkcd
autoload mkcdtmp
autoload set-java-home
autoload set-node-home
compctl -K _set-java-home set-java-home
compctl -K _set-node-home set-node-home
alias cp="cp -i"
alias mv="mv -i"
alias k=kubectl
