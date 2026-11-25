# lamp-nats

![Version: 0.1.1](https://img.shields.io/badge/Version-0.1.1-informational?style=flat-square)

NATS JetStream - event broker for the monorepo microservices (adapters -> processor -> notifiers)

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://nats-io.github.io/k8s/helm/charts/ | nats | 2.15.2 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| nats.config.cluster.enabled | bool | `false` |  |
| nats.config.jetstream.enabled | bool | `true` |  |
| nats.config.jetstream.fileStore.enabled | bool | `true` |  |
| nats.config.jetstream.fileStore.pvc.size | string | `"5Gi"` |  |
| nats.config.jetstream.fileStore.pvc.storageClassName | string | `"local-path"` |  |
| nats.fullnameOverride | string | `"nats"` |  |
| nats.promExporter.enabled | bool | `true` |  |
| nats.promExporter.podMonitor.enabled | bool | `true` |  |
# Trivy scan - Helm Chart

## Report Summary

| Target | Type | Misconfigurations |
| --- | --- | --- |
