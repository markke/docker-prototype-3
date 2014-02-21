docker-prototype-3
==================

Third try at a simple docker lifecycle experiment.


References

1. http://www.kstaken.com/blog/2013/07/06/how-to-run-apache-under-docker/
2. https://coreos.com/docs/launching-containers/building/getting-started-with-docker/

Problems

1. With just the setup in reference #1, apache wouldn't start up on a production mimic with just a pull-and-run.
2. Export and Import reported there was no command to run.
3. pull-and-run with /usr/sbin/apache2 reported problems with not finding the apache user.
4. Using '/usr/sbin/apache2ctl -D FOREGROUND' from the coreos example fixes things!

Dev server portion
==================

1. Add to site/
2. Update env.sh and set the new version
3. ./build.sh
4. ./run.sh (just to test it locally)
5. ./push.sh (upload the image deltas to index.docker.io)
6. ./rsync.sh (copy all this stuff so the control scripts go to the docker host)


'Production' server portion
===========================

7. ./pull.sh
8. ./run.sh (same script as in step 4 - cool!)