
TAG = latest

build:
	docker build --force-rm -t d.rest/fluentd-es-k8s:${TAG} .

push:
	docker push d.rest/fluentd-es-k8s:$(TAG)

.PHONY: build push
