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

PS1="$ "
