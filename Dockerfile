FROM continuumio/miniconda3

RUN apt update && apt install -y procps make gcc && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN conda config --add channels conda-forge && \
    conda config --add channels bioconda && \
    conda config --add channels default

#RUN conda create -n test1
RUN conda install -c pandas qt pyinstaller
RUN pip install pyqt5 opencv-contrib-python-headless