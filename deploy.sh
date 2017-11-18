#!/bin/bash

(
    cd source
    coleslaw
)

(
    cd _deploy
    git add -A
    git commit -m "deploy"
    git push
)
