# plugins --- {{{
	
source ~/dot/zsh/config/miniplug.zsh

miniplug plugin 'mafredri/zsh-async'
miniplug plugin 'zsh-users/zsh-autosuggestions'
miniplug plugin 'zsh-users/zsh-syntax-highlighting'
miniplug plugin 'zsh-users/zsh-history-substring-search'

# ZSH_AUTOSUGGEST
ZSH_AUTOSUGGEST_USE_ASYNC=1

# Source plugins
miniplug load
# --- }}}