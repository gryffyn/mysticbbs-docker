#!/bin/bash
if [ -z "$1" ]
  then
    echo "Usage: ./config.sh <container name>"
    exit 1
fi
docker exec -it $1 /mystic/mystic -cfg
