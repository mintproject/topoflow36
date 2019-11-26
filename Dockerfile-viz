FROM continuumio/miniconda3

RUN conda install -c conda-forge cartopy -y \
		&& conda install  xarray  numpy pandas matplotlib imageio -y

RUN apt update && apt install -y unzip zip
RUN mkdir /srv/topoflow
ADD . /srv/topoflow
RUN cd /srv/topoflow && /opt/conda/bin/pip install .
RUN /opt/conda/bin/pip install imageio-ffmpeg
