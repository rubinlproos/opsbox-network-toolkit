#!/bin/bash
APP_NAME="opsbox"
WORKING_DIR=$(pwd)
GIT_HEAD_FILE="${WORKING_DIR}/.git/HEAD"
DOCKER_TAG=$(cat $GIT_HEAD_FILE | cut -d"/" -f3)


echo "Building ${APP_NAME}/${DOCKER_TAG}"
echo "=================================="
docker build -t rubinlproos/${APP_NAME}:${DOCKER_TAG} .
