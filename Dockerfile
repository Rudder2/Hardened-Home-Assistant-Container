FROM ghcr.io/home-assistant/home-assistant:stable

RUN mkdir -p /config/.clouddeps /run /var/run && \
    chown -R 99:100 /usr/local/lib/python3.14/site-packages/ \
                    /usr/src/homeassistant/ \
                    /run \
                    /var/run \
                    /var/log

ENV HOME="/dev/shm"
ENV PIP_BIN_DIR="/dev/shm/bin"
ENV PATH="/dev/shm/bin:${PATH}"
ENV PYTHONPATH="/dev/shm/lib/python3.14/site-packages"
ENV PIP_USER=true
LABEL org.opencontainers.image.source="https://www.github.com/Rudder2/Hardened-Home-Assistant-Container"
