SHELL := /bin/bash

alpine:
	docker build -t clux/lal-alpine:3.6 alpine
	docker push clux/lal-alpine:3.6

muslrust:
	docker build -t clux/lal-muslrust muslrust
	docker push clux/lal-muslrust

xenial:
	docker build -t clux/lal-xenial xenial
	docker push clux/lal-xenial

.PHONY: alpine muslrust xenial
