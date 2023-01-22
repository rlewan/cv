#!/usr/bin/env bash

docker run --rm --interactive --workdir "/doc" --volume "$PWD":/doc thomasweise/docker-texlive-full:2.0 make "$@"
