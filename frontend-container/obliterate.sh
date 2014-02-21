# clean up!!

# obliterate all containers that have run
sudo docker rm `sudo docker ps -a -q`

# now kill all the images that are in my repository.
# turn all the multiple-spaces into single tabs so cut can handle them.
# pull out field 3 (the image-id) and delete it.
sudo docker images | grep mkempster | sed -e 's/  */\t/'g | cut -f 3 | xargs sudo docker rmi