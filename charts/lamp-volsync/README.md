# lamp-volsync

![Version: 0.0.2](https://img.shields.io/badge/Version-0.0.2-informational?style=flat-square)

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://backube.github.io/helm-charts/ | volsync | 0.17.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| volsync.resources.limits.cpu | string | `nil` |  |
| volsync.resources.limits.memory | string | `"256Mi"` |  |
| volsync.resources.requests.cpu | string | `"20m"` |  |
| volsync.resources.requests.memory | string | `"64Mi"` |  |
# Trivy scan - Helm Chart

## Report Summary

| Target | Type | Misconfigurations |
| --- | --- | --- |
| templates/snapshot.storage.k8s.io_volumesnapshotclasses.yaml | kubernetes | 0 |
| templates/snapshot.storage.k8s.io_volumesnapshotcontents.yaml | kubernetes | 0 |
| templates/snapshot.storage.k8s.io_volumesnapshots.yaml | kubernetes | 0 |
