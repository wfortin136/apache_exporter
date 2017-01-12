FROM golang:1.6

RUN apt-get update && apt-get install -y \
  vim

RUN go get github.com/wfortin136/apache_exporter
RUN ln -s /go/bin/apache_exporter /usr/bin
