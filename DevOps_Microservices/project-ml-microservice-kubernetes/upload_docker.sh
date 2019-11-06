#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=maheshe/simple_flask:dockerfile
Username=maheshe
pwd=welcome123

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image Authenticate Now: $dockerpath"
docker login --username $Username --password -stdin


# Step 3:
# Push image to a docker repository
echo "Now docker tagging"
docker tag simple_flask:dockerfile  maheshe/mahadocker1
echo "Now pushing to dockerHub"
docker push maheshe/mahadocker1
echo "Now push done"
