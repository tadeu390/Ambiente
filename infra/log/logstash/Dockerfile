FROM logstash:7.4.2

#COPY logstash-sample.conf /usr/share/logstash/config
COPY logstash.conf /usr/share/logstash/pipeline
COPY logstash.yml /usr/share/logstash/config


#FROM ubuntu:latest
#
#RUN apt-get update && \
#    apt-get install wget -y && \
#    apt-get install software-properties-common -y && \
#    apt-get update && \
#    add-apt-repository ppa:openjdk-r/ppa && \
#    apt-get update && \
#    apt-get install openjdk-13-jdk -y && \
#    apt-get install curl -y && \
#    apt-get install vim -y

#RUN curl -L -O https://artifacts.elastic.co/downloads/logstash/logstash-7.4.2.deb && \
#    dpkg -i logstash-7.4.2.deb