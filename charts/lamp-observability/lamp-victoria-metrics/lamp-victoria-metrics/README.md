# lamp-victoria-metrics

![Version: 3.4.0](https://img.shields.io/badge/Version-3.4.0-informational?style=flat-square)

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://prometheus-community.github.io/helm-charts | prometheus-operator-crds | 33.0.2 |
| https://victoriametrics.github.io/helm-charts/ | victoria-metrics-k8s-stack | 0.98.1 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| additionDashboards.kubernetes | bool | `false` |  |
| alertManagerConfig.cronitor.enabled | bool | `false` |  |
| alertManagerConfig.cronitor.repeatInterval | string | `"5m"` |  |
| alertManagerConfig.cronitor.secretName | string | `"vmalertmanager-cronitor-secret"` |  |
| alertManagerConfig.cronitor.urlSecret.key | string | `"cronitor"` |  |
| alertManagerConfig.cronitor.urlSecret.property | string | `"alertmanager_watchdog_url"` |  |
| alertManagerConfig.oneuptime.enabled | bool | `false` |  |
| alertManagerConfig.oneuptime.secretName | string | `"vmalertmanager-oneuptime-secret"` |  |
| alertManagerConfig.oneuptime.urlSecret.key | string | `"oneuptime"` |  |
| alertManagerConfig.oneuptime.urlSecret.property | string | `"alertmanager_heartbeat_url"` |  |
| alertManagerConfig.receivers | list | `[]` |  |
| alertManagerConfig.routes | list | `[]` |  |
| alertManagerConfig.slack.apiUrl | string | `"https://slack.com/api/chat.postMessage"` |  |
| alertManagerConfig.slack.enabled | bool | `false` |  |
| alertManagerConfig.slack.secretName | string | `"vmalertmanager-slack-secret"` |  |
| alertManagerConfig.slack.tokenSecret.key | string | `"slack"` |  |
| alertManagerConfig.slack.tokenSecret.property | string | `"alertmanager"` |  |
| alertManagerConfig.webhookReceivers | list | `[]` |  |
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

## Report Summary

| Target | Type | Misconfigurations |
| --- | --- | --- |
| templates/vmalertmanager-config.yaml | kubernetes | 0 |
