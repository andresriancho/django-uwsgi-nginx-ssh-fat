# A container which runs nginx for Django, SSH, new relic (with fat libs)
#
FROM andresriancho/django-uwsgi-nginx-ssh:latest

MAINTAINER Andres Riancho version: 0.2

# Installing requirements
ADD requirements.txt /tmp/
RUN cd /tmp/ && pip install --upgrade -r requirements.txt

# Just to make it easier to read our build logs
RUN date
