# lamp-cloudflared

![Version: 0.0.2](https://img.shields.io/badge/Version-0.0.2-informational?style=flat-square)

Cloudflare Tunnel chart with secret-based credentials and scheduled rollout restarts

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| fullnameOverride | string | `"cloudflared"` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"cloudflare/cloudflared"` |  |
| image.tag | string | `"2026.10.7"` |  |
| imagePullSecrets | list | `[]` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podLabels | object | `{}` |  |
| podSecurityContext.runAsNonRoot | bool | `true` |  |
| podSecurityContext.runAsUser | int | `65532` |  |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| rollout.cron | string | `"0 3 * * *"` |  |
| rollout.enabled | bool | `true` |  |
| securityContext.allowPrivilegeEscalation | bool | `false` |  |
| securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| securityContext.readOnlyRootFilesystem | bool | `true` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.name | string | `""` |  |
| tolerations | list | `[]` |  |
# Trivy scan - Helm Chart

## Report Summary

| Target | Type | Misconfigurations |
| --- | --- | --- |
