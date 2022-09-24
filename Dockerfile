FROM continuumio/miniconda3
MAINTAINER Le Duc Quang <leducquangpm@gmail.com>

WORKDIR /misc
# Dependencies

RUN apt-get --allow-releaseinfo-change update
RUN apt-get install -y parallel make cmake wget git locales
RUN conda update --all
RUN conda install -qy conda=4.13.0

RUN mkdir /misc/amrtraining

COPY AMR_Analysis_training.ipynb /misc/amrtraining
COPY requirements.txt /misc/amrtraining
RUN conda install -y -c conda-forge python=3.7 mamba
RUN mamba install -y -c conda-forge -c bioconda -c anaconda -c etetoolkit -c defaults  --file /misc/amrtraining/requirements.txt
