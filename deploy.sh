#!/bin/bash

(
    cd source
    coleslaw
)

(
    cd deploy
    git add -a $(git ls-files -o)
    git commit -a -m "deploy"
    git push
)
