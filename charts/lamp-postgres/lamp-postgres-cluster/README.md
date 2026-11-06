# lamp-postgres-cluster

![Version: 0.0.4](https://img.shields.io/badge/Version-0.0.4-informational?style=flat-square)

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://cloudnative-pg.github.io/charts | cluster | 0.9.0 |
| https://cloudnative-pg.github.io/charts | plugin-barman-cloud | 0.8.1 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| backupCredentials.accessKeyProperty | string | `"backblaze.from-the-lamp.id"` |  |
| backupCredentials.remoteSecretKey | string | `"s3"` |  |
| backupCredentials.secretKeyProperty | string | `"backblaze.from-the-lamp.secret"` |  |
| cluster.backups.enabled | bool | `false` |  |
| cluster.backups.endpointURL | string | `""` |  |
| cluster.backups.method | string | `"plugin"` |  |
| cluster.backups.pluginConfiguration.name | string | `"barman-cloud.cloudnative-pg.io"` |  |
| cluster.backups.provider | string | `"s3"` |  |
| cluster.backups.retentionPolicy | string | `"30d"` |  |
| cluster.backups.s3.bucket | string | `""` |  |
| cluster.backups.s3.path | string | `"/"` |  |
| cluster.backups.s3.region | string | `""` |  |
| cluster.backups.scheduledBackups[0].backupOwnerReference | string | `"self"` |  |
| cluster.backups.scheduledBackups[0].method | string | `"plugin"` |  |
| cluster.backups.scheduledBackups[0].name | string | `"daily-backup"` |  |
| cluster.backups.scheduledBackups[0].pluginConfiguration.name | string | `"barman-cloud.cloudnative-pg.io"` |  |
| cluster.backups.scheduledBackups[0].schedule | string | `"0 0 0 * * *"` |  |
| cluster.backups.secret.create | bool | `false` |  |
| cluster.backups.secret.name | string | `""` |  |
| cluster.cluster.databases | list | `[]` |  |
| cluster.cluster.enableSuperuserAccess | bool | `true` |  |
| cluster.cluster.instances | int | `1` |  |
| cluster.cluster.logLevel | string | `"info"` |  |
| cluster.cluster.monitoring.enabled | bool | `true` |  |
| cluster.cluster.monitoring.podMonitor.enabled | bool | `true` |  |
| cluster.cluster.monitoring.prometheusRule.excludeRules[0] | string | `"CNPGClusterHAWarning"` |  |
| cluster.cluster.monitoring.prometheusRule.excludeRules[1] | string | `"CNPGClusterHACritical"` |  |
| cluster.cluster.postgresql.parameters."auto_explain.log_min_duration" | string | `"10s"` |  |
| cluster.cluster.postgresql.parameters."pg_stat_statements.max" | string | `"10000"` |  |
| cluster.cluster.postgresql.parameters."pg_stat_statements.track" | string | `"all"` |  |
| cluster.cluster.postgresql.parameters.max_connections | string | `"1000"` |  |
| cluster.cluster.postgresql.parameters.shared_buffers | string | `"256MB"` |  |
| cluster.cluster.postgresql.pg_hba | list | `[]` |  |
| cluster.cluster.primaryUpdateStrategy | string | `"unsupervised"` |  |
| cluster.cluster.roles | list | `[]` |  |
| cluster.cluster.storage.size | string | `"10Gi"` |  |
| cluster.cluster.storage.storageClass | string | `"local-path"` |  |
| cluster.cluster.superuser.password.key | string | `"postgres-superuser-password"` |  |
| cluster.cluster.superuser.password.property | string | `"pass"` |  |
| cluster.cluster.superuser.username | string | `"postgres"` |  |
| cluster.cluster.superuserSecret | string | `"postgres-superuser"` |  |
| cluster.cluster.walStorage.size | string | `"1Gi"` |  |
| cluster.cluster.walStorage.storageClass | string | `"local-path"` |  |
| cluster.fullnameOverride | string | `"postgres"` |  |
| cluster.mode | string | `"standalone"` |  |
| cluster.poolers[0].instances | int | `1` |  |
| cluster.poolers[0].monitoring.enabled | bool | `true` |  |
| cluster.poolers[0].monitoring.podMonitor.enabled | bool | `true` |  |
| cluster.poolers[0].name | string | `"rw"` |  |
| cluster.poolers[0].parameters.default_pool_size | string | `"25"` |  |
| cluster.poolers[0].parameters.max_client_conn | string | `"1000"` |  |
| cluster.poolers[0].poolMode | string | `"transaction"` |  |
| cluster.poolers[0].template | object | `{}` |  |
| cluster.poolers[0].type | string | `"rw"` |  |
| cluster.type | string | `"postgresql"` |  |
| externalSecrets.creationPolicy | string | `"Orphan"` |  |
| externalSecrets.kind | string | `"ClusterSecretStore"` |  |
| externalSecrets.name | string | `""` |  |
| externalSecrets.refreshInterval | string | `"1h"` |  |
# Trivy scan - Helm Chart

## Report Summary

| Target | Type | Misconfigurations |
| --- | --- | --- |
