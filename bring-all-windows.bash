#!/bin/bash

Program=$@

wmctrl -l | while read Window; do
    if [[ "$Window" == *"$Program"* ]]; then
        echo "DEBUG: I bring $Window"
        code=`echo "$Window" | cut -f 1 -d " "`
        wmctrl -i -a $code
    fi
done
