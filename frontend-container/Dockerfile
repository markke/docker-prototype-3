FROM ubuntu:13.04
MAINTAINER Mark Kempster <mark@kempster.org>


RUN apt-get update
RUN apt-get install -y apache2 curl

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

EXPOSE 80

# Add static content relative to ./Dockerfile into the apache DocumentRoot
ADD site /var/www


# Fire up the apache2 process in FOREGROUND mode specifically
# This works when the instance is locally built, but not on a remote server pull-n-run.
#ENTRYPOINT ["/usr/sbin/apache2"]
#CMD ["-D", "FOREGROUND"]

# This variant seems to be portable.
# A remote server can simply pull and run without specifying a command at the terminal.
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
