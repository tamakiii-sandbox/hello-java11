FROM amazonlinux:2.0.20221210.0

RUN yum update -y && \
    yum install -y \
      which \
      man \
      make \
      less \
      java-17-amazon-corretto \
      && \
    yum clean all && \
    rm -rf /var/cache/yum/*

