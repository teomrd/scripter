MAKE_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

.DEFAULT_GOAL := run

.PHONY : install run build

install:
	yarn

run: install build
	node ./dist/main.js

build:
	yarn run build

lint:
	yarn run lint