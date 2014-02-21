#!/bin/sh
cwd=`dirname $0`
. ${cwd}/../env.sh
echo "Running container ${APACHE_CONTAINER_NAME}"

#docker run -d -p 80:80 -t ${APACHE_CONTAINER_NAME}
# https://coreos.com/docs/launching-containers/building/getting-started-with-docker/
# Move the apache binary from Dockerfile to the run command
#docker run -d -p 80:80 -t ${APACHE_CONTAINER_NAME}  /usr/sbin/apache2ctl -D FOREGROUND
# 0.0.4: simpler run command?
docker run -d -p 80:80 -t ${APACHE_CONTAINER_NAME}
