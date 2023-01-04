.PHONY: help build bash

IMAGE := tamakiii-sandbox/hello-java11

help:
	@cat $(firstword $(MAKEFILE_LIST))

build: Dockerfile
	docker build -t $(IMAGE) .

bash: build
	docker run -it --rm -v $(PWD):/opt/tamakiii-sandbox/hello-java11 -w /opt/tamakiii-sandbox/hello-java11 $(IMAGE) bash
