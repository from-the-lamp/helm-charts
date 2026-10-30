# lamp-actualbudget

![Version: 0.2.0](https://img.shields.io/badge/Version-0.2.0-informational?style=flat-square)

Actual Budget deployment chart; thin wrapper around the community-charts actualbudget chart

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://community-charts.github.io/helm-charts | actualbudget | 1.9.5 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| actualbudget.extraEnvVars.ACTUAL_OPENID_SERVER_HOSTNAME | string | `"https://actualbudget.from-the-lamp.work"` |  |
| actualbudget.image.tag | string | `""` |  |
| actualbudget.ingress.enabled | bool | `true` |  |
| actualbudget.login.method | string | `"password"` |  |
| actualbudget.login.openid.authMethod | string | `"openid"` |  |
| actualbudget.login.openid.discoveryUrl | string | `"https://gitlab.com"` |  |
| actualbudget.login.openid.enforce | bool | `true` |  |
| actualbudget.login.openid.existingSecret.clientIdKey | string | `"client_id"` |  |
| actualbudget.login.openid.existingSecret.clientSecretKey | string | `"client_secret"` |  |
| actualbudget.login.openid.existingSecret.name | string | `"actualbudget-openid-client"` |  |
| actualbudget.login.openid.providerName | string | `"GitLab"` |  |
| actualbudget.persistence.accessModes[0] | string | `"ReadWriteOnce"` |  |
| actualbudget.persistence.enabled | bool | `true` |  |
| actualbudget.persistence.size | string | `"5Gi"` |  |
| actualbudget.service.port | int | `5006` |  |
| actualbudget.service.type | string | `"ClusterIP"` |  |
| actualbudget.strategy.type | string | `"Recreate"` |  |
| externalSecrets.creationPolicy | string | `"Orphan"` |  |
| externalSecrets.kind | string | `"ClusterSecretStore"` |  |
| externalSecrets.name | string | `"vault"` |  |
| externalSecrets.refreshInterval | string | `"1h"` |  |
| openid.remoteSecretKeys.client_id.key | string | `"client_id"` |  |
| openid.remoteSecretKeys.client_id.path | string | `"example/path"` |  |
| openid.remoteSecretKeys.client_secret.key | string | `"client_secret"` |  |
| openid.remoteSecretKeys.client_secret.path | string | `"example/path"` |  |
# Trivy scan - Helm Chart
```

Report Summary

┌──────────────────────────────┬────────────┬───────────────────┐
│            Target            │    Type    │ Misconfigurations │
├──────────────────────────────┼────────────┼───────────────────┤
│ templates/openid-secret.yaml │ kubernetes │         0         │
└──────────────────────────────┴────────────┴───────────────────┘
Legend:
- '-': Not scanned
- '0': Clean (no security findings detected)

```
