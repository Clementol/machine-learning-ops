#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=3a2e52cb65e4/mlhousepredict
# Step 2
# Run the Docker Hub container with kubernetes
echo "Docker path $dockerpath"
kubectl run mlhousepredictor --image=$dockerpath --image-pull-policy=Always

# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl port-forward pod/mlhousepredictor 8000:80
