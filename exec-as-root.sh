#!/bin/sh

exec ./docker-compose.sh exec -it -u root minimal-notebook /bin/bash
