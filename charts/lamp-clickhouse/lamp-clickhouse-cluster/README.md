# lamp-clickhouse-cluster

![Version: 0.1.1](https://img.shields.io/badge/Version-0.1.1-informational?style=flat-square)

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| clickhouse.databases | list | `[]` |  |
| clickhouse.image | string | `"clickhouse/clickhouse-server:26.2.3"` |  |
| clickhouse.profiles | object | `{}` |  |
| clickhouse.replicasCount | int | `1` |  |
| clickhouse.resources | object | `{}` |  |
| clickhouse.shardsCount | int | `1` |  |
| clickhouse.storage.size | string | `"10Gi"` |  |
| clickhouse.storage.storageClass | string | `"local-path"` |  |
| clickhouse.users | list | `[]` |  |
| externalSecrets.creationPolicy | string | `"Orphan"` |  |
| externalSecrets.kind | string | `"ClusterSecretStore"` |  |
| externalSecrets.name | string | `""` |  |
| externalSecrets.refreshInterval | string | `"1h"` |  |
| userPasswordSources | object | `{}` |  |
# Trivy scan - Helm Chart

## Report Summary

| Target | Type | Misconfigurations |
| --- | --- | --- |
| templates/chi.yaml | helm | 0 |
