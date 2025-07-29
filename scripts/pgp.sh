#!/bin/bash


function get_serial() {
    local email=$1
    gpg --list-secret-keys --keyid-format LONG $email | awk '/sec/ {split($2, a, "/"); print a[2]}'
}

function export_key() {
    local email=$1
    gpg --armor --export $(get_serial $email)
}
