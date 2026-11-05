# lamp-renovate

![Version: 1.4.2](https://img.shields.io/badge/Version-1.4.2-informational?style=flat-square)

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| oci://ghcr.io/renovatebot/charts | renovate | 46.405.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| config.allowedCommands | list | `[]` |  |
| config.autodiscover | bool | `false` |  |
| config.endpoint | string | `"https://gitlab.com/api/v4"` |  |
| config.gitAuthor | string | `"Renovate Bot <renovate@from-the-lamp.work>"` |  |
| config.platform | string | `"gitlab"` |  |
| config.printConfig | bool | `false` |  |
| config.repositories[0] | string | `"from-the-lamp/infra/helm-charts"` |  |
| config.repositories[1] | string | `"from-the-lamp/infra/argo-apps"` |  |
| config.token.key | string | `"gitlab"` |  |
| config.token.property | string | `"token_legacy"` |  |
| externalSecrets.creationPolicy | string | `"Orphan"` |  |
| externalSecrets.kind | string | `"ClusterSecretStore"` |  |
| externalSecrets.name | string | `"vault"` |  |
| externalSecrets.refreshInterval | string | `"1h"` |  |
| renovate.env.NODE_OPTIONS | string | `"--max-old-space-size=2560"` |  |
| renovate.extraVolumeMounts[0].mountPath | string | `"/etc/renovate"` |  |
| renovate.extraVolumeMounts[0].name | string | `"renovate-config"` |  |
| renovate.extraVolumeMounts[0].readOnly | bool | `true` |  |
| renovate.extraVolumes[0].name | string | `"renovate-config"` |  |
| renovate.extraVolumes[0].secret.secretName | string | `"renovate-config"` |  |
| renovate.renovate.existingConfigFile | string | `"/etc/renovate/config.json"` |  |
| renovate.resources.limits.memory | string | `"3Gi"` |  |
| renovate.resources.requests.cpu | string | `"50m"` |  |
| renovate.resources.requests.memory | string | `"512Mi"` |  |
# Trivy scan - Helm Chart
```

Report Summary

┌────────┬──────┬───────────────────┐
│ Target │ Type │ Misconfigurations │
├────────┼──────┼───────────────────┤
│   -    │  -   │         -         │
└────────┴──────┴───────────────────┘
Legend:
- '-': Not scanned
- '0': Clean (no security findings detected)

```
