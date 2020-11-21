FROM debian:10-slim AS base
COPY . .
RUN ls
RUN apt-get update \
&& apt install -y ./microsoft-edge-dev_88.0.702.0-1_amd64.deb
ENTRYPOINT [ "/usr/bin/microsoft-edge" , "--remote-debugging-port=9222", "--remote-debugging-address=0.0.0.0", "--headless", "--no-sandbox" ]