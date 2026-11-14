# lamp-hindsight

![Version: 0.0.1](https://img.shields.io/badge/Version-0.0.1-informational?style=flat-square)

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| oci://ghcr.io/vectorize-io/charts/hindsight | hindsight | 1.2.1 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| externalSecrets.creationPolicy | string | `"Orphan"` |  |
| externalSecrets.kind | string | `"ClusterSecretStore"` |  |
| externalSecrets.name | string | `"vault"` |  |
| externalSecrets.refreshInterval | string | `"1h"` |  |
| secrets.HINDSIGHT_API_LLM_API_KEY.key | string | `"litellm"` |  |
| secrets.HINDSIGHT_API_LLM_API_KEY.property | string | `"hindsight_api_key"` |  |
| secrets.postgres-password.key | string | `"postgres"` |  |
| secrets.postgres-password.property | string | `"users.hindsight.password"` |  |
# Trivy scan - Helm Chart

## Report Summary

| Target | Type | Misconfigurations |
| --- | --- | --- |
