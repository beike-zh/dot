source ~/.zplug/init.zsh


zplug "skywind3000/z.lua"
zplug "zsh-users/zsh-autosuggestions"
zplug "zdharma/fast-syntax-highlighting"

# Then, source plugins and add commands to $PATH
zplug load --verbose


ZSH_AUTOSUGGEST_USE_ASYNC=1
