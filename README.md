This projects is deprecated, using offical image directly, since k8s offically support DNS

Modified from [Kubernetes](https://github.com/GoogleCloudPlatform/kubernetes/tree/master/contrib/logging/fluentd-es-image)

> # Collecting Docker Log Files with Fluentd and Elasticsearch
> This directory contains the source files needed to make a Docker image
> that collects Docker container log files using [Fluentd](http://www.fluentd.org/)
> and sends them to an instance of [Elasticsearch](http://www.elasticsearch.org/).
> This image is designed to be used as part of the [Kubernetes](https://github.com/GoogleCloudPlatform/kubernetes)
> cluster bring up process. The image resides at DockerHub under the name
> [kubernetes/fluentd-eslasticsearch](https://registry.hub.docker.com/u/kubernetes/fluentd-elasticsearch/).


- - -


**Change:**

* Using dns (skydns) to discovery Elasticsearch service
