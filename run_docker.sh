#!/usr/bin/env bash

# Build image
docker build --tag=loadtest .

# List docker images
docker image ls

# Run flask app, app uses port 8080 of image (the second 8080) and by visiting port 8080 of host (the first 8080)
docker run -d -p 8080:8080 loadtest

# debug
#docker run -it --entrypoint /bin/bash loadtest 