# vsoft-argocd-project

![Version: 0.0.4](https://img.shields.io/badge/Version-0.0.4-informational?style=flat-square)

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| appset.app.annotations | object | `{}` |  |
| appset.app.nameGenerator | string | `"{{ .Values.project.type }}-{{ .Values.project.environment }}-{{`{{ .path.basename }}`}}"` |  |
| appset.generators[0].git.directories[0].path | string | `"envs/{{ .Values.project.environment }}/{{ .Values.project.type }}/*"` |  |
| appset.generators[0].git.repoURL | string | `"{{ .Values.git.repo }}"` |  |
| appset.generators[0].git.revision | string | `"{{ .Values.git.revision }}"` |  |
| appset.name | string | `"example"` |  |
| appset.nameGenerator | string | `"{{ .Values.project.type }}-{{ .Values.project.environment }}-{{ .Values.project.name }}"` |  |
| destination.name | string | `"gke-{{ .Values.project.projectId }}-{{ .Values.project.clusterName }}"` |  |
| destination.namespace | string | `"{{`{{ .path.basename }}`}}"` |  |
| destination.releaseName | string | `"{{`{{ .path.basename }}`}}"` |  |
| git.parameters[0].name | string | `"global.environment"` |  |
| git.parameters[0].value | string | `"{{ .Values.project.environment }}"` |  |
| git.parameters[1].name | string | `"global.projectName"` |  |
| git.parameters[1].value | string | `"{{ .Values.project.projectName }}"` |  |
| git.parameters[2].name | string | `"global.projectId"` |  |
| git.parameters[2].value | string | `"{{ .Values.project.projectId }}"` |  |
| git.parameters[3].name | string | `"global.region"` |  |
| git.parameters[3].value | string | `"{{ .Values.project.region }}"` |  |
| git.parameters[4].name | string | `"global.networkName"` |  |
| git.parameters[4].value | string | `"{{ .Values.project.networkName }}"` |  |
| git.parameters[5].name | string | `"global.clusterName"` |  |
| git.parameters[5].value | string | `"{{ .Values.project.clusterName }}"` |  |
| git.path | string | `"{{`{{ .path.path }}`}}"` |  |
| git.repo | string | `"https://github.com/example-project.git"` |  |
| git.revision | string | `"HEAD"` |  |
| git.valueFiles[0] | string | `"../values.yaml"` |  |
| git.valueFiles[1] | string | `"values.yaml"` |  |
| git.valueFiles[2] | string | `".kargo.values.yaml"` |  |
| ignoreDifferences[0].group | string | `"apps"` |  |
| ignoreDifferences[0].jqPathExpressions[0] | string | `".spec.volumeClaimTemplates[].apiVersion"` |  |
| ignoreDifferences[0].jqPathExpressions[1] | string | `".spec.volumeClaimTemplates[].kind"` |  |
| ignoreDifferences[0].jsonPointers[0] | string | `"/spec/replicas"` |  |
| ignoreDifferences[0].kind | string | `"StatefulSet"` |  |
| ignoreDifferences[1].group | string | `"apps"` |  |
| ignoreDifferences[1].jsonPointers[0] | string | `"/spec/replicas"` |  |
| ignoreDifferences[1].kind | string | `"Deployment"` |  |
| ignoreDifferences[2].group | string | `"admissionregistration.k8s.io"` |  |
| ignoreDifferences[2].jsonPointers[0] | string | `"/webhooks/0/failurePolicy"` |  |
| ignoreDifferences[2].kind | string | `"ValidatingWebhookConfiguration"` |  |
| ignoreDifferences[2].name | string | `"istio-validator-istio-system"` |  |
| ignoreDifferences[3].group | string | `"admissionregistration.k8s.io"` |  |
| ignoreDifferences[3].jsonPointers[0] | string | `"/webhooks/0/failurePolicy"` |  |
| ignoreDifferences[3].kind | string | `"ValidatingWebhookConfiguration"` |  |
| ignoreDifferences[3].name | string | `"istiod-default-validator"` |  |
| ignoreDifferences[4].group | string | `"apps"` |  |
| ignoreDifferences[4].jqPathExpressions[0] | string | `".spec.template.spec.containers[].env[]? | select(.valueFrom.resourceFieldRef != null) | .valueFrom.resourceFieldRef.divisor"` |  |
| ignoreDifferences[4].kind | string | `"Deployment"` |  |
| project.clusterName | string | `"common-dev-eu-w4-main-0"` |  |
| project.description | string | `""` |  |
| project.enabled | bool | `false` |  |
| project.environment | string | `"dev"` |  |
| project.name | string | `"example"` |  |
| project.nameGenerator | string | `"{{ .Values.project.type }}-{{ .Values.project.environment }}-{{ .Values.project.name }}"` |  |
| project.namespace | string | `"argocd"` |  |
| project.networkName | string | `"common-dev-eu-w4-main-0"` |  |
| project.projectId | string | `"common-dev-347a"` |  |
| project.projectName | string | `"common"` |  |
| project.region | string | `"europe-west4"` |  |
| project.roles.developer | list | `[]` |  |
| project.type | string | `"product"` |  |
| sync.changeSyncPolicy | bool | `true` |  |
| sync.createNamespace | bool | `true` |  |
| sync.namespaceAnnotations | object | `{}` |  |
| sync.namespaceLabels | object | `{}` |  |
| sync.preserveResourcesOnDeletion | bool | `true` |  |
| sync.prune | bool | `true` |  |
| sync.selfHeal | bool | `true` |  |
