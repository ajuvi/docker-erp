FROM php:8.0

SHELL ["/bin/bash", "-c"]

RUN apt-get update

RUN apt-get -y install nano
RUN apt-get -y install nmap
RUN apt-get -y install apache2

RUN apt-get clean

EXPOSE 80 443

ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
