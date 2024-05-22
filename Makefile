GITPACK_VERSION := $(shell git rev-list --full-history --all --abbrev-commit | head -1)
all:
	docker image pull ubuntu:22.04
	docker build -t gilles67/ownca:latest -t gilles67/ownca:$(GITPACK_VERSION) .
