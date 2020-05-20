FROM continuumio/miniconda3
RUN apt-get update && apt-get -y install gcc
WORKDIR /chime_sims
RUN conda update -yq -n base -c defaults conda
RUN conda create -yq -n chime_sims python=3.7 pip pandas matplotlib scipy numpy seaborn
COPY ./requirements.txt .
#RUN pip install -q -r requirements.txt
RUN conda install ConfigArgParse
RUN conda install gitpython
RUN conda install seaborn
RUN pip install numpy
RUN conda install pandas
RUN pip install gvar
RUN pip install lsqfit