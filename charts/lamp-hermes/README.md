# lamp-hermes

![Version: 0.0.7](https://img.shields.io/badge/Version-0.0.7-informational?style=flat-square)

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| args[0] | string | `"gateway"` |  |
| args[1] | string | `"run"` |  |
| config.data.agent.max_turns | int | `60` |  |
| config.data.agent.reasoning_effort | string | `"medium"` |  |
| config.data.agent.verbose | bool | `false` |  |
| config.data.browser.backend | string | `"off"` |  |
| config.data.browser.inactivity_timeout | int | `120` |  |
| config.data.compression.enabled | bool | `true` |  |
| config.data.compression.protect_first_n | int | `3` |  |
| config.data.compression.protect_last_n | int | `20` |  |
| config.data.compression.target_ratio | float | `0.2` |  |
| config.data.compression.threshold | float | `0.5` |  |
| config.data.cron.mirror_delivery | bool | `true` |  |
| config.data.cron.wrap_response | bool | `false` |  |
| config.data.delegation.model | string | `"deepseek-v4-flash"` |  |
| config.data.delegation.provider | string | `"litellm"` |  |
| config.data.display.compact | bool | `false` |  |
| config.data.display.platforms.telegram.tool_progress | string | `"off"` |  |
| config.data.display.skin | string | `"default"` |  |
| config.data.display.tool_progress | string | `"all"` |  |
| config.data.mcp_servers.toolhive.headers.Authorization | string | `"Bearer ${env:TOOLHIVE_BEARER_TOKEN}"` |  |
| config.data.mcp_servers.toolhive.url | string | `"http://mcp-tools-hermes.tailscale-services.svc.cluster.local:4483/mcp"` |  |
| config.data.memory.flush_min_turns | int | `6` |  |
| config.data.memory.memory_char_limit | int | `2200` |  |
| config.data.memory.memory_enabled | bool | `true` |  |
| config.data.memory.nudge_interval | int | `10` |  |
| config.data.memory.user_char_limit | int | `1375` |  |
| config.data.memory.user_profile_enabled | bool | `true` |  |
| config.data.model.default | string | `"gpt-5.6-terra"` |  |
| config.data.model.max_tokens | int | `8192` |  |
| config.data.model.provider | string | `"litellm"` |  |
| config.data.providers.litellm.base_url | string | `"http://litellm.product.svc.cluster.local:4000/v1"` |  |
| config.data.providers.litellm.key_env | string | `"OPENAI_API_KEY"` |  |
| config.data.providers.litellm.name | string | `"LiteLLM Gateway"` |  |
| config.data.providers.litellm.transport | string | `"openai_chat"` |  |
| config.data.session_reset.at_hour | int | `4` |  |
| config.data.session_reset.idle_minutes | int | `1440` |  |
| config.data.session_reset.mode | string | `"both"` |  |
| config.data.skills.creation_nudge_interval | int | `15` |  |
| config.data.stt.enabled | bool | `true` |  |
| config.data.stt.local.model | string | `"base"` |  |
| config.data.terminal.backend | string | `"local"` |  |
| config.data.terminal.cwd | string | `"."` |  |
| config.data.terminal.lifetime_seconds | int | `300` |  |
| config.data.terminal.timeout | int | `180` |  |
| config.data.timezone | string | `"Europe/Bucharest"` |  |
| externalSecrets.creationPolicy | string | `"Orphan"` |  |
| externalSecrets.kind | string | `"ClusterSecretStore"` |  |
| externalSecrets.name | string | `"oracle"` |  |
| externalSecrets.refreshInterval | string | `"1h"` |  |
| extraEnv.DEFI_SA_KEY | string | `"/etc/hermes/google-sa.json"` |  |
| extraEnv.GATEWAY_ALLOW_ALL_USERS | string | `"false"` |  |
| extraEnv.OCI_CLI_CONFIG_FILE | string | `"/etc/hermes/.oci/config"` |  |
| extraEnv.TELEGRAM_ALLOWED_USERS | string | `"306361331"` |  |
| extraEnv.TELEGRAM_HOME_CHANNEL | string | `"306361331"` |  |
| extraEnv.TELEGRAM_HOME_CHANNEL_NAME | string | `"DM"` |  |
| fullnameOverride | string | `""` |  |
| hermes.gid | int | `10000` |  |
| hermes.home | string | `"/opt/data"` |  |
| hermes.uid | int | `10000` |  |
| image.name | string | `"registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes"` |  |
| image.pullPolicy | string | `"Always"` |  |
| image.tag | string | `"latest"` |  |
| imagePullSecret.registry | string | `"registry.gitlab.com/from-the-lamp"` |  |
| imagePullSecret.remoteKey | string | `"gitlab"` |  |
| imagePullSecret.remoteProperty | string | `"image-pull-secret"` |  |
| imagePullSecret.secretName | string | `"hermes-image-pull"` |  |
| imagePullSecret.username | string | `"token"` |  |
| imagePullSecrets[0].name | string | `"hermes-image-pull"` |  |
| lifecycle.preStop.exec.command[0] | string | `"sh"` |  |
| lifecycle.preStop.exec.command[1] | string | `"-c"` |  |
| lifecycle.preStop.exec.command[2] | string | `"rm -f /opt/data/gateway.*.lock; sleep 10"` |  |
| livenessProbe.enabled | bool | `false` |  |
| livenessProbe.failureThreshold | int | `3` |  |
| livenessProbe.initialDelaySeconds | int | `60` |  |
| livenessProbe.periodSeconds | int | `60` |  |
| livenessProbe.tcpSocket.port | int | `9119` |  |
| livenessProbe.timeoutSeconds | int | `10` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| persistence.accessMode | string | `"ReadWriteOnce"` |  |
| persistence.annotations | object | `{}` |  |
| persistence.enabled | bool | `true` |  |
| persistence.selector | object | `{}` |  |
| persistence.size | string | `"20Gi"` |  |
| persistence.storageClass | string | `"local-path"` |  |
| persistence.subPath | string | `"hermes-state"` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| priorityClassName | string | `"hermes-critical"` |  |
| readinessProbe.enabled | bool | `false` |  |
| readinessProbe.failureThreshold | int | `3` |  |
| readinessProbe.initialDelaySeconds | int | `10` |  |
| readinessProbe.periodSeconds | int | `5` |  |
| readinessProbe.tcpSocket.port | int | `9119` |  |
| readinessProbe.timeoutSeconds | int | `3` |  |
| replicaCount | int | `1` |  |
| resources.limits.cpu | string | `"1000m"` |  |
| resources.limits.memory | string | `"2560Mi"` |  |
| resources.requests.cpu | string | `"200m"` |  |
| resources.requests.memory | string | `"1280Mi"` |  |
| secretFiles."gitlab-from-the-lamp.env".key | string | `"hermes"` |  |
| secretFiles."gitlab-from-the-lamp.env".mountPath | string | `"/etc/hermes/creds/gitlab/from-the-lamp.env"` |  |
| secretFiles."gitlab-from-the-lamp.env".property | string | `"gitlab_from_the_lamp_env"` |  |
| secretFiles."google-sa.json".key | string | `"hermes"` |  |
| secretFiles."google-sa.json".mountPath | string | `"/etc/hermes/google-sa.json"` |  |
| secretFiles."google-sa.json".property | string | `"google_sa_json"` |  |
| secretFiles."oci-key-lamp-prod-0.pem".key | string | `"hermes"` |  |
| secretFiles."oci-key-lamp-prod-0.pem".mountPath | string | `"/etc/hermes/.oci/lamp-prod-0.pem"` |  |
| secretFiles."oci-key-lamp-prod-0.pem".property | string | `"oci_key_lamp_prod_0"` |  |
| secretFiles."oci-key-lamp-prod-1.pem".key | string | `"hermes"` |  |
| secretFiles."oci-key-lamp-prod-1.pem".mountPath | string | `"/etc/hermes/.oci/lamp-prod-1.pem"` |  |
| secretFiles."oci-key-lamp-prod-1.pem".property | string | `"oci_key_lamp_prod_1"` |  |
| secretFiles.oci-config.key | string | `"hermes"` |  |
| secretFiles.oci-config.mountPath | string | `"/etc/hermes/.oci/config"` |  |
| secretFiles.oci-config.property | string | `"oci_config"` |  |
| secrets.ALCHEMY_API_KEY.key | string | `"hermes"` |  |
| secrets.ALCHEMY_API_KEY.property | string | `"alchemy_api_key"` |  |
| secrets.ALCHEMY_NFT_BASE.key | string | `"hermes"` |  |
| secrets.ALCHEMY_NFT_BASE.property | string | `"alchemy_nft_base"` |  |
| secrets.ALCHEMY_NFT_ETH.key | string | `"hermes"` |  |
| secrets.ALCHEMY_NFT_ETH.property | string | `"alchemy_nft_eth"` |  |
| secrets.ALCHEMY_RPC_ARB.key | string | `"hermes"` |  |
| secrets.ALCHEMY_RPC_ARB.property | string | `"alchemy_rpc_arb"` |  |
| secrets.ALCHEMY_RPC_BASE.key | string | `"hermes"` |  |
| secrets.ALCHEMY_RPC_BASE.property | string | `"alchemy_rpc_base"` |  |
| secrets.ALCHEMY_RPC_ETH.key | string | `"hermes"` |  |
| secrets.ALCHEMY_RPC_ETH.property | string | `"alchemy_rpc_eth"` |  |
| secrets.ANTHROPIC_API_KEY.key | string | `"hermes"` |  |
| secrets.ANTHROPIC_API_KEY.property | string | `"anthropic_api_key"` |  |
| secrets.DEFI_WALLET.key | string | `"hermes"` |  |
| secrets.DEFI_WALLET.property | string | `"defi_wallet"` |  |
| secrets.ETHERSCAN_API_KEY.key | string | `"hermes"` |  |
| secrets.ETHERSCAN_API_KEY.property | string | `"etherscan_api_key"` |  |
| secrets.GITLAB_TOKEN.key | string | `"hermes"` |  |
| secrets.GITLAB_TOKEN.property | string | `"gitlab_token"` |  |
| secrets.HERMES_AUTH_JSON_BOOTSTRAP.key | string | `"hermes"` |  |
| secrets.HERMES_AUTH_JSON_BOOTSTRAP.property | string | `"auth_json"` |  |
| secrets.OPENAI_API_KEY.key | string | `"hermes"` |  |
| secrets.OPENAI_API_KEY.property | string | `"litellm_master_key"` |  |
| secrets.OPENROUTER_API_KEY.key | string | `"hermes"` |  |
| secrets.OPENROUTER_API_KEY.property | string | `"openrouter_api_key"` |  |
| secrets.SERPAPI_API_KEY.key | string | `"hermes"` |  |
| secrets.SERPAPI_API_KEY.property | string | `"serpapi_api_key"` |  |
| secrets.TELEGRAM_BOT_TOKEN.key | string | `"hermes"` |  |
| secrets.TELEGRAM_BOT_TOKEN.property | string | `"telegram_bot_openclaw"` |  |
| secrets.THEGRAPH_API_KEY.key | string | `"hermes"` |  |
| secrets.THEGRAPH_API_KEY.property | string | `"thegraph_api_key"` |  |
| secrets.TOOLHIVE_BEARER_TOKEN.key | string | `"hermes"` |  |
| secrets.TOOLHIVE_BEARER_TOKEN.property | string | `"toolhive_bearer_token"` |  |
| secrets.TRAVELPAYOUTS_TOKEN.key | string | `"hermes"` |  |
| secrets.TRAVELPAYOUTS_TOKEN.property | string | `"travelpayouts_token"` |  |
| securityContext | object | `{}` |  |
| seedDotenv.enabled | bool | `true` |  |
| service.annotations | object | `{}` |  |
| service.enabled | bool | `false` |  |
| service.port | int | `9119` |  |
| service.portName | string | `"dashboard"` |  |
| service.targetPort | int | `9119` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |
| skillsSync.enabled | bool | `true` |  |
| skillsSync.ref | string | `"main"` |  |
| skillsSync.repo | string | `"https://gitlab.com/from-the-lamp/djinn/skills.git"` |  |
| skillsSync.subdir | string | `"djinn-marketplace"` |  |
| skillsSync.tokenSecretFile | string | `"gitlab-from-the-lamp.env"` |  |
| startupProbe.enabled | bool | `false` |  |
| startupProbe.failureThreshold | int | `30` |  |
| startupProbe.initialDelaySeconds | int | `10` |  |
| startupProbe.periodSeconds | int | `5` |  |
| startupProbe.tcpSocket.port | int | `9119` |  |
| startupProbe.timeoutSeconds | int | `3` |  |
| tolerations | list | `[]` |  |
# Trivy scan - Helm Chart

## Report Summary

| Target | Type | Misconfigurations |
| --- | --- | --- |
| templates/config.yaml | helm | 0 |
| templates/imagepullsecret.yaml | helm | 0 |
| templates/priorityclass.yaml | helm | 0 |
| templates/secrets.yaml | helm | 0 |
| templates/serviceaccount.yaml | helm | 0 |
| templates/statefulset.yaml | helm | 49 |

## templates/statefulset.yaml

### KSV-0001 (MEDIUM): Can elevate its own privileges

Container 'hermes' of StatefulSet 'lamp-hermes' should set 'securityContext.allowPrivilegeEscalation' to false

- Resolution: Set 'set containers[].securityContext.allowPrivilegeEscalation' to 'false'.
- See: https://avd.aquasec.com/misconfig/ksv-0001
- Location: `templates/statefulset.yaml:118-169`

```
118:         - name: hermes
119:           image: "registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes:latest"
120:           imagePullPolicy: Always
121:           args:
122:             - gateway
123:             - run
124:           envFrom:
125:             - secretRef:
126:                 name: lamp-hermes-env
127:
```

### KSV-0001 (MEDIUM): Can elevate its own privileges

Container 'seed-dotenv' of StatefulSet 'lamp-hermes' should set 'securityContext.allowPrivilegeEscalation' to false

- Resolution: Set 'set containers[].securityContext.allowPrivilegeEscalation' to 'false'.
- See: https://avd.aquasec.com/misconfig/ksv-0001
- Location: `templates/statefulset.yaml:84-116`

```
84:         - name: seed-dotenv
85:           image: "registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes:latest"
86:           imagePullPolicy: Always
87:           command:
88:             - sh
89:             - -c
90:             - |
91:               set -eu
92:               env_file=/opt/data/.env
93:
```

### KSV-0001 (MEDIUM): Can elevate its own privileges

Container 'sync-skills' of StatefulSet 'lamp-hermes' should set 'securityContext.allowPrivilegeEscalation' to false

- Resolution: Set 'set containers[].securityContext.allowPrivilegeEscalation' to 'false'.
- See: https://avd.aquasec.com/misconfig/ksv-0001
- Location: `templates/statefulset.yaml:34-83`

```
34:         - name: sync-skills
35:           image: "registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes:latest"
36:           imagePullPolicy: Always
37:           command:
38:             - sh
39:             - -c
40:             - |
41:               set -eu
42:               dest="/opt/data/skills/djinn-marketplace"
43:
```

### KSV-0003 (LOW): Default capabilities: some containers do not drop all

Container 'hermes' of StatefulSet 'lamp-hermes' should add 'ALL' to 'securityContext.capabilities.drop'

- Resolution: Add 'ALL' to containers[].securityContext.capabilities.drop.
- See: https://avd.aquasec.com/misconfig/ksv-0003
- Location: `templates/statefulset.yaml:118-169`

```
118:         - name: hermes
119:           image: "registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes:latest"
120:           imagePullPolicy: Always
121:           args:
122:             - gateway
123:             - run
124:           envFrom:
125:             - secretRef:
126:                 name: lamp-hermes-env
127:
```

### KSV-0003 (LOW): Default capabilities: some containers do not drop all

Container 'seed-dotenv' of StatefulSet 'lamp-hermes' should add 'ALL' to 'securityContext.capabilities.drop'

- Resolution: Add 'ALL' to containers[].securityContext.capabilities.drop.
- See: https://avd.aquasec.com/misconfig/ksv-0003
- Location: `templates/statefulset.yaml:84-116`

```
84:         - name: seed-dotenv
85:           image: "registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes:latest"
86:           imagePullPolicy: Always
87:           command:
88:             - sh
89:             - -c
90:             - |
91:               set -eu
92:               env_file=/opt/data/.env
93:
```

### KSV-0003 (LOW): Default capabilities: some containers do not drop all

Container 'sync-skills' of StatefulSet 'lamp-hermes' should add 'ALL' to 'securityContext.capabilities.drop'

- Resolution: Add 'ALL' to containers[].securityContext.capabilities.drop.
- See: https://avd.aquasec.com/misconfig/ksv-0003
- Location: `templates/statefulset.yaml:34-83`

```
34:         - name: sync-skills
35:           image: "registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes:latest"
36:           imagePullPolicy: Always
37:           command:
38:             - sh
39:             - -c
40:             - |
41:               set -eu
42:               dest="/opt/data/skills/djinn-marketplace"
43:
```

### KSV-0004 (LOW): Default capabilities: some containers do not drop any

Container 'hermes' of 'statefulset' 'lamp-hermes' in 'default' namespace should set securityContext.capabilities.drop

- Resolution: Specify at least one unneeded capability in 'containers[].securityContext.capabilities.drop'
- See: https://avd.aquasec.com/misconfig/ksv-0004
- Location: `templates/statefulset.yaml:118-169`

```
118:         - name: hermes
119:           image: "registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes:latest"
120:           imagePullPolicy: Always
121:           args:
122:             - gateway
123:             - run
124:           envFrom:
125:             - secretRef:
126:                 name: lamp-hermes-env
127:
```

### KSV-0004 (LOW): Default capabilities: some containers do not drop any

Container 'seed-dotenv' of 'statefulset' 'lamp-hermes' in 'default' namespace should set securityContext.capabilities.drop

- Resolution: Specify at least one unneeded capability in 'containers[].securityContext.capabilities.drop'
- See: https://avd.aquasec.com/misconfig/ksv-0004
- Location: `templates/statefulset.yaml:84-116`

```
84:         - name: seed-dotenv
85:           image: "registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes:latest"
86:           imagePullPolicy: Always
87:           command:
88:             - sh
89:             - -c
90:             - |
91:               set -eu
92:               env_file=/opt/data/.env
93:
```

### KSV-0004 (LOW): Default capabilities: some containers do not drop any

Container 'sync-skills' of 'statefulset' 'lamp-hermes' in 'default' namespace should set securityContext.capabilities.drop

- Resolution: Specify at least one unneeded capability in 'containers[].securityContext.capabilities.drop'
- See: https://avd.aquasec.com/misconfig/ksv-0004
- Location: `templates/statefulset.yaml:34-83`

```
34:         - name: sync-skills
35:           image: "registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes:latest"
36:           imagePullPolicy: Always
37:           command:
38:             - sh
39:             - -c
40:             - |
41:               set -eu
42:               dest="/opt/data/skills/djinn-marketplace"
43:
```

### KSV-0011 (LOW): CPU not limited

Container 'seed-dotenv' of StatefulSet 'lamp-hermes' should set 'resources.limits.cpu'

- Resolution: Set a limit value under 'containers[].resources.limits.cpu'.
- See: https://avd.aquasec.com/misconfig/ksv-0011
- Location: `templates/statefulset.yaml:84-116`

```
84:         - name: seed-dotenv
85:           image: "registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes:latest"
86:           imagePullPolicy: Always
87:           command:
88:             - sh
89:             - -c
90:             - |
91:               set -eu
92:               env_file=/opt/data/.env
93:
```

### KSV-0011 (LOW): CPU not limited

Container 'sync-skills' of StatefulSet 'lamp-hermes' should set 'resources.limits.cpu'

- Resolution: Set a limit value under 'containers[].resources.limits.cpu'.
- See: https://avd.aquasec.com/misconfig/ksv-0011
- Location: `templates/statefulset.yaml:34-83`

```
34:         - name: sync-skills
35:           image: "registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes:latest"
36:           imagePullPolicy: Always
37:           command:
38:             - sh
39:             - -c
40:             - |
41:               set -eu
42:               dest="/opt/data/skills/djinn-marketplace"
43:
```

### KSV-0012 (MEDIUM): Runs as root user

Container 'hermes' of StatefulSet 'lamp-hermes' should set 'securityContext.runAsNonRoot' to true

- Resolution: Set 'containers[].securityContext.runAsNonRoot' to true.
- See: https://avd.aquasec.com/misconfig/ksv-0012
- Location: `templates/statefulset.yaml:118-169`

```
118:         - name: hermes
119:           image: "registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes:latest"
120:           imagePullPolicy: Always
121:           args:
122:             - gateway
123:             - run
124:           envFrom:
125:             - secretRef:
126:                 name: lamp-hermes-env
127:
```

### KSV-0012 (MEDIUM): Runs as root user

Container 'seed-dotenv' of StatefulSet 'lamp-hermes' should set 'securityContext.runAsNonRoot' to true

- Resolution: Set 'containers[].securityContext.runAsNonRoot' to true.
- See: https://avd.aquasec.com/misconfig/ksv-0012
- Location: `templates/statefulset.yaml:84-116`

```
84:         - name: seed-dotenv
85:           image: "registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes:latest"
86:           imagePullPolicy: Always
87:           command:
88:             - sh
89:             - -c
90:             - |
91:               set -eu
92:               env_file=/opt/data/.env
93:
```

### KSV-0012 (MEDIUM): Runs as root user

Container 'sync-skills' of StatefulSet 'lamp-hermes' should set 'securityContext.runAsNonRoot' to true

- Resolution: Set 'containers[].securityContext.runAsNonRoot' to true.
- See: https://avd.aquasec.com/misconfig/ksv-0012
- Location: `templates/statefulset.yaml:34-83`

```
34:         - name: sync-skills
35:           image: "registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes:latest"
36:           imagePullPolicy: Always
37:           command:
38:             - sh
39:             - -c
40:             - |
41:               set -eu
42:               dest="/opt/data/skills/djinn-marketplace"
43:
```

### KSV-0013 (MEDIUM): Image tag ":latest" used

Container 'hermes' of StatefulSet 'lamp-hermes' should specify an image tag

- Resolution: Use a specific container image tag that is not 'latest'.
- See: https://avd.aquasec.com/misconfig/ksv-0013
- Location: `templates/statefulset.yaml:118-169`

```
118:         - name: hermes
119:           image: "registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes:latest"
120:           imagePullPolicy: Always
121:           args:
122:             - gateway
123:             - run
124:           envFrom:
125:             - secretRef:
126:                 name: lamp-hermes-env
127:
```

### KSV-0013 (MEDIUM): Image tag ":latest" used

Container 'seed-dotenv' of StatefulSet 'lamp-hermes' should specify an image tag

- Resolution: Use a specific container image tag that is not 'latest'.
- See: https://avd.aquasec.com/misconfig/ksv-0013
- Location: `templates/statefulset.yaml:84-116`

```
84:         - name: seed-dotenv
85:           image: "registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes:latest"
86:           imagePullPolicy: Always
87:           command:
88:             - sh
89:             - -c
90:             - |
91:               set -eu
92:               env_file=/opt/data/.env
93:
```

### KSV-0013 (MEDIUM): Image tag ":latest" used

Container 'sync-skills' of StatefulSet 'lamp-hermes' should specify an image tag

- Resolution: Use a specific container image tag that is not 'latest'.
- See: https://avd.aquasec.com/misconfig/ksv-0013
- Location: `templates/statefulset.yaml:34-83`

```
34:         - name: sync-skills
35:           image: "registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes:latest"
36:           imagePullPolicy: Always
37:           command:
38:             - sh
39:             - -c
40:             - |
41:               set -eu
42:               dest="/opt/data/skills/djinn-marketplace"
43:
```

### KSV-0014 (HIGH): Root file system is not read-only

Container 'hermes' of StatefulSet 'lamp-hermes' should set 'securityContext.readOnlyRootFilesystem' to true

- Resolution: Change 'containers[].securityContext.readOnlyRootFilesystem' to 'true'.
- See: https://avd.aquasec.com/misconfig/ksv-0014
- Location: `templates/statefulset.yaml:118-169`

```
118:         - name: hermes
119:           image: "registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes:latest"
120:           imagePullPolicy: Always
121:           args:
122:             - gateway
123:             - run
124:           envFrom:
125:             - secretRef:
126:                 name: lamp-hermes-env
127:
```

### KSV-0014 (HIGH): Root file system is not read-only

Container 'seed-dotenv' of StatefulSet 'lamp-hermes' should set 'securityContext.readOnlyRootFilesystem' to true

- Resolution: Change 'containers[].securityContext.readOnlyRootFilesystem' to 'true'.
- See: https://avd.aquasec.com/misconfig/ksv-0014
- Location: `templates/statefulset.yaml:84-116`

```
84:         - name: seed-dotenv
85:           image: "registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes:latest"
86:           imagePullPolicy: Always
87:           command:
88:             - sh
89:             - -c
90:             - |
91:               set -eu
92:               env_file=/opt/data/.env
93:
```

### KSV-0014 (HIGH): Root file system is not read-only

Container 'sync-skills' of StatefulSet 'lamp-hermes' should set 'securityContext.readOnlyRootFilesystem' to true

- Resolution: Change 'containers[].securityContext.readOnlyRootFilesystem' to 'true'.
- See: https://avd.aquasec.com/misconfig/ksv-0014
- Location: `templates/statefulset.yaml:34-83`

```
34:         - name: sync-skills
35:           image: "registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes:latest"
36:           imagePullPolicy: Always
37:           command:
38:             - sh
39:             - -c
40:             - |
41:               set -eu
42:               dest="/opt/data/skills/djinn-marketplace"
43:
```

### KSV-0015 (LOW): CPU requests not specified

Container 'seed-dotenv' of StatefulSet 'lamp-hermes' should set 'resources.requests.cpu'

- Resolution: Set 'containers[].resources.requests.cpu'.
- See: https://avd.aquasec.com/misconfig/ksv-0015
- Location: `templates/statefulset.yaml:84-116`

```
84:         - name: seed-dotenv
85:           image: "registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes:latest"
86:           imagePullPolicy: Always
87:           command:
88:             - sh
89:             - -c
90:             - |
91:               set -eu
92:               env_file=/opt/data/.env
93:
```

### KSV-0015 (LOW): CPU requests not specified

Container 'sync-skills' of StatefulSet 'lamp-hermes' should set 'resources.requests.cpu'

- Resolution: Set 'containers[].resources.requests.cpu'.
- See: https://avd.aquasec.com/misconfig/ksv-0015
- Location: `templates/statefulset.yaml:34-83`

```
34:         - name: sync-skills
35:           image: "registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes:latest"
36:           imagePullPolicy: Always
37:           command:
38:             - sh
39:             - -c
40:             - |
41:               set -eu
42:               dest="/opt/data/skills/djinn-marketplace"
43:
```

### KSV-0016 (LOW): Memory requests not specified

Container 'seed-dotenv' of StatefulSet 'lamp-hermes' should set 'resources.requests.memory'

- Resolution: Set 'containers[].resources.requests.memory'.
- See: https://avd.aquasec.com/misconfig/ksv-0016
- Location: `templates/statefulset.yaml:84-116`

```
84:         - name: seed-dotenv
85:           image: "registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes:latest"
86:           imagePullPolicy: Always
87:           command:
88:             - sh
89:             - -c
90:             - |
91:               set -eu
92:               env_file=/opt/data/.env
93:
```

### KSV-0016 (LOW): Memory requests not specified

Container 'sync-skills' of StatefulSet 'lamp-hermes' should set 'resources.requests.memory'

- Resolution: Set 'containers[].resources.requests.memory'.
- See: https://avd.aquasec.com/misconfig/ksv-0016
- Location: `templates/statefulset.yaml:34-83`

```
34:         - name: sync-skills
35:           image: "registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes:latest"
36:           imagePullPolicy: Always
37:           command:
38:             - sh
39:             - -c
40:             - |
41:               set -eu
42:               dest="/opt/data/skills/djinn-marketplace"
43:
```

### KSV-0018 (LOW): Memory not limited

Container 'seed-dotenv' of StatefulSet 'lamp-hermes' should set 'resources.limits.memory'

- Resolution: Set a limit value under 'containers[].resources.limits.memory'.
- See: https://avd.aquasec.com/misconfig/ksv-0018
- Location: `templates/statefulset.yaml:84-116`

```
84:         - name: seed-dotenv
85:           image: "registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes:latest"
86:           imagePullPolicy: Always
87:           command:
88:             - sh
89:             - -c
90:             - |
91:               set -eu
92:               env_file=/opt/data/.env
93:
```

### KSV-0018 (LOW): Memory not limited

Container 'sync-skills' of StatefulSet 'lamp-hermes' should set 'resources.limits.memory'

- Resolution: Set a limit value under 'containers[].resources.limits.memory'.
- See: https://avd.aquasec.com/misconfig/ksv-0018
- Location: `templates/statefulset.yaml:34-83`

```
34:         - name: sync-skills
35:           image: "registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes:latest"
36:           imagePullPolicy: Always
37:           command:
38:             - sh
39:             - -c
40:             - |
41:               set -eu
42:               dest="/opt/data/skills/djinn-marketplace"
43:
```

### KSV-0020 (LOW): Runs with UID <= 10000

Container 'hermes' of StatefulSet 'lamp-hermes' should set 'securityContext.runAsUser' > 10000

- Resolution: Set 'containers[].securityContext.runAsUser' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0020
- Location: `templates/statefulset.yaml:118-169`

```
118:         - name: hermes
119:           image: "registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes:latest"
120:           imagePullPolicy: Always
121:           args:
122:             - gateway
123:             - run
124:           envFrom:
125:             - secretRef:
126:                 name: lamp-hermes-env
127:
```

### KSV-0020 (LOW): Runs with UID <= 10000

Container 'seed-dotenv' of StatefulSet 'lamp-hermes' should set 'securityContext.runAsUser' > 10000

- Resolution: Set 'containers[].securityContext.runAsUser' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0020
- Location: `templates/statefulset.yaml:84-116`

```
84:         - name: seed-dotenv
85:           image: "registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes:latest"
86:           imagePullPolicy: Always
87:           command:
88:             - sh
89:             - -c
90:             - |
91:               set -eu
92:               env_file=/opt/data/.env
93:
```

### KSV-0020 (LOW): Runs with UID <= 10000

Container 'sync-skills' of StatefulSet 'lamp-hermes' should set 'securityContext.runAsUser' > 10000

- Resolution: Set 'containers[].securityContext.runAsUser' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0020
- Location: `templates/statefulset.yaml:34-83`

```
34:         - name: sync-skills
35:           image: "registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes:latest"
36:           imagePullPolicy: Always
37:           command:
38:             - sh
39:             - -c
40:             - |
41:               set -eu
42:               dest="/opt/data/skills/djinn-marketplace"
43:
```

### KSV-0021 (LOW): Runs with GID <= 10000

Container 'hermes' of StatefulSet 'lamp-hermes' should set 'securityContext.runAsGroup' > 10000

- Resolution: Set 'containers[].securityContext.runAsGroup' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0021
- Location: `templates/statefulset.yaml:118-169`

```
118:         - name: hermes
119:           image: "registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes:latest"
120:           imagePullPolicy: Always
121:           args:
122:             - gateway
123:             - run
124:           envFrom:
125:             - secretRef:
126:                 name: lamp-hermes-env
127:
```

### KSV-0021 (LOW): Runs with GID <= 10000

Container 'seed-dotenv' of StatefulSet 'lamp-hermes' should set 'securityContext.runAsGroup' > 10000

- Resolution: Set 'containers[].securityContext.runAsGroup' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0021
- Location: `templates/statefulset.yaml:84-116`

```
84:         - name: seed-dotenv
85:           image: "registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes:latest"
86:           imagePullPolicy: Always
87:           command:
88:             - sh
89:             - -c
90:             - |
91:               set -eu
92:               env_file=/opt/data/.env
93:
```

### KSV-0021 (LOW): Runs with GID <= 10000

Container 'sync-skills' of StatefulSet 'lamp-hermes' should set 'securityContext.runAsGroup' > 10000

- Resolution: Set 'containers[].securityContext.runAsGroup' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0021
- Location: `templates/statefulset.yaml:34-83`

```
34:         - name: sync-skills
35:           image: "registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes:latest"
36:           imagePullPolicy: Always
37:           command:
38:             - sh
39:             - -c
40:             - |
41:               set -eu
42:               dest="/opt/data/skills/djinn-marketplace"
43:
```

### KSV-0030 (LOW): Runtime/Default Seccomp profile not set

Either Pod or Container should set 'securityContext.seccompProfile.type' to 'RuntimeDefault'

- Resolution: Set 'spec.securityContext.seccompProfile.type', 'spec.containers[*].securityContext.seccompProfile' and 'spec.initContainers[*].securityContext.seccompProfile' to 'RuntimeDefault' or undefined.
- See: https://avd.aquasec.com/misconfig/ksv-0030
- Location: `templates/statefulset.yaml:34-83`

```
34:         - name: sync-skills
35:           image: "registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes:latest"
36:           imagePullPolicy: Always
37:           command:
38:             - sh
39:             - -c
40:             - |
41:               set -eu
42:               dest="/opt/data/skills/djinn-marketplace"
43:
```

### KSV-0030 (LOW): Runtime/Default Seccomp profile not set

Either Pod or Container should set 'securityContext.seccompProfile.type' to 'RuntimeDefault'

- Resolution: Set 'spec.securityContext.seccompProfile.type', 'spec.containers[*].securityContext.seccompProfile' and 'spec.initContainers[*].securityContext.seccompProfile' to 'RuntimeDefault' or undefined.
- See: https://avd.aquasec.com/misconfig/ksv-0030
- Location: `templates/statefulset.yaml:84-116`

```
84:         - name: seed-dotenv
85:           image: "registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes:latest"
86:           imagePullPolicy: Always
87:           command:
88:             - sh
89:             - -c
90:             - |
91:               set -eu
92:               env_file=/opt/data/.env
93:
```

### KSV-0030 (LOW): Runtime/Default Seccomp profile not set

Either Pod or Container should set 'securityContext.seccompProfile.type' to 'RuntimeDefault'

- Resolution: Set 'spec.securityContext.seccompProfile.type', 'spec.containers[*].securityContext.seccompProfile' and 'spec.initContainers[*].securityContext.seccompProfile' to 'RuntimeDefault' or undefined.
- See: https://avd.aquasec.com/misconfig/ksv-0030
- Location: `templates/statefulset.yaml:118-169`

```
118:         - name: hermes
119:           image: "registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes:latest"
120:           imagePullPolicy: Always
121:           args:
122:             - gateway
123:             - run
124:           envFrom:
125:             - secretRef:
126:                 name: lamp-hermes-env
127:
```

### KSV-0104 (MEDIUM): Seccomp policies disabled

container "hermes" of statefulset "lamp-hermes" in "default" namespace should specify a seccomp profile

- Resolution: Specify seccomp either by annotation or by seccomp profile type having allowed values as per pod security standards
- See: https://avd.aquasec.com/misconfig/ksv-0104
- Location: `templates/statefulset.yaml:118-169`

```
118:         - name: hermes
119:           image: "registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes:latest"
120:           imagePullPolicy: Always
121:           args:
122:             - gateway
123:             - run
124:           envFrom:
125:             - secretRef:
126:                 name: lamp-hermes-env
127:
```

### KSV-0104 (MEDIUM): Seccomp policies disabled

container "seed-dotenv" of statefulset "lamp-hermes" in "default" namespace should specify a seccomp profile

- Resolution: Specify seccomp either by annotation or by seccomp profile type having allowed values as per pod security standards
- See: https://avd.aquasec.com/misconfig/ksv-0104
- Location: `templates/statefulset.yaml:84-116`

```
84:         - name: seed-dotenv
85:           image: "registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes:latest"
86:           imagePullPolicy: Always
87:           command:
88:             - sh
89:             - -c
90:             - |
91:               set -eu
92:               env_file=/opt/data/.env
93:
```

### KSV-0104 (MEDIUM): Seccomp policies disabled

container "sync-skills" of statefulset "lamp-hermes" in "default" namespace should specify a seccomp profile

- Resolution: Specify seccomp either by annotation or by seccomp profile type having allowed values as per pod security standards
- See: https://avd.aquasec.com/misconfig/ksv-0104
- Location: `templates/statefulset.yaml:34-83`

```
34:         - name: sync-skills
35:           image: "registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes:latest"
36:           imagePullPolicy: Always
37:           command:
38:             - sh
39:             - -c
40:             - |
41:               set -eu
42:               dest="/opt/data/skills/djinn-marketplace"
43:
```

### KSV-0106 (LOW): Container capabilities must only include NET_BIND_SERVICE

container should drop all

- Resolution: Set 'spec.containers[*].securityContext.capabilities.drop' to 'ALL' and only add 'NET_BIND_SERVICE' to 'spec.containers[*].securityContext.capabilities.add'.
- See: https://avd.aquasec.com/misconfig/ksv-0106
- Location: `templates/statefulset.yaml:34-83`

```
34:         - name: sync-skills
35:           image: "registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes:latest"
36:           imagePullPolicy: Always
37:           command:
38:             - sh
39:             - -c
40:             - |
41:               set -eu
42:               dest="/opt/data/skills/djinn-marketplace"
43:
```

### KSV-0106 (LOW): Container capabilities must only include NET_BIND_SERVICE

container should drop all

- Resolution: Set 'spec.containers[*].securityContext.capabilities.drop' to 'ALL' and only add 'NET_BIND_SERVICE' to 'spec.containers[*].securityContext.capabilities.add'.
- See: https://avd.aquasec.com/misconfig/ksv-0106
- Location: `templates/statefulset.yaml:84-116`

```
84:         - name: seed-dotenv
85:           image: "registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes:latest"
86:           imagePullPolicy: Always
87:           command:
88:             - sh
89:             - -c
90:             - |
91:               set -eu
92:               env_file=/opt/data/.env
93:
```

### KSV-0106 (LOW): Container capabilities must only include NET_BIND_SERVICE

container should drop all

- Resolution: Set 'spec.containers[*].securityContext.capabilities.drop' to 'ALL' and only add 'NET_BIND_SERVICE' to 'spec.containers[*].securityContext.capabilities.add'.
- See: https://avd.aquasec.com/misconfig/ksv-0106
- Location: `templates/statefulset.yaml:118-169`

```
118:         - name: hermes
119:           image: "registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes:latest"
120:           imagePullPolicy: Always
121:           args:
122:             - gateway
123:             - run
124:           envFrom:
125:             - secretRef:
126:                 name: lamp-hermes-env
127:
```

### KSV-0110 (LOW): Workloads in the default namespace

statefulset lamp-hermes in default namespace should set metadata.namespace to a non-default namespace

- Resolution: Set 'metadata.namespace' to a non-default namespace.
- See: https://avd.aquasec.com/misconfig/ksv-0110
- Location: `templates/statefulset.yaml:4-12`

```
4: metadata:
5:   name: lamp-hermes
6:   labels:
7:     helm.sh/chart: lamp-hermes-0.0.7
8:     app.kubernetes.io/name: lamp-hermes
9:     app.kubernetes.io/instance: lamp-hermes
10:     app.kubernetes.io/managed-by: Helm
11:   annotations:
12:     reloader.stakater.com/auto: "true"
```

### KSV-0118 (HIGH): Default security context configured

container lamp-hermes in default namespace is using the default security context

- Resolution: To enhance security, it is strongly recommended not to rely on the default security context. Instead, it is advisable to explicitly define the required security parameters (such as runAsNonRoot, capabilities, readOnlyRootFilesystem, etc.) within the security context.
- See: https://avd.aquasec.com/misconfig/ksv-0118
- Location: `templates/statefulset.yaml:34-83`

```
34:         - name: sync-skills
35:           image: "registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes:latest"
36:           imagePullPolicy: Always
37:           command:
38:             - sh
39:             - -c
40:             - |
41:               set -eu
42:               dest="/opt/data/skills/djinn-marketplace"
43:
```

### KSV-0118 (HIGH): Default security context configured

container lamp-hermes in default namespace is using the default security context

- Resolution: To enhance security, it is strongly recommended not to rely on the default security context. Instead, it is advisable to explicitly define the required security parameters (such as runAsNonRoot, capabilities, readOnlyRootFilesystem, etc.) within the security context.
- See: https://avd.aquasec.com/misconfig/ksv-0118
- Location: `templates/statefulset.yaml:84-116`

```
84:         - name: seed-dotenv
85:           image: "registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes:latest"
86:           imagePullPolicy: Always
87:           command:
88:             - sh
89:             - -c
90:             - |
91:               set -eu
92:               env_file=/opt/data/.env
93:
```

### KSV-0118 (HIGH): Default security context configured

container lamp-hermes in default namespace is using the default security context

- Resolution: To enhance security, it is strongly recommended not to rely on the default security context. Instead, it is advisable to explicitly define the required security parameters (such as runAsNonRoot, capabilities, readOnlyRootFilesystem, etc.) within the security context.
- See: https://avd.aquasec.com/misconfig/ksv-0118
- Location: `templates/statefulset.yaml:118-169`

```
118:         - name: hermes
119:           image: "registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes:latest"
120:           imagePullPolicy: Always
121:           args:
122:             - gateway
123:             - run
124:           envFrom:
125:             - secretRef:
126:                 name: lamp-hermes-env
127:
```

### KSV-0118 (HIGH): Default security context configured

statefulset lamp-hermes in default namespace is using the default security context, which allows root privileges

- Resolution: To enhance security, it is strongly recommended not to rely on the default security context. Instead, it is advisable to explicitly define the required security parameters (such as runAsNonRoot, capabilities, readOnlyRootFilesystem, etc.) within the security context.
- See: https://avd.aquasec.com/misconfig/ksv-0118
- Location: `templates/statefulset.yaml:26-179`

```
26:     spec:
27:       imagePullSecrets:
28:         - name: hermes-image-pull
29:       serviceAccountName: lamp-hermes
30:       priorityClassName: hermes-critical
31:       securityContext:
32:         {}
33:       initContainers:
34:         - name: sync-skills
35:
```

### KSV-0125 (MEDIUM): Restrict container images to trusted registries

Container hermes in statefulset lamp-hermes (namespace: default) uses an image from an untrusted registry.

- Resolution: Use images from trusted registries.
- See: https://avd.aquasec.com/misconfig/ksv-0125
- Location: `templates/statefulset.yaml:118-169`

```
118:         - name: hermes
119:           image: "registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes:latest"
120:           imagePullPolicy: Always
121:           args:
122:             - gateway
123:             - run
124:           envFrom:
125:             - secretRef:
126:                 name: lamp-hermes-env
127:
```

### KSV-0125 (MEDIUM): Restrict container images to trusted registries

Container seed-dotenv in statefulset lamp-hermes (namespace: default) uses an image from an untrusted registry.

- Resolution: Use images from trusted registries.
- See: https://avd.aquasec.com/misconfig/ksv-0125
- Location: `templates/statefulset.yaml:84-116`

```
84:         - name: seed-dotenv
85:           image: "registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes:latest"
86:           imagePullPolicy: Always
87:           command:
88:             - sh
89:             - -c
90:             - |
91:               set -eu
92:               env_file=/opt/data/.env
93:
```

### KSV-0125 (MEDIUM): Restrict container images to trusted registries

Container sync-skills in statefulset lamp-hermes (namespace: default) uses an image from an untrusted registry.

- Resolution: Use images from trusted registries.
- See: https://avd.aquasec.com/misconfig/ksv-0125
- Location: `templates/statefulset.yaml:34-83`

```
34:         - name: sync-skills
35:           image: "registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes:latest"
36:           imagePullPolicy: Always
37:           command:
38:             - sh
39:             - -c
40:             - |
41:               set -eu
42:               dest="/opt/data/skills/djinn-marketplace"
43:
```
