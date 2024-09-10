#!/bin/bash

DIRNAME="${0%/*}"

cd "$DIRNAME"

docker compose "$@"
