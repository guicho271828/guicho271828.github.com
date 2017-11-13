#!/bin/bash

# retired in favor of coleslaw watch-preview

# ros install clack

cd deploy
while true
do
    clackup <(echo "(lack:builder :accesslog (:static :path (lambda (p) (print p) (if (char= #\/ (alexandria:last-elt p)) (concatenate 'string p \"index.html\") p))) #'identity)")
    # clackup <(echo "(lack:builder :accesslog (:static :path (lambda (p) (print p) (if (string= p \"/\") \"/index.html\" p))) #'identity)")
    # clackup <(echo "(lack:builder (:static :path #'identity) #'identity)")
done
