# lamp-open-webui

![Version: 0.4.0](https://img.shields.io/badge/Version-0.4.0-informational?style=flat-square)

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
# Trivy scan - Helm Chart

## Report Summary

| Target | Type | Misconfigurations |
| --- | --- | --- |
