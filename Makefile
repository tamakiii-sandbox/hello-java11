.PHONY: help test

help:
	@cat $(firstword $(MAKEFILE_LIST))

test:
	gradle test
