# vsoft-pgadmin

![Version: 0.1.4](https://img.shields.io/badge/Version-0.1.4-informational?style=flat-square)

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://helm.runix.net | pgadmin4 | 1.66.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| externalSecrets.creationPolicy | string | `"Orphan"` |  |
| externalSecrets.kind | string | `"ClusterSecretStore"` |  |
| externalSecrets.name | string | `"vault"` |  |
| externalSecrets.refreshInterval | string | `"1h"` |  |
| oauth.api_url | string | `nil` |  |
| oauth.auth_url | string | `nil` |  |
| oauth.button_color | string | `"#E24329"` |  |
| oauth.display_name | string | `"SSO"` |  |
| oauth.icon | string | `"fa-gitlab"` |  |
| oauth.metadata_url | string | `nil` |  |
| oauth.name | string | `"gitlab"` |  |
| oauth.remoteSecretKeys.client_id.key | string | `"client_id"` |  |
| oauth.remoteSecretKeys.client_id.path | string | `"example/path"` |  |
| oauth.remoteSecretKeys.client_secret.key | string | `"client_secret"` |  |
| oauth.remoteSecretKeys.client_secret.path | string | `"example/path"` |  |
| oauth.scope | string | `"openid email profile"` |  |
| oauth.token_url | string | `nil` |  |
| oauth.userinfo_url | string | `nil` |  |
| pgadmin4.VolumePermissions.enabled | bool | `true` |  |
| pgadmin4.annotations."reloader.stakater.com/auto" | string | `"true"` |  |
| pgadmin4.env | object | `{}` |  |
| pgadmin4.envVarsExtra[0].name | string | `"PGADMIN_DISABLE_POSTFIX"` |  |
| pgadmin4.envVarsExtra[0].value | string | `"true"` |  |
| pgadmin4.envVarsExtra[1].name | string | `"PGSERVICEFILE"` |  |
| pgadmin4.envVarsExtra[1].value | string | `"/var/lib/pgadmin/pg_service.conf"` |  |
| pgadmin4.envVarsFromSecrets[0] | string | `"pgadmin-oauth"` |  |
| pgadmin4.extraConfigmapMounts[0].configMap | string | `"pgadmin-config"` |  |
| pgadmin4.extraConfigmapMounts[0].mountPath | string | `"/pgadmin4/config_local.py"` |  |
| pgadmin4.extraConfigmapMounts[0].name | string | `"config-local"` |  |
| pgadmin4.extraConfigmapMounts[0].readOnly | bool | `true` |  |
| pgadmin4.extraConfigmapMounts[0].subPath | string | `"config_local.py"` |  |
| pgadmin4.extraInitContainers | string | `"- name: prepare-pgservice-file\n  image: {{ include \"pgadmin.image\" . | quote }}\n  imagePullPolicy: {{ .Values.image.pullPolicy }}\n  command: ['sh', '-c', 'cp /var/lib/pgadmin-pgservice/pg_service.conf /var/lib/pgadmin/pg_service.conf && chown 5050:5050 /var/lib/pgadmin/pg_service.conf && chmod 600 /var/lib/pgadmin/pg_service.conf']\n  volumeMounts:\n    - name: pgadmin-pgservice\n      mountPath: /var/lib/pgadmin-pgservice\n      readOnly: true\n    - name: pgadmin-data\n      mountPath: /var/lib/pgadmin\n  securityContext:\n    runAsUser: 0\n"` |  |
| pgadmin4.extraSecretMounts[0].defaultMode | int | `288` |  |
| pgadmin4.extraSecretMounts[0].mountPath | string | `"/var/lib/pgadmin-pgservice"` |  |
| pgadmin4.extraSecretMounts[0].name | string | `"pgadmin-pgservice"` |  |
| pgadmin4.extraSecretMounts[0].readOnly | bool | `true` |  |
| pgadmin4.extraSecretMounts[0].secret | string | `"pgadmin-pgservice"` |  |
| pgadmin4.fullnameOverride | string | `"pgadmin"` |  |
| pgadmin4.ingress.enabled | bool | `false` |  |
| pgadmin4.livenessProbe.failureThreshold | int | `3` |  |
| pgadmin4.livenessProbe.initialDelaySeconds | int | `10` |  |
| pgadmin4.livenessProbe.periodSeconds | int | `10` |  |
| pgadmin4.livenessProbe.successThreshold | int | `1` |  |
| pgadmin4.livenessProbe.timeoutSeconds | int | `15` |  |
| pgadmin4.persistentVolume.enabled | bool | `false` |  |
| pgadmin4.readinessProbe.failureThreshold | int | `3` |  |
| pgadmin4.readinessProbe.initialDelaySeconds | int | `10` |  |
| pgadmin4.readinessProbe.periodSeconds | int | `10` |  |
| pgadmin4.readinessProbe.successThreshold | int | `1` |  |
| pgadmin4.readinessProbe.timeoutSeconds | int | `15` |  |
| pgadmin4.serverDefinitions.enabled | bool | `true` |  |
| pgadmin4.serverDefinitions.resourceType | string | `"ConfigMap"` |  |
| pgadmin4.serverDefinitions.servers | object | `{}` |  |
| pgadmin4.startupProbe.failureThreshold | int | `60` |  |
| pgadmin4.startupProbe.periodSeconds | int | `10` |  |
| pgadmin4.startupProbe.timeoutSeconds | int | `5` |  |
| serverPasswords | object | `{}` |  |
