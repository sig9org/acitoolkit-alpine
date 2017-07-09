FROM python:2.7.13-alpine3.6

RUN apk update \
 && apk add bash gcc git graphviz-dev musl-dev vim \
 && mkdir /opt \
 && cd /opt \
 && git clone -b develop https://github.com/sig9org/acitoolkit \
 && cd acitoolkit \
 && python setup.py install \
 && rm -rf /var/cache/apk/* \
 && echo 'export PS1="[acitoolkit-2.7.13 \W]\$ "' > /root/.bashrc
ADD vimrc /root/.vimrc
WORKDIR /opt/acitoolkit
CMD ["/bin/bash"]
