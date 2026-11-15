# lamp-volsync-backup

![Version: 0.0.1](https://img.shields.io/badge/Version-0.0.1-informational?style=flat-square)

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| cache.capacity | string | `"1Gi"` |  |
| cache.storageClassName | string | `"local-path"` |  |
| externalSecrets.creationPolicy | string | `"Orphan"` |  |
| externalSecrets.kind | string | `"ClusterSecretStore"` |  |
| externalSecrets.name | string | `"vault"` |  |
| externalSecrets.refreshInterval | string | `"1h"` |  |
| moverResources | object | `{}` |  |
| moverSecurityContext | object | `{}` |  |
| name | string | `""` |  |
| pruneIntervalDays | int | `7` |  |
| repository.bucket | string | `""` |  |
| repository.endpoint | string | `"s3.eu-central-003.backblazeb2.com"` |  |
| repository.path | string | `""` |  |
| restore.accessModes[0] | string | `"ReadWriteOnce"` |  |
| restore.capacity | string | `""` |  |
| restore.destinationPVC | string | `""` |  |
| restore.enabled | bool | `false` |  |
| restore.previous | int | `0` |  |
| restore.restoreAsOf | string | `""` |  |
| restore.storageClassName | string | `"local-path"` |  |
| restore.trigger | string | `"restore-once"` |  |
| retain.daily | int | `7` |  |
| retain.monthly | int | `6` |  |
| retain.weekly | int | `4` |  |
| schedule | string | `"0 */6 * * *"` |  |
| sourcePVC | string | `""` |  |
| vault.restic.passwordProperty | string | `"password"` |  |
| vault.restic.remoteSecretKey | string | `"restic"` |  |
| vault.s3.accessKeyProperty | string | `""` |  |
| vault.s3.remoteSecretKey | string | `"s3"` |  |
| vault.s3.secretKeyProperty | string | `""` |  |
# Trivy scan - Helm Chart

## Report Summary

| Target | Type | Misconfigurations |
| --- | --- | --- |
