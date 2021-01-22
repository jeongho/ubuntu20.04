FROM ubuntu:20.04

ENV container docker

RUN apt-get -o Acquire::Check-Valid-Until=false -o Acquire::Check-Date=false update \
    && apt-get install -y build-essential \
    && apt-get install -y vim \
    && apt-get install -y net-tools \
    && apt-get install -y dstat \
    && apt-get install -y lsb-release 

EXPOSE 80

CMD ["/bin/bash"]
