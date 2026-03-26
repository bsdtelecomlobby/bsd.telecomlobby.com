#!/bin/bash

function iterate() {
    local dir="$1"
    local counter="$2"

    for file in "$dir"/*; do
        if [ -d "$file" ]; then
            basename $file
            iterate "$file"
        fi
    done
}

iterate "${1}" 