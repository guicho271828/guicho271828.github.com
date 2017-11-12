#!/bin/bash

(
    cd source
    coleslaw
)

(
    cd deploy
    git add -A
    git commit -m "deploy"
    git push
)
