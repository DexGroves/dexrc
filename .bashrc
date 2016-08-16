if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

function mkcd(){
  mkdir $1;
  cd $1;
}

function cc(){
  cd $1;
  ls;
}

GREEN="$(tput setaf 2)"
RESET="$(tput sgr0)"
PS1='\[\033[01;34m\]\w\[\033[00m\]${GREEN} \$ ${RESET}'

alias tmux="TERM=screen-256color-bce tmux"


man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
            man "$@"
}
