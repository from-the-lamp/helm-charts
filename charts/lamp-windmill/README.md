# lamp-windmill

![Version: 0.1.1](https://img.shields.io/badge/Version-0.1.1-informational?style=flat-square)

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://windmill-labs.github.io/windmill-helm-charts/ | windmill | 4.0.309 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| bootstrap.enabled | bool | `false` |  |
| bootstrap.folders | list | `[]` |  |
| bootstrap.image | string | `"alpine:3.24"` |  |
| bootstrap.serviceUserEmail | string | `"toolhive-mcp@windmill.internal"` |  |
| bootstrap.tokenExchange | object | `{}` |  |
| bootstrap.variables | object | `{}` |  |
| bootstrap.workspace | string | `""` |  |
| database.host | string | `"postgres-rw.postgres.svc.cluster.local"` |  |
| database.name | string | `"windmill"` |  |
| database.passwordRef.key | string | `"postgres"` |  |
| database.passwordRef.property | string | `"users.windmill.password"` |  |
| database.port | int | `5432` |  |
| database.sslmode | string | `"disable"` |  |
| database.user | string | `"windmill"` |  |
| externalSecrets.creationPolicy | string | `"Owner"` |  |
| externalSecrets.kind | string | `"ClusterSecretStore"` |  |
| externalSecrets.name | string | `"vault"` |  |
| externalSecrets.refreshInterval | string | `"1h"` |  |
| internalUrl | string | `"http://windmill-app:8000"` |  |
| oauth.gitlab.secretRef | object | `{}` |  |
| superadminSecretRef.key | string | `"windmill"` |  |
| superadminSecretRef.property | string | `"superadmin_secret"` |  |
| windmill.ingress.enabled | bool | `false` |  |
| windmill.postgresql.enabled | bool | `false` |  |
| windmill.serviceAccount.name | string | `"windmill"` |  |
| windmill.windmill.app.extraEnv[0].name | string | `"REQUIRE_PREEXISTING_USER_FOR_OAUTH"` |  |
| windmill.windmill.app.extraEnv[0].value | string | `"true"` |  |
| windmill.windmill.app.extraEnv[1].name | string | `"SUPERADMIN_SECRET"` |  |
| windmill.windmill.app.extraEnv[1].valueFrom.secretKeyRef.key | string | `"secret"` |  |
| windmill.windmill.app.extraEnv[1].valueFrom.secretKeyRef.name | string | `"windmill-superadmin-secret"` |  |
| windmill.windmill.databaseUrlSecretKey | string | `"url"` |  |
| windmill.windmill.databaseUrlSecretName | string | `"windmill-database-url"` |  |
| windmill.windmill.indexer.enabled | bool | `false` |  |
| windmill.windmill.operator.enabled | bool | `true` |  |
| windmill.windmill.operator.instanceSpec.worker_configs.default.worker_tags[0] | string | `"ansible"` |  |
| windmill.windmill.operator.instanceSpec.worker_configs.default.worker_tags[10] | string | `"php"` |  |
| windmill.windmill.operator.instanceSpec.worker_configs.default.worker_tags[11] | string | `"powershell"` |  |
| windmill.windmill.operator.instanceSpec.worker_configs.default.worker_tags[12] | string | `"python3"` |  |
| windmill.windmill.operator.instanceSpec.worker_configs.default.worker_tags[13] | string | `"rust"` |  |
| windmill.windmill.operator.instanceSpec.worker_configs.default.worker_tags[1] | string | `"bash"` |  |
| windmill.windmill.operator.instanceSpec.worker_configs.default.worker_tags[2] | string | `"bun"` |  |
| windmill.windmill.operator.instanceSpec.worker_configs.default.worker_tags[3] | string | `"csharp"` |  |
| windmill.windmill.operator.instanceSpec.worker_configs.default.worker_tags[4] | string | `"deno"` |  |
| windmill.windmill.operator.instanceSpec.worker_configs.default.worker_tags[5] | string | `"dependency"` |  |
| windmill.windmill.operator.instanceSpec.worker_configs.default.worker_tags[6] | string | `"flow"` |  |
| windmill.windmill.operator.instanceSpec.worker_configs.default.worker_tags[7] | string | `"go"` |  |
| windmill.windmill.operator.instanceSpec.worker_configs.default.worker_tags[8] | string | `"hub"` |  |
| windmill.windmill.operator.instanceSpec.worker_configs.default.worker_tags[9] | string | `"other"` |  |
# Trivy scan - Helm Chart

## Report Summary

| Target | Type | Misconfigurations |
| --- | --- | --- |
