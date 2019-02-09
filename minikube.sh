#!/usr/bin/env zsh
#set -x
RED='\033[0;31m'
GREEN='\033[4;32m'

if [ "$(minikube status --format '{{.MinikubeStatus}}')" != "Running" ]
then
echo "Starting Minikube"
minikube start
else
echo "Minikube is already running!"
fi

echo -e "\e[31mRun this command to configure your shell:"
echo -e "\e[31meval \$(minikube docker-env)"