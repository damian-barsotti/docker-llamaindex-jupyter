#!/bin/bash

DIRNAME="${0%/*}"

"$DIRNAME"/docker-compose.sh logs -f
