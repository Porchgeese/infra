#!/usr/bin/env zsh
#set -x
cat $(find . -name "*.yaml") | kubectl apply -f -