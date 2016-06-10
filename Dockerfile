FROM debian:jessie

RUN sed -i "s/httpredir.debian.org/mirrors.aliyun.com/g" /etc/apt/sources.list \
    && sed -i "s/security.debian.org/mirrors.aliyun.com\/debian-security/g" /etc/apt/sources.list \
    && apt-get update \
    && apt-get install --no-install-recommends --no-install-suggests -y \
                        curl \
                        ca-certificates \
                        autoconf \
                        gcc \
                        make \
    && rm -rf /var/lib/apt/lists/*

CMD ["\bin\bash"]
