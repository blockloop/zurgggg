FROM ghcr.io/debridmediamanager/zurg-testing:latest
WORKDIR /app
RUN chown -R 1000:1000 /app
RUN apk add tini bash curl wget
USER 1000:1000
ENTRYPOINT ["/sbin/tini", "--"]
