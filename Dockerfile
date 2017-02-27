FROM python:3.5-alpine

RUN apk update \
 && apk add gcc git graphviz-dev musl-dev \
 && mkdir /opt \
 && cd /opt \
 && git clone https://github.com/datacenter/acitoolkit \
 && cd acitoolkit \
 && python setup.py install \
 && rm -rf /var/cache/apk/*
WORKDIR /opt/acitoolkit
CMD ["/bin/bash"]
