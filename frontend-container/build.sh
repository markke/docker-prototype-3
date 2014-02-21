#!/bin/sh
. ../env.sh
echo "*** Preparing frontend-app for adding to ${APACHE_CONTAINER_NAME} ***"

echo "*** Building container ${APACHE_CONTAINER_NAME} ***"
docker build -t ${APACHE_CONTAINER_NAME} .

