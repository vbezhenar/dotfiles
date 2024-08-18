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

path=(~/apps/bin ~/.cargo/bin $path)
fpath+=(~/.zshfunctions)

autoload compinit
autoload k-set-ns
autoload mkcd
autoload mkcdtmp
autoload set-java-home
autoload unar

compinit

alias k=kubectl
alias ls='ls --color=always'
alias ll='ls -Ahl --color=always'

if [[ $OSTYPE = darwin* ]]; then
  path+=(/opt/homebrew/bin)
  path+=(/opt/homebrew/sbin)
  manpath+=/opt/homebrew/share/man
  fpath+=(~/.rustup/toolchains/stable-aarch64-apple-darwin/share/zsh/site-functions)
  fpath+=(/opt/homebrew/share/zsh/site-functions)

  export HOMEBREW_PREFIX=/opt/homebrew
  export HOMEBREW_CELLAR=/opt/homebrew/Cellar
  export HOMEBREW_REPOSITORY=/opt/homebrew
elif [[ $OSTYPE = linux* ]]; then
  bindkey "^[[2~" overwrite-mode # Insert
  bindkey "^[[3~" delete-char-or-list # Delete
  bindkey "^[[H" beginning-of-line # Home
  bindkey "^[[F" end-of-line # End
  bindkey "^[[1;5C" forward-word # Ctrl+Right
  bindkey "^[[1;5D" backward-word # Ctrl+Right
fi
