#!/usr/bin/env bash
set -ex

IMAGE="ozbillwang/drone-auth-ecr"

rm -rf amazon-ecr-credential-helper
git clone https://github.com/awslabs/amazon-ecr-credential-helper.git

pushd amazon-ecr-credential-helper
# http://blog.dimroc.com/2015/08/20/cross-compiled-go-with-docker/
export TARGET_GOOS=linux
export TARGET_GOARCH=amd64
make docker
popd

docker build -t ${IMAGE} .
docker push ${IMAGE}
