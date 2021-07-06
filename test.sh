#!/bin/bash

date() {
    if hash hyper 2>/dev/null; then
        sudo apt-get update"$@"
    else
        echo "Could not lol" "$@"
    fi
}