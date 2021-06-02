FROM debian:stretch
LABEL maintainer="COCOCostaRica Developers <dev@cococostarica.org>"
LABEL description="Dockerised COCOCostaRicaCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
