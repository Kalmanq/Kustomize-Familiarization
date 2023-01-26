#!/bin/bash

# Set commands
kustomize edit set image nginx=nginx:1.2.2

kustomize edit set namespace staging 

kustomize edit set label org:neron env:staging

kustomize edit set replicas nginx-deployment=5

# Add command
kustomize edit add configmap db-creds --from-literal=password=password1 --from-literal=username=root 

kustomize edit add secret my-secret --from-literal=username=root --from-literal=password=rootpassword123

# Add resource
kustomize edit add resource prometheus-depl.yaml