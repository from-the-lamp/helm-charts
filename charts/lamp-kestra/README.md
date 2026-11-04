# lamp-kestra

![Version: 0.2.1](https://img.shields.io/badge/Version-0.2.1-informational?style=flat-square)

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://helm.kestra.io | kestra | 2.0.9 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| kestra.configurations.application.kestra.queue.type | string | `"h2"` |  |
| kestra.configurations.application.kestra.repository.type | string | `"h2"` |  |
| kestra.configurations.application.kestra.storage.local.base-path | string | `"/app/storage"` |  |
| kestra.configurations.application.kestra.storage.type | string | `"local"` |  |
| kestra.configurations.application.kestra.tasks.tmp-dir.path | string | `"/tmp/kestra-wd/tmp"` |  |
| kestra.deployments.standalone.dind.enabled | bool | `false` |  |
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
