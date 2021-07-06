#!/bin/bash

date() {
    if hash apt 2>/dev/null; then
        sudo apt-get update"$@"
    else
        echo "Could not lol" "$@"
    fi
}