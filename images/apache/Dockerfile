FROM ubuntu:16.04

MAINTAINER Jorge E. Alvarez P.

RUN apt-get update -y \
    && apt-get install -y apache2 \
    && apt-get install -y php7.0 libapache2-mod-php7.0 php7.0-gd php7.0-dom php7.0-mysql \
    && apt-get install -y net-tools \
    && apt-get install -y inetutils-ping \
    && apt-get install -y iputils-ping \
    && apt-get install -y netcat \
    && apt-get install -y mysql-client \
    && apt-get install -y composer \
    && apt-get install -y unzip
    
EXPOSE 80
