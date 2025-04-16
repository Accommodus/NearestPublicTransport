#!/bin/bash
set -e
IMAGE_NAME="boomboomcannon/near-pub-trans"
docker build -t "$IMAGE_NAME:latest" .
docker push "$IMAGE_NAME:latest"

