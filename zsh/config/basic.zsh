
# config --- {{{

# https://medium.com/@dannysmith/little-thing-2-speeding-up-zsh-f1860390f92
autoload -Uz compinit
for dump in ~/.zcompdump(N.mh+24); do
  compinit
done
compinit -C
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# History config
HISTFILE=~/.zsh_history

HISTSIZE=10000
SAVEHIST=10000

setopt append_history
setopt share_history
setopt long_list_jobs
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_find_no_dups
setopt hist_reduce_blanks
setopt hist_verify
setopt hist_no_store
setopt interactivecomments

# disable beep
unsetopt BEEP

# export TERM=xterm-256color
# }}}