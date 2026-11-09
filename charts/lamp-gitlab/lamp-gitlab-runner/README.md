# lamp-gitlab-runner

![Version: 0.3.1](https://img.shields.io/badge/Version-0.3.1-informational?style=flat-square)

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.gitlab.io | gitlab-runner | 0.94.3 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| buildkitd.enabled | bool | `false` |  |
| buildkitd.gc.maxUsedSpace | string | `"20GB"` |  |
| buildkitd.image.pullPolicy | string | `"IfNotPresent"` |  |
| buildkitd.image.repository | string | `"moby/buildkit"` |  |
| buildkitd.image.tag | string | `"v0.34.2"` |  |
| buildkitd.networkPolicy.clientLabel | string | `"ci-docker-client"` |  |
| buildkitd.networkPolicy.enabled | bool | `true` |  |
| buildkitd.nodeSelector | object | `{}` |  |
| buildkitd.persistence.hostPath | string | `""` |  |
| buildkitd.persistence.size | string | `"30Gi"` |  |
| buildkitd.persistence.storageClass | string | `""` |  |
| buildkitd.port | int | `1234` |  |
| buildkitd.resources | object | `{}` |  |
| externalSecrets.creationPolicy | string | `"Orphan"` |  |
| externalSecrets.kind | string | `"ClusterSecretStore"` |  |
| externalSecrets.name | string | `"oracle"` |  |
| externalSecrets.refreshInterval | string | `"1h"` |  |
| gitlab-runner.gitlabUrl | string | `"https://gitlab.com"` |  |
| gitlab-runner.rbac.create | bool | `true` |  |
| gitlab-runner.runners.config | string | `"[[runners]]\n  request_concurrency = 2\n  [runners.feature_flags]\n    FF_USE_ADAPTIVE_REQUEST_CONCURRENCY = true\n  [runners.kubernetes]\n    namespace = \"{{ default .Release.Namespace .Values.runners.jobNamespace }}\"\n    image = \"ubuntu:latest\"\n    helper_image = \"gitlab/gitlab-runner-helper:arm64-latest\"\n    privileged = true\n"` |  |
| gitlab-runner.runners.secret | string | `"gitlab-runner"` |  |
| gitlab-runner.runners.serviceAccountName | string | `"gitlab-runner"` |  |
| gitlab-runner.serviceAccount.create | bool | `true` |  |
| gitlab-runner.serviceAccount.name | string | `"gitlab-runner"` |  |
| remoteSecretKeys.token | string | `"gitlab-runner-token"` |  |
# Trivy scan - Helm Chart

## Report Summary

| Target | Type | Misconfigurations |
| --- | --- | --- |
