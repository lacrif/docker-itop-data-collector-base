ARG GIT_VERSION=latest
ARG PHP_VERSION=8.3-cli

FROM alpine/git:$GIT_VERSION AS build
RUN git clone --branch 1.4.1 https://github.com/Combodo/itop-data-collector-base.git

FROM php:$PHP_VERSION

COPY --from=build /git/itop-data-collector-base /opt/itop-data-collector-base

RUN apt-get update
RUN apt-get install -y curl libcurl4-openssl-dev libxml2-dev

RUN docker-php-ext-install curl
RUN docker-php-ext-install xml

WORKDIR /opt/itop-data-collector-base
