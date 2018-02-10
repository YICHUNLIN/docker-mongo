# MongoDB
# VERSION 1.0.0

FROM ubuntu:16.04

MAINTAINER I Chun Lin <yichun03@gmail.com>

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927 
RUN echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" > /etc/apt/sources.list.d/mongodb-org-3.2.list
RUN apt-get update -y
RUN apt-get install -y mongodb-org=3.2.9 mongodb-org-server=3.2.9

VOLUME /data/db

EXPOSE 27017 28017

CMD ["mongod", "--httpinterface"]	
