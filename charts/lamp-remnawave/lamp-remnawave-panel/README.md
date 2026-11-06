# lamp-remnawave-panel

![Version: 1.1.2](https://img.shields.io/badge/Version-1.1.2-informational?style=flat-square)

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| oci://registry-1.docker.io/bitnamicharts | postgresql | 18.12.17 |
| oci://registry-1.docker.io/bitnamicharts | valkey | 6.3.13 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| deployment.annotations | object | `{}` |  |
| deployment.replicas | int | `1` |  |
| env.BANDWIDTH_USAGE_NOTIFICATIONS_ENABLED | bool | `false` |  |
| env.CLOUDFLARE_TOKEN | string | `""` |  |
| env.FRONT_END_DOMAIN | string | `"remnawave.CHANGE-ME.invalid"` |  |
| env.HWID_DEVICE_LIMIT_ENABLED | bool | `false` |  |
| env.IS_DOCS_ENABLED | bool | `false` |  |
| env.IS_TELEGRAM_NOTIFICATIONS_ENABLED | bool | `false` |  |
| env.JWT_API_TOKENS_SECRET | string | `""` |  |
| env.JWT_AUTH_SECRET | string | `""` |  |
| env.SCALAR_PATH | string | `"/scalar"` |  |
| env.SUB_PUBLIC_DOMAIN | string | `"remnawave.CHANGE-ME.invalid/api/sub"` |  |
| env.SWAGGER_PATH | string | `"/docs"` |  |
| env.TELEGRAM_BOT_TOKEN | string | `"change_me"` |  |
| env.TELEGRAM_NOTIFY_CRM_CHAT_ID | string | `"change_me"` |  |
| env.TELEGRAM_NOTIFY_CRM_THREAD_ID | string | `nil` |  |
| env.TELEGRAM_NOTIFY_NODES_CHAT_ID | string | `"change_me"` |  |
| env.TELEGRAM_NOTIFY_NODES_THREAD_ID | string | `nil` |  |
| env.TELEGRAM_NOTIFY_USERS_CHAT_ID | string | `"change_me"` |  |
| env.TELEGRAM_NOTIFY_USERS_THREAD_ID | string | `nil` |  |
| env.TELEGRAM_OAUTH_ENABLED | bool | `false` |  |
| env.WEBHOOK_ENABLED | bool | `false` |  |
| env.WEBHOOK_SECRET_HEADER | string | `""` |  |
| env.WEBHOOK_URL | string | `"https://webhook.site/1234567890"` |  |
| existingSecret | string | `""` |  |
| image.name | string | `"remnawave/backend"` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.pullSecrets | list | `[]` |  |
| image.tag | string | `"2.1.9"` |  |
| metrics.pass | string | `"admin"` |  |
| metrics.service.annotations | object | `{}` |  |
| metrics.service.port | int | `3001` |  |
| metrics.service.targetPort | int | `3001` |  |
| metrics.serviceMonitor.enabled | bool | `false` |  |
| metrics.user | string | `"admin"` |  |
| postgresql.auth.database | string | `"remnawave"` |  |
| postgresql.auth.password | string | `"remnawave"` |  |
| postgresql.auth.username | string | `"remnawave"` |  |
| postgresql.enabled | bool | `true` |  |
| probes.liveness.failureThreshold | int | `3` |  |
| probes.liveness.httpGet.path | string | `"/health"` |  |
| probes.liveness.httpGet.port | string | `"http-metrics"` |  |
| probes.liveness.initialDelaySeconds | int | `10` |  |
| probes.liveness.periodSeconds | int | `10` |  |
| probes.liveness.timeoutSeconds | int | `2` |  |
| probes.readiness.failureThreshold | int | `3` |  |
| probes.readiness.httpGet.path | string | `"/health"` |  |
| probes.readiness.httpGet.port | string | `"http-metrics"` |  |
| probes.readiness.initialDelaySeconds | int | `5` |  |
| probes.readiness.periodSeconds | int | `5` |  |
| probes.readiness.timeoutSeconds | int | `2` |  |
| service.annotations | object | `{}` |  |
| service.port | int | `3000` |  |
| service.targetPort | int | `3000` |  |
| service.type | string | `"ClusterIP"` |  |
| valkey.auth.enabled | bool | `false` |  |
| valkey.enabled | bool | `true` |  |
| valkey.primary.disableCommands | list | `[]` |  |
| valkey.primary.replicaCount | int | `1` |  |
| valkey.replica.replicaCount | int | `0` |  |
# Trivy scan - Helm Chart

## Report Summary

| Target | Type | Misconfigurations |
| --- | --- | --- |
