# lamp-tempo

![Version: 0.1.1](https://img.shields.io/badge/Version-0.1.1-informational?style=flat-square)

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://grafana.github.io/helm-charts | tempo(tempo-distributed) | 1.61.3 |
| https://grafana.github.io/helm-charts | vulture(tempo-vulture) | 0.10.1 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| tempo.compactor.config.compaction.block_retention | string | `"336h"` |  |
| tempo.distributor.service.annotations."tailscale.com/expose" | string | `"true"` |  |
| tempo.enabled | bool | `true` |  |
| tempo.gateway.enabled | bool | `false` |  |
| tempo.global.storageClass | string | `"local-path"` |  |
| tempo.ingester.config.complete_block_timeout | string | `"5m"` |  |
| tempo.ingester.config.max_block_duration | string | `"10m"` |  |
| tempo.ingester.persistence.enabled | bool | `true` |  |
| tempo.metaMonitoring.grafanaAgent.enabled | bool | `false` |  |
| tempo.metaMonitoring.grafanaAgent.installOperator | bool | `false` |  |
| tempo.metricsGenerator.config.storage.remote_write[0].url | string | `"http://vminsert-victoria-metrics.victoria-metrics:8480/insert/0/prometheus/api/v1/write"` |  |
| tempo.metricsGenerator.enabled | bool | `true` |  |
| tempo.minio.enabled | bool | `false` |  |
| tempo.reportingEnabled | bool | `false` |  |
| tempo.tempo.structuredConfig.query_frontend.search.max_duration | string | `"336h0m0s"` |  |
| tempo.traces.jaeger.grpc.enabled | bool | `true` |  |
| tempo.traces.otlp.grpc.enabled | bool | `true` |  |
| tempo.traces.otlp.http.enabled | bool | `true` |  |
| vulture.enabled | bool | `true` |  |
| vulture.podMonitor.enabled | bool | `true` |  |
| vulture.tempoAddress.push | string | `"grpc://tempo-distributor"` |  |
| vulture.tempoAddress.query | string | `"http://tempo-query-frontend:3200"` |  |
# Trivy scan - Helm Chart

## Report Summary

| Target | Type | Misconfigurations |
| --- | --- | --- |
