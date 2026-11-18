# lamp-oneuptime

![Version: 0.2.0](https://img.shields.io/badge/Version-0.2.0-informational?style=flat-square)

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://helm-chart.oneuptime.com | oneuptime | 15.0.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| oneuptime.global.storageClass | string | `"local-path"` |  |
| oneuptime.host | string | `"oneuptime.from-the-lamp.work"` |  |
| oneuptime.httpProtocol | string | `"http"` |  |
| oneuptime.image.type | string | `"community-edition"` |  |
| oneuptime.nginx.service.type | string | `"ClusterIP"` |  |
# Trivy scan - Helm Chart

## Report Summary

| Target | Type | Misconfigurations |
| --- | --- | --- |
