#!/bin/bash

export JEKYLL_ENV=production
bundle exec jekyll build

TT_REPO=../techtelegrams.github.io
if [ -d "$TT_REPO" ]; then
    cp _site/* "$TT_REPO" -rf
fi
