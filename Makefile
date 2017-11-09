SHELL := /bin/bash

xenial:
	docker build -t clux/lal-xenial xenial
	docker push clux/lal-xenial

muslrust:
	docker build -t clux/lal-muslrust muslrust
	docker push clux/lal-muslrust


.PHONY: muslrust xenial
