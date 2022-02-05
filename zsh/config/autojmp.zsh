# autojmp
# https://github.com/thautwarm/autojmp
export AUTOJMP_MAX_CACHE=999
export AUTOJMP_WORD_ANA_LEN=3 # 3-gram is precise enough!

autoload -U add-zsh-hook

add-zsh-hook -Uz chpwd (){
  emulate -L zsh
  ajmp update "$pwd"
}

j(){
  cd "$(ajmp complete $@)"
} 
