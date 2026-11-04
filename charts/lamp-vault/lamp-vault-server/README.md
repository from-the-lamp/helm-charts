# lamp-vault-server

![Version: 0.0.7](https://img.shields.io/badge/Version-0.0.7-informational?style=flat-square)

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
```

Report Summary

┌───────────────────────────────┬──────┬───────────────────┐
│            Target             │ Type │ Misconfigurations │
├───────────────────────────────┼──────┼───────────────────┤
│ templates/rbac.yaml           │ helm │         3         │
├───────────────────────────────┼──────┼───────────────────┤
│ templates/serviceaccount.yaml │ helm │         0         │
├───────────────────────────────┼──────┼───────────────────┤
│ templates/vault.yaml          │ helm │         0         │
└───────────────────────────────┴──────┴───────────────────┘
Legend:
- '-': Not scanned
- '0': Clean (no security findings detected)


templates/rbac.yaml (helm)
==========================
Tests: 75 (SUCCESSES: 72, FAILURES: 3)
Failures: 3 (UNKNOWN: 0, LOW: 0, MEDIUM: 2, HIGH: 1, CRITICAL: 0)

KSV-0048 (MEDIUM): Role 'vault' should not have access to resources ["pods", "deployments", "jobs", "cronjobs", "statefulsets", "daemonsets", "replicasets", "replicationcontrollers"] for verbs ["create", "update", "patch", "delete", "deletecollection", "impersonate", "*"]
════════════════════════════════════════
Depending on the policies enforced by the admission controller, this permission ranges from the ability to steal compute (crypto) by running workloads or allowing for creating workloads that escape to the node as root and escalation to cluster-admin.

See https://avd.aquasec.com/misconfig/ksv-0048
────────────────────────────────────────
 templates/rbac.yaml:11-13
────────────────────────────────────────
  11 ┌   - apiGroups: [""]
  12 │     resources: ["pods"]
  13 └     verbs: ["get", "list", "watch", "patch", "update"]
────────────────────────────────────────


KSV-0056 (HIGH): Role 'vault' should not have access to resources ["services", "endpoints", "endpointslices", "networkpolicies", "ingresses"] for verbs ["create", "update", "patch", "delete", "deletecollection", "impersonate", "*"]
════════════════════════════════════════
The ability to control which pods get service traffic directed to them allows for interception attacks. Controlling network policy allows for bypassing lateral movement restrictions.

See https://avd.aquasec.com/misconfig/ksv-0056
────────────────────────────────────────
 templates/rbac.yaml:14-16
────────────────────────────────────────
  14 ┌   - apiGroups: [""]
  15 │     resources: ["services"]
  16 └     verbs: ["get", "list", "watch", "patch", "update"]
────────────────────────────────────────


KSV-0113 (MEDIUM): Role 'vault' shouldn't have access to manage secrets in namespace 'null'
════════════════════════════════════════
Viewing secrets at the namespace scope can lead to escalation if another service account in that namespace has a higher privileged rolebinding or clusterrolebinding bound.

See https://avd.aquasec.com/misconfig/ksv-0113
────────────────────────────────────────
 templates/rbac.yaml:8-10
────────────────────────────────────────
   8 ┌   - apiGroups: [""]
   9 │     resources: ["secrets"]
  10 └     verbs: ["get", "list", "create", "update", "patch", "delete"]
────────────────────────────────────────


```
