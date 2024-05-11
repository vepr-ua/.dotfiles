# Expose brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# PATH Vars
export DOT=$HOME/.dotfiles
export CONFIG=$HOME/.config
export ZSHRC=$DOT/.zshrc
export BREWFILE=$DOT/Brewfile
export BIN=$DOT/bin/scripts
export PATH="$BIN:$PATH"
export GOPATH=$HOME/go
