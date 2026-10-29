# vsoft-vault-server

![Version: 0.0.3](https://img.shields.io/badge/Version-0.0.3-informational?style=flat-square)

Bank-vaults Vault custom resource wrapper. Renders a vault.banzaicloud.com/v1alpha1
Vault instance plus its ServiceAccount and optional auth-delegator binding.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| externalSecrets.creationPolicy | string | `"Orphan"` |  |
| externalSecrets.kind | string | `"ClusterSecretStore"` |  |
| externalSecrets.name | string | `"gcp-platform-infra"` |  |
| externalSecrets.refreshInterval | string | `"1h"` |  |
| jwtAuth.boundIssuer | string | `"https://accounts.google.com"` |  |
| jwtAuth.defaultRole | string | `""` |  |
| jwtAuth.discoveryUrl | string | `"https://accounts.google.com"` |  |
| jwtAuth.enabled | bool | `false` |  |
| jwtAuth.path | string | `"jwt-gcp"` |  |
| jwtAuth.roles | list | `[]` |  |
| kubernetesAuth.enabled | bool | `false` |  |
| kubernetesAuth.roles | list | `[]` |  |
| kvMounts[0].description | string | `"Product-level secrets"` |  |
| kvMounts[0].name | string | `"products"` |  |
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
| vault.bankVaultsImage | string | `"ghcr.io/bank-vaults/bank-vaults:v1.31.1"` |  |
| vault.configurerPodSpec | object | `{}` |  |
| vault.image | string | `"hashicorp/vault:1.21.4"` |  |
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
