FROM python:2.7.13-alpine
WORKDIR /root

COPY start.sh /root/start.sh
RUN apk update && apk add git libffi libffi-dev gcc g++ make openssl-dev openssl
RUN cd /root/ && git clone https://github.com/byt3bl33d3r/CrackMapExec
RUN cd /root/CrackMapExec && git submodule init && git submodule update --recursive
RUN cd /root/CrackMapExec && python setup.py install

CMD ["/bin/sh","/root/start.sh"]
