FROM python:3.8-alpine
LABEL maintainer "MIYA, Taichi <miya@net.ict.e.titech.ac.jp>"
LABEL org.opencontainers.image.source https://github.com/yamaoka-kitaguchi-lab/docs-build-action

RUN apk add \
        build-base \
        git \
 && pip install --quiet --no-cache-dir \
        mkdocs \
        mkdocs-material \
        mkdocs-minify-plugin \
        mkdocs-git-revision-date-localized-plugin

ADD entrypoint.sh /sbin/entrypoint.sh
RUN chmod +x /sbin/entrypoint.sh

ENTRYPOINT ["/sbin/entrypoint.sh"]
