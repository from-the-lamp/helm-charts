# lamp-istio-system

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square)

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://istio-release.storage.googleapis.com/charts | base | 1.30.7 |
| https://istio-release.storage.googleapis.com/charts | cni | 1.30.7 |
| https://istio-release.storage.googleapis.com/charts | istiod | 1.30.7 |
| https://istio-release.storage.googleapis.com/charts | ztunnel | 1.30.7 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| cni.cniBinDir | string | `"/var/lib/rancher/k3s/data/cni"` |  |
| cni.cniConfDir | string | `"/var/lib/rancher/k3s/agent/etc/cni/net.d"` |  |
| cni.profile | string | `"ambient"` |  |
| cni.resources.requests.cpu | string | `"10m"` |  |
| cni.resources.requests.memory | string | `"10Mi"` |  |
| istiod.profile | string | `"ambient"` |  |
| monitoring.enabled | bool | `false` |  |
| ztunnel.resources.requests.cpu | string | `"10m"` |  |
| ztunnel.resources.requests.memory | string | `"10Mi"` |  |
# Trivy scan - Helm Chart
```

Report Summary

┌─────────────────────────────────┬────────────┬───────────────────┐
│             Target              │    Type    │ Misconfigurations │
├─────────────────────────────────┼────────────┼───────────────────┤
│ templates/gateway-api-crds.yaml │ kubernetes │         0         │
└─────────────────────────────────┴────────────┴───────────────────┘
Legend:
- '-': Not scanned
- '0': Clean (no security findings detected)

```
