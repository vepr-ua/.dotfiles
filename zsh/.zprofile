# Expose brew
eval "$(/opt/homebrew/bin/brew shellenv)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# PATH Vars
export DOT=$HOME/.dotfiles
export CONFIG=$HOME/.config
export ZSHRC=$DOT/.zshrc
export BREWFILE=$DOT/Brewfile
export BIN=$DOT/bin/scripts
export PATH="$BIN:$PATH"
export GOPATH=$HOME/go
