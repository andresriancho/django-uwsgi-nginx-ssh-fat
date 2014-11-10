# A container which runs nginx for Django, SSH, new relic (with fat libs)
#
FROM andresriancho/django-uwsgi-nginx-ssh:latest

MAINTAINER Andres Riancho version: 0.2

# Install any required OS dependencies
RUN apt-get update -y
RUN apt-get install -y libgeoip1 libenchant1c2a libmysqlclient-dev mysql-client apache2-utils libxml2-dev libxslt1-dev


# Installing requirements
ADD requirements.txt /tmp/
RUN cd /tmp/ && pip install --upgrade -r requirements.txt


# Just to make it easier to read our build logs
RUN date
