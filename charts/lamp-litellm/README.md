# lamp-litellm

![Version: 0.4.3](https://img.shields.io/badge/Version-0.4.3-informational?style=flat-square)

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| oci://ghcr.io/berriai | litellm-helm | 1.83.14-stable.patch.2 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| chatgptAuthPersistence.pvcName | string | `"litellm-codex-auth-persistent"` |  |
| chatgptAuthPersistence.size | string | `"64Mi"` |  |
| chatgptAuthPersistence.storageClass | string | `"hcloud-volumes"` |  |
| chatgptModels[0] | string | `"gpt-5.6-sol"` |  |
| chatgptModels[1] | string | `"gpt-5.6-terra"` |  |
| chatgptModels[2] | string | `"gpt-5.6-luna"` |  |
| claudeApiKey.remoteRef.key | string | `"litellm"` |  |
| claudeApiKey.remoteRef.property | string | `"claude_api_token"` |  |
| claudeApiKey.secretName | string | `"litellm-claude"` |  |
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
| litellm-helm.environmentSecrets[0] | string | `"litellm-deepseek"` |  |
| litellm-helm.environmentSecrets[1] | string | `"litellm-groq"` |  |
| litellm-helm.environmentSecrets[2] | string | `"litellm-claude"` |  |
| litellm-helm.extraInitContainers[0].command[0] | string | `"python3"` |  |
| litellm-helm.extraInitContainers[0].command[1] | string | `"-c"` |  |
| litellm-helm.extraInitContainers[0].command[2] | string | `"import json, os\n\ntoken_dir = \"/var/lib/litellm/chatgpt-auth\"\nold_file = os.path.join(token_dir, \"auth.json\")\nnew_file = os.path.join(token_dir, \"chatgpt-auth.json\")\n\nif os.path.exists(new_file):\n    print(\"chatgpt-auth.json already present, nothing to migrate\")\nelif os.path.exists(old_file):\n    with open(old_file) as f:\n        nested = json.load(f)\n    tokens = nested.get(\"tokens\", {})\n    flat = {\n        \"access_token\": tokens.get(\"access_token\"),\n        \"refresh_token\": tokens.get(\"refresh_token\"),\n        \"id_token\": tokens.get(\"id_token\"),\n    }\n    if flat[\"access_token\"] and flat[\"refresh_token\"]:\n        with open(new_file, \"w\") as f:\n            json.dump(flat, f)\n        os.chmod(new_file, 0o600)\n        print(\"migrated nested auth.json -> flat chatgpt-auth.json\")\n    else:\n        print(\"old auth.json missing required fields, skipping migration\")\nelse:\n    print(\"no existing session found, native provider will require a device-code login\")\n"` |  |
| litellm-helm.extraInitContainers[0].image | string | `"ghcr.io/berriai/litellm:v1.106.4"` |  |
| litellm-helm.extraInitContainers[0].name | string | `"migrate-chatgpt-auth"` |  |
| litellm-helm.extraInitContainers[0].volumeMounts[0].mountPath | string | `"/var/lib/litellm/chatgpt-auth"` |  |
| litellm-helm.extraInitContainers[0].volumeMounts[0].name | string | `"chatgpt-auth-persistent"` |  |
| litellm-helm.image.pullPolicy | string | `"Always"` |  |
| litellm-helm.image.repository | string | `"registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-litellm"` |  |
| litellm-helm.image.tag | string | `"1.0.11"` |  |
| litellm-helm.imagePullSecrets[0].name | string | `"litellm-image-pull"` |  |
| litellm-helm.masterkeySecretKey | string | `"masterkey"` |  |
| litellm-helm.masterkeySecretName | string | `"litellm-masterkey"` |  |
| litellm-helm.migrationJob.enabled | bool | `false` |  |
| litellm-helm.proxyConfigMap.create | bool | `false` |  |
| litellm-helm.proxyConfigMap.key | string | `"config.yaml"` |  |
| litellm-helm.proxyConfigMap.name | string | `"litellm-proxy-config"` |  |
| litellm-helm.replicaCount | int | `1` |  |
| litellm-helm.resources.limits.memory | string | `"3Gi"` |  |
| litellm-helm.resources.requests.cpu | string | `"100m"` |  |
| litellm-helm.resources.requests.memory | string | `"1280Mi"` |  |
| litellm-helm.service.port | int | `4000` |  |
| litellm-helm.service.type | string | `"ClusterIP"` |  |
| litellm-helm.strategy.type | string | `"Recreate"` |  |
| litellm-helm.volumeMounts[0].mountPath | string | `"/var/lib/litellm/chatgpt-auth"` |  |
| litellm-helm.volumeMounts[0].name | string | `"chatgpt-auth-persistent"` |  |
| litellm-helm.volumes[0].name | string | `"chatgpt-auth-persistent"` |  |
| litellm-helm.volumes[0].persistentVolumeClaim.claimName | string | `"litellm-codex-auth-persistent"` |  |
| lmstudioApiBase | string | `""` |  |
| lmstudioModels | list | `[]` |  |
| masterKey.remoteRef.key | string | `"litellm"` |  |
| masterKey.remoteRef.property | string | `"master_key"` |  |
| masterKey.secretName | string | `"litellm-masterkey"` |  |
| metrics.enabled | bool | `false` |  |
| modelFallbacks.claude-sonnet-5[0] | string | `"gpt-5.6-terra"` |  |
| proxyConfigMap.key | string | `"config.yaml"` |  |
| proxyConfigMap.name | string | `"litellm-proxy-config"` |  |
| whisperModels[0] | string | `"whisper-large-v3"` |  |
# Trivy scan - Helm Chart

## Report Summary

| Target | Type | Misconfigurations |
| --- | --- | --- |
