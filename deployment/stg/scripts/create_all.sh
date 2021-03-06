#! /bin/bash

# Environment
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Run Deployment
kubectl apply -f "$DIR/../staging.yml"
kubectl apply -f "$DIR/../website.yml"
