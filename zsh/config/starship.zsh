# starship --- {{{
export STARSHIP_CONFIG=~/dot/zsh/config/starship.toml
# if [ ! -f "`which starship`" ]; then
# 	echo "Installing starship ..."
# 	setpx
# 	sh -c "$(curl -fsSL https://starship.rs/install.sh)"
# fi
eval "$(starship init zsh)"

# --- }}}
