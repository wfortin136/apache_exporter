FROM golang:1.6

RUN apt-get update && apt-get install -y \
  vim

RUN ae_dir=src/github.com/wfortin136/apache_exporter \
  bash -c 'git clone -b master https://git@github.com/wfortin136/apache_exporter $ae_dir \
  && cd $ae_dir \
  && go get . '
#github.com/wfortin136/apache_exporter
RUN ln -s /go/bin/apache_exporter /usr/bin/apache_exporter
