#!/bin/bash

TIMESTAMP=`date +"%Y%m%d%H%M%S"`
DATE=$(date +%d-%m-%Y" "%H:%M:%S)

DOCKER_REPO_NAME=${DOCKER_REPO_NAME}
DOCKER_REGISTRY_HOST=${DOCKER_REGISTRY_HOST}

TAG="${BUILD_NUMBER}-${GIT_COMMIT}"

docker build \
  -t "$DOCKER_REPO_NAME:$TAG" \
  --build-arg GIT_URL="$GIT_URL" \
  --build-arg GIT_BRANCH="$GIT_BRANCH" \
  --build-arg GIT_COMMIT="$GIT_COMMIT" \
  --build-arg BUILD_NUMBER="$BUILD_NUMBER" \
  --build-arg BUILD_URL="$BUILD_URL" \
  --build-arg BUILD_USER="$BUILD_USER" \
  --build-arg BUILD_TIME="$DATE" \
  .

docker tag -f "$DOCKER_REPO_NAME:$TAG" "$DOCKER_REGISTRY_HOST/$DOCKER_REPO_NAME:$TAG"