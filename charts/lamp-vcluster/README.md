# lamp-vcluster

![Version: 0.3.0](https://img.shields.io/badge/Version-0.3.0-informational?style=flat-square)

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.loft.sh | vcluster | 0.37.7 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| kubeconfigCopier.enabled | bool | `false` |  |
| kubeconfigCopier.image.repository | string | `"bitnamilegacy/kubectl"` |  |
| kubeconfigCopier.image.tag | string | `"1.33.4"` |  |
| kubeconfigCopier.schedule | string | `"*/10 * * * *"` |  |
| kubeconfigCopier.sourceSecretName | string | `""` |  |
| kubeconfigCopier.targetNamespace | string | `""` |  |
| kubeconfigCopier.targetSecretName | string | `""` |  |
| vcluster.controlPlane.statefulSet.image.repository | string | `"loft-sh/vcluster-oss"` |  |
| vcluster.telemetry.enabled | bool | `false` |  |
# Trivy scan - Helm Chart

## Report Summary

| Target | Type | Misconfigurations |
| --- | --- | --- |
