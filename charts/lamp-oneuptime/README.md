# lamp-oneuptime

![Version: 0.4.0](https://img.shields.io/badge/Version-0.4.0-informational?style=flat-square)

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://helm-chart.oneuptime.com | oneuptime | 15.0.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| adminBootstrap.emailProperty | string | `"admin-email"` |  |
| adminBootstrap.enabled | bool | `true` |  |
| adminBootstrap.nameProperty | string | `"admin-name"` |  |
| adminBootstrap.passwordProperty | string | `"admin-password"` |  |
| adminBootstrap.remoteSecretKey | string | `"platform/oneuptime"` |  |
| database.passwordSecret.name | string | `"postgres-oneuptime-password"` |  |
| database.passwordSecret.remoteSecretKey | string | `"postgres"` |  |
| database.passwordSecret.remoteSecretProperty | string | `"users.oneuptime.password"` |  |
| externalSecrets.creationPolicy | string | `"Orphan"` |  |
| externalSecrets.kind | string | `"ClusterSecretStore"` |  |
| externalSecrets.name | string | `"vault"` |  |
| externalSecrets.refreshInterval | string | `"1h"` |  |
| oneuptime.externalPostgres.database | string | `"oneuptime"` |  |
| oneuptime.externalPostgres.existingSecret.name | string | `"postgres-oneuptime-password"` |  |
| oneuptime.externalPostgres.existingSecret.passwordKey | string | `"password"` |  |
| oneuptime.externalPostgres.host | string | `"postgres-rw.postgres.svc.cluster.local"` |  |
| oneuptime.externalPostgres.port | int | `5432` |  |
| oneuptime.externalPostgres.username | string | `"oneuptime"` |  |
| oneuptime.global.storageClass | string | `"local-path"` |  |
| oneuptime.host | string | `"oneuptime.from-the-lamp.work"` |  |
| oneuptime.httpProtocol | string | `"http"` |  |
| oneuptime.image.type | string | `"community-edition"` |  |
| oneuptime.nginx.service.type | string | `"ClusterIP"` |  |
| oneuptime.postgresql.enabled | bool | `false` |  |
| oneuptime.probeContainerSecurityContext.capabilities.add[0] | string | `"CHOWN"` |  |
| oneuptime.probeContainerSecurityContext.capabilities.add[1] | string | `"DAC_OVERRIDE"` |  |
| oneuptime.probeContainerSecurityContext.capabilities.add[2] | string | `"KILL"` |  |
| oneuptime.probeContainerSecurityContext.capabilities.add[3] | string | `"SETGID"` |  |
| oneuptime.probeContainerSecurityContext.capabilities.add[4] | string | `"SETUID"` |  |
# Trivy scan - Helm Chart

## Report Summary

| Target | Type | Misconfigurations |
| --- | --- | --- |
