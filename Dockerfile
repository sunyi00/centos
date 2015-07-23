FROM centos:7.1.1503

RUN localedef -c -f UTF-8 -i en_US en_US.UTF-8 \
    && export LANG=en_US.UTF-8 \
    && export LC_ALL=en_US.UTF-8 \
    && rm -f /etc/localtime && ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8
