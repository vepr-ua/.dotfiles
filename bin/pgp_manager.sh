#!/bin/bash


set -e

# Import utils
source "$DOT/scripts/utils.sh"
source "$DOT/scripts/pgp.sh"

COMMAND=$1
EMAIL=$2

function usage() {
    echo -e "Run this binary providing a command and an email that is linked to the pgp key.\n\t./bin/pgp_manager.sh <serial|export> <email>\n"
}

function check_arguments() {
    if [ -z "$EMAIL" ]; then
        echo -e "${Red}Email is required!${Color_Off}\n"
        usage
        exit 1
    fi

    if [ ! command -v gpg &> /dev/null ]; then
        echo -e "${Red}gpg binary is required!${Color_Off}\n"
        exit 1
    fi
}

case "$COMMAND" in
    "serial") 
        check_arguments
        get_serial $EMAIL
    ;;
    "export") 
        check_arguments
        export_key $EMAIL
    ;;
    "help"|*) 
        usage
    ;;
esac

