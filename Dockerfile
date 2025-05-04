ARG GIT_IMAGETAG=latest
ARG PHP_IMAGETAG=8.3-cli

FROM alpine/git:$GIT_IMAGETAG AS build

ARG ITOP_IMAGETAG=1.4.1
RUN git clone --branch $ITOP_IMAGETAG https://github.com/Combodo/itop-data-collector-base.git

FROM php:$PHP_IMAGETAG

COPY --from=build /git/itop-data-collector-base /opt/itop-data-collector-base

RUN apt-get update
RUN apt-get install -y curl libcurl4-openssl-dev libxml2-dev

RUN docker-php-ext-install curl
RUN docker-php-ext-install xml

WORKDIR /opt/itop-data-collector-base

# start
ENTRYPOINT ["php", "exec.php"]
