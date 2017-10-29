FROM javister-docker-docker.bintray.io/javister/javister-docker-base:1.0

MAINTAINER Verbitsky Viktor <vektory79@gmail.com>

COPY files /

ENV RPMLIST="python-pip cmake3 autoconf automake binutils gcc gcc-c++ libtool make" \
    CONAN_HOME="/config"

RUN yum-install && \
    pip install conan && \
    yum-clean && \
    ln -s /usr/bin/cmake3 /usr/bin/cmake && \
    chmod +x /etc/my_init.d/*.sh /usr/local/bin/*

# This container is a chrooted conan
WORKDIR /app
ENTRYPOINT ["my_init", "--skip-runit", "--quiet", "--", "conan-docker"]
CMD ["--version"]
