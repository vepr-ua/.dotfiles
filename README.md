# Maks' Dotfiles

A comprehensive development environment configuration featuring Neovim, tmux, zsh, and essential development tools.

## Features

- **Neovim**: NvChad-based configuration with lazy.vim plugin manager
- **Tmux**: Custom terminal multiplexer configuration  
- **Zsh**: Shell configuration with custom settings
- **Git**: Pre-configured with identity management for different projects
- **Development Tools**: Curated selection of CLI tools via Homebrew
- **Language Support**: Rust, Go, Node.js, and various LSPs

## Quick Installation

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/vepr-ua/.dotfiles/HEAD/install.sh)"
```

## Manual Installation

1. Clone the repository:
```bash
git clone https://github.com/vepr-ua/.dotfiles.git ~/.dotfiles
```

2. Run the setup script:
```bash
cd ~/.dotfiles
./setup.sh
```

## What's Included

### Development Tools (via Homebrew)
- `neovim` - Modern vim-based editor
- `tmux` - Terminal multiplexer
- `fzf` - Fuzzy finder
- `ripgrep` - Fast text search
- `bat` - Better cat with syntax highlighting
- `btop` - Resource monitor
- `git-delta` - Better git diffs
- `jq` - JSON processor
- `httpie` - Modern HTTP client

### Programming Languages
- **Rust** - Installed via rustup
- **Go** - Installed via Homebrew
- **Node.js** - Managed via nvm
- **Lua** - For Neovim configuration

### Configuration Files
- `.gitconfig` - Git configuration with identity management
- `.zshrc` & `.zprofile` - Zsh shell configuration
- `tmux.conf` - Tmux configuration
- `nvim/` - Complete Neovim setup with LSP support for Vue, GraphQL, SQL, and more
- `cspell.json` - Spell checking configuration

### Utilities
- `bin/` - Custom scripts including PGP manager and Homebrew updater
- `scripts/` - Setup utilities and helper functions
- `iterm_themes/` - iTerm2 color schemes
- `fonts/` - Development fonts
- `dict/` - Custom dictionaries

## Directory Structure

```
~/.dotfiles/
├── bin/              # Custom scripts
├── dict/             # Spell check dictionaries
├── fonts/            # Programming fonts
├── iterm_themes/     # iTerm2 themes
├── nvim/             # Neovim configuration
├── scripts/          # Setup scripts
├── tmux/             # Tmux configuration
├── zsh/              # Zsh configuration
├── .gitconfig        # Git configuration
├── Brewfile          # Homebrew dependencies
├── cspell.json       # Spell checker config
├── install.sh        # Remote installation script
└── setup.sh          # Local setup script
```

## Post-Installation

After installation, the setup script will:
1. Create symbolic links for all configuration files
2. Install Homebrew packages from Brewfile
3. Set up Rust toolchain
4. Configure Node.js with nvm
5. Link Neovim configuration
6. Install tmux plugin manager (tpm)

### Manual Steps
- Restart your terminal or source your shell configuration
- In tmux, press `prefix + I` to install tmux plugins
- Open Neovim to automatically install plugins

## Updating

To update all tools and configurations:
```bash
cd ~/.dotfiles
git pull
./setup.sh
```

## License

This dotfiles repository is available for personal use. Feel free to fork and customize for your own needs.
