FROM php:7.2-apache

LABEL owner="tadeu.torres"

RUN apt-get update && \
    apt-get install vim -y && \
    a2enmod rewrite

COPY 000-default.conf /etc/apache2/sites-enabled