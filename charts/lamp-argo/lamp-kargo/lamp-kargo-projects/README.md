# lamp-kargo-projects

![Version: 0.0.9](https://img.shields.io/badge/Version-0.0.9-informational?style=flat-square)

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| apps[0].image | string | `"registry.gitlab.com/from-the-lamp/frontend/debug"` |  |
| apps[0].name | string | `"debug"` |  |
| apps[1].image | string | `"registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-book"` |  |
| apps[1].name | string | `"book"` |  |
| apps[2].image | string | `"registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-general"` |  |
| apps[2].name | string | `"general"` |  |
| apps[3].image | string | `"registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-banking-callback-service"` |  |
| apps[3].name | string | `"banking-callback"` |  |
| apps[4].gitImageDigestPath | string | `"litellm-helm.image.digest"` |  |
| apps[4].gitImageNamePath | string | `"litellm-helm.image.repository"` |  |
| apps[4].gitImageTagPath | string | `"litellm-helm.image.tag"` |  |
| apps[4].image | string | `"registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-litellm"` |  |
| apps[4].name | string | `"litellm"` |  |
| apps[5].gitImageDigestPath | string | `"lamp-hermes.image.tag"` |  |
| apps[5].gitImageNamePath | string | `"lamp-hermes.image.name"` |  |
| apps[5].gitImageTagPath | string | `"lamp-hermes.image.tag"` |  |
| apps[5].image | string | `"registry.gitlab.com/from-the-lamp/infra/docker-images/lamp-hermes"` |  |
| apps[5].name | string | `"hermes"` |  |
| externalSecrets.creationPolicy | string | `"Orphan"` |  |
| externalSecrets.kind | string | `"ClusterSecretStore"` |  |
| externalSecrets.name | string | `"oracle"` |  |
| externalSecrets.refreshInterval | string | `"1h"` |  |
| githubApps | list | `[]` |  |
| project.autoPromotion[0].stage | string | `"prod-0"` |  |
| project.git.branch | string | `"main"` |  |
| project.git.imageDigestPath | string | `"base.image.digest"` |  |
| project.git.imageNamePath | string | `"base.image.name"` |  |
| project.git.imageTagPath | string | `"base.image.tag"` |  |
| project.git.resultFile | string | `".kargo.values.yaml"` |  |
| project.git.url | string | `"https://gitlab.com/from-the-lamp/infra/argo-apps.git"` |  |
| project.prefix | string | `"kargo-project"` |  |
| project.rbac | list | `[]` |  |
| project.task.kind | string | `"ClusterPromotionTask"` |  |
| project.task.name | string | `"docker"` |  |
| repositories[0].name | string | `"gitlab-from-the-lamp"` |  |
| repositories[0].passwordRemoteSecretKey | string | `"gitlab-token"` |  |
| repositories[0].type | string | `"git"` |  |
| repositories[0].url | string | `"https://gitlab.com/from-the-lamp/infra/argo-apps.git"` |  |
| repositories[0].username | string | `"token"` |  |
| repositories[1].name | string | `"gitlab-from-the-lamp"` |  |
| repositories[1].passwordRemoteSecretKey | string | `"gitlab-token"` |  |
| repositories[1].repoURLIsRegex | bool | `true` |  |
| repositories[1].type | string | `"image"` |  |
| repositories[1].url | string | `"registry.gitlab.com/from-the-lamp/backend/monorepo"` |  |
| repositories[1].username | string | `"token"` |  |
| repositories[2].name | string | `"gitlab-from-the-lamp-docker-images"` |  |
| repositories[2].passwordRemoteSecretKey | string | `"gitlab-token"` |  |
| repositories[2].repoURLIsRegex | bool | `true` |  |
| repositories[2].type | string | `"image"` |  |
| repositories[2].url | string | `"registry.gitlab.com/from-the-lamp/infra/docker-images"` |  |
| repositories[2].username | string | `"token"` |  |
| stages[0].color | string | `"green"` |  |
| stages[0].name | string | `"prod-0"` |  |
| warehouses[0].constraint | string | `"latest"` |  |
| warehouses[0].imageSelectionStrategy | string | `"Digest"` |  |
| warehouses[0].name | string | `"prod-0"` |  |
# Trivy scan - Helm Chart

## Report Summary

| Target | Type | Misconfigurations |
| --- | --- | --- |
| templates/project.yaml | helm | 0 |
| templates/repositories.yaml | helm | 0 |
| templates/stages.yaml | helm | 0 |
| templates/warehouses.yaml | helm | 0 |
