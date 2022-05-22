FROM php:7.4-apache

LABEL owner="tadeu.torres"

# Install dependencies
RUN apt-get update && apt-get install -y \
        libct4 \
        libsybdb5 \
        tdsodbc \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng-dev \
        libldap2-dev \
        zlib1g-dev \
        libc-client-dev \
        libpq-dev \
        libsqlite3-dev \
        libmcrypt-dev \
        libcurl4-openssl-dev \
        libxml2-dev \
        libicu-dev \
        libmemcached-dev \
        vim \
        git \
        libzip-dev \
        libssh2-1-dev \
        unixodbc-dev \
	    nodejs \
        cron \
        wget \
        gnupg2 \
        apt-transport-https \
        software-properties-common

RUN docker-php-ext-install ftp \
        zip \
        soap \
        xml \
        gd \
        dom \
        intl \
        json \
        pdo_mysql

RUN a2enmod rewrite

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN pecl update-channels && \
    pecl install ds

COPY 000-default.conf /etc/apache2/sites-enabled
COPY 30-ds.ini /usr/local/etc/php/conf.d