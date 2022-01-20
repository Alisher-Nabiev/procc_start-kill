#!/bin/bash
a=$1

if [ -z "$1"]; then
    echo "please provide process ID"

else
    PID=$a

fi

if [ "$2" == "kill" ]; then
    echo "killing process"
kill -9 ${PID}

elif [ "$2" == "start" ]; then
    echo "starting process from BG"
fg ${PID}

elif [ "$2" == "stop" ]; then
echo "puting process to BG"

kill -19 ${PID}

else
    echo "please provide process ACTION"

fi

echo "job done!"
