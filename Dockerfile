FROM debian:stretch-slim
WORKDIR /
ENV LANG C.UTF-8
RUN apt-get update \
  && apt-get install -y openssl squid \
  && apt-get clean \
  && rm -rf -- /var/lib/apt/lists/*
COPY squid.conf /etc/squid/squid.conf
EXPOSE 3128
CMD ["/usr/sbin/squid", "-f", "/etc/squid/squid.conf", "-NYCd", "1"]
