# lamp-vcluster

![Version: 0.2.1](https://img.shields.io/badge/Version-0.2.1-informational?style=flat-square)

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.loft.sh | vcluster | 0.37.7 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| kubeconfigExport.enabled | bool | `false` |  |
| kubeconfigExport.namespace | string | `""` |  |
| kubeconfigExport.secretName | string | `""` |  |
| vcluster.controlPlane.statefulSet.image.repository | string | `"loft-sh/vcluster-oss"` |  |
| vcluster.telemetry.enabled | bool | `false` |  |
# Trivy scan - Helm Chart

## Report Summary

| Target | Type | Misconfigurations |
| --- | --- | --- |
