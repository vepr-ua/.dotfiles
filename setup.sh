#!/usr/bin/env bash

trap "exit" INT

# https://gist.github.com/vratiu/9780109
Color_Off="\033[0m"       # Text Reset
Black="\033[0;30m"        # Black
Red="\033[0;31m"          # Red
Green="\033[0;32m"        # Green
Yellow="\033[0;33m"       # Yellow
Blue="\033[0;34m"         # Blue
Purple="\033[0;35m"       # Purple
Cyan="\033[0;36m"         # Cyan
White="\033[0;37m"        # White

function symlink() {
    ln -sf $1 $2
}

function log_start() {
    echo -e "${Blue}$1${Color_Off}"
}

function log_end() {
    echo -e "${Green}$1${Color_Off}"
}

function eval_brew() {
    eval "$(/opt/homebrew/bin/brew shellenv)"
    eval "$(fnm env --use-on-cd)"
}

DOT=$HOME/.dotfiles
CONFIG=$HOME/.config
LOCAL=$HOME/.local
TMUX=$CONFIG/tmux

mkdir -p $CONFIG
mkdir -p $TMUX

log_start "🔗 Symlinking dotfiles..."
symlink $DOT/zsh/.zshrc $HOME/.zshrc
symlink $DOT/zsh/.zprofile $HOME/.zprofile
symlink $DOT/tmux/tmux.conf $TMUX/tmux.conf
symlink $DOT/tmux/tmux.conf.local $TMUX/tmux.conf.local
symlink $DOT/.gitconfig $HOME/.gitconfig
symlink $DOT/cspell.json $HOME/cspell.json
if ! test -e $LOCAL/bin/scripts; then
    symlink $DOT/bin/scripts $LOCAL/bin
fi
log_end "Symlinks created"

log_start "💎 Installing from Brewfile..."
brew bundle --file $DOT/Brewfile
log_end "Formulae and casks installed"
echo

log_start "🦀 Installing Rust..."
if ! command -v rustc &> /dev/null; then
    rustup-init -y
    log_end "Rust installed"
else
    rustc -V
    log_end "Rust detected"
fi
echo

log_start "🐢 Installing node and package managers..."
if ! command -v node &> /dev/null; then
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
    log_end "NodeJS installed"
else
    node -v
    log_end "NodeJS detected"
fi
echo

log_start "🧙 Configuring neovim..."
if ! test -e $CONFIG/nvim; then
    symlink $DOT/nvim $CONFIG
    log_end "nvim config setup"
else
    log_end "nvim config detected"
fi

log_start "🚚 Installing tmux package manager..."
if ! test -e $CONFIG/tmux/plugins; then
    git clone https://github.com/tmux-plugins/tpm $CONFIG/tmux/plugins/tpm
    log_end "tpm installed"
else
   log_end "tpm installation detected"
fi

log_end "🎉 Done!"
