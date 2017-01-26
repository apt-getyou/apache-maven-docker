#!/bin/bash

MAVEN_VERSION=3.3.9-jdk-8 
BIN_DIR=$(cd "$(dirname "$0")"; pwd)

docker run -it --rm --name my-maven-project -v "$PWD":/usr/src/mymaven -v "${BIN_DIR}/.m2":/root/.m2 -w /usr/src/mymaven maven:${MAVEN_VERSION} mvn $*
