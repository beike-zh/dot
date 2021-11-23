# basic

# Set up the prompt

autoload -Uz promptinit
promptinit
prompt suse

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

# disable beep
unsetopt BEEP

export TERM=xterm-256color




# alias
alias mk=mkdir
alias cls=clear
alias vim=nvim
alias ls='ls --color=auto'
alias la='ls -a --color=auto'
alias sup='sudo apt update'
alias sug='sudo apt upgrade'
alias oup='opam update'
alias oug='opam upgrade'
alias fdsize='du -h --max-depth=1'

# path
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.dotnet/tools:$PATH"
export PATH="$HOME/.idris2/bin:$PATH"
export PATH="$HOME/.elan/bin:$PATH"
export PATH="$HOME/app/mlton/bin:$PATH"

# Agda
export Agda_datadir="$HOME/app/Agda-nightly/data"
export PATH="$HOME/app/Agda-nightly/bin:${PATH}"


# source .zsh
# zplug
# source ~/dotfiles/init/zsh/zplug.zsh
# source ~/dotfiles/init/zsh/zinit.zsh
source ~/dotfiles/init/zsh/zmini.zsh

