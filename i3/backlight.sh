#!/bin/bash

icon="display-brightness"
urgency="low"
expire_time=1

function take_action() {
    case "$1" in
        "+" )
            xbacklight -inc $2;;
        "-" )
            xbacklight -dec $2;;
    esac
}

function send_notification() {
    notify-send.sh --icon "$icon" \
        --hint int:value:$1 \
        --urgency $urgency \
        --expire-time $expire_time \
        --replace-file=/tmp/backlightnotification \
        Backlight
}

take_action $1 $2
send_notification $(xbacklight -get | grep -o "[0-9]*" | head -n1)
