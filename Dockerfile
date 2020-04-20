FROM alpine:3.11

COPY . /workdir/

WORKDIR /workdir

CMD /workdir/app/main.sh
