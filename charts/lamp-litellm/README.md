# lamp-litellm

![Version: 0.7.0](https://img.shields.io/badge/Version-0.7.0-informational?style=flat-square)

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| oci://ghcr.io/berriai | litellm-helm | 1.83.14-stable.patch.2 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| chatgptAccountMode | string | `"single"` |  |
| chatgptAccounts[0].authFile | string | `"/var/lib/litellm/chatgpt-auth/chatgpt-auth.json"` |  |
| chatgptAccounts[0].name | string | `"primary"` |  |
| chatgptAccounts[0].oldFile | string | `"/var/lib/litellm/chatgpt-auth/auth.json"` |  |
| chatgptAuthPersistence.pvcName | string | `"litellm-codex-auth-persistent"` |  |
| chatgptAuthPersistence.size | string | `"64Mi"` |  |
| chatgptAuthPersistence.storageClass | string | `"hcloud-volumes"` |  |
| chatgptModels[0] | string | `"gpt-5.6-sol"` |  |
| chatgptModels[1] | string | `"gpt-5.6-terra"` |  |
| chatgptModels[2] | string | `"gpt-5.6-luna"` |  |
| claudeApiKeys[0].envVar | string | `"ANTHROPIC_API_KEY"` |  |
| claudeApiKeys[0].name | string | `"djinn"` |  |
| claudeApiKeys[0].remoteRef.key | string | `"litellm"` |  |
| claudeApiKeys[0].remoteRef.property | string | `"claude_api.token-djinn"` |  |
| claudeApiKeys[0].secretName | string | `"litellm-claude-djinn"` |  |
| claudeApiKeys[1].envVar | string | `"ANTHROPIC_API_KEY_MORRA"` |  |
| claudeApiKeys[1].name | string | `"morra"` |  |
| claudeApiKeys[1].remoteRef.key | string | `"litellm"` |  |
| claudeApiKeys[1].remoteRef.property | string | `"claude_api.token-morra"` |  |
| claudeApiKeys[1].secretName | string | `"litellm-claude-morra"` |  |
| claudeModels[0] | string | `"claude-opus-5"` |  |
| claudeModels[1] | string | `"claude-sonnet-5"` |  |
| claudeModels[2] | string | `"claude-haiku-4-5-20251001"` |  |
| deepseekApiKey.remoteRef.key | string | `"litellm"` |  |
| deepseekApiKey.remoteRef.property | string | `"deepseek_api_key"` |  |
| deepseekApiKey.secretName | string | `"litellm-deepseek"` |  |
| deepseekModels[0] | string | `"deepseek-v4-flash"` |  |
| externalSecrets.creationPolicy | string | `"Orphan"` |  |
| externalSecrets.kind | string | `"ClusterSecretStore"` |  |
| externalSecrets.name | string | `"vault"` |  |
| externalSecrets.refreshInterval | string | `"1h"` |  |
| fallbackTail | list | `[]` |  |
| geminiApiKey.remoteRef.key | string | `"litellm"` |  |
| geminiApiKey.remoteRef.property | string | `"gemini_api_key"` |  |
| geminiApiKey.secretName | string | `"litellm-gemini"` |  |
| geminiImageModels[0] | string | `"gemini-2.5-flash-image"` |  |
| geminiImageModels[1] | string | `"gemini-3-pro-image"` |  |
| groqApiKey.remoteRef.key | string | `"litellm"` |  |
| groqApiKey.remoteRef.property | string | `"groq_api_key"` |  |
| groqApiKey.secretName | string | `"litellm-groq"` |  |
| imagePullSecret.registry | string | `"registry.gitlab.com/from-the-lamp"` |  |
| imagePullSecret.remoteKey | string | `"gitlab"` |  |
| imagePullSecret.remoteProperty | string | `"image-pull-secret"` |  |
| imagePullSecret.secretName | string | `"litellm-image-pull"` |  |
| imagePullSecret.username | string | `"token"` |  |
| litellm-helm.db.deployStandalone | bool | `false` |  |
| litellm-helm.db.useExisting | bool | `false` |  |
| litellm-helm.deploymentAnnotations."reloader.stakater.com/auto" | string | `"true"` |  |
| litellm-helm.envVars.CHATGPT_AUTH_FILE | string | `"chatgpt-auth.json"` |  |
| litellm-helm.envVars.CHATGPT_TOKEN_DIR | string | `"/var/lib/litellm/chatgpt-auth"` |  |
| litellm-helm.envVars.JSON_LOGS | string | `"true"` |  |
| litellm-helm.envVars.LITELLM_LOG | string | `"WARNING"` |  |
| litellm-helm.envVars.LITELLM_MODE | string | `"PRODUCTION"` |  |
| litellm-helm.envVars.OTEL_EXPORTER_OTLP_ENDPOINT | string | `"http://tempo-distributor.tempo.svc.cluster.local:4318"` |  |
| litellm-helm.environmentSecrets[0] | string | `"litellm-deepseek"` |  |
| litellm-helm.environmentSecrets[1] | string | `"litellm-groq"` |  |
| litellm-helm.environmentSecrets[2] | string | `"litellm-claude-djinn"` |  |
| litellm-helm.environmentSecrets[3] | string | `"litellm-claude-morra"` |  |
| litellm-helm.environmentSecrets[4] | string | `"litellm-gemini"` |  |
| litellm-helm.environmentSecrets[5] | string | `"litellm-postgres-secret"` |  |
| litellm-helm.environmentSecrets[6] | string | `"litellm-salt"` |  |
| litellm-helm.extraInitContainers[0].command[0] | string | `"python3"` |  |
| litellm-helm.extraInitContainers[0].command[1] | string | `"/scripts/migrate-chatgpt-auth.py"` |  |
| litellm-helm.extraInitContainers[0].image | string | `"ghcr.io/berriai/litellm@sha256:11175975a3093e05e92faee2fe2fe3412a3ae2fcaa849eb0fe25d5f0d8bcb2e9"` |  |
| litellm-helm.extraInitContainers[0].name | string | `"migrate-chatgpt-auth"` |  |
| litellm-helm.extraInitContainers[0].volumeMounts[0].mountPath | string | `"/var/lib/litellm/chatgpt-auth"` |  |
| litellm-helm.extraInitContainers[0].volumeMounts[0].name | string | `"chatgpt-auth-persistent"` |  |
| litellm-helm.extraInitContainers[0].volumeMounts[1].mountPath | string | `"/scripts"` |  |
| litellm-helm.extraInitContainers[0].volumeMounts[1].name | string | `"chatgpt-migrate-script"` |  |
| litellm-helm.image.pullPolicy | string | `"Always"` |  |
| litellm-helm.image.repository | string | `"registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-litellm"` |  |
| litellm-helm.image.tag | string | `"1.0.14"` |  |
| litellm-helm.imagePullSecrets[0].name | string | `"litellm-image-pull"` |  |
| litellm-helm.livenessProbe.timeoutSeconds | int | `5` |  |
| litellm-helm.masterkeySecretKey | string | `"masterkey"` |  |
| litellm-helm.masterkeySecretName | string | `"litellm-masterkey"` |  |
| litellm-helm.migrationJob.enabled | bool | `false` |  |
| litellm-helm.proxyConfigMap.create | bool | `false` |  |
| litellm-helm.proxyConfigMap.key | string | `"config.yaml"` |  |
| litellm-helm.proxyConfigMap.name | string | `"litellm-proxy-config"` |  |
| litellm-helm.readinessProbe.timeoutSeconds | int | `5` |  |
| litellm-helm.replicaCount | int | `1` |  |
| litellm-helm.resources.limits.memory | string | `"3Gi"` |  |
| litellm-helm.resources.requests.cpu | string | `"100m"` |  |
| litellm-helm.resources.requests.memory | string | `"1280Mi"` |  |
| litellm-helm.service.port | int | `4000` |  |
| litellm-helm.service.type | string | `"ClusterIP"` |  |
| litellm-helm.strategy.rollingUpdate.maxSurge | int | `1` |  |
| litellm-helm.strategy.rollingUpdate.maxUnavailable | int | `0` |  |
| litellm-helm.strategy.type | string | `"RollingUpdate"` |  |
| litellm-helm.volumeMounts[0].mountPath | string | `"/var/lib/litellm/chatgpt-auth"` |  |
| litellm-helm.volumeMounts[0].name | string | `"chatgpt-auth-persistent"` |  |
| litellm-helm.volumes[0].name | string | `"chatgpt-auth-persistent"` |  |
| litellm-helm.volumes[0].persistentVolumeClaim.claimName | string | `"litellm-codex-auth-persistent"` |  |
| litellm-helm.volumes[1].configMap.name | string | `"litellm-chatgpt-migrate"` |  |
| litellm-helm.volumes[1].name | string | `"chatgpt-migrate-script"` |  |
| localOpenAICompatibleServers | list | `[]` |  |
| masterKey.remoteRef.key | string | `"litellm"` |  |
| masterKey.remoteRef.property | string | `"master_key"` |  |
| masterKey.secretName | string | `"litellm-masterkey"` |  |
| metrics.enabled | bool | `false` |  |
| modelFallbacks.claude-sonnet-5[0] | string | `"gpt-5.6-terra"` |  |
| otel.enabled | bool | `true` |  |
| postgres.database | string | `"litellm"` |  |
| postgres.enabled | bool | `true` |  |
| postgres.host | string | `"postgres-rw.postgres.svc.cluster.local"` |  |
| postgres.passwordProperty | string | `"users.litellm.password"` |  |
| postgres.port | int | `5432` |  |
| postgres.remoteSecretKey | string | `"postgres"` |  |
| postgres.secretName | string | `"litellm-postgres-secret"` |  |
| postgres.user | string | `"litellm"` |  |
| proxyConfigMap.key | string | `"config.yaml"` |  |
| proxyConfigMap.name | string | `"litellm-proxy-config"` |  |
| saltKey.remoteRef.key | string | `"litellm"` |  |
| saltKey.remoteRef.property | string | `"salt_key"` |  |
| saltKey.secretName | string | `"litellm-salt"` |  |
| whisperModels[0] | string | `"whisper-large-v3"` |  |
# Trivy scan - Helm Chart

## Report Summary

| Target | Type | Misconfigurations |
| --- | --- | --- |
| templates/configmap-chatgpt-migrate.yaml | kubernetes | 0 |
