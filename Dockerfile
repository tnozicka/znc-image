FROM centos:7

ENV INSTALL_PKG=znc \
    DATA_DIR=/var/lib/znc

RUN yum install -y epel-release && \
    yum install -y ${INSTALL_PKG} && \
    yum clean all

RUN find ${DATA_DIR} -exec chgrp 0 {} \; -exec chmod g+rw {} \; -type d -exec chmod g+x {} \;

USER 1001

ENTRYPOINT ["/usr/bin/znc", "-d", "/var/lib/znc"]
