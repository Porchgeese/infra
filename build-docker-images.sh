#!/usr/bin/env bash
for build in $(find `pwd` -name "build.sh" -mindepth 2) ; do
    SCRIPT_PATH=$build
    SCRIPT_DIR=$(dirname $SCRIPT_PATH)
    eval $(minikube docker-env) && cd $SCRIPT_DIR && $SCRIPT_PATH
done