#!/bin/sh
IMAGE=blang/latex:ctanfull # Modified into ctanfull
exec docker run --rm -i --user="$(id -u):$(id -g)" --net=none -v "$PWD":/data "$IMAGE" "$@"
