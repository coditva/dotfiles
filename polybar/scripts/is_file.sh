#!/bin/sh

if [[ "$1" != "" && -f "$1" ]]; then
    echo "$1"
else
    exit
fi
