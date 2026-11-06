# lamp-open-webui

![Version: 0.2.0](https://img.shields.io/badge/Version-0.2.0-informational?style=flat-square)

Thin wrapper around the upstream Open WebUI chart

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://helm.openwebui.com/ | open-webui | 18.0.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| adminBootstrap.emailProperty | string | `"admin-email"` |  |
| adminBootstrap.enabled | bool | `false` |  |
| adminBootstrap.nameProperty | string | `"admin-name"` |  |
| adminBootstrap.passwordProperty | string | `"admin-password"` |  |
| adminBootstrap.remoteSecretKey | string | `"open-webui"` |  |
| externalSecrets.creationPolicy | string | `"Orphan"` |  |
| externalSecrets.kind | string | `"ClusterSecretStore"` |  |
| externalSecrets.name | string | `"vault"` |  |
| externalSecrets.refreshInterval | string | `"1h"` |  |
| open-webui.extraEnvFrom[0].secretRef.name | string | `"open-webui-admin-bootstrap"` |  |
| open-webui.extraEnvFrom[0].secretRef.optional | bool | `true` |  |
# Trivy scan - Helm Chart

## Report Summary

| Target | Type | Misconfigurations |
| --- | --- | --- |
