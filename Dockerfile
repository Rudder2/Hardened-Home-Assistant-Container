FROM ghcr.io/home-assistant/home-assistant:stable

RUN mkdir -p /config/.clouddeps /run /var/run && \
    chown -R 99:100 /usr/local/lib/python3.14/site-packages/ \
                    /usr/src/homeassistant/ \
                    /run \
                    /var/run \
                    /var/log

ENV HOME=/tmp
ENV PIP_BIN_DIR=/tmp/bin
ENV PIP_USER=true
ENV PYTHONPATH=/config/.clouddeps/lib/python3.14/site-packages
