#!/bin/bash
set -e

IMAGE="${IMAGE:-ghcr.io/roflmao/docker-ha-roflmao}"
TAG="${TAG:-latest}"

docker pull ghcr.io/home-assistant/home-assistant:stable
DOCKER_BUILDKIT=1 docker build --no-cache -t "$IMAGE:$TAG" .
docker push "$IMAGE:$TAG"
