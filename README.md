# Docker image with Combodo iTop Data Collector Base

[![Docker Pulls](https://img.shields.io/docker/pulls/lacrif/itop-data-collector-base?logo=docker&link=https%3A%2F%2Fhub.docker.com%2Frepository%2Fdocker%2Flacrif%2Fitop-data-collector-base)](https://hub.docker.com/repository/docker/lacrif/itop-data-collector-base)
[![Docker Stars](https://img.shields.io/docker/stars/lacrif/itop-data-collector-base?logo=docker&link=https%3A%2F%2Fhub.docker.com%2Frepository%2Fdocker%2Flacrif%2Fitop-data-collector-base)](https://hub.docker.com/repository/docker/lacrif/itop-data-collector-base)
[![GitHub forks](https://img.shields.io/github/forks/lacrif/docker-itop-data-collector-base?link=https%3A%2F%2Fgithub.com%2Flacrif%2Fdocker-itop-data-collector-base)](https://github.com/lacrif/docker-itop-data-collector-base)
[![GitHub Repo stars](https://img.shields.io/github/stars/lacrif/docker-itop-data-collector-base?link=https%3A%2F%2Fgithub.com%2Flacrif%2Fdocker-itop-data-collector-base)](https://github.com/lacrif/docker-itop-data-collector-base)

The image is based on [php](https://hub.docker.com/_/php).

## Usage


```shell
docker run --rm -it -v "./test:/opt/itop-data-collector-base/collectors" itop-data-collector-base:1.4.1
```

## Building image

```shell
make build
```

or directly

```shell
docker build . \
  	--tag lacrif/itop-data-collector-base:1.4.1 \
	--build-arg PHP_IMAGETAG="8.3-cli" \
	--build-arg ITOP_IMAGETAG="1.4.1"
```

## Links

 - [GitHub repo](https://github.com/lacrif/docker-itop-data-collector-base)
 - [Combodo](https://combodo.com)
 - [iTop Data collector](https://www.itophub.io/wiki/page?id=extensions:itop-data-collector-base)
 
## Author

[Lacrif](https://github.com/lacrif)
