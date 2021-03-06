# defaul shell
SHELL = /bin/bash

# Rule "build"
.PHONY: build
.SILENT: build
build:
	# produce a failure return code if any command return error \
	set -eo pipefail; \
	mvn clean install; \
	docker build -t totvsidentity/idm-14-jre .;
