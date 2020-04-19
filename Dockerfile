FROM debian:buster-slim

ENV DEBIAN_FRONTEND noninteractive

#RUN apt-get -y update && \
#    apt-get -y install make && \
#    rm -rf /var/lib/apt/lists/*

COPY . /workdir/

WORKDIR /workdir

CMD /workdir/app/main.sh
