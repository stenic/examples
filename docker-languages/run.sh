#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
NAME="docker-languages"

for d in $DIR/*/ ; do
    d="$(basename $d)"
    echo "Building $NAME:$d"
    (cd "$DIR/$d" && docker build -t "$NAME:$d" .)
done

docker images $NAME
