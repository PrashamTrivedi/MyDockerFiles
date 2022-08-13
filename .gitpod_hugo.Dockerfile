FROM gitpod/workspace-full:2022-08-13-08-17-48

LABEL com.prashamhtrivedi=One
LABEL org.opencontainers.image.source=https://github.com/PrashamTrivedi/MyDockerFiles/.gitpod_default.Dockerfile
LABEL org.opencontainers.image.ref.name=gitpod_default
LABEL org.opencontainers.image.title=gitpod_default
LABEL org.opencontainers.image.version=0.1

ENV VERSION 0.101.0
ENV PACKAGE hugo_${VERSION}_Linux-64bit.deb


ADD https://github.com/gohugoio/hugo/releases/download/v${VERSION}/${PACKAGE} /tmp
RUN sudo dpkg -i "/tmp/${PACKAGE}"


RUN hugo version

EXPOSE 1313