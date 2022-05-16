FROM node:12-alpine

LABEL org.opencontainers.image.source=https://github.com/PrashamTrivedi/MyDockerFiles


ARG VERSION
ENV VERSION ${VERSION}
ENV PACKAGE hugo_${VERSION}_Linux-64bit.tar.gz

RUN apk update && apk add \
    git\
    openssh\
    && rm -rf /var/cache/apk/*

ADD https://github.com/gohugoio/hugo/releases/download/v${VERSION}/${PACKAGE} /tmp
RUN tar xzvf "/tmp/${PACKAGE}" hugo -C /usr/local/bin \
    && rm -fr "/tmp/${PACKAGE}"

RUN hugo version


RUN npm install -g firebase-tools
RUN firebase --version