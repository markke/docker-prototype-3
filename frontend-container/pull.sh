#!/bin/sh
cwd=`dirname $0`
. ${cwd}/../env.sh
echo "Pulling container ${APACHE_CONTAINER_NAME}"

# run on ec2 server
sudo docker pull ${APACHE_CONTAINER_NAME}
