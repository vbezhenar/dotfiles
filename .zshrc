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
fpath+=~/.zshfunctions
autoload -U compinit
compinit

# path
path+=~/apps/apache-maven-3/bin
export GOPATH=~/.go
path+=$GOPATH/bin
path+=~/.cargo/bin

# aliases and simple functions
alias ls="ls -G"
alias ll="ls -hl"
function mkcd() {
    mkdir -p "$1" && cd "$1"
}
function mkcdtmp() {
    mkcd ~/tmp/$(date "+%y%m%d")
}
alias cp="cp -i -c"
alias mv="mv -i"

function pwgen() {
    local len="${1:-1}"
    for ((i = 0; i < 10;)) {
        head --bytes="$((len * 6))" /dev/urandom | base64 | tr "/+" "_-" | grep "[a-z]" | grep "[A-Z]" | grep "[0-9]" | grep "[_-]" && ((i++))
    }
}

function pwgena() {
    local len="${1:-2}"
    for ((i = 0; i < 10; i++))
        head --bytes="$((len * 6))" /dev/urandom | base64 | tr -d "=/+0-9" | tr "A-Z" "a-z" | tr -d "ilo"
}

function setjavahome() {
    local jh=~/"apps/jdks/jdk-$1"
    if [ ! -e "$jh" ]
    then
        print >&2 "$jh does not exist"
    fi
    export JAVA_HOME="$jh"
}
