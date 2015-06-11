FROM phusion/baseimage

RUN apt-get install git
RUN git clone git://github.com/yyuu/pyenv.git && \
cd pyenv/plugins/python-build && \
./install.sh


