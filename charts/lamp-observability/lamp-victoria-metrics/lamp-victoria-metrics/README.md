# lamp-victoria-metrics

![Version: 3.0.1](https://img.shields.io/badge/Version-3.0.1-informational?style=flat-square)

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://prometheus-community.github.io/helm-charts | prometheus-operator-crds | 32.0.2 |
| https://victoriametrics.github.io/helm-charts/ | victoria-metrics-k8s-stack | 0.97.1 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| additionDashboards.kubernetes | bool | `false` |  |
| alertManagerConfig.cronitor.enabled | bool | `false` |  |
| alertManagerConfig.cronitor.repeatInterval | string | `"5m"` |  |
| alertManagerConfig.cronitor.secretName | string | `"vmalertmanager-cronitor-secret"` |  |
| alertManagerConfig.cronitor.urlSecret.key | string | `"cronitor"` |  |
| alertManagerConfig.cronitor.urlSecret.property | string | `"alertmanager_watchdog_url"` |  |
| alertManagerConfig.receivers | list | `[]` |  |
| alertManagerConfig.routes | list | `[]` |  |
| alertManagerConfig.slack.apiUrl | string | `"https://slack.com/api/chat.postMessage"` |  |
| alertManagerConfig.slack.token | string | `"token"` |  |
| externalSecrets.creationPolicy | string | `"Orphan"` |  |
| externalSecrets.kind | string | `"ClusterSecretStore"` |  |
| externalSecrets.name | string | `"vault"` |  |
| externalSecrets.refreshInterval | string | `"1h"` |  |
| global.slack_api_url | string | `"https://slack.com/api/chat.postMessage"` |  |
| prometheus-operator-crds.crds.annotations."argocd.argoproj.io/sync-options" | string | `"ServerSideApply=true"` |  |
| victoria-metrics-k8s-stack.alertmanager.enabled | bool | `true` |  |
| victoria-metrics-k8s-stack.alertmanager.spec.configSecret | string | `"vmalertmanager-config"` |  |
| victoria-metrics-k8s-stack.alertmanager.spec.replicaCount | int | `1` |  |
| victoria-metrics-k8s-stack.alertmanager.spec.resources.limits | object | `{}` |  |
| victoria-metrics-k8s-stack.alertmanager.spec.resources.requests.cpu | string | `"0.01"` |  |
| victoria-metrics-k8s-stack.alertmanager.spec.resources.requests.memory | string | `"10Mi"` |  |
| victoria-metrics-k8s-stack.alertmanager.useManagedConfig | bool | `false` |  |
| victoria-metrics-k8s-stack.argocdReleaseOverride | string | `"victoria-metrics"` |  |
| victoria-metrics-k8s-stack.coreDns.enabled | bool | `false` |  |
| victoria-metrics-k8s-stack.defaultDashboards.enabled | bool | `false` |  |
| victoria-metrics-k8s-stack.defaultRules.create | bool | `true` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.alertmanager.create | bool | `true` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.alertmanager.rules | object | `{}` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.etcd.create | bool | `false` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.general.create | bool | `true` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.general.rules | object | `{}` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.k8sContainerCpuLimits.create | bool | `true` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.k8sContainerCpuLimits.rules | object | `{}` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.k8sContainerCpuRequests.create | bool | `true` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.k8sContainerCpuRequests.rules | object | `{}` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.k8sContainerCpuUsageSecondsTotal.create | bool | `true` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.k8sContainerCpuUsageSecondsTotal.rules | object | `{}` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.k8sContainerMemoryCache.create | bool | `true` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.k8sContainerMemoryCache.rules | object | `{}` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.k8sContainerMemoryLimits.create | bool | `true` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.k8sContainerMemoryLimits.rules | object | `{}` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.k8sContainerMemoryRequests.create | bool | `true` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.k8sContainerMemoryRequests.rules | object | `{}` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.k8sContainerMemoryRss.create | bool | `true` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.k8sContainerMemoryRss.rules | object | `{}` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.k8sContainerMemorySwap.create | bool | `true` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.k8sContainerMemorySwap.rules | object | `{}` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.k8sContainerMemoryWorkingSetBytes.create | bool | `true` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.k8sContainerMemoryWorkingSetBytes.rules | object | `{}` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.k8sContainerResource.create | bool | `true` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.k8sContainerResource.rules | object | `{}` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.k8sPodOwner.create | bool | `true` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.k8sPodOwner.rules | object | `{}` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.kubeApiserver.create | bool | `false` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.kubeApiserver.rules | object | `{}` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.kubeApiserverAvailability.create | bool | `false` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.kubeApiserverAvailability.rules | object | `{}` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.kubeApiserverBurnrate.create | bool | `false` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.kubeApiserverBurnrate.rules | object | `{}` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.kubeApiserverHistogram.create | bool | `false` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.kubeApiserverHistogram.rules | object | `{}` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.kubeApiserverSlos.create | bool | `false` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.kubeApiserverSlos.rules | object | `{}` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.kubePrometheusGeneral.create | bool | `true` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.kubePrometheusGeneral.rules | object | `{}` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.kubePrometheusNodeRecording.create | bool | `true` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.kubePrometheusNodeRecording.rules | object | `{}` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.kubeScheduler.create | bool | `false` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.kubeStateMetrics.create | bool | `true` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.kubeStateMetrics.rules | object | `{}` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.kubelet.create | bool | `true` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.kubelet.rules | object | `{}` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.kubernetesApps.create | bool | `true` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.kubernetesApps.rules | object | `{}` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.kubernetesApps.targetNamespace | string | `".*"` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.kubernetesResources.create | bool | `true` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.kubernetesResources.rules | object | `{}` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.kubernetesStorage.create | bool | `true` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.kubernetesStorage.rules | object | `{}` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.kubernetesStorage.targetNamespace | string | `".*"` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.kubernetesSystem.create | bool | `true` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.kubernetesSystem.rules | object | `{}` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.kubernetesSystemApiserver.create | bool | `false` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.kubernetesSystemApiserver.rules | object | `{}` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.kubernetesSystemControllerManager.create | bool | `false` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.kubernetesSystemScheduler.create | bool | `false` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.node.create | bool | `true` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.node.rules | object | `{}` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.nodeNetwork.create | bool | `true` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.nodeNetwork.rules | object | `{}` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.vmHealth.create | bool | `true` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.vmHealth.rules | object | `{}` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.vmagent.create | bool | `true` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.vmagent.rules | object | `{}` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.vmcluster.create | bool | `true` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.vmcluster.rules | object | `{}` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.vmoperator.create | bool | `true` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.vmoperator.rules | object | `{}` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.vmsingle.create | bool | `true` |  |
| victoria-metrics-k8s-stack.defaultRules.groups.vmsingle.rules | object | `{}` |  |
| victoria-metrics-k8s-stack.fullnameOverride | string | `"victoria-metrics"` |  |
| victoria-metrics-k8s-stack.grafana.enabled | bool | `false` |  |
| victoria-metrics-k8s-stack.kubeApiServer.enabled | bool | `false` |  |
| victoria-metrics-k8s-stack.kubeControllerManager.enabled | bool | `false` |  |
| victoria-metrics-k8s-stack.kubeEtcd.enabled | bool | `false` |  |
| victoria-metrics-k8s-stack.kubeScheduler.enabled | bool | `false` |  |
| victoria-metrics-k8s-stack.kubelet.vmScrape.spec.metricRelabelConfigs[0].action | string | `"labeldrop"` |  |
| victoria-metrics-k8s-stack.kubelet.vmScrape.spec.metricRelabelConfigs[0].regex | string | `"(uid)"` |  |
| victoria-metrics-k8s-stack.kubelet.vmScrape.spec.metricRelabelConfigs[1].action | string | `"labeldrop"` |  |
| victoria-metrics-k8s-stack.kubelet.vmScrape.spec.metricRelabelConfigs[1].regex | string | `"(id|name)"` |  |
| victoria-metrics-k8s-stack.kubelet.vmScrape.spec.metricRelabelConfigs[2].action | string | `"drop"` |  |
| victoria-metrics-k8s-stack.kubelet.vmScrape.spec.metricRelabelConfigs[2].regex | string | `"(rest_client_request_duration_seconds_bucket|rest_client_request_duration_seconds_sum|rest_client_request_duration_seconds_count)"` |  |
| victoria-metrics-k8s-stack.kubelet.vmScrape.spec.metricRelabelConfigs[2].source_labels[0] | string | `"__name__"` |  |
| victoria-metrics-k8s-stack.kubelet.vmScrape.spec.metricRelabelConfigs[3].action | string | `"replace"` |  |
| victoria-metrics-k8s-stack.kubelet.vmScrape.spec.metricRelabelConfigs[3].sourceLabels[0] | string | `"__meta_kubernetes_pod_node_name"` |  |
| victoria-metrics-k8s-stack.kubelet.vmScrape.spec.metricRelabelConfigs[3].targetLabel | string | `"nodename"` |  |
| victoria-metrics-k8s-stack.kubelet.vmScrape.spec.metricRelabelConfigs[4].action | string | `"labeldrop"` |  |
| victoria-metrics-k8s-stack.kubelet.vmScrape.spec.metricRelabelConfigs[4].regex | string | `"beta_kubernetes_io_.*|cloud_google_com_gke_.*|failure_domain_.*|topology_.*|iam_gke_io_.*"` |  |
| victoria-metrics-k8s-stack.victoria-metrics-operator.operator.disable_prometheus_converter | bool | `false` |  |
| victoria-metrics-k8s-stack.victoria-metrics-operator.operator.prometheus_converter_add_argocd_ignore_annotations | bool | `true` |  |
| victoria-metrics-k8s-stack.vmagent.spec.externalLabels.cluster | string | `"infra"` |  |
| victoria-metrics-k8s-stack.vmagent.spec.resources.limits | object | `{}` |  |
| victoria-metrics-k8s-stack.vmagent.spec.resources.requests.cpu | string | `"0.01"` |  |
| victoria-metrics-k8s-stack.vmagent.spec.resources.requests.memory | string | `"10Mi"` |  |
| victoria-metrics-k8s-stack.vmalert.spec.resources.limits | object | `{}` |  |
| victoria-metrics-k8s-stack.vmalert.spec.resources.requests.cpu | string | `"0.01"` |  |
| victoria-metrics-k8s-stack.vmalert.spec.resources.requests.memory | string | `"10Mi"` |  |
| victoria-metrics-k8s-stack.vmcluster.enabled | bool | `true` |  |
| victoria-metrics-k8s-stack.vmcluster.spec.replicationFactor | int | `1` |  |
| victoria-metrics-k8s-stack.vmcluster.spec.retentionPeriod | string | `"7"` |  |
| victoria-metrics-k8s-stack.vmcluster.spec.vminsert.extraArgs.maxLabelsPerTimeseries | string | `"50"` |  |
| victoria-metrics-k8s-stack.vmcluster.spec.vminsert.replicaCount | int | `1` |  |
| victoria-metrics-k8s-stack.vmcluster.spec.vminsert.resources.limits | object | `{}` |  |
| victoria-metrics-k8s-stack.vmcluster.spec.vminsert.resources.requests.cpu | string | `"0.01"` |  |
| victoria-metrics-k8s-stack.vmcluster.spec.vminsert.resources.requests.memory | string | `"10Mi"` |  |
| victoria-metrics-k8s-stack.vmcluster.spec.vmselect.replicaCount | int | `1` |  |
| victoria-metrics-k8s-stack.vmcluster.spec.vmselect.resources.limits | object | `{}` |  |
| victoria-metrics-k8s-stack.vmcluster.spec.vmselect.resources.requests.cpu | string | `"0.01"` |  |
| victoria-metrics-k8s-stack.vmcluster.spec.vmselect.resources.requests.memory | string | `"10Mi"` |  |
| victoria-metrics-k8s-stack.vmcluster.spec.vmselect.storage.volumeClaimTemplate.spec.resources.requests.storage | string | `"10Gi"` |  |
| victoria-metrics-k8s-stack.vmcluster.spec.vmstorage.replicaCount | int | `1` |  |
| victoria-metrics-k8s-stack.vmcluster.spec.vmstorage.resources.limits | object | `{}` |  |
| victoria-metrics-k8s-stack.vmcluster.spec.vmstorage.resources.requests.cpu | string | `"0.01"` |  |
| victoria-metrics-k8s-stack.vmcluster.spec.vmstorage.resources.requests.memory | string | `"10Mi"` |  |
| victoria-metrics-k8s-stack.vmcluster.spec.vmstorage.storage.volumeClaimTemplate.spec.resources.requests.storage | string | `"30Gi"` |  |
| victoria-metrics-k8s-stack.vmsingle.enabled | bool | `false` |  |
# Trivy scan - Helm Chart
```

Report Summary

┌──────────────────────────────────────────────────────────────────────────────────┬────────────┬───────────────────┐
│                                      Target                                      │    Type    │ Misconfigurations │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-victoria-metrics-3.0.1.tgz:charts/prometheus-operator-crds/charts/- │    helm    │         0         │
│ crds/templates/crd-alertmanagerconfigs.yaml                                      │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-victoria-metrics-3.0.1.tgz:charts/prometheus-operator-crds/charts/- │    helm    │         0         │
│ crds/templates/crd-alertmanagers.yaml                                            │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-victoria-metrics-3.0.1.tgz:charts/prometheus-operator-crds/charts/- │    helm    │         0         │
│ crds/templates/crd-podmonitors.yaml                                              │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-victoria-metrics-3.0.1.tgz:charts/prometheus-operator-crds/charts/- │    helm    │         0         │
│ crds/templates/crd-probes.yaml                                                   │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-victoria-metrics-3.0.1.tgz:charts/prometheus-operator-crds/charts/- │    helm    │         0         │
│ crds/templates/crd-prometheusagents.yaml                                         │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-victoria-metrics-3.0.1.tgz:charts/prometheus-operator-crds/charts/- │    helm    │         0         │
│ crds/templates/crd-prometheuses.yaml                                             │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-victoria-metrics-3.0.1.tgz:charts/prometheus-operator-crds/charts/- │    helm    │         0         │
│ crds/templates/crd-prometheusrules.yaml                                          │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-victoria-metrics-3.0.1.tgz:charts/prometheus-operator-crds/charts/- │    helm    │         0         │
│ crds/templates/crd-scrapeconfigs.yaml                                            │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-victoria-metrics-3.0.1.tgz:charts/prometheus-operator-crds/charts/- │    helm    │         0         │
│ crds/templates/crd-servicemonitors.yaml                                          │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-victoria-metrics-3.0.1.tgz:charts/prometheus-operator-crds/charts/- │    helm    │         0         │
│ crds/templates/crd-thanosrulers.yaml                                             │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/chart- │    helm    │         0         │
│ s/kube-state-metrics/templates/clusterrolebinding.yaml                           │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/chart- │    helm    │         5         │
│ s/kube-state-metrics/templates/deployment.yaml                                   │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/chart- │    helm    │         1         │
│ s/kube-state-metrics/templates/role.yaml                                         │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/chart- │    helm    │         0         │
│ s/kube-state-metrics/templates/service.yaml                                      │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/chart- │    helm    │         0         │
│ s/kube-state-metrics/templates/serviceaccount.yaml                               │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/chart- │    helm    │        15         │
│ s/prometheus-node-exporter/templates/daemonset.yaml                              │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/chart- │    helm    │         0         │
│ s/prometheus-node-exporter/templates/service.yaml                                │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/chart- │    helm    │         0         │
│ s/prometheus-node-exporter/templates/serviceaccount.yaml                         │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/chart- │    helm    │         0         │
│ s/victoria-metrics-operator/templates/crb.yaml                                   │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/chart- │    helm    │         0         │
│ s/victoria-metrics-operator/templates/monitor.yaml                               │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/chart- │    helm    │         0         │
│ s/victoria-metrics-operator/templates/rb.yaml                                    │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/chart- │    helm    │        11         │
│ s/victoria-metrics-operator/templates/role.yaml                                  │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/chart- │    helm    │         9         │
│ s/victoria-metrics-operator/templates/server.yaml                                │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/chart- │    helm    │         0         │
│ s/victoria-metrics-operator/templates/service.yaml                               │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/chart- │    helm    │         0         │
│ s/victoria-metrics-operator/templates/serviceaccount.yaml                        │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/chart- │    helm    │         0         │
│ s/victoria-metrics-operator/templates/webhook.yaml                               │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/templ- │    helm    │         0         │
│ ates/servicemonitors.yaml                                                        │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/templ- │    helm    │         0         │
│ ates/sync-job/config.yaml                                                        │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/templ- │    helm    │         0         │
│ ates/sync-job/rbac.yaml                                                          │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/templ- │    helm    │         0         │
│ ates/victoria-metrics-operator/vmagent/vmagent.yaml                              │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/templ- │    helm    │         0         │
│ ates/victoria-metrics-operator/vmalert/vmalert.yaml                              │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/templ- │    helm    │         0         │
│ ates/victoria-metrics-operator/vmalertmanager/monzo-template.yaml                │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/templ- │    helm    │         0         │
│ ates/victoria-metrics-operator/vmalertmanager/vmalertmanager.yaml                │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/templ- │    helm    │         0         │
│ ates/victoria-metrics-operator/vmcluster/vmcluster.yaml                          │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-victoria-metrics-3.0.1.tgz:templates/vmalertmanager-config.yaml     │    helm    │         0         │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ charts/prometheus-operator-crds/charts/crds/templates/crd-alertmanagerconfigs.y- │    helm    │         0         │
│ aml                                                                              │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ charts/prometheus-operator-crds/charts/crds/templates/crd-alertmanagers.yaml     │    helm    │         0         │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ charts/prometheus-operator-crds/charts/crds/templates/crd-podmonitors.yaml       │    helm    │         0         │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ charts/prometheus-operator-crds/charts/crds/templates/crd-probes.yaml            │    helm    │         0         │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ charts/prometheus-operator-crds/charts/crds/templates/crd-prometheusagents.yaml  │    helm    │         0         │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ charts/prometheus-operator-crds/charts/crds/templates/crd-prometheuses.yaml      │    helm    │         0         │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ charts/prometheus-operator-crds/charts/crds/templates/crd-prometheusrules.yaml   │    helm    │         0         │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ charts/prometheus-operator-crds/charts/crds/templates/crd-scrapeconfigs.yaml     │    helm    │         0         │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ charts/prometheus-operator-crds/charts/crds/templates/crd-servicemonitors.yaml   │    helm    │         0         │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ charts/prometheus-operator-crds/charts/crds/templates/crd-thanosrulers.yaml      │    helm    │         0         │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ charts/victoria-metrics-k8s-stack/charts/kube-state-metrics/templates/clusterro- │    helm    │         0         │
│ lebinding.yaml                                                                   │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ charts/victoria-metrics-k8s-stack/charts/kube-state-metrics/templates/deploymen- │    helm    │         5         │
│ t.yaml                                                                           │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ charts/victoria-metrics-k8s-stack/charts/kube-state-metrics/templates/role.yaml  │    helm    │         1         │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ charts/victoria-metrics-k8s-stack/charts/kube-state-metrics/templates/service.y- │    helm    │         0         │
│ aml                                                                              │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ charts/victoria-metrics-k8s-stack/charts/kube-state-metrics/templates/serviceac- │    helm    │         0         │
│ count.yaml                                                                       │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/dae- │    helm    │        15         │
│ monset.yaml                                                                      │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/ser- │    helm    │         0         │
│ vice.yaml                                                                        │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/ser- │    helm    │         0         │
│ viceaccount.yaml                                                                 │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/cr- │    helm    │         0         │
│ b.yaml                                                                           │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/mo- │    helm    │         0         │
│ nitor.yaml                                                                       │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/rb- │    helm    │         0         │
│ .yaml                                                                            │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/ro- │    helm    │        11         │
│ le.yaml                                                                          │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/se- │    helm    │         9         │
│ rver.yaml                                                                        │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/se- │    helm    │         0         │
│ rvice.yaml                                                                       │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/se- │    helm    │         0         │
│ rviceaccount.yaml                                                                │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/we- │    helm    │         0         │
│ bhook.yaml                                                                       │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ charts/victoria-metrics-k8s-stack/templates/servicemonitors.yaml                 │    helm    │         0         │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ charts/victoria-metrics-k8s-stack/templates/sync-job/config.yaml                 │    helm    │         0         │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ charts/victoria-metrics-k8s-stack/templates/sync-job/rbac.yaml                   │    helm    │         0         │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ charts/victoria-metrics-k8s-stack/templates/victoria-metrics-operator/vmagent/v- │    helm    │         0         │
│ magent.yaml                                                                      │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ charts/victoria-metrics-k8s-stack/templates/victoria-metrics-operator/vmalert/v- │    helm    │         0         │
│ malert.yaml                                                                      │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ charts/victoria-metrics-k8s-stack/templates/victoria-metrics-operator/vmalertma- │    helm    │         0         │
│ nager/monzo-template.yaml                                                        │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ charts/victoria-metrics-k8s-stack/templates/victoria-metrics-operator/vmalertma- │    helm    │         0         │
│ nager/vmalertmanager.yaml                                                        │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ charts/victoria-metrics-k8s-stack/templates/victoria-metrics-operator/vmcluster- │    helm    │         0         │
│ /vmcluster.yaml                                                                  │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ templates/vmalertmanager-config.yaml                                             │ kubernetes │         0         │
└──────────────────────────────────────────────────────────────────────────────────┴────────────┴───────────────────┘
Legend:
- '-': Not scanned
- '0': Clean (no security findings detected)


.output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/charts/kube-state-metrics/templates/deployment.yaml (helm)
====================================================================================================================================
Tests: 98 (SUCCESSES: 93, FAILURES: 5)
Failures: 5 (UNKNOWN: 0, LOW: 4, MEDIUM: 1, HIGH: 0, CRITICAL: 0)

KSV-0011 (LOW): Container 'kube-state-metrics' of Deployment 'lamp-victoria-metrics-kube-state-metrics' should set 'resources.limits.cpu'
════════════════════════════════════════
Enforcing CPU limits prevents DoS via resource exhaustion.

See https://avd.aquasec.com/misconfig/ksv-0011
────────────────────────────────────────
 .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/charts/kube-state-metrics/templates/deployment.yaml:46-84
────────────────────────────────────────
  46 ┌       - name: kube-state-metrics
  47 │         args:
  48 │         - --port=8080
  49 │         - --resources=certificatesigningrequests,configmaps,cronjobs,daemonsets,deployments,endpointslices,horizontalpodautoscalers,ingresses,jobs,leases,limitranges,mutatingwebhookconfigurations,namespaces,networkpolicies,nodes,persistentvolumeclaims,persistentvolumes,poddisruptionbudgets,pods,replicasets,replicationcontrollers,resourcequotas,secrets,services,statefulsets,storageclasses,validatingwebhookconfigurations,volumeattachments
  50 │         imagePullPolicy: IfNotPresent
  51 │         image: registry.k8s.io/kube-state-metrics/kube-state-metrics:v2.20.0
  52 │         ports:
  53 │         - containerPort: 8080
  54 └           name: http
  ..   
────────────────────────────────────────


KSV-0015 (LOW): Container 'kube-state-metrics' of Deployment 'lamp-victoria-metrics-kube-state-metrics' should set 'resources.requests.cpu'
════════════════════════════════════════
When containers have resource requests specified, the scheduler can make better decisions about which nodes to place pods on, and how to deal with resource contention.

See https://avd.aquasec.com/misconfig/ksv-0015
────────────────────────────────────────
 .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/charts/kube-state-metrics/templates/deployment.yaml:46-84
────────────────────────────────────────
  46 ┌       - name: kube-state-metrics
  47 │         args:
  48 │         - --port=8080
  49 │         - --resources=certificatesigningrequests,configmaps,cronjobs,daemonsets,deployments,endpointslices,horizontalpodautoscalers,ingresses,jobs,leases,limitranges,mutatingwebhookconfigurations,namespaces,networkpolicies,nodes,persistentvolumeclaims,persistentvolumes,poddisruptionbudgets,pods,replicasets,replicationcontrollers,resourcequotas,secrets,services,statefulsets,storageclasses,validatingwebhookconfigurations,volumeattachments
  50 │         imagePullPolicy: IfNotPresent
  51 │         image: registry.k8s.io/kube-state-metrics/kube-state-metrics:v2.20.0
  52 │         ports:
  53 │         - containerPort: 8080
  54 └           name: http
  ..   
────────────────────────────────────────


KSV-0016 (LOW): Container 'kube-state-metrics' of Deployment 'lamp-victoria-metrics-kube-state-metrics' should set 'resources.requests.memory'
════════════════════════════════════════
When containers have memory requests specified, the scheduler can make better decisions about which nodes to place pods on, and how to deal with resource contention.

See https://avd.aquasec.com/misconfig/ksv-0016
────────────────────────────────────────
 .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/charts/kube-state-metrics/templates/deployment.yaml:46-84
────────────────────────────────────────
  46 ┌       - name: kube-state-metrics
  47 │         args:
  48 │         - --port=8080
  49 │         - --resources=certificatesigningrequests,configmaps,cronjobs,daemonsets,deployments,endpointslices,horizontalpodautoscalers,ingresses,jobs,leases,limitranges,mutatingwebhookconfigurations,namespaces,networkpolicies,nodes,persistentvolumeclaims,persistentvolumes,poddisruptionbudgets,pods,replicasets,replicationcontrollers,resourcequotas,secrets,services,statefulsets,storageclasses,validatingwebhookconfigurations,volumeattachments
  50 │         imagePullPolicy: IfNotPresent
  51 │         image: registry.k8s.io/kube-state-metrics/kube-state-metrics:v2.20.0
  52 │         ports:
  53 │         - containerPort: 8080
  54 └           name: http
  ..   
────────────────────────────────────────


KSV-0018 (LOW): Container 'kube-state-metrics' of Deployment 'lamp-victoria-metrics-kube-state-metrics' should set 'resources.limits.memory'
════════════════════════════════════════
Enforcing memory limits prevents DoS via resource exhaustion.

See https://avd.aquasec.com/misconfig/ksv-0018
────────────────────────────────────────
 .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/charts/kube-state-metrics/templates/deployment.yaml:46-84
────────────────────────────────────────
  46 ┌       - name: kube-state-metrics
  47 │         args:
  48 │         - --port=8080
  49 │         - --resources=certificatesigningrequests,configmaps,cronjobs,daemonsets,deployments,endpointslices,horizontalpodautoscalers,ingresses,jobs,leases,limitranges,mutatingwebhookconfigurations,namespaces,networkpolicies,nodes,persistentvolumeclaims,persistentvolumes,poddisruptionbudgets,pods,replicasets,replicationcontrollers,resourcequotas,secrets,services,statefulsets,storageclasses,validatingwebhookconfigurations,volumeattachments
  50 │         imagePullPolicy: IfNotPresent
  51 │         image: registry.k8s.io/kube-state-metrics/kube-state-metrics:v2.20.0
  52 │         ports:
  53 │         - containerPort: 8080
  54 └           name: http
  ..   
────────────────────────────────────────


KSV-0125 (MEDIUM): Container kube-state-metrics in deployment lamp-victoria-metrics-kube-state-metrics (namespace: null) uses an image from an untrusted registry.
════════════════════════════════════════
Ensure that all containers use images only from trusted registry domains.

See https://avd.aquasec.com/misconfig/ksv-0125
────────────────────────────────────────
 .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/charts/kube-state-metrics/templates/deployment.yaml:46-84
────────────────────────────────────────
  46 ┌       - name: kube-state-metrics
  47 │         args:
  48 │         - --port=8080
  49 │         - --resources=certificatesigningrequests,configmaps,cronjobs,daemonsets,deployments,endpointslices,horizontalpodautoscalers,ingresses,jobs,leases,limitranges,mutatingwebhookconfigurations,namespaces,networkpolicies,nodes,persistentvolumeclaims,persistentvolumes,poddisruptionbudgets,pods,replicasets,replicationcontrollers,resourcequotas,secrets,services,statefulsets,storageclasses,validatingwebhookconfigurations,volumeattachments
  50 │         imagePullPolicy: IfNotPresent
  51 │         image: registry.k8s.io/kube-state-metrics/kube-state-metrics:v2.20.0
  52 │         ports:
  53 │         - containerPort: 8080
  54 └           name: http
  ..   
────────────────────────────────────────



.output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/charts/kube-state-metrics/templates/role.yaml (helm)
==============================================================================================================================
Tests: 71 (SUCCESSES: 70, FAILURES: 1)
Failures: 1 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 1)

KSV-0041 (CRITICAL): ClusterRole 'lamp-victoria-metrics-kube-state-metrics' shouldn't have access to manage resource 'secrets'
════════════════════════════════════════
Viewing secrets at the cluster-scope is akin to cluster-admin in most clusters as there are typically at least one service accounts (their token stored in a secret) bound to cluster-admin directly or a role/clusterrole that gives similar permissions.

See https://avd.aquasec.com/misconfig/ksv-0041
────────────────────────────────────────
 .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/charts/kube-state-metrics/templates/role.yaml:126-129
────────────────────────────────────────
 126 ┌ - apiGroups: [""]
 127 │   resources:
 128 │   - secrets
 129 └   verbs: ["list", "watch"]
────────────────────────────────────────



.output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml (helm)
=========================================================================================================================================
Tests: 98 (SUCCESSES: 83, FAILURES: 15)
Failures: 15 (UNKNOWN: 0, LOW: 8, MEDIUM: 4, HIGH: 3, CRITICAL: 0)

KSV-0001 (MEDIUM): Container 'node-exporter' of DaemonSet 'lamp-victoria-metrics-prometheus-node-exporter' should set 'securityContext.allowPrivilegeEscalation' to false
════════════════════════════════════════
A program inside the container can elevate its own privileges and run as root, which might give the program control over the container and node.

See https://avd.aquasec.com/misconfig/ksv-0001
────────────────────────────────────────
 .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml:45-97
────────────────────────────────────────
  45 ┌         - name: node-exporter
  46 │           image: quay.io/prometheus/node-exporter:v1.12.1
  47 │           imagePullPolicy: IfNotPresent
  48 │           args:
  49 │             - --path.procfs=/host/proc
  50 │             - --path.sysfs=/host/sys
  51 │             - --path.rootfs=/host/root
  52 │             - --path.udev.data=/host/root/run/udev/data
  53 └             - --web.listen-address=[$(HOST_IP)]:9100
  ..   
────────────────────────────────────────


KSV-0003 (LOW): Container 'node-exporter' of DaemonSet 'lamp-victoria-metrics-prometheus-node-exporter' should add 'ALL' to 'securityContext.capabilities.drop'
════════════════════════════════════════
The container should drop all default capabilities and add only those that are needed for its execution.

See https://avd.aquasec.com/misconfig/ksv-0003
────────────────────────────────────────
 .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml:45-97
────────────────────────────────────────
  45 ┌         - name: node-exporter
  46 │           image: quay.io/prometheus/node-exporter:v1.12.1
  47 │           imagePullPolicy: IfNotPresent
  48 │           args:
  49 │             - --path.procfs=/host/proc
  50 │             - --path.sysfs=/host/sys
  51 │             - --path.rootfs=/host/root
  52 │             - --path.udev.data=/host/root/run/udev/data
  53 └             - --web.listen-address=[$(HOST_IP)]:9100
  ..   
────────────────────────────────────────


KSV-0004 (LOW): Container 'node-exporter' of 'daemonset' 'lamp-victoria-metrics-prometheus-node-exporter' in 'null' namespace should set securityContext.capabilities.drop
════════════════════════════════════════
Security best practices require containers to run with minimal required capabilities.

See https://avd.aquasec.com/misconfig/ksv-0004
────────────────────────────────────────
 .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml:45-97
────────────────────────────────────────
  45 ┌         - name: node-exporter
  46 │           image: quay.io/prometheus/node-exporter:v1.12.1
  47 │           imagePullPolicy: IfNotPresent
  48 │           args:
  49 │             - --path.procfs=/host/proc
  50 │             - --path.sysfs=/host/sys
  51 │             - --path.rootfs=/host/root
  52 │             - --path.udev.data=/host/root/run/udev/data
  53 └             - --web.listen-address=[$(HOST_IP)]:9100
  ..   
────────────────────────────────────────


KSV-0009 (HIGH): DaemonSet 'lamp-victoria-metrics-prometheus-node-exporter' should not set 'spec.template.spec.hostNetwork' to true
════════════════════════════════════════
Sharing the host’s network namespace permits processes in the pod to communicate with processes bound to the host’s loopback adapter.

See https://avd.aquasec.com/misconfig/ksv-0009
────────────────────────────────────────
 .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml:15-128
────────────────────────────────────────
  15 ┌ spec:
  16 │   selector:
  17 │     matchLabels:
  18 │       app.kubernetes.io/name: prometheus-node-exporter
  19 │       app.kubernetes.io/instance: lamp-victoria-metrics
  20 │   revisionHistoryLimit: 10
  21 │   updateStrategy:
  22 │     rollingUpdate:
  23 └       maxUnavailable: 1
  ..   
────────────────────────────────────────


KSV-0010 (HIGH): DaemonSet 'lamp-victoria-metrics-prometheus-node-exporter' should not set 'spec.template.spec.hostPID' to true
════════════════════════════════════════
Sharing the host’s PID namespace allows visibility on host processes, potentially leaking information such as environment variables and configuration.

See https://avd.aquasec.com/misconfig/ksv-0010
────────────────────────────────────────
 .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml:15-128
────────────────────────────────────────
  15 ┌ spec:
  16 │   selector:
  17 │     matchLabels:
  18 │       app.kubernetes.io/name: prometheus-node-exporter
  19 │       app.kubernetes.io/instance: lamp-victoria-metrics
  20 │   revisionHistoryLimit: 10
  21 │   updateStrategy:
  22 │     rollingUpdate:
  23 └       maxUnavailable: 1
  ..   
────────────────────────────────────────


KSV-0011 (LOW): Container 'node-exporter' of DaemonSet 'lamp-victoria-metrics-prometheus-node-exporter' should set 'resources.limits.cpu'
════════════════════════════════════════
Enforcing CPU limits prevents DoS via resource exhaustion.

See https://avd.aquasec.com/misconfig/ksv-0011
────────────────────────────────────────
 .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml:45-97
────────────────────────────────────────
  45 ┌         - name: node-exporter
  46 │           image: quay.io/prometheus/node-exporter:v1.12.1
  47 │           imagePullPolicy: IfNotPresent
  48 │           args:
  49 │             - --path.procfs=/host/proc
  50 │             - --path.sysfs=/host/sys
  51 │             - --path.rootfs=/host/root
  52 │             - --path.udev.data=/host/root/run/udev/data
  53 └             - --web.listen-address=[$(HOST_IP)]:9100
  ..   
────────────────────────────────────────


KSV-0015 (LOW): Container 'node-exporter' of DaemonSet 'lamp-victoria-metrics-prometheus-node-exporter' should set 'resources.requests.cpu'
════════════════════════════════════════
When containers have resource requests specified, the scheduler can make better decisions about which nodes to place pods on, and how to deal with resource contention.

See https://avd.aquasec.com/misconfig/ksv-0015
────────────────────────────────────────
 .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml:45-97
────────────────────────────────────────
  45 ┌         - name: node-exporter
  46 │           image: quay.io/prometheus/node-exporter:v1.12.1
  47 │           imagePullPolicy: IfNotPresent
  48 │           args:
  49 │             - --path.procfs=/host/proc
  50 │             - --path.sysfs=/host/sys
  51 │             - --path.rootfs=/host/root
  52 │             - --path.udev.data=/host/root/run/udev/data
  53 └             - --web.listen-address=[$(HOST_IP)]:9100
  ..   
────────────────────────────────────────


KSV-0016 (LOW): Container 'node-exporter' of DaemonSet 'lamp-victoria-metrics-prometheus-node-exporter' should set 'resources.requests.memory'
════════════════════════════════════════
When containers have memory requests specified, the scheduler can make better decisions about which nodes to place pods on, and how to deal with resource contention.

See https://avd.aquasec.com/misconfig/ksv-0016
────────────────────────────────────────
 .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml:45-97
────────────────────────────────────────
  45 ┌         - name: node-exporter
  46 │           image: quay.io/prometheus/node-exporter:v1.12.1
  47 │           imagePullPolicy: IfNotPresent
  48 │           args:
  49 │             - --path.procfs=/host/proc
  50 │             - --path.sysfs=/host/sys
  51 │             - --path.rootfs=/host/root
  52 │             - --path.udev.data=/host/root/run/udev/data
  53 └             - --web.listen-address=[$(HOST_IP)]:9100
  ..   
────────────────────────────────────────


KSV-0018 (LOW): Container 'node-exporter' of DaemonSet 'lamp-victoria-metrics-prometheus-node-exporter' should set 'resources.limits.memory'
════════════════════════════════════════
Enforcing memory limits prevents DoS via resource exhaustion.

See https://avd.aquasec.com/misconfig/ksv-0018
────────────────────────────────────────
 .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml:45-97
────────────────────────────────────────
  45 ┌         - name: node-exporter
  46 │           image: quay.io/prometheus/node-exporter:v1.12.1
  47 │           imagePullPolicy: IfNotPresent
  48 │           args:
  49 │             - --path.procfs=/host/proc
  50 │             - --path.sysfs=/host/sys
  51 │             - --path.rootfs=/host/root
  52 │             - --path.udev.data=/host/root/run/udev/data
  53 └             - --web.listen-address=[$(HOST_IP)]:9100
  ..   
────────────────────────────────────────


KSV-0023 (MEDIUM): DaemonSet 'lamp-victoria-metrics-prometheus-node-exporter' should not set 'spec.template.volumes.hostPath'
════════════════════════════════════════
According to pod security standard 'HostPath Volumes', HostPath volumes must be forbidden.

See https://avd.aquasec.com/misconfig/ksv-0023
────────────────────────────────────────
 .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml:15-128
────────────────────────────────────────
  15 ┌ spec:
  16 │   selector:
  17 │     matchLabels:
  18 │       app.kubernetes.io/name: prometheus-node-exporter
  19 │       app.kubernetes.io/instance: lamp-victoria-metrics
  20 │   revisionHistoryLimit: 10
  21 │   updateStrategy:
  22 │     rollingUpdate:
  23 └       maxUnavailable: 1
  ..   
────────────────────────────────────────


KSV-0030 (LOW): Either Pod or Container should set 'securityContext.seccompProfile.type' to 'RuntimeDefault'
════════════════════════════════════════
According to pod security standard 'Seccomp', the RuntimeDefault seccomp profile must be required, or allow specific additional profiles.

See https://avd.aquasec.com/misconfig/ksv-0030
────────────────────────────────────────
 .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml:45-97
────────────────────────────────────────
  45 ┌         - name: node-exporter
  46 │           image: quay.io/prometheus/node-exporter:v1.12.1
  47 │           imagePullPolicy: IfNotPresent
  48 │           args:
  49 │             - --path.procfs=/host/proc
  50 │             - --path.sysfs=/host/sys
  51 │             - --path.rootfs=/host/root
  52 │             - --path.udev.data=/host/root/run/udev/data
  53 └             - --web.listen-address=[$(HOST_IP)]:9100
  ..   
────────────────────────────────────────


KSV-0104 (MEDIUM): container "node-exporter" of daemonset "lamp-victoria-metrics-prometheus-node-exporter" in "null" namespace should specify a seccomp profile
════════════════════════════════════════
A program inside the container can bypass Seccomp protection policies.

See https://avd.aquasec.com/misconfig/ksv-0104
────────────────────────────────────────
 .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml:45-97
────────────────────────────────────────
  45 ┌         - name: node-exporter
  46 │           image: quay.io/prometheus/node-exporter:v1.12.1
  47 │           imagePullPolicy: IfNotPresent
  48 │           args:
  49 │             - --path.procfs=/host/proc
  50 │             - --path.sysfs=/host/sys
  51 │             - --path.rootfs=/host/root
  52 │             - --path.udev.data=/host/root/run/udev/data
  53 └             - --web.listen-address=[$(HOST_IP)]:9100
  ..   
────────────────────────────────────────


KSV-0106 (LOW): container should drop all
════════════════════════════════════════
Containers must drop ALL capabilities, and are only permitted to add back the NET_BIND_SERVICE capability.

See https://avd.aquasec.com/misconfig/ksv-0106
────────────────────────────────────────
 .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml:45-97
────────────────────────────────────────
  45 ┌         - name: node-exporter
  46 │           image: quay.io/prometheus/node-exporter:v1.12.1
  47 │           imagePullPolicy: IfNotPresent
  48 │           args:
  49 │             - --path.procfs=/host/proc
  50 │             - --path.sysfs=/host/sys
  51 │             - --path.rootfs=/host/root
  52 │             - --path.udev.data=/host/root/run/udev/data
  53 └             - --web.listen-address=[$(HOST_IP)]:9100
  ..   
────────────────────────────────────────


KSV-0121 (HIGH): daemonset lamp-victoria-metrics-prometheus-node-exporter in null namespace shouldn't have volumes set to {"/", "/proc", "/sys"}
════════════════════════════════════════
HostPath present many security risks and as a security practice it is better to avoid critical host paths mounts.

See https://avd.aquasec.com/misconfig/ksv-0121
────────────────────────────────────────
 .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml:15-128
────────────────────────────────────────
  15 ┌ spec:
  16 │   selector:
  17 │     matchLabels:
  18 │       app.kubernetes.io/name: prometheus-node-exporter
  19 │       app.kubernetes.io/instance: lamp-victoria-metrics
  20 │   revisionHistoryLimit: 10
  21 │   updateStrategy:
  22 │     rollingUpdate:
  23 └       maxUnavailable: 1
  ..   
────────────────────────────────────────


KSV-0125 (MEDIUM): Container node-exporter in daemonset lamp-victoria-metrics-prometheus-node-exporter (namespace: null) uses an image from an untrusted registry.
════════════════════════════════════════
Ensure that all containers use images only from trusted registry domains.

See https://avd.aquasec.com/misconfig/ksv-0125
────────────────────────────────────────
 .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml:45-97
────────────────────────────────────────
  45 ┌         - name: node-exporter
  46 │           image: quay.io/prometheus/node-exporter:v1.12.1
  47 │           imagePullPolicy: IfNotPresent
  48 │           args:
  49 │             - --path.procfs=/host/proc
  50 │             - --path.sysfs=/host/sys
  51 │             - --path.rootfs=/host/root
  52 │             - --path.udev.data=/host/root/run/udev/data
  53 └             - --web.listen-address=[$(HOST_IP)]:9100
  ..   
────────────────────────────────────────



.output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/role.yaml (helm)
=====================================================================================================================================
Tests: 84 (SUCCESSES: 73, FAILURES: 11)
Failures: 11 (UNKNOWN: 0, LOW: 0, MEDIUM: 3, HIGH: 2, CRITICAL: 6)

KSV-0041 (CRITICAL): ClusterRole 'lamp-victoria-metrics-victoria-metrics-operator' shouldn't have access to manage resource 'secrets'
════════════════════════════════════════
Viewing secrets at the cluster-scope is akin to cluster-admin in most clusters as there are typically at least one service accounts (their token stored in a secret) bound to cluster-admin directly or a role/clusterrole that gives similar permissions.

See https://avd.aquasec.com/misconfig/ksv-0041
────────────────────────────────────────
 .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/role.yaml:21-39
────────────────────────────────────────
  21 ┌ - apiGroups:
  22 │   - ""
  23 │   resources:
  24 │   - configmaps
  25 │   - configmaps/finalizers
  26 │   - endpoints
  27 │   - events
  28 │   - persistentvolumeclaims
  29 └   - persistentvolumeclaims/finalizers
  ..   
────────────────────────────────────────


KSV-0045 (CRITICAL): Role permits wildcard verb on specific resources
════════════════════════════════════════
Check whether role permits wildcard verb on specific resources

See https://avd.aquasec.com/misconfig/ksv-0045
────────────────────────────────────────
 .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/role.yaml:21-39
────────────────────────────────────────
  21 ┌ - apiGroups:
  22 │   - ""
  23 │   resources:
  24 │   - configmaps
  25 │   - configmaps/finalizers
  26 │   - endpoints
  27 │   - events
  28 │   - persistentvolumeclaims
  29 └   - persistentvolumeclaims/finalizers
  ..   
────────────────────────────────────────


KSV-0045 (CRITICAL): Role permits wildcard verb on specific resources
════════════════════════════════════════
Check whether role permits wildcard verb on specific resources

See https://avd.aquasec.com/misconfig/ksv-0045
────────────────────────────────────────
 .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/role.yaml:51-63
────────────────────────────────────────
  51 ┌ - apiGroups:
  52 │   - apps
  53 │   resources:
  54 │   - daemonsets
  55 │   - daemonsets/finalizers
  56 │   - deployments
  57 │   - deployments/finalizers
  58 │   - replicasets
  59 └   - statefulsets
  ..   
────────────────────────────────────────


KSV-0045 (CRITICAL): Role permits wildcard verb on specific resources
════════════════════════════════════════
Check whether role permits wildcard verb on specific resources

See https://avd.aquasec.com/misconfig/ksv-0045
────────────────────────────────────────
 .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/role.yaml:70-80
────────────────────────────────────────
  70 ┌ - apiGroups:
  71 │   - rbac.authorization.k8s.io
  72 │   resources:
  73 │   - clusterrolebindings
  74 │   - clusterrolebindings/finalizers
  75 │   - clusterroles
  76 │   - clusterroles/finalizers
  77 │   - roles
  78 └   - rolebindings
  ..   
────────────────────────────────────────


KSV-0046 (CRITICAL): ClusterRole 'lamp-victoria-metrics-victoria-metrics-operator' shouldn't manage all resources
════════════════════════════════════════
Full control of the cluster resources, and therefore also root on all nodes where workloads can run and has access to all pods, secrets, and data.

See https://avd.aquasec.com/misconfig/ksv-0046
────────────────────────────────────────
 .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/role.yaml:64-69
────────────────────────────────────────
  64 ┌ - apiGroups:
  65 │   - monitoring.coreos.com
  66 │   resources:
  67 │   - "*"
  68 │   verbs:
  69 └   - "*"
────────────────────────────────────────


KSV-0048 (MEDIUM): ClusterRole 'lamp-victoria-metrics-victoria-metrics-operator' should not have access to resources ["pods", "deployments", "jobs", "cronjobs", "statefulsets", "daemonsets", "replicasets", "replicationcontrollers"] for verbs ["create", "update", "patch", "delete", "deletecollection", "impersonate", "*"]
════════════════════════════════════════
Depending on the policies enforced by the admission controller, this permission ranges from the ability to steal compute (crypto) by running workloads or allowing for creating workloads that escape to the node as root and escalation to cluster-admin.

See https://avd.aquasec.com/misconfig/ksv-0048
────────────────────────────────────────
 .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/role.yaml:21-39
────────────────────────────────────────
  21 ┌ - apiGroups:
  22 │   - ""
  23 │   resources:
  24 │   - configmaps
  25 │   - configmaps/finalizers
  26 │   - endpoints
  27 │   - events
  28 │   - persistentvolumeclaims
  29 └   - persistentvolumeclaims/finalizers
  ..   
────────────────────────────────────────


KSV-0048 (MEDIUM): ClusterRole 'lamp-victoria-metrics-victoria-metrics-operator' should not have access to resources ["pods", "deployments", "jobs", "cronjobs", "statefulsets", "daemonsets", "replicasets", "replicationcontrollers"] for verbs ["create", "update", "patch", "delete", "deletecollection", "impersonate", "*"]
════════════════════════════════════════
Depending on the policies enforced by the admission controller, this permission ranges from the ability to steal compute (crypto) by running workloads or allowing for creating workloads that escape to the node as root and escalation to cluster-admin.

See https://avd.aquasec.com/misconfig/ksv-0048
────────────────────────────────────────
 .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/role.yaml:51-63
────────────────────────────────────────
  51 ┌ - apiGroups:
  52 │   - apps
  53 │   resources:
  54 │   - daemonsets
  55 │   - daemonsets/finalizers
  56 │   - deployments
  57 │   - deployments/finalizers
  58 │   - replicasets
  59 └   - statefulsets
  ..   
────────────────────────────────────────


KSV-0049 (MEDIUM): ClusterRole 'lamp-victoria-metrics-victoria-metrics-operator' should not have access to resource 'configmaps' for verbs ["create", "update", "patch", "delete", "deletecollection", "impersonate", "*"]
════════════════════════════════════════
Some workloads leverage configmaps to store sensitive data or configuration parameters that affect runtime behavior that can be modified by an attacker or combined with another issue to potentially lead to compromise.

See https://avd.aquasec.com/misconfig/ksv-0049
────────────────────────────────────────
 .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/role.yaml:21-39
────────────────────────────────────────
  21 ┌ - apiGroups:
  22 │   - ""
  23 │   resources:
  24 │   - configmaps
  25 │   - configmaps/finalizers
  26 │   - endpoints
  27 │   - events
  28 │   - persistentvolumeclaims
  29 └   - persistentvolumeclaims/finalizers
  ..   
────────────────────────────────────────


KSV-0050 (CRITICAL): ClusterRole 'lamp-victoria-metrics-victoria-metrics-operator' should not have access to resources ["roles", "rolebindings"] for verbs ["escalate", "bind", "impersonate", "*"] as they can lead to privilege escalation
════════════════════════════════════════
Check whether role permits escalate, bind, or impersonate on roles/rolebindings, which can lead to privilege escalation.

See https://avd.aquasec.com/misconfig/ksv-0050
────────────────────────────────────────
 .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/role.yaml:70-80
────────────────────────────────────────
  70 ┌ - apiGroups:
  71 │   - rbac.authorization.k8s.io
  72 │   resources:
  73 │   - clusterrolebindings
  74 │   - clusterrolebindings/finalizers
  75 │   - clusterroles
  76 │   - clusterroles/finalizers
  77 │   - roles
  78 └   - rolebindings
  ..   
────────────────────────────────────────


KSV-0056 (HIGH): ClusterRole 'lamp-victoria-metrics-victoria-metrics-operator' should not have access to resources ["services", "endpoints", "endpointslices", "networkpolicies", "ingresses"] for verbs ["create", "update", "patch", "delete", "deletecollection", "impersonate", "*"]
════════════════════════════════════════
The ability to control which pods get service traffic directed to them allows for interception attacks. Controlling network policy allows for bypassing lateral movement restrictions.

See https://avd.aquasec.com/misconfig/ksv-0056
────────────────────────────────────────
 .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/role.yaml:21-39
────────────────────────────────────────
  21 ┌ - apiGroups:
  22 │   - ""
  23 │   resources:
  24 │   - configmaps
  25 │   - configmaps/finalizers
  26 │   - endpoints
  27 │   - events
  28 │   - persistentvolumeclaims
  29 └   - persistentvolumeclaims/finalizers
  ..   
────────────────────────────────────────


KSV-0056 (HIGH): ClusterRole 'lamp-victoria-metrics-victoria-metrics-operator' should not have access to resources ["services", "endpoints", "endpointslices", "networkpolicies", "ingresses"] for verbs ["create", "update", "patch", "delete", "deletecollection", "impersonate", "*"]
════════════════════════════════════════
The ability to control which pods get service traffic directed to them allows for interception attacks. Controlling network policy allows for bypassing lateral movement restrictions.

See https://avd.aquasec.com/misconfig/ksv-0056
────────────────────────────────────────
 .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/role.yaml:110-117
────────────────────────────────────────
 110 ┌ - apiGroups:
 111 │   - networking.k8s.io
 112 │   resources:
 113 │   - ingresses
 114 │   - ingresses/finalizers
 115 │   - networkpolicies
 116 │   verbs:
 117 └   - "*"
────────────────────────────────────────



.output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/server.yaml (helm)
=======================================================================================================================================
Tests: 98 (SUCCESSES: 89, FAILURES: 9)
Failures: 9 (UNKNOWN: 0, LOW: 7, MEDIUM: 2, HIGH: 0, CRITICAL: 0)

KSV-0011 (LOW): Container 'operator' of Deployment 'lamp-victoria-metrics-victoria-metrics-operator' should set 'resources.limits.cpu'
════════════════════════════════════════
Enforcing CPU limits prevents DoS via resource exhaustion.

See https://avd.aquasec.com/misconfig/ksv-0011
────────────────────────────────────────
 .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/server.yaml:38-104
────────────────────────────────────────
  38 ┌         - name: operator
  39 │           image: victoriametrics/operator:v0.75.2
  40 │           imagePullPolicy: IfNotPresent
  41 │           env:
  42 │             - name: VM_ANOMALY_VERSION
  43 │               value: "v1.31.1"
  44 │             - name: VM_LOGS_VERSION
  45 │               value: "v1.53.0"
  46 └             - name: VM_METRICS_VERSION
  ..   
────────────────────────────────────────


KSV-0015 (LOW): Container 'operator' of Deployment 'lamp-victoria-metrics-victoria-metrics-operator' should set 'resources.requests.cpu'
════════════════════════════════════════
When containers have resource requests specified, the scheduler can make better decisions about which nodes to place pods on, and how to deal with resource contention.

See https://avd.aquasec.com/misconfig/ksv-0015
────────────────────────────────────────
 .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/server.yaml:38-104
────────────────────────────────────────
  38 ┌         - name: operator
  39 │           image: victoriametrics/operator:v0.75.2
  40 │           imagePullPolicy: IfNotPresent
  41 │           env:
  42 │             - name: VM_ANOMALY_VERSION
  43 │               value: "v1.31.1"
  44 │             - name: VM_LOGS_VERSION
  45 │               value: "v1.53.0"
  46 └             - name: VM_METRICS_VERSION
  ..   
────────────────────────────────────────


KSV-0016 (LOW): Container 'operator' of Deployment 'lamp-victoria-metrics-victoria-metrics-operator' should set 'resources.requests.memory'
════════════════════════════════════════
When containers have memory requests specified, the scheduler can make better decisions about which nodes to place pods on, and how to deal with resource contention.

See https://avd.aquasec.com/misconfig/ksv-0016
────────────────────────────────────────
 .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/server.yaml:38-104
────────────────────────────────────────
  38 ┌         - name: operator
  39 │           image: victoriametrics/operator:v0.75.2
  40 │           imagePullPolicy: IfNotPresent
  41 │           env:
  42 │             - name: VM_ANOMALY_VERSION
  43 │               value: "v1.31.1"
  44 │             - name: VM_LOGS_VERSION
  45 │               value: "v1.53.0"
  46 └             - name: VM_METRICS_VERSION
  ..   
────────────────────────────────────────


KSV-0018 (LOW): Container 'operator' of Deployment 'lamp-victoria-metrics-victoria-metrics-operator' should set 'resources.limits.memory'
════════════════════════════════════════
Enforcing memory limits prevents DoS via resource exhaustion.

See https://avd.aquasec.com/misconfig/ksv-0018
────────────────────────────────────────
 .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/server.yaml:38-104
────────────────────────────────────────
  38 ┌         - name: operator
  39 │           image: victoriametrics/operator:v0.75.2
  40 │           imagePullPolicy: IfNotPresent
  41 │           env:
  42 │             - name: VM_ANOMALY_VERSION
  43 │               value: "v1.31.1"
  44 │             - name: VM_LOGS_VERSION
  45 │               value: "v1.53.0"
  46 └             - name: VM_METRICS_VERSION
  ..   
────────────────────────────────────────


KSV-0020 (LOW): Container 'operator' of Deployment 'lamp-victoria-metrics-victoria-metrics-operator' should set 'securityContext.runAsUser' > 10000
════════════════════════════════════════
Force the container to run with user ID > 10000 to avoid conflicts with the host’s user table.

See https://avd.aquasec.com/misconfig/ksv-0020
────────────────────────────────────────
 .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/server.yaml:38-104
────────────────────────────────────────
  38 ┌         - name: operator
  39 │           image: victoriametrics/operator:v0.75.2
  40 │           imagePullPolicy: IfNotPresent
  41 │           env:
  42 │             - name: VM_ANOMALY_VERSION
  43 │               value: "v1.31.1"
  44 │             - name: VM_LOGS_VERSION
  45 │               value: "v1.53.0"
  46 └             - name: VM_METRICS_VERSION
  ..   
────────────────────────────────────────


KSV-0021 (LOW): Container 'operator' of Deployment 'lamp-victoria-metrics-victoria-metrics-operator' should set 'securityContext.runAsGroup' > 10000
════════════════════════════════════════
Force the container to run with group ID > 10000 to avoid conflicts with the host’s user table.

See https://avd.aquasec.com/misconfig/ksv-0021
────────────────────────────────────────
 .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/server.yaml:38-104
────────────────────────────────────────
  38 ┌         - name: operator
  39 │           image: victoriametrics/operator:v0.75.2
  40 │           imagePullPolicy: IfNotPresent
  41 │           env:
  42 │             - name: VM_ANOMALY_VERSION
  43 │               value: "v1.31.1"
  44 │             - name: VM_LOGS_VERSION
  45 │               value: "v1.53.0"
  46 └             - name: VM_METRICS_VERSION
  ..   
────────────────────────────────────────


KSV-0030 (LOW): Either Pod or Container should set 'securityContext.seccompProfile.type' to 'RuntimeDefault'
════════════════════════════════════════
According to pod security standard 'Seccomp', the RuntimeDefault seccomp profile must be required, or allow specific additional profiles.

See https://avd.aquasec.com/misconfig/ksv-0030
────────────────────────────────────────
 .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/server.yaml:38-104
────────────────────────────────────────
  38 ┌         - name: operator
  39 │           image: victoriametrics/operator:v0.75.2
  40 │           imagePullPolicy: IfNotPresent
  41 │           env:
  42 │             - name: VM_ANOMALY_VERSION
  43 │               value: "v1.31.1"
  44 │             - name: VM_LOGS_VERSION
  45 │               value: "v1.53.0"
  46 └             - name: VM_METRICS_VERSION
  ..   
────────────────────────────────────────


KSV-0104 (MEDIUM): container "operator" of deployment "lamp-victoria-metrics-victoria-metrics-operator" in "null" namespace should specify a seccomp profile
════════════════════════════════════════
A program inside the container can bypass Seccomp protection policies.

See https://avd.aquasec.com/misconfig/ksv-0104
────────────────────────────────────────
 .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/server.yaml:38-104
────────────────────────────────────────
  38 ┌         - name: operator
  39 │           image: victoriametrics/operator:v0.75.2
  40 │           imagePullPolicy: IfNotPresent
  41 │           env:
  42 │             - name: VM_ANOMALY_VERSION
  43 │               value: "v1.31.1"
  44 │             - name: VM_LOGS_VERSION
  45 │               value: "v1.53.0"
  46 └             - name: VM_METRICS_VERSION
  ..   
────────────────────────────────────────


KSV-0125 (MEDIUM): Container operator in deployment lamp-victoria-metrics-victoria-metrics-operator (namespace: null) uses an image from an untrusted registry.
════════════════════════════════════════
Ensure that all containers use images only from trusted registry domains.

See https://avd.aquasec.com/misconfig/ksv-0125
────────────────────────────────────────
 .output/lamp-victoria-metrics-3.0.1.tgz:charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/server.yaml:38-104
────────────────────────────────────────
  38 ┌         - name: operator
  39 │           image: victoriametrics/operator:v0.75.2
  40 │           imagePullPolicy: IfNotPresent
  41 │           env:
  42 │             - name: VM_ANOMALY_VERSION
  43 │               value: "v1.31.1"
  44 │             - name: VM_LOGS_VERSION
  45 │               value: "v1.53.0"
  46 └             - name: VM_METRICS_VERSION
  ..   
────────────────────────────────────────



charts/victoria-metrics-k8s-stack/charts/kube-state-metrics/templates/deployment.yaml (helm)
============================================================================================
Tests: 98 (SUCCESSES: 93, FAILURES: 5)
Failures: 5 (UNKNOWN: 0, LOW: 4, MEDIUM: 1, HIGH: 0, CRITICAL: 0)

KSV-0011 (LOW): Container 'kube-state-metrics' of Deployment 'lamp-victoria-metrics-kube-state-metrics' should set 'resources.limits.cpu'
════════════════════════════════════════
Enforcing CPU limits prevents DoS via resource exhaustion.

See https://avd.aquasec.com/misconfig/ksv-0011
────────────────────────────────────────
 charts/victoria-metrics-k8s-stack/charts/kube-state-metrics/templates/deployment.yaml:46-84
────────────────────────────────────────
  46 ┌       - name: kube-state-metrics
  47 │         args:
  48 │         - --port=8080
  49 │         - --resources=certificatesigningrequests,configmaps,cronjobs,daemonsets,deployments,endpointslices,horizontalpodautoscalers,ingresses,jobs,leases,limitranges,mutatingwebhookconfigurations,namespaces,networkpolicies,nodes,persistentvolumeclaims,persistentvolumes,poddisruptionbudgets,pods,replicasets,replicationcontrollers,resourcequotas,secrets,services,statefulsets,storageclasses,validatingwebhookconfigurations,volumeattachments
  50 │         imagePullPolicy: IfNotPresent
  51 │         image: registry.k8s.io/kube-state-metrics/kube-state-metrics:v2.20.0
  52 │         ports:
  53 │         - containerPort: 8080
  54 └           name: http
  ..   
────────────────────────────────────────


KSV-0015 (LOW): Container 'kube-state-metrics' of Deployment 'lamp-victoria-metrics-kube-state-metrics' should set 'resources.requests.cpu'
════════════════════════════════════════
When containers have resource requests specified, the scheduler can make better decisions about which nodes to place pods on, and how to deal with resource contention.

See https://avd.aquasec.com/misconfig/ksv-0015
────────────────────────────────────────
 charts/victoria-metrics-k8s-stack/charts/kube-state-metrics/templates/deployment.yaml:46-84
────────────────────────────────────────
  46 ┌       - name: kube-state-metrics
  47 │         args:
  48 │         - --port=8080
  49 │         - --resources=certificatesigningrequests,configmaps,cronjobs,daemonsets,deployments,endpointslices,horizontalpodautoscalers,ingresses,jobs,leases,limitranges,mutatingwebhookconfigurations,namespaces,networkpolicies,nodes,persistentvolumeclaims,persistentvolumes,poddisruptionbudgets,pods,replicasets,replicationcontrollers,resourcequotas,secrets,services,statefulsets,storageclasses,validatingwebhookconfigurations,volumeattachments
  50 │         imagePullPolicy: IfNotPresent
  51 │         image: registry.k8s.io/kube-state-metrics/kube-state-metrics:v2.20.0
  52 │         ports:
  53 │         - containerPort: 8080
  54 └           name: http
  ..   
────────────────────────────────────────


KSV-0016 (LOW): Container 'kube-state-metrics' of Deployment 'lamp-victoria-metrics-kube-state-metrics' should set 'resources.requests.memory'
════════════════════════════════════════
When containers have memory requests specified, the scheduler can make better decisions about which nodes to place pods on, and how to deal with resource contention.

See https://avd.aquasec.com/misconfig/ksv-0016
────────────────────────────────────────
 charts/victoria-metrics-k8s-stack/charts/kube-state-metrics/templates/deployment.yaml:46-84
────────────────────────────────────────
  46 ┌       - name: kube-state-metrics
  47 │         args:
  48 │         - --port=8080
  49 │         - --resources=certificatesigningrequests,configmaps,cronjobs,daemonsets,deployments,endpointslices,horizontalpodautoscalers,ingresses,jobs,leases,limitranges,mutatingwebhookconfigurations,namespaces,networkpolicies,nodes,persistentvolumeclaims,persistentvolumes,poddisruptionbudgets,pods,replicasets,replicationcontrollers,resourcequotas,secrets,services,statefulsets,storageclasses,validatingwebhookconfigurations,volumeattachments
  50 │         imagePullPolicy: IfNotPresent
  51 │         image: registry.k8s.io/kube-state-metrics/kube-state-metrics:v2.20.0
  52 │         ports:
  53 │         - containerPort: 8080
  54 └           name: http
  ..   
────────────────────────────────────────


KSV-0018 (LOW): Container 'kube-state-metrics' of Deployment 'lamp-victoria-metrics-kube-state-metrics' should set 'resources.limits.memory'
════════════════════════════════════════
Enforcing memory limits prevents DoS via resource exhaustion.

See https://avd.aquasec.com/misconfig/ksv-0018
────────────────────────────────────────
 charts/victoria-metrics-k8s-stack/charts/kube-state-metrics/templates/deployment.yaml:46-84
────────────────────────────────────────
  46 ┌       - name: kube-state-metrics
  47 │         args:
  48 │         - --port=8080
  49 │         - --resources=certificatesigningrequests,configmaps,cronjobs,daemonsets,deployments,endpointslices,horizontalpodautoscalers,ingresses,jobs,leases,limitranges,mutatingwebhookconfigurations,namespaces,networkpolicies,nodes,persistentvolumeclaims,persistentvolumes,poddisruptionbudgets,pods,replicasets,replicationcontrollers,resourcequotas,secrets,services,statefulsets,storageclasses,validatingwebhookconfigurations,volumeattachments
  50 │         imagePullPolicy: IfNotPresent
  51 │         image: registry.k8s.io/kube-state-metrics/kube-state-metrics:v2.20.0
  52 │         ports:
  53 │         - containerPort: 8080
  54 └           name: http
  ..   
────────────────────────────────────────


KSV-0125 (MEDIUM): Container kube-state-metrics in deployment lamp-victoria-metrics-kube-state-metrics (namespace: null) uses an image from an untrusted registry.
════════════════════════════════════════
Ensure that all containers use images only from trusted registry domains.

See https://avd.aquasec.com/misconfig/ksv-0125
────────────────────────────────────────
 charts/victoria-metrics-k8s-stack/charts/kube-state-metrics/templates/deployment.yaml:46-84
────────────────────────────────────────
  46 ┌       - name: kube-state-metrics
  47 │         args:
  48 │         - --port=8080
  49 │         - --resources=certificatesigningrequests,configmaps,cronjobs,daemonsets,deployments,endpointslices,horizontalpodautoscalers,ingresses,jobs,leases,limitranges,mutatingwebhookconfigurations,namespaces,networkpolicies,nodes,persistentvolumeclaims,persistentvolumes,poddisruptionbudgets,pods,replicasets,replicationcontrollers,resourcequotas,secrets,services,statefulsets,storageclasses,validatingwebhookconfigurations,volumeattachments
  50 │         imagePullPolicy: IfNotPresent
  51 │         image: registry.k8s.io/kube-state-metrics/kube-state-metrics:v2.20.0
  52 │         ports:
  53 │         - containerPort: 8080
  54 └           name: http
  ..   
────────────────────────────────────────



charts/victoria-metrics-k8s-stack/charts/kube-state-metrics/templates/role.yaml (helm)
======================================================================================
Tests: 71 (SUCCESSES: 70, FAILURES: 1)
Failures: 1 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 1)

KSV-0041 (CRITICAL): ClusterRole 'lamp-victoria-metrics-kube-state-metrics' shouldn't have access to manage resource 'secrets'
════════════════════════════════════════
Viewing secrets at the cluster-scope is akin to cluster-admin in most clusters as there are typically at least one service accounts (their token stored in a secret) bound to cluster-admin directly or a role/clusterrole that gives similar permissions.

See https://avd.aquasec.com/misconfig/ksv-0041
────────────────────────────────────────
 charts/victoria-metrics-k8s-stack/charts/kube-state-metrics/templates/role.yaml:126-129
────────────────────────────────────────
 126 ┌ - apiGroups: [""]
 127 │   resources:
 128 │   - secrets
 129 └   verbs: ["list", "watch"]
────────────────────────────────────────



charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml (helm)
=================================================================================================
Tests: 98 (SUCCESSES: 83, FAILURES: 15)
Failures: 15 (UNKNOWN: 0, LOW: 8, MEDIUM: 4, HIGH: 3, CRITICAL: 0)

KSV-0001 (MEDIUM): Container 'node-exporter' of DaemonSet 'lamp-victoria-metrics-prometheus-node-exporter' should set 'securityContext.allowPrivilegeEscalation' to false
════════════════════════════════════════
A program inside the container can elevate its own privileges and run as root, which might give the program control over the container and node.

See https://avd.aquasec.com/misconfig/ksv-0001
────────────────────────────────────────
 charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml:45-97
────────────────────────────────────────
  45 ┌         - name: node-exporter
  46 │           image: quay.io/prometheus/node-exporter:v1.12.1
  47 │           imagePullPolicy: IfNotPresent
  48 │           args:
  49 │             - --path.procfs=/host/proc
  50 │             - --path.sysfs=/host/sys
  51 │             - --path.rootfs=/host/root
  52 │             - --path.udev.data=/host/root/run/udev/data
  53 └             - --web.listen-address=[$(HOST_IP)]:9100
  ..   
────────────────────────────────────────


KSV-0003 (LOW): Container 'node-exporter' of DaemonSet 'lamp-victoria-metrics-prometheus-node-exporter' should add 'ALL' to 'securityContext.capabilities.drop'
════════════════════════════════════════
The container should drop all default capabilities and add only those that are needed for its execution.

See https://avd.aquasec.com/misconfig/ksv-0003
────────────────────────────────────────
 charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml:45-97
────────────────────────────────────────
  45 ┌         - name: node-exporter
  46 │           image: quay.io/prometheus/node-exporter:v1.12.1
  47 │           imagePullPolicy: IfNotPresent
  48 │           args:
  49 │             - --path.procfs=/host/proc
  50 │             - --path.sysfs=/host/sys
  51 │             - --path.rootfs=/host/root
  52 │             - --path.udev.data=/host/root/run/udev/data
  53 └             - --web.listen-address=[$(HOST_IP)]:9100
  ..   
────────────────────────────────────────


KSV-0004 (LOW): Container 'node-exporter' of 'daemonset' 'lamp-victoria-metrics-prometheus-node-exporter' in 'null' namespace should set securityContext.capabilities.drop
════════════════════════════════════════
Security best practices require containers to run with minimal required capabilities.

See https://avd.aquasec.com/misconfig/ksv-0004
────────────────────────────────────────
 charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml:45-97
────────────────────────────────────────
  45 ┌         - name: node-exporter
  46 │           image: quay.io/prometheus/node-exporter:v1.12.1
  47 │           imagePullPolicy: IfNotPresent
  48 │           args:
  49 │             - --path.procfs=/host/proc
  50 │             - --path.sysfs=/host/sys
  51 │             - --path.rootfs=/host/root
  52 │             - --path.udev.data=/host/root/run/udev/data
  53 └             - --web.listen-address=[$(HOST_IP)]:9100
  ..   
────────────────────────────────────────


KSV-0009 (HIGH): DaemonSet 'lamp-victoria-metrics-prometheus-node-exporter' should not set 'spec.template.spec.hostNetwork' to true
════════════════════════════════════════
Sharing the host’s network namespace permits processes in the pod to communicate with processes bound to the host’s loopback adapter.

See https://avd.aquasec.com/misconfig/ksv-0009
────────────────────────────────────────
 charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml:15-128
────────────────────────────────────────
  15 ┌ spec:
  16 │   selector:
  17 │     matchLabels:
  18 │       app.kubernetes.io/name: prometheus-node-exporter
  19 │       app.kubernetes.io/instance: lamp-victoria-metrics
  20 │   revisionHistoryLimit: 10
  21 │   updateStrategy:
  22 │     rollingUpdate:
  23 └       maxUnavailable: 1
  ..   
────────────────────────────────────────


KSV-0010 (HIGH): DaemonSet 'lamp-victoria-metrics-prometheus-node-exporter' should not set 'spec.template.spec.hostPID' to true
════════════════════════════════════════
Sharing the host’s PID namespace allows visibility on host processes, potentially leaking information such as environment variables and configuration.

See https://avd.aquasec.com/misconfig/ksv-0010
────────────────────────────────────────
 charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml:15-128
────────────────────────────────────────
  15 ┌ spec:
  16 │   selector:
  17 │     matchLabels:
  18 │       app.kubernetes.io/name: prometheus-node-exporter
  19 │       app.kubernetes.io/instance: lamp-victoria-metrics
  20 │   revisionHistoryLimit: 10
  21 │   updateStrategy:
  22 │     rollingUpdate:
  23 └       maxUnavailable: 1
  ..   
────────────────────────────────────────


KSV-0011 (LOW): Container 'node-exporter' of DaemonSet 'lamp-victoria-metrics-prometheus-node-exporter' should set 'resources.limits.cpu'
════════════════════════════════════════
Enforcing CPU limits prevents DoS via resource exhaustion.

See https://avd.aquasec.com/misconfig/ksv-0011
────────────────────────────────────────
 charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml:45-97
────────────────────────────────────────
  45 ┌         - name: node-exporter
  46 │           image: quay.io/prometheus/node-exporter:v1.12.1
  47 │           imagePullPolicy: IfNotPresent
  48 │           args:
  49 │             - --path.procfs=/host/proc
  50 │             - --path.sysfs=/host/sys
  51 │             - --path.rootfs=/host/root
  52 │             - --path.udev.data=/host/root/run/udev/data
  53 └             - --web.listen-address=[$(HOST_IP)]:9100
  ..   
────────────────────────────────────────


KSV-0015 (LOW): Container 'node-exporter' of DaemonSet 'lamp-victoria-metrics-prometheus-node-exporter' should set 'resources.requests.cpu'
════════════════════════════════════════
When containers have resource requests specified, the scheduler can make better decisions about which nodes to place pods on, and how to deal with resource contention.

See https://avd.aquasec.com/misconfig/ksv-0015
────────────────────────────────────────
 charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml:45-97
────────────────────────────────────────
  45 ┌         - name: node-exporter
  46 │           image: quay.io/prometheus/node-exporter:v1.12.1
  47 │           imagePullPolicy: IfNotPresent
  48 │           args:
  49 │             - --path.procfs=/host/proc
  50 │             - --path.sysfs=/host/sys
  51 │             - --path.rootfs=/host/root
  52 │             - --path.udev.data=/host/root/run/udev/data
  53 └             - --web.listen-address=[$(HOST_IP)]:9100
  ..   
────────────────────────────────────────


KSV-0016 (LOW): Container 'node-exporter' of DaemonSet 'lamp-victoria-metrics-prometheus-node-exporter' should set 'resources.requests.memory'
════════════════════════════════════════
When containers have memory requests specified, the scheduler can make better decisions about which nodes to place pods on, and how to deal with resource contention.

See https://avd.aquasec.com/misconfig/ksv-0016
────────────────────────────────────────
 charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml:45-97
────────────────────────────────────────
  45 ┌         - name: node-exporter
  46 │           image: quay.io/prometheus/node-exporter:v1.12.1
  47 │           imagePullPolicy: IfNotPresent
  48 │           args:
  49 │             - --path.procfs=/host/proc
  50 │             - --path.sysfs=/host/sys
  51 │             - --path.rootfs=/host/root
  52 │             - --path.udev.data=/host/root/run/udev/data
  53 └             - --web.listen-address=[$(HOST_IP)]:9100
  ..   
────────────────────────────────────────


KSV-0018 (LOW): Container 'node-exporter' of DaemonSet 'lamp-victoria-metrics-prometheus-node-exporter' should set 'resources.limits.memory'
════════════════════════════════════════
Enforcing memory limits prevents DoS via resource exhaustion.

See https://avd.aquasec.com/misconfig/ksv-0018
────────────────────────────────────────
 charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml:45-97
────────────────────────────────────────
  45 ┌         - name: node-exporter
  46 │           image: quay.io/prometheus/node-exporter:v1.12.1
  47 │           imagePullPolicy: IfNotPresent
  48 │           args:
  49 │             - --path.procfs=/host/proc
  50 │             - --path.sysfs=/host/sys
  51 │             - --path.rootfs=/host/root
  52 │             - --path.udev.data=/host/root/run/udev/data
  53 └             - --web.listen-address=[$(HOST_IP)]:9100
  ..   
────────────────────────────────────────


KSV-0023 (MEDIUM): DaemonSet 'lamp-victoria-metrics-prometheus-node-exporter' should not set 'spec.template.volumes.hostPath'
════════════════════════════════════════
According to pod security standard 'HostPath Volumes', HostPath volumes must be forbidden.

See https://avd.aquasec.com/misconfig/ksv-0023
────────────────────────────────────────
 charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml:15-128
────────────────────────────────────────
  15 ┌ spec:
  16 │   selector:
  17 │     matchLabels:
  18 │       app.kubernetes.io/name: prometheus-node-exporter
  19 │       app.kubernetes.io/instance: lamp-victoria-metrics
  20 │   revisionHistoryLimit: 10
  21 │   updateStrategy:
  22 │     rollingUpdate:
  23 └       maxUnavailable: 1
  ..   
────────────────────────────────────────


KSV-0030 (LOW): Either Pod or Container should set 'securityContext.seccompProfile.type' to 'RuntimeDefault'
════════════════════════════════════════
According to pod security standard 'Seccomp', the RuntimeDefault seccomp profile must be required, or allow specific additional profiles.

See https://avd.aquasec.com/misconfig/ksv-0030
────────────────────────────────────────
 charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml:45-97
────────────────────────────────────────
  45 ┌         - name: node-exporter
  46 │           image: quay.io/prometheus/node-exporter:v1.12.1
  47 │           imagePullPolicy: IfNotPresent
  48 │           args:
  49 │             - --path.procfs=/host/proc
  50 │             - --path.sysfs=/host/sys
  51 │             - --path.rootfs=/host/root
  52 │             - --path.udev.data=/host/root/run/udev/data
  53 └             - --web.listen-address=[$(HOST_IP)]:9100
  ..   
────────────────────────────────────────


KSV-0104 (MEDIUM): container "node-exporter" of daemonset "lamp-victoria-metrics-prometheus-node-exporter" in "null" namespace should specify a seccomp profile
════════════════════════════════════════
A program inside the container can bypass Seccomp protection policies.

See https://avd.aquasec.com/misconfig/ksv-0104
────────────────────────────────────────
 charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml:45-97
────────────────────────────────────────
  45 ┌         - name: node-exporter
  46 │           image: quay.io/prometheus/node-exporter:v1.12.1
  47 │           imagePullPolicy: IfNotPresent
  48 │           args:
  49 │             - --path.procfs=/host/proc
  50 │             - --path.sysfs=/host/sys
  51 │             - --path.rootfs=/host/root
  52 │             - --path.udev.data=/host/root/run/udev/data
  53 └             - --web.listen-address=[$(HOST_IP)]:9100
  ..   
────────────────────────────────────────


KSV-0106 (LOW): container should drop all
════════════════════════════════════════
Containers must drop ALL capabilities, and are only permitted to add back the NET_BIND_SERVICE capability.

See https://avd.aquasec.com/misconfig/ksv-0106
────────────────────────────────────────
 charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml:45-97
────────────────────────────────────────
  45 ┌         - name: node-exporter
  46 │           image: quay.io/prometheus/node-exporter:v1.12.1
  47 │           imagePullPolicy: IfNotPresent
  48 │           args:
  49 │             - --path.procfs=/host/proc
  50 │             - --path.sysfs=/host/sys
  51 │             - --path.rootfs=/host/root
  52 │             - --path.udev.data=/host/root/run/udev/data
  53 └             - --web.listen-address=[$(HOST_IP)]:9100
  ..   
────────────────────────────────────────


KSV-0121 (HIGH): daemonset lamp-victoria-metrics-prometheus-node-exporter in null namespace shouldn't have volumes set to {"/", "/proc", "/sys"}
════════════════════════════════════════
HostPath present many security risks and as a security practice it is better to avoid critical host paths mounts.

See https://avd.aquasec.com/misconfig/ksv-0121
────────────────────────────────────────
 charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml:15-128
────────────────────────────────────────
  15 ┌ spec:
  16 │   selector:
  17 │     matchLabels:
  18 │       app.kubernetes.io/name: prometheus-node-exporter
  19 │       app.kubernetes.io/instance: lamp-victoria-metrics
  20 │   revisionHistoryLimit: 10
  21 │   updateStrategy:
  22 │     rollingUpdate:
  23 └       maxUnavailable: 1
  ..   
────────────────────────────────────────


KSV-0125 (MEDIUM): Container node-exporter in daemonset lamp-victoria-metrics-prometheus-node-exporter (namespace: null) uses an image from an untrusted registry.
════════════════════════════════════════
Ensure that all containers use images only from trusted registry domains.

See https://avd.aquasec.com/misconfig/ksv-0125
────────────────────────────────────────
 charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml:45-97
────────────────────────────────────────
  45 ┌         - name: node-exporter
  46 │           image: quay.io/prometheus/node-exporter:v1.12.1
  47 │           imagePullPolicy: IfNotPresent
  48 │           args:
  49 │             - --path.procfs=/host/proc
  50 │             - --path.sysfs=/host/sys
  51 │             - --path.rootfs=/host/root
  52 │             - --path.udev.data=/host/root/run/udev/data
  53 └             - --web.listen-address=[$(HOST_IP)]:9100
  ..   
────────────────────────────────────────



charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/role.yaml (helm)
=============================================================================================
Tests: 84 (SUCCESSES: 73, FAILURES: 11)
Failures: 11 (UNKNOWN: 0, LOW: 0, MEDIUM: 3, HIGH: 2, CRITICAL: 6)

KSV-0041 (CRITICAL): ClusterRole 'lamp-victoria-metrics-victoria-metrics-operator' shouldn't have access to manage resource 'secrets'
════════════════════════════════════════
Viewing secrets at the cluster-scope is akin to cluster-admin in most clusters as there are typically at least one service accounts (their token stored in a secret) bound to cluster-admin directly or a role/clusterrole that gives similar permissions.

See https://avd.aquasec.com/misconfig/ksv-0041
────────────────────────────────────────
 charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/role.yaml:21-39
────────────────────────────────────────
  21 ┌ - apiGroups:
  22 │   - ""
  23 │   resources:
  24 │   - configmaps
  25 │   - configmaps/finalizers
  26 │   - endpoints
  27 │   - events
  28 │   - persistentvolumeclaims
  29 └   - persistentvolumeclaims/finalizers
  ..   
────────────────────────────────────────


KSV-0045 (CRITICAL): Role permits wildcard verb on specific resources
════════════════════════════════════════
Check whether role permits wildcard verb on specific resources

See https://avd.aquasec.com/misconfig/ksv-0045
────────────────────────────────────────
 charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/role.yaml:21-39
────────────────────────────────────────
  21 ┌ - apiGroups:
  22 │   - ""
  23 │   resources:
  24 │   - configmaps
  25 │   - configmaps/finalizers
  26 │   - endpoints
  27 │   - events
  28 │   - persistentvolumeclaims
  29 └   - persistentvolumeclaims/finalizers
  ..   
────────────────────────────────────────


KSV-0045 (CRITICAL): Role permits wildcard verb on specific resources
════════════════════════════════════════
Check whether role permits wildcard verb on specific resources

See https://avd.aquasec.com/misconfig/ksv-0045
────────────────────────────────────────
 charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/role.yaml:51-63
────────────────────────────────────────
  51 ┌ - apiGroups:
  52 │   - apps
  53 │   resources:
  54 │   - daemonsets
  55 │   - daemonsets/finalizers
  56 │   - deployments
  57 │   - deployments/finalizers
  58 │   - replicasets
  59 └   - statefulsets
  ..   
────────────────────────────────────────


KSV-0045 (CRITICAL): Role permits wildcard verb on specific resources
════════════════════════════════════════
Check whether role permits wildcard verb on specific resources

See https://avd.aquasec.com/misconfig/ksv-0045
────────────────────────────────────────
 charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/role.yaml:70-80
────────────────────────────────────────
  70 ┌ - apiGroups:
  71 │   - rbac.authorization.k8s.io
  72 │   resources:
  73 │   - clusterrolebindings
  74 │   - clusterrolebindings/finalizers
  75 │   - clusterroles
  76 │   - clusterroles/finalizers
  77 │   - roles
  78 └   - rolebindings
  ..   
────────────────────────────────────────


KSV-0046 (CRITICAL): ClusterRole 'lamp-victoria-metrics-victoria-metrics-operator' shouldn't manage all resources
════════════════════════════════════════
Full control of the cluster resources, and therefore also root on all nodes where workloads can run and has access to all pods, secrets, and data.

See https://avd.aquasec.com/misconfig/ksv-0046
────────────────────────────────────────
 charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/role.yaml:64-69
────────────────────────────────────────
  64 ┌ - apiGroups:
  65 │   - monitoring.coreos.com
  66 │   resources:
  67 │   - "*"
  68 │   verbs:
  69 └   - "*"
────────────────────────────────────────


KSV-0048 (MEDIUM): ClusterRole 'lamp-victoria-metrics-victoria-metrics-operator' should not have access to resources ["pods", "deployments", "jobs", "cronjobs", "statefulsets", "daemonsets", "replicasets", "replicationcontrollers"] for verbs ["create", "update", "patch", "delete", "deletecollection", "impersonate", "*"]
════════════════════════════════════════
Depending on the policies enforced by the admission controller, this permission ranges from the ability to steal compute (crypto) by running workloads or allowing for creating workloads that escape to the node as root and escalation to cluster-admin.

See https://avd.aquasec.com/misconfig/ksv-0048
────────────────────────────────────────
 charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/role.yaml:21-39
────────────────────────────────────────
  21 ┌ - apiGroups:
  22 │   - ""
  23 │   resources:
  24 │   - configmaps
  25 │   - configmaps/finalizers
  26 │   - endpoints
  27 │   - events
  28 │   - persistentvolumeclaims
  29 └   - persistentvolumeclaims/finalizers
  ..   
────────────────────────────────────────


KSV-0048 (MEDIUM): ClusterRole 'lamp-victoria-metrics-victoria-metrics-operator' should not have access to resources ["pods", "deployments", "jobs", "cronjobs", "statefulsets", "daemonsets", "replicasets", "replicationcontrollers"] for verbs ["create", "update", "patch", "delete", "deletecollection", "impersonate", "*"]
════════════════════════════════════════
Depending on the policies enforced by the admission controller, this permission ranges from the ability to steal compute (crypto) by running workloads or allowing for creating workloads that escape to the node as root and escalation to cluster-admin.

See https://avd.aquasec.com/misconfig/ksv-0048
────────────────────────────────────────
 charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/role.yaml:51-63
────────────────────────────────────────
  51 ┌ - apiGroups:
  52 │   - apps
  53 │   resources:
  54 │   - daemonsets
  55 │   - daemonsets/finalizers
  56 │   - deployments
  57 │   - deployments/finalizers
  58 │   - replicasets
  59 └   - statefulsets
  ..   
────────────────────────────────────────


KSV-0049 (MEDIUM): ClusterRole 'lamp-victoria-metrics-victoria-metrics-operator' should not have access to resource 'configmaps' for verbs ["create", "update", "patch", "delete", "deletecollection", "impersonate", "*"]
════════════════════════════════════════
Some workloads leverage configmaps to store sensitive data or configuration parameters that affect runtime behavior that can be modified by an attacker or combined with another issue to potentially lead to compromise.

See https://avd.aquasec.com/misconfig/ksv-0049
────────────────────────────────────────
 charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/role.yaml:21-39
────────────────────────────────────────
  21 ┌ - apiGroups:
  22 │   - ""
  23 │   resources:
  24 │   - configmaps
  25 │   - configmaps/finalizers
  26 │   - endpoints
  27 │   - events
  28 │   - persistentvolumeclaims
  29 └   - persistentvolumeclaims/finalizers
  ..   
────────────────────────────────────────


KSV-0050 (CRITICAL): ClusterRole 'lamp-victoria-metrics-victoria-metrics-operator' should not have access to resources ["roles", "rolebindings"] for verbs ["escalate", "bind", "impersonate", "*"] as they can lead to privilege escalation
════════════════════════════════════════
Check whether role permits escalate, bind, or impersonate on roles/rolebindings, which can lead to privilege escalation.

See https://avd.aquasec.com/misconfig/ksv-0050
────────────────────────────────────────
 charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/role.yaml:70-80
────────────────────────────────────────
  70 ┌ - apiGroups:
  71 │   - rbac.authorization.k8s.io
  72 │   resources:
  73 │   - clusterrolebindings
  74 │   - clusterrolebindings/finalizers
  75 │   - clusterroles
  76 │   - clusterroles/finalizers
  77 │   - roles
  78 └   - rolebindings
  ..   
────────────────────────────────────────


KSV-0056 (HIGH): ClusterRole 'lamp-victoria-metrics-victoria-metrics-operator' should not have access to resources ["services", "endpoints", "endpointslices", "networkpolicies", "ingresses"] for verbs ["create", "update", "patch", "delete", "deletecollection", "impersonate", "*"]
════════════════════════════════════════
The ability to control which pods get service traffic directed to them allows for interception attacks. Controlling network policy allows for bypassing lateral movement restrictions.

See https://avd.aquasec.com/misconfig/ksv-0056
────────────────────────────────────────
 charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/role.yaml:21-39
────────────────────────────────────────
  21 ┌ - apiGroups:
  22 │   - ""
  23 │   resources:
  24 │   - configmaps
  25 │   - configmaps/finalizers
  26 │   - endpoints
  27 │   - events
  28 │   - persistentvolumeclaims
  29 └   - persistentvolumeclaims/finalizers
  ..   
────────────────────────────────────────


KSV-0056 (HIGH): ClusterRole 'lamp-victoria-metrics-victoria-metrics-operator' should not have access to resources ["services", "endpoints", "endpointslices", "networkpolicies", "ingresses"] for verbs ["create", "update", "patch", "delete", "deletecollection", "impersonate", "*"]
════════════════════════════════════════
The ability to control which pods get service traffic directed to them allows for interception attacks. Controlling network policy allows for bypassing lateral movement restrictions.

See https://avd.aquasec.com/misconfig/ksv-0056
────────────────────────────────────────
 charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/role.yaml:110-117
────────────────────────────────────────
 110 ┌ - apiGroups:
 111 │   - networking.k8s.io
 112 │   resources:
 113 │   - ingresses
 114 │   - ingresses/finalizers
 115 │   - networkpolicies
 116 │   verbs:
 117 └   - "*"
────────────────────────────────────────



charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/server.yaml (helm)
===============================================================================================
Tests: 98 (SUCCESSES: 89, FAILURES: 9)
Failures: 9 (UNKNOWN: 0, LOW: 7, MEDIUM: 2, HIGH: 0, CRITICAL: 0)

KSV-0011 (LOW): Container 'operator' of Deployment 'lamp-victoria-metrics-victoria-metrics-operator' should set 'resources.limits.cpu'
════════════════════════════════════════
Enforcing CPU limits prevents DoS via resource exhaustion.

See https://avd.aquasec.com/misconfig/ksv-0011
────────────────────────────────────────
 charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/server.yaml:38-104
────────────────────────────────────────
  38 ┌         - name: operator
  39 │           image: victoriametrics/operator:v0.75.2
  40 │           imagePullPolicy: IfNotPresent
  41 │           env:
  42 │             - name: VM_ANOMALY_VERSION
  43 │               value: "v1.31.1"
  44 │             - name: VM_LOGS_VERSION
  45 │               value: "v1.53.0"
  46 └             - name: VM_METRICS_VERSION
  ..   
────────────────────────────────────────


KSV-0015 (LOW): Container 'operator' of Deployment 'lamp-victoria-metrics-victoria-metrics-operator' should set 'resources.requests.cpu'
════════════════════════════════════════
When containers have resource requests specified, the scheduler can make better decisions about which nodes to place pods on, and how to deal with resource contention.

See https://avd.aquasec.com/misconfig/ksv-0015
────────────────────────────────────────
 charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/server.yaml:38-104
────────────────────────────────────────
  38 ┌         - name: operator
  39 │           image: victoriametrics/operator:v0.75.2
  40 │           imagePullPolicy: IfNotPresent
  41 │           env:
  42 │             - name: VM_ANOMALY_VERSION
  43 │               value: "v1.31.1"
  44 │             - name: VM_LOGS_VERSION
  45 │               value: "v1.53.0"
  46 └             - name: VM_METRICS_VERSION
  ..   
────────────────────────────────────────


KSV-0016 (LOW): Container 'operator' of Deployment 'lamp-victoria-metrics-victoria-metrics-operator' should set 'resources.requests.memory'
════════════════════════════════════════
When containers have memory requests specified, the scheduler can make better decisions about which nodes to place pods on, and how to deal with resource contention.

See https://avd.aquasec.com/misconfig/ksv-0016
────────────────────────────────────────
 charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/server.yaml:38-104
────────────────────────────────────────
  38 ┌         - name: operator
  39 │           image: victoriametrics/operator:v0.75.2
  40 │           imagePullPolicy: IfNotPresent
  41 │           env:
  42 │             - name: VM_ANOMALY_VERSION
  43 │               value: "v1.31.1"
  44 │             - name: VM_LOGS_VERSION
  45 │               value: "v1.53.0"
  46 └             - name: VM_METRICS_VERSION
  ..   
────────────────────────────────────────


KSV-0018 (LOW): Container 'operator' of Deployment 'lamp-victoria-metrics-victoria-metrics-operator' should set 'resources.limits.memory'
════════════════════════════════════════
Enforcing memory limits prevents DoS via resource exhaustion.

See https://avd.aquasec.com/misconfig/ksv-0018
────────────────────────────────────────
 charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/server.yaml:38-104
────────────────────────────────────────
  38 ┌         - name: operator
  39 │           image: victoriametrics/operator:v0.75.2
  40 │           imagePullPolicy: IfNotPresent
  41 │           env:
  42 │             - name: VM_ANOMALY_VERSION
  43 │               value: "v1.31.1"
  44 │             - name: VM_LOGS_VERSION
  45 │               value: "v1.53.0"
  46 └             - name: VM_METRICS_VERSION
  ..   
────────────────────────────────────────


KSV-0020 (LOW): Container 'operator' of Deployment 'lamp-victoria-metrics-victoria-metrics-operator' should set 'securityContext.runAsUser' > 10000
════════════════════════════════════════
Force the container to run with user ID > 10000 to avoid conflicts with the host’s user table.

See https://avd.aquasec.com/misconfig/ksv-0020
────────────────────────────────────────
 charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/server.yaml:38-104
────────────────────────────────────────
  38 ┌         - name: operator
  39 │           image: victoriametrics/operator:v0.75.2
  40 │           imagePullPolicy: IfNotPresent
  41 │           env:
  42 │             - name: VM_ANOMALY_VERSION
  43 │               value: "v1.31.1"
  44 │             - name: VM_LOGS_VERSION
  45 │               value: "v1.53.0"
  46 └             - name: VM_METRICS_VERSION
  ..   
────────────────────────────────────────


KSV-0021 (LOW): Container 'operator' of Deployment 'lamp-victoria-metrics-victoria-metrics-operator' should set 'securityContext.runAsGroup' > 10000
════════════════════════════════════════
Force the container to run with group ID > 10000 to avoid conflicts with the host’s user table.

See https://avd.aquasec.com/misconfig/ksv-0021
────────────────────────────────────────
 charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/server.yaml:38-104
────────────────────────────────────────
  38 ┌         - name: operator
  39 │           image: victoriametrics/operator:v0.75.2
  40 │           imagePullPolicy: IfNotPresent
  41 │           env:
  42 │             - name: VM_ANOMALY_VERSION
  43 │               value: "v1.31.1"
  44 │             - name: VM_LOGS_VERSION
  45 │               value: "v1.53.0"
  46 └             - name: VM_METRICS_VERSION
  ..   
────────────────────────────────────────


KSV-0030 (LOW): Either Pod or Container should set 'securityContext.seccompProfile.type' to 'RuntimeDefault'
════════════════════════════════════════
According to pod security standard 'Seccomp', the RuntimeDefault seccomp profile must be required, or allow specific additional profiles.

See https://avd.aquasec.com/misconfig/ksv-0030
────────────────────────────────────────
 charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/server.yaml:38-104
────────────────────────────────────────
  38 ┌         - name: operator
  39 │           image: victoriametrics/operator:v0.75.2
  40 │           imagePullPolicy: IfNotPresent
  41 │           env:
  42 │             - name: VM_ANOMALY_VERSION
  43 │               value: "v1.31.1"
  44 │             - name: VM_LOGS_VERSION
  45 │               value: "v1.53.0"
  46 └             - name: VM_METRICS_VERSION
  ..   
────────────────────────────────────────


KSV-0104 (MEDIUM): container "operator" of deployment "lamp-victoria-metrics-victoria-metrics-operator" in "null" namespace should specify a seccomp profile
════════════════════════════════════════
A program inside the container can bypass Seccomp protection policies.

See https://avd.aquasec.com/misconfig/ksv-0104
────────────────────────────────────────
 charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/server.yaml:38-104
────────────────────────────────────────
  38 ┌         - name: operator
  39 │           image: victoriametrics/operator:v0.75.2
  40 │           imagePullPolicy: IfNotPresent
  41 │           env:
  42 │             - name: VM_ANOMALY_VERSION
  43 │               value: "v1.31.1"
  44 │             - name: VM_LOGS_VERSION
  45 │               value: "v1.53.0"
  46 └             - name: VM_METRICS_VERSION
  ..   
────────────────────────────────────────


KSV-0125 (MEDIUM): Container operator in deployment lamp-victoria-metrics-victoria-metrics-operator (namespace: null) uses an image from an untrusted registry.
════════════════════════════════════════
Ensure that all containers use images only from trusted registry domains.

See https://avd.aquasec.com/misconfig/ksv-0125
────────────────────────────────────────
 charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/server.yaml:38-104
────────────────────────────────────────
  38 ┌         - name: operator
  39 │           image: victoriametrics/operator:v0.75.2
  40 │           imagePullPolicy: IfNotPresent
  41 │           env:
  42 │             - name: VM_ANOMALY_VERSION
  43 │               value: "v1.31.1"
  44 │             - name: VM_LOGS_VERSION
  45 │               value: "v1.53.0"
  46 └             - name: VM_METRICS_VERSION
  ..   
────────────────────────────────────────


```
