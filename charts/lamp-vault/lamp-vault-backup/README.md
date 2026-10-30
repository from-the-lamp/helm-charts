# vsoft-vault-backup

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square)

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| backup.enabled | bool | `true` |  |
| backup.gcs.auth | string | `"workloadIdentity"` |  |
| backup.gcs.bucket.create | bool | `true` |  |
| backup.gcs.bucket.location | string | `""` |  |
| backup.gcs.bucket.name | string | `""` |  |
| backup.gcs.bucket.storageClass | string | `"STANDARD"` |  |
| backup.gcs.credentialsJson.key | string | `"backup_credentials_json"` |  |
| backup.gcs.credentialsJson.path | string | `"platform/vault"` |  |
| backup.gcs.path | string | `"vault"` |  |
| backup.gcs.serviceAccount.create | bool | `true` |  |
| backup.gcs.serviceAccount.name | string | `"vault-backup"` |  |
| backup.keep | int | `7` |  |
| backup.provider | string | `"gcs"` |  |
| backup.rclone.image.name | string | `"rclone/rclone"` |  |
| backup.rclone.image.tag | string | `"1.69"` |  |
| backup.rclone.resources.limits.memory | string | `"512Mi"` |  |
| backup.rclone.resources.requests.cpu | string | `"50m"` |  |
| backup.rclone.resources.requests.memory | string | `"128Mi"` |  |
| backup.s3.accessKey.key | string | `"backup_access_key"` |  |
| backup.s3.accessKey.path | string | `"platform/vault"` |  |
| backup.s3.bucket | string | `"backup.vault.stage"` |  |
| backup.s3.path | string | `"vault"` |  |
| backup.s3.region | string | `"eu-central-1"` |  |
| backup.s3.secretKey.key | string | `"backup_secret_key"` |  |
| backup.s3.secretKey.path | string | `"platform/vault"` |  |
| backup.schedule | string | `"0 2 * * *"` |  |
| backup.vault.address | string | `"http://vault.vault.svc.cluster.local:8200"` |  |
| backup.vault.image.name | string | `"hashicorp/vault"` |  |
| backup.vault.image.tag | string | `"1.21.4"` |  |
| backup.vault.resources.limits.memory | string | `"256Mi"` |  |
| backup.vault.resources.requests.cpu | string | `"10m"` |  |
| backup.vault.resources.requests.memory | string | `"128Mi"` |  |
| backup.vault.token.existingSecret.key | string | `"vault-root"` |  |
| backup.vault.token.existingSecret.name | string | `"vault-unseal-keys"` |  |
| backup.vault.token.externalSecret.key | string | `"backup_token"` |  |
| backup.vault.token.externalSecret.path | string | `"platform/vault"` |  |
| backup.vault.token.source | string | `"existingSecret"` |  |
| externalSecrets.creationPolicy | string | `"Orphan"` |  |
| externalSecrets.kind | string | `"ClusterSecretStore"` |  |
| externalSecrets.name | string | `"vault"` |  |
| externalSecrets.refreshInterval | string | `"1h"` |  |
| global.projectId | string | `""` |  |
| global.region | string | `""` |  |
