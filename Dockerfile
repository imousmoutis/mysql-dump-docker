FROM ubuntu:18.04

MAINTAINER Ioannis K. Mousmoutis

WORKDIR /usr/src/app/

RUN apt-get -y update && apt-get -y upgrade && apt-get -y install mysql-client cron

RUN touch /var/log/cron.log

RUN touch .env

COPY temp.sh temp.sh

COPY entrypoint /entrypoint

ENTRYPOINT ["/entrypoint"]