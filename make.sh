#!/usr/bin/env bash

docker run --rm --interactive --workdir "/doc" --volume "$PWD":/doc thomasweise/docker-texlive-full make
