# sync the working directory here with the target server which will
# be the docker host. It should run
#  1. ./pull.sh to fetch the docker container from index.docker.io.
#  2. ./run.sh to run the pulled container and specify the process to run.

cd $HOME/projects
rsync -av -e 'ssh -i /Users/mark/Dropbox/ec2-hosts.pem' docker-prototype-3 ubuntu@ec2-54-226-128-107.compute-1.amazonaws.com:/home/ubuntu/.

cd -