FROM alpine:3.6

MAINTAINER erguotou525@gmail.compute

RUN apk update && apk add go git libc-dev && mkdir -p $HOME/go/src $HOME/go/bin $HOME/go/bin

ENV GOPATH $HOME/go
ENV GOBIN $HOME/go/bin
ENV PATH=$PATH:$GOBIN

WORKDIR $HOME/go/src

ONBUILD go version
