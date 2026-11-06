# lamp-vault-server

![Version: 0.0.8](https://img.shields.io/badge/Version-0.0.8-informational?style=flat-square)

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| audit | list | `[]` |  |
| externalSecrets.creationPolicy | string | `"Orphan"` |  |
| externalSecrets.kind | string | `"ClusterSecretStore"` |  |
| externalSecrets.name | string | `"gcp-platform-infra"` |  |
| externalSecrets.refreshInterval | string | `"1h"` |  |
| gcpUnseal.cryptoKey | string | `"vault-server"` |  |
| gcpUnseal.destroyScheduledDuration | string | `"2592000s"` |  |
| gcpUnseal.enabled | bool | `false` |  |
| gcpUnseal.gsaName | string | `"vault-server"` |  |
| gcpUnseal.keyRing | string | `"vault-server"` |  |
| gcpUnseal.rotationPeriod | string | `"7776000s"` |  |
| jwtAuth[0].boundIssuer | string | `"https://accounts.google.com"` |  |
| jwtAuth[0].defaultRole | string | `""` |  |
| jwtAuth[0].discoveryUrl | string | `"https://accounts.google.com"` |  |
| jwtAuth[0].enabled | bool | `false` |  |
| jwtAuth[0].path | string | `"jwt-gcp"` |  |
| jwtAuth[0].roles | list | `[]` |  |
| kubernetesAuth.enabled | bool | `false` |  |
| kubernetesAuth.roles | list | `[]` |  |
| kvMounts[0].description | string | `"Product-level secrets"` |  |
| kvMounts[0].name | string | `"products"` |  |
| monitoring.enabled | bool | `false` |  |
| oidc.boundIssuer | string | `"https://v-id.cc"` |  |
| oidc.defaultRole | string | `"zitadel"` |  |
| oidc.discoveryUrl | string | `"https://v-id.cc"` |  |
| oidc.enabled | bool | `false` |  |
| oidc.identityGroups[0].name | string | `"vault_devops"` |  |
| oidc.identityGroups[0].policies[0] | string | `"admin"` |  |
| oidc.identityGroups[1].name | string | `"vault_developer"` |  |
| oidc.identityGroups[1].policies[0] | string | `"developer"` |  |
| oidc.identityGroups[2].name | string | `"vault_support"` |  |
| oidc.identityGroups[2].policies[0] | string | `"support"` |  |
| oidc.listingVisibility | string | `"unauth"` |  |
| oidc.path | string | `"oidc"` |  |
| oidc.remoteSecretKeys.clientId.key | string | `"vault"` |  |
| oidc.remoteSecretKeys.clientId.property | string | `"zitadel-client-id"` |  |
| oidc.remoteSecretKeys.clientSecret.key | string | `"vault"` |  |
| oidc.remoteSecretKeys.clientSecret.property | string | `"zitadel-client-secret"` |  |
| oidc.role.allowedRedirectUris[0] | string | `"https://vault.v-soft.space/ui/vault/auth/zitadel/oidc/callback"` |  |
| oidc.role.groupsClaim | string | `"groups"` |  |
| oidc.role.name | string | `"zitadel"` |  |
| oidc.role.oidcScopes[0] | string | `"openid"` |  |
| oidc.role.oidcScopes[1] | string | `"profile"` |  |
| oidc.role.oidcScopes[2] | string | `"email"` |  |
| oidc.role.oidcScopes[3] | string | `"groups"` |  |
| oidc.role.userClaim | string | `"sub"` |  |
| pkiMounts | list | `[]` |  |
| policies | list | `[]` |  |
| rbac.authDelegator | bool | `true` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `"vault"` |  |
| vault.apiAddress | string | `"http://vault.vault:8200"` |  |
| vault.bankVaultsImage | string | `"ghcr.io/bank-vaults/bank-vaults:v1.33.2"` |  |
| vault.configurerPodSpec | object | `{}` |  |
| vault.image | string | `"hashicorp/vault:2.2.1"` |  |
| vault.name | string | `"vault"` |  |
| vault.podSpec | object | `{}` |  |
| vault.resources | object | `{}` |  |
| vault.serviceRegistrationEnabled | bool | `true` |  |
| vault.size | int | `1` |  |
| vault.statsdDisabled | bool | `true` |  |
| vault.storage.size | string | `"10Gi"` |  |
| vault.storage.storageClass | string | `"standard-rwo"` |  |
| vault.unsealConfig.preFlightChecks | bool | `true` |  |
| vault.unsealConfig.secretShares | int | `1` |  |
| vault.unsealConfig.secretThreshold | int | `1` |  |
| vault.unsealConfig.storeRootToken | bool | `true` |  |
# Trivy scan - Helm Chart

## Report Summary

| Target | Type | Misconfigurations |
| --- | --- | --- |
| templates/rbac.yaml | helm | 3 |
| templates/serviceaccount.yaml | helm | 0 |
| templates/vault.yaml | helm | 0 |

## templates/rbac.yaml

### KSV-0048 (MEDIUM): Manage Kubernetes workloads and pods

Role 'vault' should not have access to resources ["pods", "deployments", "jobs", "cronjobs", "statefulsets", "daemonsets", "replicasets", "replicationcontrollers"] for verbs ["create", "update", "patch", "delete", "deletecollection", "impersonate", "*"]

- Resolution: Kubernetes workloads resources are only allowed for verbs 'list', 'watch', 'get'
- See: https://avd.aquasec.com/misconfig/ksv-0048
- Location: `templates/rbac.yaml:11-13`

```
11:   - apiGroups: [""]
12:     resources: ["pods"]
13:     verbs: ["get", "list", "watch", "patch", "update"]
```

### KSV-0056 (HIGH): Manage Kubernetes networking

Role 'vault' should not have access to resources ["services", "endpoints", "endpointslices", "networkpolicies", "ingresses"] for verbs ["create", "update", "patch", "delete", "deletecollection", "impersonate", "*"]

- Resolution: Networking resources are only allowed for verbs 'list', 'watch', 'get'
- See: https://avd.aquasec.com/misconfig/ksv-0056
- Location: `templates/rbac.yaml:14-16`

```
14:   - apiGroups: [""]
15:     resources: ["services"]
16:     verbs: ["get", "list", "watch", "patch", "update"]
```

### KSV-0113 (MEDIUM): Manage namespace secrets

Role 'vault' shouldn't have access to manage secrets in namespace 'null'

- Resolution: Manage namespace secrets are not allowed. Remove resource 'secrets' from role
- See: https://avd.aquasec.com/misconfig/ksv-0113
- Location: `templates/rbac.yaml:8-10`

```
8:   - apiGroups: [""]
9:     resources: ["secrets"]
10:     verbs: ["get", "list", "create", "update", "patch", "delete"]
```
