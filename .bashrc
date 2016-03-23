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
