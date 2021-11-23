source "$HOME/.local/share/miniplug.zsh"

# Define a plugin
miniplug plugin 'zsh-users/zsh-syntax-highlighting'
miniplug plugin 'zsh-users/zsh-autosuggestions'
miniplug plugin 'skywind3000/z.lua'

# Define a theme
# miniplug theme 'dracula/zsh'

# Source plugins
miniplug load
