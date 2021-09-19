FROM alpine
LABEL maintainer="Fatih Boy <fatih.boy@enterprisecoding.com>"

RUN wget https://github.com/cunnie/sslip.io/releases/download/2.2.0/sslip.io-dns-server-linux-amd64 -O /usr/bin/dns-server \
    && chmod +x /usr/bin/dns-server

EXPOSE 53/udp

ENTRYPOINT /usr/bin/dns-server