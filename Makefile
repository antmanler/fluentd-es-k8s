
TAG = latest

build:
	docker build --force-rm -t antmanler/fluentd:${TAG} .

push:
	docker push antmanler/fluentd:$(TAG)

.PHONY: build push
