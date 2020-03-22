FROM debian

LABEL owner="tadeu.torres"

RUN apt-get update && \
            apt-get install nginx -y && \
	    apt-get install composer -y && \
            apt-get install git -y && \
	    apt-get install npm -y && \
            apt-get install vim -y && \
            apt-get install software-properties-common -y && \
            apt-get install php7.3-cli \
            php7.3-fpm \
            php7.3-mysql \
            php7.3-curl \
            php7.3-memcached \
            php7.3-dev \
            php7.3-pgsql \
            php7.3-sqlite3 \
            php7.3-mbstring \
            php7.3-gd \
            php7.3-json \
            php7.3-xmlrpc \
            php7.3-xml \
            php7.3-zip \
            php7.3-bcmath \
            php7.3-soap \
            php7.3-intl \
            php7.3-readline -y && \
            apt-get install telnet -y && \
            apt-get install --reinstall systemd -y && \
            apt-get install curl -y && \
            apt-get install wget -y && \
            apt-get install apt-transport-https -y && \
            curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.4.2-amd64.deb  && \
            dpkg -i filebeat-7.4.2-amd64.deb

RUN mv /etc/nginx/sites-available/default /etc/nginx/sites-available/default_config

COPY default /etc/nginx/sites-available/

COPY filebeat-elastic.yml /etc/filebeat/filebeat.yml
#COPY filebeat-logstash.yml /etc/filebeat/filebeat.yml

RUN filebeat modules enable nginx && \
    filebeat modules enable system && \
    apt-get install rsyslog -y

COPY nginx.yml /etc/filebeat/modules.d/nginx.yml

WORKDIR /var/www/

CMD service nginx start && \
    service php7.3-fpm start && \
    service rsyslog start && \
    #filebeat setup && \
    service filebeat start && \
    #chmod 777 -R /var/www/storage/ && \
    /bin/bash
