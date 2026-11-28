# lamp-immich

![Version: 0.1.4](https://img.shields.io/badge/Version-0.1.4-informational?style=flat-square)

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| oci://ghcr.io/immich-app/immich-charts | immich | 0.13.4 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| adminBootstrap.emailProperty | string | `"admin-email"` |  |
| adminBootstrap.enabled | bool | `false` |  |
| adminBootstrap.nameProperty | string | `"admin-name"` |  |
| adminBootstrap.passwordProperty | string | `"admin-password"` |  |
| adminBootstrap.remoteSecretKey | string | `"immich"` |  |
| configuration | object | `{}` |  |
| database.passwordSecret.name | string | `"postgres-immich-password"` |  |
| database.passwordSecret.remoteSecretKey | string | `"postgres"` |  |
| database.passwordSecret.remoteSecretProperty | string | `"users.immich.password"` |  |
| externalSecrets.creationPolicy | string | `"Orphan"` |  |
| externalSecrets.kind | string | `"ClusterSecretStore"` |  |
| externalSecrets.name | string | `"vault"` |  |
| externalSecrets.refreshInterval | string | `"1h"` |  |
| immich.controllers.main.containers.main.env.DB_DATABASE_NAME | string | `"immich"` |  |
| immich.controllers.main.containers.main.env.DB_HOSTNAME | string | `"postgres-rw.postgres.svc.cluster.local"` |  |
| immich.controllers.main.containers.main.env.DB_PASSWORD.valueFrom.secretKeyRef.key | string | `"password"` |  |
| immich.controllers.main.containers.main.env.DB_PASSWORD.valueFrom.secretKeyRef.name | string | `"postgres-immich-password"` |  |
| immich.controllers.main.containers.main.env.DB_USERNAME | string | `"immich"` |  |
| immich.immich.configurationKind | string | `"Secret"` |  |
| immich.immich.existingConfiguration | string | `"immich-config"` |  |
| immich.immich.persistence.library.existingClaim | string | `"immich-library"` |  |
| immich.machine-learning.controllers.main.containers.main.resources.limits.cpu | string | `"1"` |  |
| immich.machine-learning.controllers.main.containers.main.resources.limits.memory | string | `"2Gi"` |  |
| immich.machine-learning.controllers.main.containers.main.resources.requests.cpu | string | `"100m"` |  |
| immich.machine-learning.controllers.main.containers.main.resources.requests.memory | string | `"512Mi"` |  |
| immich.machine-learning.persistence.cache.accessMode | string | `"ReadWriteOnce"` |  |
| immich.machine-learning.persistence.cache.enabled | bool | `true` |  |
| immich.machine-learning.persistence.cache.size | string | `"10Gi"` |  |
| immich.machine-learning.persistence.cache.storageClass | string | `"hcloud-volumes"` |  |
| immich.machine-learning.persistence.cache.type | string | `"persistentVolumeClaim"` |  |
| immich.server.controllers.main.annotations."reloader.stakater.com/auto" | string | `"true"` |  |
| immich.server.controllers.main.containers.main.resources.limits.memory | string | `"1Gi"` |  |
| immich.server.controllers.main.containers.main.resources.requests.cpu | string | `"20m"` |  |
| immich.server.controllers.main.containers.main.resources.requests.memory | string | `"256Mi"` |  |
| immich.valkey.enabled | bool | `true` |  |
| library.size | string | `"100Gi"` |  |
| library.storageClass | string | `"hcloud-volumes"` |  |
| oauth.autoRegister | bool | `true` |  |
| oauth.buttonText | string | `"Login with GitLab"` |  |
| oauth.clientIdProperty | string | `"oauth-client-id"` |  |
| oauth.clientSecretProperty | string | `"oauth-client-secret"` |  |
| oauth.enabled | bool | `false` |  |
| oauth.issuerUrl | string | `"https://gitlab.com"` |  |
| oauth.mobileRedirectUri | string | `""` |  |
| oauth.remoteSecretKey | string | `"immich"` |  |
| oauth.scope | string | `"openid email profile"` |  |
# Trivy scan - Helm Chart

## Report Summary

| Target | Type | Misconfigurations |
| --- | --- | --- |
