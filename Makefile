MAKE_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

.DEFAULT_GOAL := run

.PHONY : install run build

install:
	yarn

run:
	node ./src/main.js

build:
	echo "Build not currently implemented"