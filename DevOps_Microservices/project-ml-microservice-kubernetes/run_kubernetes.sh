#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=maheshe/mahadocker1:latest
Username=maheshe
password=welcome123
echo "Docker ID and Image Authenticate Now: $dockerpath"
docker login --username $Username --password $password

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run --generator=run-pod/v1 mahadocker1 --image=maheshe/mahadocker1:latest --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
echo "sleep for 60  seconds while waiting for pod"
sleep 60
kubectl port-forward pods/mahadocker1 8000:80 
echo " Now calling kubectl logs"
kubectl logs --selector app=mahadocker1
echo " Completed the log selection"
