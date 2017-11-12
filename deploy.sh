#!/bin/bash

(
    cd source
    coleslaw
)

(
    cd deploy
    git commit -a -m "deploy"
    git push
)
