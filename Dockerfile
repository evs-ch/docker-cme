FROM python:2.7
WORKDIR /root

RUN cd /root/ && git clone https://github.com/byt3bl33d3r/CrackMapExec
RUN cd /root/CrackMapExec && git submodule init && git submodule update --recursive
RUN cd /root/CrackMapExec && python setup.py install

ENTRYPOINT ["/bin/bash"]