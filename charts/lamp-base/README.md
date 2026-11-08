# lamp-base

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square)

Base platform chart - standardized Rollout/Service/ServiceAccount/ExternalSecret/PDB/HPA/NetworkPolicy for any from-the-lamp app

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity.enabled | bool | `false` |  |
| containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| containerSecurityContext.capabilities.drop[0] | string | `"ALL"` |  |
| containerSecurityContext.readOnlyRootFilesystem | bool | `true` |  |
| controller.type | string | `"Rollout"` |  |
| deployment.annotations | object | `{}` |  |
| deployment.env | list | `[]` |  |
| deployment.envFrom | list | `[]` |  |
| deployment.podAnnotations | object | `{}` |  |
| deployment.podLabels."alloy.logs" | string | `"enabled"` |  |
| deployment.podLabels."alloy.traces" | string | `"enabled"` |  |
| deployment.port | int | `8080` |  |
| deployment.probes.liveness.httpGet.path | string | `"/health"` |  |
| deployment.probes.liveness.httpGet.port | int | `8080` |  |
| deployment.probes.liveness.initialDelaySeconds | int | `5` |  |
| deployment.probes.liveness.periodSeconds | int | `10` |  |
| deployment.probes.readiness.httpGet.path | string | `"/health"` |  |
| deployment.probes.readiness.httpGet.port | int | `8080` |  |
| deployment.probes.readiness.initialDelaySeconds | int | `5` |  |
| deployment.probes.readiness.periodSeconds | int | `10` |  |
| deployment.replicas | int | `1` |  |
| deployment.resources.limits.cpu | string | `"100m"` |  |
| deployment.resources.limits.memory | string | `"64Mi"` |  |
| deployment.resources.requests.cpu | string | `"10m"` |  |
| deployment.resources.requests.memory | string | `"32Mi"` |  |
| deployment.strategy.canary | object | `{}` |  |
| externalSecret.data | list | `[]` |  |
| externalSecret.enabled | bool | `false` |  |
| externalSecrets.creationPolicy | string | `"Owner"` |  |
| externalSecrets.kind | string | `"ClusterSecretStore"` |  |
| externalSecrets.name | string | `"vault"` |  |
| externalSecrets.refreshInterval | string | `"1h"` |  |
| fullnameOverride | string | `""` |  |
| hpa.enabled | bool | `false` |  |
| hpa.maxReplicas | int | `3` |  |
| hpa.minReplicas | int | `1` |  |
| hpa.targetCPUUtilizationPercentage | int | `80` |  |
| image.name | string | `nil` |  |
| image.pullPolicy | string | `"Always"` |  |
| image.pullSecrets[0].name | string | `"gitlab"` |  |
| image.pullSecrets[0].passwordRemoteSecretKey | string | `"gitlab-token"` |  |
| image.pullSecrets[0].url | string | `"registry.gitlab.com/from-the-lamp"` |  |
| image.pullSecrets[0].username | string | `"token"` |  |
| image.tag | string | `nil` |  |
| labels.component | string | `""` |  |
| labels.partOf | string | `""` |  |
| nameOverride | string | `""` |  |
| networkPolicy.egress | list | `[]` |  |
| networkPolicy.enabled | bool | `false` |  |
| networkPolicy.ingress | list | `[]` |  |
| networkPolicy.policyTypes[0] | string | `"Ingress"` |  |
| nodeSelector.node-role | string | `"worker"` |  |
| pdb.enabled | bool | `false` |  |
| pdb.minAvailable | int | `1` |  |
| podSecurityContext.runAsNonRoot | bool | `true` |  |
| podSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| service.enabled | bool | `true` |  |
| service.port | int | `80` |  |
| service.targetPort | int | `8080` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.automountServiceAccountToken | bool | `false` |  |
| serviceAccount.create | bool | `false` |  |
| serviceAccount.name | string | `""` |  |
| volumes.emptyDirMounts | list | `[]` |  |
| volumes.extra | list | `[]` |  |
| volumes.extraVolumeMounts | list | `[]` |  |
| volumes.secretMounts | list | `[]` |  |
# Trivy scan - Helm Chart

## Report Summary

| Target | Type | Misconfigurations |
| --- | --- | --- |
| templates/imagePullSecrets.yaml | helm | 0 |
| templates/service.yaml | helm | 0 |
| templates/workload.yaml | helm | 0 |
