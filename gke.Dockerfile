FROM google/cloud-sdk:alpine
LABEL org.opencontainers.image.authors="marsyang1"

# Create dirs and users
RUN mkdir -p /opt/atlassian/bitbucketci/agent/build

RUN gcloud components install gke-gcloud-auth-plugin kubectl
RUN apk update \
    && apk add \
     wget \
     curl \
     git \
     openssh-client \
     helm \
     # for base64
     coreutils

# Default to UTF-8 file.encoding
ENV LANG=C.UTF-8 \
    LC_ALL=C.UTF-8 \
    LANGUAGE=C.UTF-8

WORKDIR /opt/atlassian/bitbucketci/agent/build
ENTRYPOINT /bin/sh
