FROM centos:7.6.1810

LABEL maintainer="Scott D. Peckham <Scott.Peckham@colorado.edu>" contributor="Rajiv Mayani <mayani@isi.edu>"

RUN  yum -y install python36 unzip zip

RUN mkdir /srv/topoflow

ADD . /srv/topoflow
RUN cd /srv/topoflow && pip3 install .
