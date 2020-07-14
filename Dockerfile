FROM python:3.8-alpine
MAINTAINER "Taichi MIYA <miya@net.ict.e.titech.ac.jp>"

RUN apk add build-base && \
    pip install --quiet --no-cache-dir \
        mkdocs mkdocs-minify-plugin pymdownx

ADD entrypoint.sh /sbin/entrypoint.sh
RUN chmod +x /sbin/entrypoint.sh

ENTRYPOINT ["/sbin/entrypoint.sh"]
