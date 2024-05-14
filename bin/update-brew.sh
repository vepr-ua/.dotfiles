#!/bin/bash

set -e

# Import utils
source "$DOT/scripts/utils.sh"

BREWFILE_LOCATION=$DOT/Brewfile

log_start "🫖 Checking for homebrew installation..."
if ! command -v brew &> /dev/null; then
    echo -e "Homebrew not installed"
    return 1	
fi

log_end "Installing packages from $BREWFILE_LOCATION"
brew bundle --file=$BREWFILE_LOCATION
	  
