FROM javister-docker-docker.bintray.io/javister/javister-docker-base:1.0

MAINTAINER Verbitsky Viktor <vektory79@gmail.com>

COPY files /

ENV RPMLIST="python-pip cmake autoconf automake binutils gcc gcc-c++ libtool make"

RUN yum-install && \
    pip install conan && \
    yum-clean && \
    chmod +x /etc/my_init.d/*.sh

# This container is a chrooted conan
WORKDIR /app
ENTRYPOINT ["my_init", "--skip-runit", "--quiet", "--", "setuser", "system", "conan"]
CMD ["--version"]
