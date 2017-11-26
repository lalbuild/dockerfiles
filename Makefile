SHELL := /bin/bash

alpine:
	docker build -t clux/lal-alpine:3.6 alpine

push-alpine:
	docker push clux/lal-alpine:3.6

muslrust:
	docker build -t clux/lal-muslrust muslrust

push-muslrust:
	docker push clux/lal-muslrust

xenial:
	docker build -t clux/lal-xenial xenial

push-xenial:
	docker push clux/lal-xenial

.PHONY: alpine muslrust xenial push-alpine push-muslrust push-xenial
