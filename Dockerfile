FROM ubuntu
RUN apt-get update
RUN apt-get install -y curl
COPY discover /usr/local/bin/
COPY portfolio /usr/local/bin/
COPY stats /usr/local/bin/
COPY chart /usr/local/bin/
LABEL maintainer="netcom@sauber.net"
