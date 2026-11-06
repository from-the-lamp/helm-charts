# lamp-open-webui

![Version: 0.7.0](https://img.shields.io/badge/Version-0.7.0-informational?style=flat-square)

Thin wrapper around the upstream Open WebUI chart

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://helm.openwebui.com/ | open-webui | 18.0.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| externalSecrets.creationPolicy | string | `"Orphan"` |  |
| externalSecrets.kind | string | `"ClusterSecretStore"` |  |
| externalSecrets.name | string | `"vault"` |  |
| externalSecrets.refreshInterval | string | `"1h"` |  |
| oauth.adminRoles | string | `""` |  |
| oauth.allowedRoles | string | `""` |  |
| oauth.clientIdProperty | string | `"oauth.client-id"` |  |
| oauth.clientSecretProperty | string | `"oauth.client-secret"` |  |
| oauth.enabled | bool | `false` |  |
| oauth.providerName | string | `"SSO"` |  |
| oauth.providerUrl | string | `""` |  |
| oauth.remoteSecretKey | string | `"open-webui"` |  |
| oauth.rolesClaim | string | `"groups"` |  |
| oauth.scopes | string | `"openid email profile"` |  |
| open-webui.extraEnvFrom[0].secretRef.name | string | `"open-webui-oauth-secret"` |  |
| open-webui.extraEnvFrom[0].secretRef.optional | bool | `true` |  |
| open-webui.extraEnvFrom[1].configMapRef.name | string | `"open-webui-oauth-config"` |  |
| open-webui.extraEnvFrom[1].configMapRef.optional | bool | `true` |  |
| open-webui.extraEnvFrom[2].secretRef.name | string | `"open-webui-postgres-secret"` |  |
| open-webui.extraEnvFrom[2].secretRef.optional | bool | `true` |  |
| open-webui.extraEnvFrom[3].configMapRef.name | string | `"open-webui-postgres-config"` |  |
| open-webui.extraEnvFrom[3].configMapRef.optional | bool | `true` |  |
| open-webui.extraEnvFrom[4].secretRef.name | string | `"open-webui-storage-secret"` |  |
| open-webui.extraEnvFrom[4].secretRef.optional | bool | `true` |  |
| open-webui.extraEnvFrom[5].configMapRef.name | string | `"open-webui-storage-config"` |  |
| open-webui.extraEnvFrom[5].configMapRef.optional | bool | `true` |  |
| open-webui.extraEnvFrom[6].secretRef.name | string | `"open-webui-secret-key"` |  |
| open-webui.extraEnvFrom[6].secretRef.optional | bool | `true` |  |
| postgres.database | string | `"open-webui"` |  |
| postgres.enabled | bool | `false` |  |
| postgres.host | string | `"postgres-rw.postgres.svc.cluster.local"` |  |
| postgres.passwordProperty | string | `"users.open-webui.password"` |  |
| postgres.port | int | `5432` |  |
| postgres.remoteSecretKey | string | `"postgres"` |  |
| postgres.user | string | `"open-webui"` |  |
| secretKey.enabled | bool | `false` |  |
| secretKey.property | string | `"webui-secret-key"` |  |
| secretKey.remoteSecretKey | string | `"open-webui"` |  |
| storage.accessKeyProperty | string | `""` |  |
| storage.bucket | string | `""` |  |
| storage.enabled | bool | `false` |  |
| storage.endpointUrl | string | `""` |  |
| storage.keyPrefix | string | `""` |  |
| storage.region | string | `""` |  |
| storage.remoteSecretKey | string | `""` |  |
| storage.secretKeyProperty | string | `""` |  |
# Trivy scan - Helm Chart

## Report Summary

| Target | Type | Misconfigurations |
| --- | --- | --- |
