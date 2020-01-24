FROM continuumio/miniconda3

ADD environment.yml /tmp/environment.yml
RUN conda env update -f /tmp/environment.yml

RUN apt update && apt install -y unzip zip
RUN mkdir /srv/topoflow
ADD . /srv/topoflow
RUN cd /srv/topoflow && /opt/conda/bin/pip install .
RUN /opt/conda/bin/pip install imageio-ffmpeg
