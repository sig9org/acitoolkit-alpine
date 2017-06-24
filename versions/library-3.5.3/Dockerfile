FROM python:3.5.3-alpine

RUN apk update \
 && apk add bash gcc git graphviz-dev musl-dev vim \
 && mkdir /opt \
 && cd /opt \
 && git clone https://github.com/datacenter/acitoolkit \
 && cd acitoolkit \
 && python setup.py install \
 && rm -rf /var/cache/apk/* \
 && export PS1="[acitoolkit-3.5.3 \W]$"
ADD vimrc /root/.vimrc
WORKDIR /opt/acitoolkit
CMD ["/bin/bash"]
