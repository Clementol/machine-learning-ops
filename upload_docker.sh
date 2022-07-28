#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=3a2e52cb65e4/mlhousepredict
# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u 3a2e52cb65e4
docker tag ml-housepredict $dockerpath
# Step 3:
# Push image to a docker repository
docker push $dockerpath