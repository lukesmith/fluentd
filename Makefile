TAG ?= latest
PREFIX ?= lukesmith/fluentd

.PHONY: build
build:
	docker build -t $(PREFIX):$(TAG) .

.PHONY: push
push: build
	@ docker push $(PREFIX):$(TAG)
