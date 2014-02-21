#!/bin/sh
cwd=`dirname $0`
. ${cwd}/../env.sh
echo "Pushing container ${APACHE_REPOSITORY_NAME}"

docker push ${APACHE_REPOSITORY_NAME}
