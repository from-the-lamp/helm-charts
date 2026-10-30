# lamp-toolhive-mcps

![Version: 0.0.47](https://img.shields.io/badge/Version-0.0.47-informational?style=flat-square)

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| externalSecrets.creationPolicy | string | `"Orphan"` |  |
| externalSecrets.kind | string | `"ClusterSecretStore"` |  |
| externalSecrets.name | string | `"vault"` |  |
| externalSecrets.refreshInterval | string | `"1h"` |  |
| mcp.aave.enabled | bool | `true` |  |
| mcp.aave.mcps[0].name | string | `"aave"` |  |
| mcp.aave.remoteUrl | string | `"https://mcp.aave.com"` |  |
| mcp.alchemy.enabled | bool | `true` |  |
| mcp.alchemy.image | string | `"registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-alchemy-mcp:latest"` |  |
| mcp.alchemy.mcps[0].name | string | `"alchemy"` |  |
| mcp.alchemy.mcps[0].token.key | string | `"toolhive"` |  |
| mcp.alchemy.mcps[0].token.property | string | `"alchemy_api_key"` |  |
| mcp.alphavantage.enabled | bool | `true` |  |
| mcp.alphavantage.image | string | `"registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-alphavantage-mcp:1.0.3"` |  |
| mcp.alphavantage.mcps[0].name | string | `"alphavantage"` |  |
| mcp.alphavantage.mcps[0].token.key | string | `"toolhive"` |  |
| mcp.alphavantage.mcps[0].token.property | string | `"alphavantage_api_key"` |  |
| mcp.argocd.enabled | bool | `false` |  |
| mcp.argocd.image | string | `""` |  |
| mcp.argocd.mcps | list | `[]` |  |
| mcp.atlassian.enabled | bool | `true` |  |
| mcp.atlassian.image | string | `"xuanxdev/atlassian-mcp:latest"` |  |
| mcp.atlassian.mcps[0].domain | string | `"jirasolutions.atlassian.net"` |  |
| mcp.atlassian.mcps[0].email | string | `"artem.zverev@v-soft.dev"` |  |
| mcp.atlassian.mcps[0].name | string | `"jira-cas"` |  |
| mcp.atlassian.mcps[0].token.key | string | `"toolhive"` |  |
| mcp.atlassian.mcps[0].token.property | string | `"atlassian_token_cas"` |  |
| mcp.atlassian.mcps[1].domain | string | `"xdatagroup.atlassian.net"` |  |
| mcp.atlassian.mcps[1].email | string | `"artem.zverev@xdatagroup.io"` |  |
| mcp.atlassian.mcps[1].name | string | `"jira-xdata"` |  |
| mcp.atlassian.mcps[1].token.key | string | `"toolhive"` |  |
| mcp.atlassian.mcps[1].token.property | string | `"atlassian_token_xdata"` |  |
| mcp.atlassian.mcps[2].domain | string | `"cx-labs-io.atlassian.net"` |  |
| mcp.atlassian.mcps[2].email | string | `"a.zverev@cx-labs.io"` |  |
| mcp.atlassian.mcps[2].name | string | `"jira-currency"` |  |
| mcp.atlassian.mcps[2].token.key | string | `"toolhive"` |  |
| mcp.atlassian.mcps[2].token.property | string | `"atlassian_token_currency"` |  |
| mcp.atlassian.mcps[3].domain | string | `"artyomzverev.atlassian.net"` |  |
| mcp.atlassian.mcps[3].email | string | `"artyom.zverev@protonmail.com"` |  |
| mcp.atlassian.mcps[3].name | string | `"jira-from-the-lamp"` |  |
| mcp.atlassian.mcps[3].token.key | string | `"toolhive"` |  |
| mcp.atlassian.mcps[3].token.property | string | `"jira_token_from_the_lamp"` |  |
| mcp.bitbucket.enabled | bool | `true` |  |
| mcp.bitbucket.image | string | `"registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-bitbucket-mcp:latest"` |  |
| mcp.bitbucket.mcps[0].name | string | `"bitbucket"` |  |
| mcp.bitbucket.mcps[0].token.key | string | `"toolhive"` |  |
| mcp.bitbucket.mcps[0].token.property | string | `"atlassian_token_currency"` |  |
| mcp.bitbucket.mcps[0].username | string | `"a.zverev@cx-labs.io"` |  |
| mcp.bitbucket.mcps[0].workspace | string | `"currencycom"` |  |
| mcp.clickhouse.enabled | bool | `false` |  |
| mcp.clickhouse.image | string | `"us-central1-docker.pkg.dev/database-toolbox/toolbox/toolbox:1.15.0"` |  |
| mcp.clickhouse.mcps | list | `[]` |  |
| mcp.coingecko.enabled | bool | `true` |  |
| mcp.coingecko.image | string | `"registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-coingecko-mcp:1.0.2"` |  |
| mcp.coingecko.mcps[0].name | string | `"coingecko"` |  |
| mcp.coingecko.mcps[0].token.key | string | `"toolhive"` |  |
| mcp.coingecko.mcps[0].token.property | string | `"coingecko_demo_api_key"` |  |
| mcp.defaults.groupRef | string | `"mcp-tools"` |  |
| mcp.defaults.permissionProfile | string | `"network"` |  |
| mcp.defilamaFreeApi.enabled | bool | `true` |  |
| mcp.defilamaFreeApi.image | string | `"registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-defilama-free-api-mcp:0.1.0"` |  |
| mcp.defilamaFreeApi.mcps[0].name | string | `"defilama-free-api"` |  |
| mcp.defilamaYields.enabled | bool | `true` |  |
| mcp.defilamaYields.image | string | `"registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-defilama-yields-mcp:0.1.3"` |  |
| mcp.defilamaYields.mcps[0].name | string | `"defilama-yields"` |  |
| mcp.defillama.enabled | bool | `false` |  |
| mcp.defillama.mcps[0].name | string | `"defillama"` |  |
| mcp.defillama.remoteUrl | string | `"https://mcp.defillama.com/mcp"` |  |
| mcp.etherscan.enabled | bool | `true` |  |
| mcp.etherscan.image | string | `"registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-etherscan-mcp:latest"` |  |
| mcp.etherscan.mcps[0].name | string | `"etherscan"` |  |
| mcp.etherscan.mcps[0].token.key | string | `"toolhive"` |  |
| mcp.etherscan.mcps[0].token.property | string | `"etherscan_api_key"` |  |
| mcp.github.enabled | bool | `true` |  |
| mcp.github.image | string | `"ghcr.io/github/github-mcp-server:v2.0.3"` |  |
| mcp.github.mcps[0].name | string | `"github-xdata"` |  |
| mcp.github.mcps[0].token.key | string | `"toolhive"` |  |
| mcp.github.mcps[0].token.property | string | `"github_xdata_token"` |  |
| mcp.gitlab.enabled | bool | `true` |  |
| mcp.gitlab.image | string | `"zereight050/gitlab-mcp:2.3.11"` |  |
| mcp.gitlab.mcps[0].apiUrl | string | `"https://gitlab.com/api/v4"` |  |
| mcp.gitlab.mcps[0].env[0].name | string | `"GITLAB_TOOLSETS"` |  |
| mcp.gitlab.mcps[0].env[0].value | string | `"core,merge_requests,pipelines,ci,repositories"` |  |
| mcp.gitlab.mcps[0].name | string | `"gitlab"` |  |
| mcp.gitlab.mcps[0].permissionMode | string | `"full"` |  |
| mcp.gitlab.mcps[0].token.key | string | `"toolhive"` |  |
| mcp.gitlab.mcps[0].token.property | string | `"gitlab_token_from_the_lamp"` |  |
| mcp.gitlab.mcps[1].apiUrl | string | `"https://gitlab.v-soft.dev/api/v4"` |  |
| mcp.gitlab.mcps[1].name | string | `"gitlab-cas-dev"` |  |
| mcp.gitlab.mcps[1].permissionMode | string | `"full"` |  |
| mcp.gitlab.mcps[1].token.key | string | `"toolhive"` |  |
| mcp.gitlab.mcps[1].token.property | string | `"gitlab_token_cas_dev"` |  |
| mcp.gitlab.mcps[2].apiUrl | string | `"https://gitlab.v-gitops.cc/api/v4"` |  |
| mcp.gitlab.mcps[2].name | string | `"gitlab-cas-gitops"` |  |
| mcp.gitlab.mcps[2].permissionMode | string | `"full"` |  |
| mcp.gitlab.mcps[2].token.key | string | `"toolhive"` |  |
| mcp.gitlab.mcps[2].token.property | string | `"gitlab_token_cas_gitops"` |  |
| mcp.googlemaps.enabled | bool | `true` |  |
| mcp.googlemaps.mcps[0].name | string | `"googlemaps-grounding"` |  |
| mcp.googlemaps.mcps[0].token.key | string | `"toolhive"` |  |
| mcp.googlemaps.mcps[0].token.property | string | `"googlemaps_grounding_lite_api_key"` |  |
| mcp.googlemaps.remoteUrl | string | `"https://mapstools.googleapis.com/mcp"` |  |
| mcp.grafana.enabled | bool | `false` |  |
| mcp.grafana.image | string | `"grafana/mcp-grafana:2.1.1"` |  |
| mcp.grafana.mcps | list | `[]` |  |
| mcp.immich.baseUrl | string | `"http://immich-server.immich.svc.cluster.local:2283"` |  |
| mcp.immich.enabled | bool | `true` |  |
| mcp.immich.image | string | `"ghcr.io/drolosoft/immich-photo-manager:latest"` |  |
| mcp.immich.mcpPort | int | `8626` |  |
| mcp.immich.mcps[0].name | string | `"immich"` |  |
| mcp.immich.mcps[0].token.key | string | `"toolhive"` |  |
| mcp.immich.mcps[0].token.property | string | `"immich_api_key"` |  |
| mcp.jira.enabled | bool | `false` |  |
| mcp.jira.image | string | `"ghcr.io/sooperset/mcp-atlassian:0.23.1"` |  |
| mcp.jira.mcps | list | `[]` |  |
| mcp.kafka.enabled | bool | `false` |  |
| mcp.kafka.image | string | `"ghcr.io/tuannvm/kafka-mcp-server:2.0.2"` |  |
| mcp.kafka.mcps | list | `[]` |  |
| mcp.kubernetes.enabled | bool | `true` |  |
| mcp.kubernetes.image | string | `"quay.io/containers/kubernetes_mcp_server:v0.0.69"` |  |
| mcp.kubernetes.mcpPort | int | `8080` |  |
| mcp.kubernetes.mcps[0].name | string | `"kubernetes"` |  |
| mcp.kubernetes.mcps[0].serviceAccount | string | `"kubernetes-mcp"` |  |
| mcp.kubernetes.mcps[1].kubeconfig.key | string | `"toolhive"` |  |
| mcp.kubernetes.mcps[1].kubeconfig.property | string | `"kubeconfig-prod-1"` |  |
| mcp.kubernetes.mcps[1].name | string | `"oracle-1"` |  |
| mcp.kubernetes.mcps[2].kubeconfig.key | string | `"toolhive"` |  |
| mcp.kubernetes.mcps[2].kubeconfig.property | string | `"kubeconfig-prod-0"` |  |
| mcp.kubernetes.mcps[2].name | string | `"oracle-0"` |  |
| mcp.letsfg.enabled | bool | `true` |  |
| mcp.letsfg.image | string | `"registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-letsfg-mcp:1.1.0"` |  |
| mcp.letsfg.mcps[0].name | string | `"letsfg"` |  |
| mcp.linkedin.enabled | bool | `true` |  |
| mcp.linkedin.image | string | `"stickerdaniel/linkedin-mcp-server:latest"` |  |
| mcp.linkedin.mcps[0].name | string | `"linkedin"` |  |
| mcp.linkedin.mcps[0].sessionClaimSize | string | `"2Gi"` |  |
| mcp.oracle.enabled | bool | `true` |  |
| mcp.oracle.image | string | `"registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-oracle-mcp:latest"` |  |
| mcp.oracle.mcps[0].config.key | string | `"toolhive"` |  |
| mcp.oracle.mcps[0].config.property | string | `"oracle_config"` |  |
| mcp.oracle.mcps[0].keyFiles[0].name | string | `"lamp-prod-0.pem"` |  |
| mcp.oracle.mcps[0].keyFiles[0].property | string | `"oracle_key_lamp_prod_0"` |  |
| mcp.oracle.mcps[0].keyFiles[1].name | string | `"lamp-prod-1.pem"` |  |
| mcp.oracle.mcps[0].keyFiles[1].property | string | `"oracle_key_lamp_prod_1"` |  |
| mcp.oracle.mcps[0].name | string | `"oracle-prod-0"` |  |
| mcp.oracle.mcps[0].profile | string | `"lamp-prod-0"` |  |
| mcp.oracle.mcps[1].config.key | string | `"toolhive"` |  |
| mcp.oracle.mcps[1].config.property | string | `"oracle_config"` |  |
| mcp.oracle.mcps[1].keyFiles[0].name | string | `"lamp-prod-0.pem"` |  |
| mcp.oracle.mcps[1].keyFiles[0].property | string | `"oracle_key_lamp_prod_0"` |  |
| mcp.oracle.mcps[1].keyFiles[1].name | string | `"lamp-prod-1.pem"` |  |
| mcp.oracle.mcps[1].keyFiles[1].property | string | `"oracle_key_lamp_prod_1"` |  |
| mcp.oracle.mcps[1].name | string | `"oracle-prod-1"` |  |
| mcp.oracle.mcps[1].profile | string | `"lamp-prod-1"` |  |
| mcp.playwright.enabled | bool | `false` |  |
| mcp.playwright.image | string | `"mcr.microsoft.com/playwright/mcp:v0.0.83"` |  |
| mcp.playwright.mcpPort | int | `8931` |  |
| mcp.playwright.mcps | list | `[]` |  |
| mcp.postgres.enabled | bool | `false` |  |
| mcp.postgres.image | string | `"us-central1-docker.pkg.dev/database-toolbox/toolbox/toolbox:1.15.0"` |  |
| mcp.postgres.mcps | list | `[]` |  |
| mcp.redis.enabled | bool | `false` |  |
| mcp.redis.image | string | `"us-central1-docker.pkg.dev/database-toolbox/toolbox/toolbox:1.15.0"` |  |
| mcp.redis.mcps | list | `[]` |  |
| mcp.sentry.enabled | bool | `true` |  |
| mcp.sentry.image | string | `"ghcr.io/stacklok/dockyard/npx/sentry-mcp-server:0.42.0"` |  |
| mcp.sentry.mcps | list | `[]` |  |
| mcp.sheets.enabled | bool | `true` |  |
| mcp.sheets.image | string | `"registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-google-sheets:latest"` |  |
| mcp.sheets.mcps[0].credentials.key | string | `"toolhive"` |  |
| mcp.sheets.mcps[0].credentials.property | string | `"sheets-mcp"` |  |
| mcp.sheets.mcps[0].name | string | `"sheets"` |  |
| mcp.slack.enabled | bool | `true` |  |
| mcp.slack.image | string | `"ghcr.io/korotovsky/slack-mcp-server:v1.3.0"` |  |
| mcp.slack.mcps[0].name | string | `"slack-cas"` |  |
| mcp.slack.mcps[0].token.key | string | `"toolhive"` |  |
| mcp.slack.mcps[0].token.property | string | `"slack_token_cas"` |  |
| mcp.slack.mcps[1].name | string | `"slack-xdata"` |  |
| mcp.slack.mcps[1].token.key | string | `"toolhive"` |  |
| mcp.slack.mcps[1].token.property | string | `"slack_token_xdata"` |  |
| mcp.slack.mcps[2].name | string | `"slack-currency"` |  |
| mcp.slack.mcps[2].token.key | string | `"toolhive"` |  |
| mcp.slack.mcps[2].token.property | string | `"slack_token_currency"` |  |
| mcp.thegraph.enabled | bool | `true` |  |
| mcp.thegraph.image | string | `"registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-thegraph-mcp:latest"` |  |
| mcp.thegraph.mcps[0].name | string | `"thegraph"` |  |
| mcp.thegraph.mcps[0].token.key | string | `"toolhive"` |  |
| mcp.thegraph.mcps[0].token.property | string | `"thegraph_api_key"` |  |
| mcp.vault.address | string | `"http://vault.vault:8200"` |  |
| mcp.vault.authMount | string | `"kubernetes"` |  |
| mcp.vault.enabled | bool | `false` |  |
| mcp.vault.image | string | `"hashicorp/vault-mcp-server:0.2.0"` |  |
| mcp.vault.mcps | list | `[]` |  |
| mcp.vault.proxy.image | string | `"hashicorp/vault:2.2.1"` |  |
| mcp.vault.proxy.port | int | `8100` |  |
| mcp.victoriametrics.enabled | bool | `false` |  |
| mcp.victoriametrics.image | string | `"ghcr.io/victoriametrics/mcp-victoriametrics:v1.120.1"` |  |
| mcp.victoriametrics.mcps | list | `[]` |  |
| mcp.windmill.bootstrap.serviceUserEmail | string | `"toolhive-mcp@windmill.internal"` |  |
| mcp.windmill.bootstrap.superadminSecret.key | string | `"secret"` |  |
| mcp.windmill.bootstrap.superadminSecret.name | string | `"windmill-superadmin-secret"` |  |
| mcp.windmill.bootstrap.superadminSecret.namespace | string | `"windmill"` |  |
| mcp.windmill.bootstrap.windmillBaseUrl | string | `""` |  |
| mcp.windmill.bootstrap.workspaceId | string | `"djinn"` |  |
| mcp.windmill.enabled | bool | `true` |  |
| mcp.windmill.remoteUrl | string | `""` |  |
| vmcpTokenRefresher.enabled | bool | `false` |  |
| vmcpTokenRefresher.gcloud.enabled | bool | `false` |  |
| vmcpTokenRefresher.gcloud.image | string | `"europe-central2-docker.pkg.dev/common-infra-4585/docker-images/gcloud-mcp:0.1.0"` |  |
| vmcpTokenRefresher.gcloud.mcps | list | `[]` |  |
| vmcpTokenRefresher.letsfg.enabled | bool | `true` |  |
| vmcpTokenRefresher.letsfg.image | string | `"registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-letsfg-mcp:latest"` |  |
| vmcpTokenRefresher.letsfg.mcps[0].name | string | `"letsfg"` |  |
| vmcpTokenRefresher.letsfg.mcps[0].ociProfile | string | `"lamp-infra"` |  |
| vmcpTokenRefresher.letsfg.mcps[0].ociSecretName | string | `"oracle-infra-mcp-secret"` |  |
| vmcpTokenRefresher.letsfg.mcps[0].vaultSecretId | string | `"ocid1.vaultsecret.oc1.eu-frankfurt-1.amaaaaaap56pctia3kx6u2sw3qqt5gkav6rp4pst77gu2lu54qmeram4jcfa"` |  |
| vmcpTokenRefresher.remote.enabled | bool | `false` |  |
| vmcpTokenRefresher.remote.mcps | list | `[]` |  |
| vmcpTokenRefresher.resourceAudience | string | `""` |  |
| vmcpTokenRefresher.schedule | string | `"*/5 * * * *"` |  |
| vmcpTokenRefresher.tokenEndpoint | string | `""` |  |
| vmcpTokenRefresher.windmillApiBase | string | `""` |  |
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
