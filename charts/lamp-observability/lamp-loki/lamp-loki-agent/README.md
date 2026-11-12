# lamp-loki-agent

![Version: 0.5.1](https://img.shields.io/badge/Version-0.5.1-informational?style=flat-square)

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://grafana.github.io/helm-charts | alloy | 1.15.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| alloy.alloy.configMap.create | bool | `false` |  |
| alloy.alloy.configMap.key | string | `"config"` |  |
| alloy.alloy.configMap.name | string | `"alloy-logs-config"` |  |
| alloy.config.endpoint.tls.enabled | bool | `false` |  |
| alloy.config.endpoint.tls.skip_verify | bool | `true` |  |
| alloy.config.endpoint.url | string | `"https://loki.infra.example.cloud/loki/api/v1/push"` |  |
| alloy.config.labels.cluster | string | `"staging"` |  |
| alloy.config.logging.level | string | `"info"` |  |
| alloy.config.selector.label.enabled | bool | `false` |  |
| alloy.config.selector.label.label | string | `"alloy.logs=enabled"` |  |
| alloy.config.selector.namespace.enabled | bool | `false` |  |
| alloy.config.selector.namespace.namespaces[0] | string | `"example-ns"` |  |
| alloy.fullnameOverride | string | `"alloy-logs"` |  |
# Trivy scan - Helm Chart

## Report Summary

| Target | Type | Misconfigurations |
| --- | --- | --- |
