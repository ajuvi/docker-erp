FROM php:8.0-apache

RUN apt-get update

RUN apt-get -y install nano
RUN apt-get -y install nmap
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

RUN apt-get clean