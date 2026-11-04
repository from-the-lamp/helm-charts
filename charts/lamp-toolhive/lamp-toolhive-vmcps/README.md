# lamp-toolhive-vmcps

![Version: 0.0.19](https://img.shields.io/badge/Version-0.0.19-informational?style=flat-square)

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.dexidp.io | dex | 0.26.0 |
| oci://registry-1.docker.io/bitnamicharts | redis | 28.3.10 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| authServerSecret.strategy | string | `"selfGenerated"` |  |
| authzConfigs[0].allowedGroups[0] | string | `"from-the-lamp"` |  |
| authzConfigs[0].name | string | `"mcp-tools-authz"` |  |
| authzConfigs[0].rawPolicies[0] | string | `"forbid(principal, action, resource) when { resource.name like \"mcp-oracle-0_*\" || resource.name like \"mcp-oracle-1_*\" };"` |  |
| authzConfigs[0].rawPolicies[1] | string | `"permit(\n  principal,\n  action,\n  resource\n)\nwhen {\n  principal has claim_client_id &&\n  principal.claim_client_id == \"windmill-delegate\" &&\n  (resource.name == \"mcp-jira-xdata_jira_get_issue\" ||\n   resource.name == \"mcp-jira-xdata_jira_search_issues\" ||\n   resource.name == \"mcp-jira-xdata_jira_transition_issue\" ||\n   resource.name == \"mcp-jira-xdata_jira_get_transitions\" ||\n   resource.name == \"mcp-jira-xdata_jira_get_issue_link_types\" ||\n   resource.name == \"mcp-jira-xdata_jira_get_project_issues\" ||\n   resource.name == \"mcp-jira-xdata_jira_get_user_profile\")\n};\n"` |  |
| authzConfigs[0].rawPolicies[2] | string | `"permit(\n  principal,\n  action,\n  resource\n)\nwhen {\n  principal has claim_client_id &&\n  principal.claim_client_id == \"windmill-delegate\" &&\n  (resource.name == \"mcp-jira-cas_jira_get_issue\" ||\n   resource.name == \"mcp-jira-cas_jira_search_issues\" ||\n   resource.name == \"mcp-jira-cas_jira_get_transitions\" ||\n   resource.name == \"mcp-jira-cas_jira_get_issue_link_types\" ||\n   resource.name == \"mcp-jira-cas_jira_get_project_issues\" ||\n   resource.name == \"mcp-jira-cas_jira_get_user_profile\" ||\n   resource.name == \"mcp-jira-cas_jira_transition_issue\")\n};\n"` |  |
| authzConfigs[0].rawPolicies[3] | string | `"permit(\n  principal,\n  action,\n  resource\n)\nwhen {\n  principal has claim_client_id &&\n  principal.claim_client_id == \"windmill-delegate\" &&\n  (resource.name == \"mcp-jira-currency_jira_get_issue\" ||\n   resource.name == \"mcp-jira-currency_jira_search_issues\" ||\n   resource.name == \"mcp-jira-currency_jira_transition_issue\" ||\n   resource.name == \"mcp-jira-currency_jira_get_transitions\" ||\n   resource.name == \"mcp-jira-currency_jira_get_issue_link_types\" ||\n   resource.name == \"mcp-jira-currency_jira_get_project_issues\" ||\n   resource.name == \"mcp-jira-currency_jira_get_user_profile\")\n};\n"` |  |
| authzConfigs[0].rawPolicies[4] | string | `"permit(\n  principal,\n  action,\n  resource\n)\nwhen {\n  principal has claim_client_id &&\n  principal.claim_client_id == \"windmill-delegate\" &&\n  (resource.name == \"mcp-jira-from-the-lamp_jira_get_issue\" ||\n   resource.name == \"mcp-jira-from-the-lamp_jira_search_issues\" ||\n   resource.name == \"mcp-jira-from-the-lamp_jira_transition_issue\" ||\n   resource.name == \"mcp-jira-from-the-lamp_jira_get_transitions\" ||\n   resource.name == \"mcp-jira-from-the-lamp_jira_get_issue_link_types\" ||\n   resource.name == \"mcp-jira-from-the-lamp_jira_get_project_issues\" ||\n   resource.name == \"mcp-jira-from-the-lamp_jira_get_user_profile\")\n};\n"` |  |
| dex.clientSecrets[0].envName | string | `"HERMES_CLIENT_SECRET"` |  |
| dex.clientSecrets[0].secretName | string | `"toolhive-hermes-client-secret"` |  |
| dex.clientSecrets[0].vaultKey | string | `"toolhive"` |  |
| dex.clientSecrets[0].vaultProperty | string | `"hermes-client-secret"` |  |
| dex.config.enablePasswordDB | bool | `true` |  |
| dex.config.expiry.idTokens | string | `"87600h"` |  |
| dex.config.expiry.signingKeys | string | `"87600h"` |  |
| dex.config.issuer | string | `"https://mcp.internal.from-the-lamp.work/dex"` |  |
| dex.config.oauth2.grantTypes[0] | string | `"authorization_code"` |  |
| dex.config.oauth2.grantTypes[1] | string | `"refresh_token"` |  |
| dex.config.oauth2.grantTypes[2] | string | `"password"` |  |
| dex.config.oauth2.grantTypes[3] | string | `"client_credentials"` |  |
| dex.config.oauth2.passwordConnector | string | `"local"` |  |
| dex.config.oauth2.skipApprovalScreen | bool | `true` |  |
| dex.config.staticClients[0].id | string | `"vmcp-mcp-tools"` |  |
| dex.config.staticClients[0].name | string | `"ToolHive vMCP"` |  |
| dex.config.staticClients[0].redirectURIs[0] | string | `"https://mcp.internal.from-the-lamp.work/oauth/callback"` |  |
| dex.config.staticClients[0].secretEnv | string | `"VMCP_CLIENT_SECRET"` |  |
| dex.config.staticClients[1].id | string | `"hermes-toolhive"` |  |
| dex.config.staticClients[1].name | string | `"Hermes (headless ROPC)"` |  |
| dex.config.staticClients[1].secretEnv | string | `"HERMES_CLIENT_SECRET"` |  |
| dex.config.staticPasswords[0].email | string | `"hermes@toolhive.internal"` |  |
| dex.config.staticPasswords[0].hash | string | `"$2b$10$MUoCGGtqh/8dPxPY0g9u6.7voKfSGv79I/fAs.LCh4or1BiXoTF2O"` |  |
| dex.config.staticPasswords[0].userID | string | `"hermes-static-user"` |  |
| dex.config.staticPasswords[0].username | string | `"hermes"` |  |
| dex.config.storage.config.inCluster | bool | `true` |  |
| dex.config.storage.type | string | `"kubernetes"` |  |
| dex.config.web.http | string | `"0.0.0.0:5556"` |  |
| dex.configSecret.create | bool | `false` |  |
| dex.configSecret.name | string | `"toolhive-dex-config"` |  |
| dex.enabled | bool | `true` |  |
| dex.env.DEX_CLIENT_CREDENTIAL_GRANT_ENABLED_BY_DEFAULT | string | `"true"` |  |
| dex.envFrom[0].secretRef.name | string | `"dex-sso-secrets"` |  |
| dex.envFrom[1].secretRef.name | string | `"toolhive-vmcp-client-secret"` |  |
| dex.envFrom[2].secretRef.name | string | `"toolhive-hermes-client-secret"` |  |
| dex.podAnnotations."reloader.stakater.com/auto" | string | `"true"` |  |
| dex.sso.gitlab.baseURL | string | `"https://gitlab.com"` |  |
| dex.sso.gitlab.clientId.key | string | `"toolhive"` |  |
| dex.sso.gitlab.clientId.property | string | `"oauth-client-id"` |  |
| dex.sso.gitlab.clientSecret.key | string | `"toolhive"` |  |
| dex.sso.gitlab.clientSecret.property | string | `"oauth-client-secret"` |  |
| dex.sso.gitlab.enabled | bool | `true` |  |
| dex.sso.gitlab.groups[0] | string | `"from-the-lamp"` |  |
| dex.sso.gitlab.redirectURI | string | `"https://mcp.internal.from-the-lamp.work/dex/callback"` |  |
| dex.sso.google.enabled | bool | `false` |  |
| dex.sso.zitadel.enabled | bool | `false` |  |
| externalSecrets.creationPolicy | string | `"Orphan"` |  |
| externalSecrets.kind | string | `"ClusterSecretStore"` |  |
| externalSecrets.name | string | `"vault"` |  |
| externalSecrets.refreshInterval | string | `"1h"` |  |
| global.projectId | string | `"example-project"` |  |
| hermesTailscaleExpose.enabled | bool | `false` |  |
| hermesTailscaleExpose.hostname | string | `"mcp-tools-hermes"` |  |
| hermesTailscaleExpose.tags[0] | string | `"tag:exit"` |  |
| mcpGroups[0].name | string | `"mcp-tools"` |  |
| oidcConfigs[0].issuer | string | `"https://mcp.internal.from-the-lamp.work"` |  |
| oidcConfigs[0].jwksAllowPrivateIP | bool | `true` |  |
| oidcConfigs[0].name | string | `"mcp-tools-oidc"` |  |
| oidcConfigs[1].issuer | string | `"https://mcp.internal.from-the-lamp.work/dex"` |  |
| oidcConfigs[1].jwksAllowPrivateIP | bool | `true` |  |
| oidcConfigs[1].name | string | `"mcp-tools-hermes-oidc"` |  |
| redis.architecture | string | `"standalone"` |  |
| redis.auth.enabled | bool | `true` |  |
| redis.auth.existingSecret | string | `"toolhive-redis-password"` |  |
| redis.auth.existingSecretPasswordKey | string | `"password"` |  |
| redis.enabled | bool | `true` |  |
| redis.fullnameOverride | string | `"toolhive-redis"` |  |
| redis.image.tag | string | `"latest"` |  |
| redis.master.persistence.enabled | bool | `true` |  |
| redis.master.persistence.size | string | `"1Gi"` |  |
| redis.master.resources.limits.cpu | string | `"100m"` |  |
| redis.master.resources.limits.memory | string | `"128Mi"` |  |
| redis.master.resources.requests.cpu | string | `"10m"` |  |
| redis.master.resources.requests.memory | string | `"12Mi"` |  |
| redis.passwordSecret.key | string | `"toolhive"` |  |
| redis.passwordSecret.property | string | `"redis-password"` |  |
| redis.replica.replicaCount | int | `0` |  |
| tailscaleExpose.enabled | bool | `false` |  |
| tailscaleExpose.hostname | string | `"mcp-tools"` |  |
| tailscaleExpose.tags[0] | string | `"tag:exit"` |  |
| virtualMcpServers[0].authServerConfig.baselineClientScopes[0] | string | `"openid"` |  |
| virtualMcpServers[0].authServerConfig.baselineClientScopes[1] | string | `"offline_access"` |  |
| virtualMcpServers[0].authServerConfig.hmacSecretRefs[0].key | string | `"hmac"` |  |
| virtualMcpServers[0].authServerConfig.hmacSecretRefs[0].name | string | `"toolhive-authserver-secrets"` |  |
| virtualMcpServers[0].authServerConfig.inboundGrants.tokenExchange.delegateClients[0].audiences[0] | string | `"https://mcp.internal.from-the-lamp.work/mcp"` |  |
| virtualMcpServers[0].authServerConfig.inboundGrants.tokenExchange.delegateClients[0].clientId | string | `"windmill-delegate"` |  |
| virtualMcpServers[0].authServerConfig.inboundGrants.tokenExchange.delegateClients[0].clientSecretRef.key | string | `"WINDMILL_DELEGATE_CLIENT_SECRET"` |  |
| virtualMcpServers[0].authServerConfig.inboundGrants.tokenExchange.delegateClients[0].clientSecretRef.name | string | `"toolhive-windmill-delegate-secret"` |  |
| virtualMcpServers[0].authServerConfig.inboundGrants.tokenExchange.delegateClients[0].scopes[0] | string | `"openid"` |  |
| virtualMcpServers[0].authServerConfig.inboundGrants.tokenExchange.delegateClients[0].scopes[1] | string | `"offline_access"` |  |
| virtualMcpServers[0].authServerConfig.inboundGrants.tokenExchange.issuerPolicies[0].actorMatcher | string | `"claims.sub == \"system:serviceaccount:windmill:windmill\""` |  |
| virtualMcpServers[0].authServerConfig.inboundGrants.tokenExchange.issuerPolicies[0].allowedDelegateClients[0] | string | `"windmill-delegate"` |  |
| virtualMcpServers[0].authServerConfig.inboundGrants.tokenExchange.issuerPolicies[0].expectedAudience | string | `"https://mcp.internal.from-the-lamp.work/mcp"` |  |
| virtualMcpServers[0].authServerConfig.inboundGrants.tokenExchange.issuerPolicies[0].issuerRef | string | `"k8s-apiserver"` |  |
| virtualMcpServers[0].authServerConfig.issuer | string | `"https://mcp.internal.from-the-lamp.work"` |  |
| virtualMcpServers[0].authServerConfig.signingKeySecretRefs[0].key | string | `"signing"` |  |
| virtualMcpServers[0].authServerConfig.signingKeySecretRefs[0].name | string | `"toolhive-authserver-secrets"` |  |
| virtualMcpServers[0].authServerConfig.storage.redis.aclUserConfig.passwordSecretRef.key | string | `"password"` |  |
| virtualMcpServers[0].authServerConfig.storage.redis.aclUserConfig.passwordSecretRef.name | string | `"toolhive-redis-password"` |  |
| virtualMcpServers[0].authServerConfig.storage.redis.addr | string | `"toolhive-redis-master.toolhive.svc.cluster.local:6379"` |  |
| virtualMcpServers[0].authServerConfig.storage.type | string | `"redis"` |  |
| virtualMcpServers[0].authServerConfig.trustedIssuers[0].caBundleRef.configMapRef.key | string | `"ca.crt"` |  |
| virtualMcpServers[0].authServerConfig.trustedIssuers[0].caBundleRef.configMapRef.name | string | `"kube-root-ca.crt"` |  |
| virtualMcpServers[0].authServerConfig.trustedIssuers[0].issuerUrl | string | `"https://91.98.221.117:6443"` |  |
| virtualMcpServers[0].authServerConfig.trustedIssuers[0].jwksUrl | string | `"https://91.98.221.117:6443/openid/v1/jwks"` |  |
| virtualMcpServers[0].authServerConfig.trustedIssuers[0].name | string | `"k8s-apiserver"` |  |
| virtualMcpServers[0].authServerConfig.upstreamProviders[0].name | string | `"gitlab"` |  |
| virtualMcpServers[0].authServerConfig.upstreamProviders[0].oidcConfig.allowPrivateIPs | bool | `true` |  |
| virtualMcpServers[0].authServerConfig.upstreamProviders[0].oidcConfig.clientId | string | `"vmcp-mcp-tools"` |  |
| virtualMcpServers[0].authServerConfig.upstreamProviders[0].oidcConfig.clientSecretRef.key | string | `"VMCP_CLIENT_SECRET"` |  |
| virtualMcpServers[0].authServerConfig.upstreamProviders[0].oidcConfig.clientSecretRef.name | string | `"toolhive-vmcp-client-secret"` |  |
| virtualMcpServers[0].authServerConfig.upstreamProviders[0].oidcConfig.issuerUrl | string | `"https://mcp.internal.from-the-lamp.work/dex"` |  |
| virtualMcpServers[0].authServerConfig.upstreamProviders[0].oidcConfig.redirectUri | string | `"https://mcp.internal.from-the-lamp.work/oauth/callback"` |  |
| virtualMcpServers[0].authServerConfig.upstreamProviders[0].oidcConfig.scopes[0] | string | `"openid"` |  |
| virtualMcpServers[0].authServerConfig.upstreamProviders[0].oidcConfig.scopes[1] | string | `"email"` |  |
| virtualMcpServers[0].authServerConfig.upstreamProviders[0].oidcConfig.scopes[2] | string | `"groups"` |  |
| virtualMcpServers[0].authServerConfig.upstreamProviders[0].type | string | `"oidc"` |  |
| virtualMcpServers[0].groupRef | string | `"mcp-tools"` |  |
| virtualMcpServers[0].incomingAuth.authzConfigRef.name | string | `"mcp-tools-authz"` |  |
| virtualMcpServers[0].incomingAuth.oidcConfigRef.audience | string | `"https://mcp.internal.from-the-lamp.work/mcp"` |  |
| virtualMcpServers[0].incomingAuth.oidcConfigRef.name | string | `"mcp-tools-oidc"` |  |
| virtualMcpServers[0].incomingAuth.oidcConfigRef.resourceUrl | string | `"https://mcp.internal.from-the-lamp.work/mcp"` |  |
| virtualMcpServers[0].incomingAuth.oidcConfigRef.scopes[0] | string | `"openid"` |  |
| virtualMcpServers[0].incomingAuth.oidcConfigRef.scopes[1] | string | `"offline_access"` |  |
| virtualMcpServers[0].incomingAuth.type | string | `"oidc"` |  |
| virtualMcpServers[0].name | string | `"mcp-tools"` |  |
| virtualMcpServers[0].operational.timeouts.default | string | `"30s"` |  |
| virtualMcpServers[0].operational.timeouts.perWorkload.letsfg | string | `"120s"` |  |
| virtualMcpServers[0].podTemplateSpec.metadata.annotations."reloader.stakater.com/auto" | string | `"true"` |  |
| virtualMcpServers[0].podTemplateSpec.spec.containers[0].name | string | `"vmcp"` |  |
| virtualMcpServers[0].podTemplateSpec.spec.containers[0].resources.limits.cpu | string | `"500m"` |  |
| virtualMcpServers[0].podTemplateSpec.spec.containers[0].resources.limits.memory | string | `"512Mi"` |  |
| virtualMcpServers[0].podTemplateSpec.spec.containers[0].resources.requests.cpu | string | `"5m"` |  |
| virtualMcpServers[0].podTemplateSpec.spec.containers[0].resources.requests.memory | string | `"128Mi"` |  |
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
