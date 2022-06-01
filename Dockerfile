## Buildstage ##
FROM ghcr.io/linuxserver/baseimage-alpine:3.12 as buildstage

RUN \
 echo "**** install packages ****" && \
 apk add --no-cache curl && \
    curl -fsSL https://get.pulumi.com/ | bash -s -- --version $PULUMI_VERSION && \
  mkdir -p /root-layer/usr/bin && \
  mv ~/.pulumi/bin/* /root-layer/usr/bin

## Single layer deployed image ##
FROM scratch

# Add files from buildstage
COPY --from=buildstage /root-layer/ /
