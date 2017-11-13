#!/bin/bash

# ros install clack

cd deploy
while true
do
    clackup <(echo "(lack:builder (:static :path #'identity) #'identity)")
done
