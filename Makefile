#vars
PHP_IMAGETAG=8.3-cli
ITOP_IMAGETAG=1.4.1
ITOP_IMAGEFULLNAME=itop-data-collector-base:${ITOP_IMAGETAG}

.PHONY: help build clean

help:
	@echo "Makefile commands:"
	@echo "build"
	@echo "run"
	@echo "clean"
	@echo "all: build run"	

clean:
	@echo "+ $@"
	@docker rmi ${ITOP_IMAGEFULLNAME}  || true

build:
	@echo "+ $@"
	@docker build . \
	--tag ${ITOP_IMAGEFULLNAME} \
	--build-arg PHP_IMAGETAG="${PHP_IMAGETAG}" \
	--build-arg ITOP_IMAGETAG="${ITOP_IMAGETAG}"

run:
	@echo "+ $@"
	@docker run --rm -it -v "./test:/opt/itop-data-collector-base/collectors" ${ITOP_IMAGEFULLNAME}

all: build run
