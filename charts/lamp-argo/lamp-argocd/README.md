# lamp-argocd

![Version: 0.0.7](https://img.shields.io/badge/Version-0.0.7-informational?style=flat-square)

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| oci://ghcr.io/argoproj/argo-helm | argo-cd | 10.11.7 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| argo-cd.applicationSet.metrics.enabled | bool | `true` |  |
| argo-cd.applicationSet.metrics.serviceMonitor.enabled | bool | `true` |  |
| argo-cd.configs.cm."admin.enabled" | bool | `false` |  |
| argo-cd.configs.cm."exec.enabled" | bool | `true` |  |
| argo-cd.configs.cm."resource.customizations.health.apiextensions.k8s.io_CustomResourceDefinition" | string | `"hs = {}\nhs.status = \"Progressing\"\nhs.message = \"Waiting for CRD to be established\"\nif obj.status ~= nil and obj.status.conditions ~= nil then\n  for i, condition in ipairs(obj.status.conditions) do\n    if condition.type == \"Established\" and condition.status == \"True\" then\n      hs.status = \"Healthy\"\n      hs.message = \"CRD is established\"\n      return hs\n    end\n  end\nend\nreturn hs\n"` |  |
| argo-cd.configs.cm."resource.customizations.health.networking.k8s.io_Ingress" | string | `"hs = {}\nhs.status = \"Healthy\"\nhs.message = \"Classic Ingress objects are never watched on this cluster (Gateway API/Istio only)\"\nreturn hs\n"` |  |
| argo-cd.configs.params."server.insecure" | string | `"true"` |  |
| argo-cd.configs.rbac."policy.default" | string | `"deny"` |  |
| argo-cd.configs.rbac.scopes | string | `"[email, groups]"` |  |
| argo-cd.controller.metrics.enabled | bool | `true` |  |
| argo-cd.controller.metrics.serviceMonitor.enabled | bool | `true` |  |
| argo-cd.notifications.metrics.enabled | bool | `true` |  |
| argo-cd.notifications.metrics.serviceMonitor.enabled | bool | `true` |  |
| argo-cd.redis.exporter.enabled | bool | `true` |  |
| argo-cd.redis.metrics.enabled | bool | `true` |  |
| argo-cd.redis.metrics.serviceMonitor.enabled | bool | `true` |  |
| argo-cd.repoServer.metrics.enabled | bool | `true` |  |
| argo-cd.repoServer.metrics.serviceMonitor.enabled | bool | `true` |  |
| argo-cd.repoServer.metrics.serviceMonitor.relabelings[0].replacement | string | `"argocd-repo-server"` |  |
| argo-cd.repoServer.metrics.serviceMonitor.relabelings[0].targetLabel | string | `"job"` |  |
| argo-cd.repoServer.serviceAccount.name | string | `"argocd-repo-server"` |  |
| argo-cd.server.metrics.enabled | bool | `true` |  |
| argo-cd.server.metrics.serviceMonitor.enabled | bool | `true` |  |
| defaultClusterName | string | `""` |  |
| externalClusters | list | `[]` |  |
| externalSecrets.creationPolicy | string | `"Orphan"` |  |
| externalSecrets.kind | string | `"ClusterSecretStore"` |  |
| externalSecrets.name | string | `""` |  |
| externalSecrets.refreshInterval | string | `"1h"` |  |
| gcp.workloadIdentity.enabled | bool | `false` |  |
| gcp.workloadIdentity.serviceAccountName | string | `"argocd-repo-server"` |  |
| githubApps | list | `[]` |  |
| global.projectId | string | `""` |  |
| repositories | list | `[]` |  |
| sso.enabled | bool | `false` |  |
| sso.googleServiceAccountKey.enabled | bool | `false` |  |
| sso.googleServiceAccountKey.name | string | `"argocd-sso-gsa"` |  |
| sso.oauthClientID.key | string | `"argocd"` |  |
| sso.oauthClientID.property | string | `"oauth-client-id"` |  |
| sso.oauthClientSecret.key | string | `"argocd"` |  |
| sso.oauthClientSecret.property | string | `"oauth-client-secret"` |  |
| sso.secretName | string | `"argocd-sso"` |  |
# Trivy scan - Helm Chart
```

Report Summary

┌────────┬──────┬───────────────────┐
│ Target │ Type │ Misconfigurations │
├────────┼──────┼───────────────────┤
│   -    │  -   │         -         │
└────────┴──────┴───────────────────┘
Legend:
- '-': Not scanned
- '0': Clean (no security findings detected)

```
