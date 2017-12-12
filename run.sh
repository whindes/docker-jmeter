#!/bin/bash
#
# Run JMeter Docker image with options

NAME="jmeter"
IMAGE="whindes/jmeter:3.3"

# Use the current working directory
# in Linux (Some struggles in Windows 7 using Virtualbox *Check shared folder and you may have to use PowerShell to run the last line.)
WORK_DIR="/tmp/jmeter"
LOCAL_DIR="`pwd`"
# Finally run
docker stop ${NAME} > /dev/null 2>&1
docker rm ${NAME} > /dev/null 2>&1
docker run --rm --name ${NAME} -i -v ${LOCAL_DIR}:${WORK_DIR} -w ${WORK_DIR} ${IMAGE} $@