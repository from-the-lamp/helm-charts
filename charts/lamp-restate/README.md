# lamp-restate

![Version: 0.1.2](https://img.shields.io/badge/Version-0.1.2-informational?style=flat-square)

Restate - durable execution engine for the monorepo processor (replaces Windmill's suspend/resume for human-in-the-loop approval)

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| oci://ghcr.io/restatedev | restate(restate-helm) | 1.8.1 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| restate.env[0].name | string | `"RESTATE_LOG_FORMAT"` |  |
| restate.env[0].value | string | `"json"` |  |
| restate.env[1].name | string | `"RESTATE_CLUSTER_NAME"` |  |
| restate.env[1].value | string | `"localcluster"` |  |
| restate.env[2].name | string | `"RESTATE_ROCKSDB_TOTAL_MEMORY_SIZE"` |  |
| restate.env[2].value | string | `"512MB"` |  |
| restate.nameOverride | string | `"restate"` |  |
| restate.resources.limits.memory | string | `"1Gi"` |  |
| restate.resources.requests.cpu | string | `"100m"` |  |
| restate.resources.requests.memory | string | `"256Mi"` |  |
| restate.serviceMonitor.enabled | bool | `true` |  |
| restate.storage.size | string | `"10Gi"` |  |
| restate.storage.storageClassName | string | `"local-path"` |  |
| restate.version | string | `"1.7.12"` |  |
# Trivy scan - Helm Chart

## Report Summary

| Target | Type | Misconfigurations |
| --- | --- | --- |
