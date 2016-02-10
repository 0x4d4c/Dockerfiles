FROM phusion/baseimage:0.9.18
MAINTAINER Martin Lambertz <martin@0x4d4c.xyz>

ENV BRO_VERSION 2.4.1

RUN groupadd bro && useradd -g bro -m -s /bin/bash bro
RUN apt-get -qq update && \
    DEBIAN_FRONTEND=noninteractive apt-get -qy install --no-install-recommends \
      bison \
      cmake \
      curl \
      flex \
      g++ \
      gcc \
      geoip-database \
      heirloom-mailx \
      libcurl4-gnutls-dev \
      libgeoip1 \
      libgeoip-dev \
      libgoogle-perftools4 \
      libgoogle-perftools-dev \
      libpcap0.8 \
      libpcap-dev \
      libssl-dev \
      make \
      msmtp \
      msmtp-mta \
      python-dev \
      swig && \
    curl -Ls http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz | \
      gzip -cd > /usr/share/GeoIP/GeoLiteCity.dat && \
    curl -Ls https://github.com/kohler/ipsumdump/archive/master.tar.gz | \
      tar -xzC /tmp/ -f- && \
      cd /tmp/ipsumdump-master && ./configure && make -j2 && make install && \
    curl -Ls https://www.bro.org/downloads/release/bro-${BRO_VERSION}.tar.gz | \
      tar -xzC /tmp/ -f- && \
      cd /tmp/bro-${BRO_VERSION} && ./configure --prefix=/opt/bro && make -j2 && make install && \
    cd / && \
    rm -rf /tmp/bro* /tmp/ipsumdump* && \
    apt-get -qy purge --auto-remove \
      bison \
      flex \
      gcc \
      g++ \
      libcurl4-gnutls-dev \
      libgeoip-dev \
      libgoogle-perftools-dev \
      libpcap-dev \
      libssl-dev \
      make \
      python-dev \
      swig && \
    apt-get -qy autoremove && \
    rm -rf /var/lib/apt/lists/*

ENV PATH /opt/bro/bin:$PATH
ENV BROPATH .:/opt/bro/share/bro:/opt/bro/share/bro/policy:/opt/bro/share/bro/site:/home/bro/scripts

COPY docker-entrypoint.sh /

USER bro
VOLUME ["/home/bro/logs", "/home/bro/scripts"]
WORKDIR /home/bro/logs

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["--help"]

