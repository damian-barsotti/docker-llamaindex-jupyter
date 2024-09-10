#!/bin/bash

DIRNAME="${0%/*}"

NCONTAINERS=$("$DIRNAME"/docker-compose.sh ps -aq | wc -l)

if [ $NCONTAINERS == 2 ]
then
    "$DIRNAME"/docker-compose.sh start "$@"
else
    "$DIRNAME"/docker-compose.sh up -d

    echo Creating container ...
fi
