#!/bin/bash

# Reference link: https://kubectl.docs.kubernetes.io/installation/kustomize/ 

# Install command in ubuntu machine
curl -s "https://raw.githubusercontent.com/kubernetes-sigs/kustomize/master/hack/install_kustomize.sh"  | bash

# Move the command line tool to executable
mv kustomize /usr/bin/

# Run sample command
kustomize version --short