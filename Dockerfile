FROM amazonlinux:2.0.20221210.0

RUN yum update -y && \
    yum install -y \
      which \
      man \
      make \
      less \
      zip \
      unzip \
      tar \
      && \
    yum clean all && \
    rm -rf /var/cache/yum/*

RUN curl -s "https://get.sdkman.io" | bash

RUN source "/root/.sdkman/bin/sdkman-init.sh" && \
    sdk install java 11.0.17-amzn && \
    sdk install gradle
