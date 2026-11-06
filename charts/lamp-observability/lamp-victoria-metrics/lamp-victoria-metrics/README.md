# lamp-victoria-metrics

![Version: 3.2.0](https://img.shields.io/badge/Version-3.2.0-informational?style=flat-square)

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
| charts/prometheus-operator-crds/charts/crds/templates/crd-alertmanagerconfigs.yaml | helm | 0 |
| charts/prometheus-operator-crds/charts/crds/templates/crd-alertmanagers.yaml | helm | 0 |
| charts/prometheus-operator-crds/charts/crds/templates/crd-podmonitors.yaml | helm | 0 |
| charts/prometheus-operator-crds/charts/crds/templates/crd-probes.yaml | helm | 0 |
| charts/prometheus-operator-crds/charts/crds/templates/crd-prometheusagents.yaml | helm | 0 |
| charts/prometheus-operator-crds/charts/crds/templates/crd-prometheuses.yaml | helm | 0 |
| charts/prometheus-operator-crds/charts/crds/templates/crd-prometheusrules.yaml | helm | 0 |
| charts/prometheus-operator-crds/charts/crds/templates/crd-scrapeconfigs.yaml | helm | 0 |
| charts/prometheus-operator-crds/charts/crds/templates/crd-servicemonitors.yaml | helm | 0 |
| charts/prometheus-operator-crds/charts/crds/templates/crd-thanosrulers.yaml | helm | 0 |
| charts/victoria-metrics-k8s-stack/charts/kube-state-metrics/templates/clusterrolebinding.yaml | helm | 0 |
| charts/victoria-metrics-k8s-stack/charts/kube-state-metrics/templates/deployment.yaml | helm | 5 |
| charts/victoria-metrics-k8s-stack/charts/kube-state-metrics/templates/role.yaml | helm | 1 |
| charts/victoria-metrics-k8s-stack/charts/kube-state-metrics/templates/service.yaml | helm | 0 |
| charts/victoria-metrics-k8s-stack/charts/kube-state-metrics/templates/serviceaccount.yaml | helm | 0 |
| charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml | helm | 15 |
| charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/service.yaml | helm | 0 |
| charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/serviceaccount.yaml | helm | 0 |
| charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/crb.yaml | helm | 0 |
| charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/monitor.yaml | helm | 0 |
| charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/rb.yaml | helm | 0 |
| charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/role.yaml | helm | 11 |
| charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/server.yaml | helm | 9 |
| charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/service.yaml | helm | 0 |
| charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/serviceaccount.yaml | helm | 0 |
| charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/webhook.yaml | helm | 0 |
| charts/victoria-metrics-k8s-stack/templates/servicemonitors.yaml | helm | 0 |
| charts/victoria-metrics-k8s-stack/templates/sync-job/config.yaml | helm | 0 |
| charts/victoria-metrics-k8s-stack/templates/sync-job/rbac.yaml | helm | 0 |
| charts/victoria-metrics-k8s-stack/templates/victoria-metrics-operator/vmagent/vmagent.yaml | helm | 0 |
| charts/victoria-metrics-k8s-stack/templates/victoria-metrics-operator/vmalert/vmalert.yaml | helm | 0 |
| charts/victoria-metrics-k8s-stack/templates/victoria-metrics-operator/vmalertmanager/monzo-template.yaml | helm | 0 |
| charts/victoria-metrics-k8s-stack/templates/victoria-metrics-operator/vmalertmanager/vmalertmanager.yaml | helm | 0 |
| charts/victoria-metrics-k8s-stack/templates/victoria-metrics-operator/vmcluster/vmcluster.yaml | helm | 0 |
| templates/vmalertmanager-config.yaml | kubernetes | 0 |

## charts/victoria-metrics-k8s-stack/charts/kube-state-metrics/templates/deployment.yaml

### KSV-0011 (LOW): CPU not limited

Container 'kube-state-metrics' of Deployment 'lamp-victoria-metrics-kube-state-metrics' should set 'resources.limits.cpu'

- Resolution: Set a limit value under 'containers[].resources.limits.cpu'.
- See: https://avd.aquasec.com/misconfig/ksv-0011
- Location: `charts/victoria-metrics-k8s-stack/charts/kube-state-metrics/templates/deployment.yaml:46-84`

```
46:       - name: kube-state-metrics
47:         args:
48:         - --port=8080
49:         - --resources=certificatesigningrequests,configmaps,cronjobs,daemonsets,deployments,endpointslices,horizontalpodautoscalers,ingresses,jobs,leases,limitranges,mutatingwebhookconfigurations,namespaces,networkpolicies,nodes,persistentvolumeclaims,persistentvolumes,poddisruptionbudgets,pods,replicasets,replicationcontrollers,resourcequotas,secrets,services,statefulsets,storageclasses,validatingwebhookconfigurations,volumeattachments
50:         imagePullPolicy: IfNotPresent
51:         image: registry.k8s.io/kube-state-metrics/kube-state-metrics:v2.20.0
52:         ports:
53:         - containerPort: 8080
54:           name: http
55:
```

### KSV-0015 (LOW): CPU requests not specified

Container 'kube-state-metrics' of Deployment 'lamp-victoria-metrics-kube-state-metrics' should set 'resources.requests.cpu'

- Resolution: Set 'containers[].resources.requests.cpu'.
- See: https://avd.aquasec.com/misconfig/ksv-0015
- Location: `charts/victoria-metrics-k8s-stack/charts/kube-state-metrics/templates/deployment.yaml:46-84`

```
46:       - name: kube-state-metrics
47:         args:
48:         - --port=8080
49:         - --resources=certificatesigningrequests,configmaps,cronjobs,daemonsets,deployments,endpointslices,horizontalpodautoscalers,ingresses,jobs,leases,limitranges,mutatingwebhookconfigurations,namespaces,networkpolicies,nodes,persistentvolumeclaims,persistentvolumes,poddisruptionbudgets,pods,replicasets,replicationcontrollers,resourcequotas,secrets,services,statefulsets,storageclasses,validatingwebhookconfigurations,volumeattachments
50:         imagePullPolicy: IfNotPresent
51:         image: registry.k8s.io/kube-state-metrics/kube-state-metrics:v2.20.0
52:         ports:
53:         - containerPort: 8080
54:           name: http
55:
```

### KSV-0016 (LOW): Memory requests not specified

Container 'kube-state-metrics' of Deployment 'lamp-victoria-metrics-kube-state-metrics' should set 'resources.requests.memory'

- Resolution: Set 'containers[].resources.requests.memory'.
- See: https://avd.aquasec.com/misconfig/ksv-0016
- Location: `charts/victoria-metrics-k8s-stack/charts/kube-state-metrics/templates/deployment.yaml:46-84`

```
46:       - name: kube-state-metrics
47:         args:
48:         - --port=8080
49:         - --resources=certificatesigningrequests,configmaps,cronjobs,daemonsets,deployments,endpointslices,horizontalpodautoscalers,ingresses,jobs,leases,limitranges,mutatingwebhookconfigurations,namespaces,networkpolicies,nodes,persistentvolumeclaims,persistentvolumes,poddisruptionbudgets,pods,replicasets,replicationcontrollers,resourcequotas,secrets,services,statefulsets,storageclasses,validatingwebhookconfigurations,volumeattachments
50:         imagePullPolicy: IfNotPresent
51:         image: registry.k8s.io/kube-state-metrics/kube-state-metrics:v2.20.0
52:         ports:
53:         - containerPort: 8080
54:           name: http
55:
```

### KSV-0018 (LOW): Memory not limited

Container 'kube-state-metrics' of Deployment 'lamp-victoria-metrics-kube-state-metrics' should set 'resources.limits.memory'

- Resolution: Set a limit value under 'containers[].resources.limits.memory'.
- See: https://avd.aquasec.com/misconfig/ksv-0018
- Location: `charts/victoria-metrics-k8s-stack/charts/kube-state-metrics/templates/deployment.yaml:46-84`

```
46:       - name: kube-state-metrics
47:         args:
48:         - --port=8080
49:         - --resources=certificatesigningrequests,configmaps,cronjobs,daemonsets,deployments,endpointslices,horizontalpodautoscalers,ingresses,jobs,leases,limitranges,mutatingwebhookconfigurations,namespaces,networkpolicies,nodes,persistentvolumeclaims,persistentvolumes,poddisruptionbudgets,pods,replicasets,replicationcontrollers,resourcequotas,secrets,services,statefulsets,storageclasses,validatingwebhookconfigurations,volumeattachments
50:         imagePullPolicy: IfNotPresent
51:         image: registry.k8s.io/kube-state-metrics/kube-state-metrics:v2.20.0
52:         ports:
53:         - containerPort: 8080
54:           name: http
55:
```

### KSV-0125 (MEDIUM): Restrict container images to trusted registries

Container kube-state-metrics in deployment lamp-victoria-metrics-kube-state-metrics (namespace: null) uses an image from an untrusted registry.

- Resolution: Use images from trusted registries.
- See: https://avd.aquasec.com/misconfig/ksv-0125
- Location: `charts/victoria-metrics-k8s-stack/charts/kube-state-metrics/templates/deployment.yaml:46-84`

```
46:       - name: kube-state-metrics
47:         args:
48:         - --port=8080
49:         - --resources=certificatesigningrequests,configmaps,cronjobs,daemonsets,deployments,endpointslices,horizontalpodautoscalers,ingresses,jobs,leases,limitranges,mutatingwebhookconfigurations,namespaces,networkpolicies,nodes,persistentvolumeclaims,persistentvolumes,poddisruptionbudgets,pods,replicasets,replicationcontrollers,resourcequotas,secrets,services,statefulsets,storageclasses,validatingwebhookconfigurations,volumeattachments
50:         imagePullPolicy: IfNotPresent
51:         image: registry.k8s.io/kube-state-metrics/kube-state-metrics:v2.20.0
52:         ports:
53:         - containerPort: 8080
54:           name: http
55:
```


## charts/victoria-metrics-k8s-stack/charts/kube-state-metrics/templates/role.yaml

### KSV-0041 (CRITICAL): Manage secrets

ClusterRole 'lamp-victoria-metrics-kube-state-metrics' shouldn't have access to manage resource 'secrets'

- Resolution: Manage secrets are not allowed. Remove resource 'secrets' from cluster role
- See: https://avd.aquasec.com/misconfig/ksv-0041
- Location: `charts/victoria-metrics-k8s-stack/charts/kube-state-metrics/templates/role.yaml:126-129`

```
126: - apiGroups: [""]
127:   resources:
128:   - secrets
129:   verbs: ["list", "watch"]
```


## charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml

### KSV-0001 (MEDIUM): Can elevate its own privileges

Container 'node-exporter' of DaemonSet 'lamp-victoria-metrics-prometheus-node-exporter' should set 'securityContext.allowPrivilegeEscalation' to false

- Resolution: Set 'set containers[].securityContext.allowPrivilegeEscalation' to 'false'.
- See: https://avd.aquasec.com/misconfig/ksv-0001
- Location: `charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml:45-97`

```
45:         - name: node-exporter
46:           image: quay.io/prometheus/node-exporter:v1.12.1
47:           imagePullPolicy: IfNotPresent
48:           args:
49:             - --path.procfs=/host/proc
50:             - --path.sysfs=/host/sys
51:             - --path.rootfs=/host/root
52:             - --path.udev.data=/host/root/run/udev/data
53:             - --web.listen-address=[$(HOST_IP)]:9100
54:
```

### KSV-0003 (LOW): Default capabilities: some containers do not drop all

Container 'node-exporter' of DaemonSet 'lamp-victoria-metrics-prometheus-node-exporter' should add 'ALL' to 'securityContext.capabilities.drop'

- Resolution: Add 'ALL' to containers[].securityContext.capabilities.drop.
- See: https://avd.aquasec.com/misconfig/ksv-0003
- Location: `charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml:45-97`

```
45:         - name: node-exporter
46:           image: quay.io/prometheus/node-exporter:v1.12.1
47:           imagePullPolicy: IfNotPresent
48:           args:
49:             - --path.procfs=/host/proc
50:             - --path.sysfs=/host/sys
51:             - --path.rootfs=/host/root
52:             - --path.udev.data=/host/root/run/udev/data
53:             - --web.listen-address=[$(HOST_IP)]:9100
54:
```

### KSV-0004 (LOW): Default capabilities: some containers do not drop any

Container 'node-exporter' of 'daemonset' 'lamp-victoria-metrics-prometheus-node-exporter' in 'null' namespace should set securityContext.capabilities.drop

- Resolution: Specify at least one unneeded capability in 'containers[].securityContext.capabilities.drop'
- See: https://avd.aquasec.com/misconfig/ksv-0004
- Location: `charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml:45-97`

```
45:         - name: node-exporter
46:           image: quay.io/prometheus/node-exporter:v1.12.1
47:           imagePullPolicy: IfNotPresent
48:           args:
49:             - --path.procfs=/host/proc
50:             - --path.sysfs=/host/sys
51:             - --path.rootfs=/host/root
52:             - --path.udev.data=/host/root/run/udev/data
53:             - --web.listen-address=[$(HOST_IP)]:9100
54:
```

### KSV-0009 (HIGH): Access to host network

DaemonSet 'lamp-victoria-metrics-prometheus-node-exporter' should not set 'spec.template.spec.hostNetwork' to true

- Resolution: Do not set 'spec.template.spec.hostNetwork' to true.
- See: https://avd.aquasec.com/misconfig/ksv-0009
- Location: `charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml:15-128`

```
15: spec:
16:   selector:
17:     matchLabels:
18:       app.kubernetes.io/name: prometheus-node-exporter
19:       app.kubernetes.io/instance: lamp-victoria-metrics
20:   revisionHistoryLimit: 10
21:   updateStrategy:
22:     rollingUpdate:
23:       maxUnavailable: 1
24:
```

### KSV-0010 (HIGH): Access to host PID

DaemonSet 'lamp-victoria-metrics-prometheus-node-exporter' should not set 'spec.template.spec.hostPID' to true

- Resolution: Do not set 'spec.template.spec.hostPID' to true.
- See: https://avd.aquasec.com/misconfig/ksv-0010
- Location: `charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml:15-128`

```
15: spec:
16:   selector:
17:     matchLabels:
18:       app.kubernetes.io/name: prometheus-node-exporter
19:       app.kubernetes.io/instance: lamp-victoria-metrics
20:   revisionHistoryLimit: 10
21:   updateStrategy:
22:     rollingUpdate:
23:       maxUnavailable: 1
24:
```

### KSV-0011 (LOW): CPU not limited

Container 'node-exporter' of DaemonSet 'lamp-victoria-metrics-prometheus-node-exporter' should set 'resources.limits.cpu'

- Resolution: Set a limit value under 'containers[].resources.limits.cpu'.
- See: https://avd.aquasec.com/misconfig/ksv-0011
- Location: `charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml:45-97`

```
45:         - name: node-exporter
46:           image: quay.io/prometheus/node-exporter:v1.12.1
47:           imagePullPolicy: IfNotPresent
48:           args:
49:             - --path.procfs=/host/proc
50:             - --path.sysfs=/host/sys
51:             - --path.rootfs=/host/root
52:             - --path.udev.data=/host/root/run/udev/data
53:             - --web.listen-address=[$(HOST_IP)]:9100
54:
```

### KSV-0015 (LOW): CPU requests not specified

Container 'node-exporter' of DaemonSet 'lamp-victoria-metrics-prometheus-node-exporter' should set 'resources.requests.cpu'

- Resolution: Set 'containers[].resources.requests.cpu'.
- See: https://avd.aquasec.com/misconfig/ksv-0015
- Location: `charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml:45-97`

```
45:         - name: node-exporter
46:           image: quay.io/prometheus/node-exporter:v1.12.1
47:           imagePullPolicy: IfNotPresent
48:           args:
49:             - --path.procfs=/host/proc
50:             - --path.sysfs=/host/sys
51:             - --path.rootfs=/host/root
52:             - --path.udev.data=/host/root/run/udev/data
53:             - --web.listen-address=[$(HOST_IP)]:9100
54:
```

### KSV-0016 (LOW): Memory requests not specified

Container 'node-exporter' of DaemonSet 'lamp-victoria-metrics-prometheus-node-exporter' should set 'resources.requests.memory'

- Resolution: Set 'containers[].resources.requests.memory'.
- See: https://avd.aquasec.com/misconfig/ksv-0016
- Location: `charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml:45-97`

```
45:         - name: node-exporter
46:           image: quay.io/prometheus/node-exporter:v1.12.1
47:           imagePullPolicy: IfNotPresent
48:           args:
49:             - --path.procfs=/host/proc
50:             - --path.sysfs=/host/sys
51:             - --path.rootfs=/host/root
52:             - --path.udev.data=/host/root/run/udev/data
53:             - --web.listen-address=[$(HOST_IP)]:9100
54:
```

### KSV-0018 (LOW): Memory not limited

Container 'node-exporter' of DaemonSet 'lamp-victoria-metrics-prometheus-node-exporter' should set 'resources.limits.memory'

- Resolution: Set a limit value under 'containers[].resources.limits.memory'.
- See: https://avd.aquasec.com/misconfig/ksv-0018
- Location: `charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml:45-97`

```
45:         - name: node-exporter
46:           image: quay.io/prometheus/node-exporter:v1.12.1
47:           imagePullPolicy: IfNotPresent
48:           args:
49:             - --path.procfs=/host/proc
50:             - --path.sysfs=/host/sys
51:             - --path.rootfs=/host/root
52:             - --path.udev.data=/host/root/run/udev/data
53:             - --web.listen-address=[$(HOST_IP)]:9100
54:
```

### KSV-0023 (MEDIUM): hostPath volumes mounted

DaemonSet 'lamp-victoria-metrics-prometheus-node-exporter' should not set 'spec.template.volumes.hostPath'

- Resolution: Do not set 'spec.volumes[*].hostPath'.
- See: https://avd.aquasec.com/misconfig/ksv-0023
- Location: `charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml:15-128`

```
15: spec:
16:   selector:
17:     matchLabels:
18:       app.kubernetes.io/name: prometheus-node-exporter
19:       app.kubernetes.io/instance: lamp-victoria-metrics
20:   revisionHistoryLimit: 10
21:   updateStrategy:
22:     rollingUpdate:
23:       maxUnavailable: 1
24:
```

### KSV-0030 (LOW): Runtime/Default Seccomp profile not set

Either Pod or Container should set 'securityContext.seccompProfile.type' to 'RuntimeDefault'

- Resolution: Set 'spec.securityContext.seccompProfile.type', 'spec.containers[*].securityContext.seccompProfile' and 'spec.initContainers[*].securityContext.seccompProfile' to 'RuntimeDefault' or undefined.
- See: https://avd.aquasec.com/misconfig/ksv-0030
- Location: `charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml:45-97`

```
45:         - name: node-exporter
46:           image: quay.io/prometheus/node-exporter:v1.12.1
47:           imagePullPolicy: IfNotPresent
48:           args:
49:             - --path.procfs=/host/proc
50:             - --path.sysfs=/host/sys
51:             - --path.rootfs=/host/root
52:             - --path.udev.data=/host/root/run/udev/data
53:             - --web.listen-address=[$(HOST_IP)]:9100
54:
```

### KSV-0104 (MEDIUM): Seccomp policies disabled

container "node-exporter" of daemonset "lamp-victoria-metrics-prometheus-node-exporter" in "null" namespace should specify a seccomp profile

- Resolution: Specify seccomp either by annotation or by seccomp profile type having allowed values as per pod security standards
- See: https://avd.aquasec.com/misconfig/ksv-0104
- Location: `charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml:45-97`

```
45:         - name: node-exporter
46:           image: quay.io/prometheus/node-exporter:v1.12.1
47:           imagePullPolicy: IfNotPresent
48:           args:
49:             - --path.procfs=/host/proc
50:             - --path.sysfs=/host/sys
51:             - --path.rootfs=/host/root
52:             - --path.udev.data=/host/root/run/udev/data
53:             - --web.listen-address=[$(HOST_IP)]:9100
54:
```

### KSV-0106 (LOW): Container capabilities must only include NET_BIND_SERVICE

container should drop all

- Resolution: Set 'spec.containers[*].securityContext.capabilities.drop' to 'ALL' and only add 'NET_BIND_SERVICE' to 'spec.containers[*].securityContext.capabilities.add'.
- See: https://avd.aquasec.com/misconfig/ksv-0106
- Location: `charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml:45-97`

```
45:         - name: node-exporter
46:           image: quay.io/prometheus/node-exporter:v1.12.1
47:           imagePullPolicy: IfNotPresent
48:           args:
49:             - --path.procfs=/host/proc
50:             - --path.sysfs=/host/sys
51:             - --path.rootfs=/host/root
52:             - --path.udev.data=/host/root/run/udev/data
53:             - --web.listen-address=[$(HOST_IP)]:9100
54:
```

### KSV-0121 (HIGH): Kubernetes resource with disallowed volumes mounted

daemonset lamp-victoria-metrics-prometheus-node-exporter in null namespace shouldn't have volumes set to {"/", "/proc", "/sys"}

- Resolution: Do not Set 'spec.volumes[*].hostPath.path' to any of the disallowed volumes.
- See: https://avd.aquasec.com/misconfig/ksv-0121
- Location: `charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml:15-128`

```
15: spec:
16:   selector:
17:     matchLabels:
18:       app.kubernetes.io/name: prometheus-node-exporter
19:       app.kubernetes.io/instance: lamp-victoria-metrics
20:   revisionHistoryLimit: 10
21:   updateStrategy:
22:     rollingUpdate:
23:       maxUnavailable: 1
24:
```

### KSV-0125 (MEDIUM): Restrict container images to trusted registries

Container node-exporter in daemonset lamp-victoria-metrics-prometheus-node-exporter (namespace: null) uses an image from an untrusted registry.

- Resolution: Use images from trusted registries.
- See: https://avd.aquasec.com/misconfig/ksv-0125
- Location: `charts/victoria-metrics-k8s-stack/charts/prometheus-node-exporter/templates/daemonset.yaml:45-97`

```
45:         - name: node-exporter
46:           image: quay.io/prometheus/node-exporter:v1.12.1
47:           imagePullPolicy: IfNotPresent
48:           args:
49:             - --path.procfs=/host/proc
50:             - --path.sysfs=/host/sys
51:             - --path.rootfs=/host/root
52:             - --path.udev.data=/host/root/run/udev/data
53:             - --web.listen-address=[$(HOST_IP)]:9100
54:
```


## charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/role.yaml

### KSV-0041 (CRITICAL): Manage secrets

ClusterRole 'lamp-victoria-metrics-victoria-metrics-operator' shouldn't have access to manage resource 'secrets'

- Resolution: Manage secrets are not allowed. Remove resource 'secrets' from cluster role
- See: https://avd.aquasec.com/misconfig/ksv-0041
- Location: `charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/role.yaml:21-39`

```
21: - apiGroups:
22:   - ""
23:   resources:
24:   - configmaps
25:   - configmaps/finalizers
26:   - endpoints
27:   - events
28:   - persistentvolumeclaims
29:   - persistentvolumeclaims/finalizers
30:
```

### KSV-0045 (CRITICAL): No wildcard verb roles

Role permits wildcard verb on specific resources

- Resolution: Create a role which does not permit wildcard verb on specific resources
- See: https://avd.aquasec.com/misconfig/ksv-0045
- Location: `charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/role.yaml:21-39`

```
21: - apiGroups:
22:   - ""
23:   resources:
24:   - configmaps
25:   - configmaps/finalizers
26:   - endpoints
27:   - events
28:   - persistentvolumeclaims
29:   - persistentvolumeclaims/finalizers
30:
```

### KSV-0045 (CRITICAL): No wildcard verb roles

Role permits wildcard verb on specific resources

- Resolution: Create a role which does not permit wildcard verb on specific resources
- See: https://avd.aquasec.com/misconfig/ksv-0045
- Location: `charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/role.yaml:51-63`

```
51: - apiGroups:
52:   - apps
53:   resources:
54:   - daemonsets
55:   - daemonsets/finalizers
56:   - deployments
57:   - deployments/finalizers
58:   - replicasets
59:   - statefulsets
60:
```

### KSV-0045 (CRITICAL): No wildcard verb roles

Role permits wildcard verb on specific resources

- Resolution: Create a role which does not permit wildcard verb on specific resources
- See: https://avd.aquasec.com/misconfig/ksv-0045
- Location: `charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/role.yaml:70-80`

```
70: - apiGroups:
71:   - rbac.authorization.k8s.io
72:   resources:
73:   - clusterrolebindings
74:   - clusterrolebindings/finalizers
75:   - clusterroles
76:   - clusterroles/finalizers
77:   - roles
78:   - rolebindings
79:
```

### KSV-0046 (CRITICAL): Manage all resources

ClusterRole 'lamp-victoria-metrics-victoria-metrics-operator' shouldn't manage all resources

- Resolution: Remove '*' from 'rules.resources'. Provide specific list of resources to be managed by cluster role
- See: https://avd.aquasec.com/misconfig/ksv-0046
- Location: `charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/role.yaml:64-69`

```
64: - apiGroups:
65:   - monitoring.coreos.com
66:   resources:
67:   - "*"
68:   verbs:
69:   - "*"
```

### KSV-0048 (MEDIUM): Manage Kubernetes workloads and pods

ClusterRole 'lamp-victoria-metrics-victoria-metrics-operator' should not have access to resources ["pods", "deployments", "jobs", "cronjobs", "statefulsets", "daemonsets", "replicasets", "replicationcontrollers"] for verbs ["create", "update", "patch", "delete", "deletecollection", "impersonate", "*"]

- Resolution: Kubernetes workloads resources are only allowed for verbs 'list', 'watch', 'get'
- See: https://avd.aquasec.com/misconfig/ksv-0048
- Location: `charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/role.yaml:21-39`

```
21: - apiGroups:
22:   - ""
23:   resources:
24:   - configmaps
25:   - configmaps/finalizers
26:   - endpoints
27:   - events
28:   - persistentvolumeclaims
29:   - persistentvolumeclaims/finalizers
30:
```

### KSV-0048 (MEDIUM): Manage Kubernetes workloads and pods

ClusterRole 'lamp-victoria-metrics-victoria-metrics-operator' should not have access to resources ["pods", "deployments", "jobs", "cronjobs", "statefulsets", "daemonsets", "replicasets", "replicationcontrollers"] for verbs ["create", "update", "patch", "delete", "deletecollection", "impersonate", "*"]

- Resolution: Kubernetes workloads resources are only allowed for verbs 'list', 'watch', 'get'
- See: https://avd.aquasec.com/misconfig/ksv-0048
- Location: `charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/role.yaml:51-63`

```
51: - apiGroups:
52:   - apps
53:   resources:
54:   - daemonsets
55:   - daemonsets/finalizers
56:   - deployments
57:   - deployments/finalizers
58:   - replicasets
59:   - statefulsets
60:
```

### KSV-0049 (MEDIUM): Manage configmaps

ClusterRole 'lamp-victoria-metrics-victoria-metrics-operator' should not have access to resource 'configmaps' for verbs ["create", "update", "patch", "delete", "deletecollection", "impersonate", "*"]

- Resolution: Remove write permission verbs for resource 'configmaps'
- See: https://avd.aquasec.com/misconfig/ksv-0049
- Location: `charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/role.yaml:21-39`

```
21: - apiGroups:
22:   - ""
23:   resources:
24:   - configmaps
25:   - configmaps/finalizers
26:   - endpoints
27:   - events
28:   - persistentvolumeclaims
29:   - persistentvolumeclaims/finalizers
30:
```

### KSV-0050 (CRITICAL): Do not allow privilege escalation via RBAC resources

ClusterRole 'lamp-victoria-metrics-victoria-metrics-operator' should not have access to resources ["roles", "rolebindings"] for verbs ["escalate", "bind", "impersonate", "*"] as they can lead to privilege escalation

- Resolution: Remove permissions for escalate, bind, and impersonate verbs on roles and rolebindings
- See: https://avd.aquasec.com/misconfig/ksv-0050
- Location: `charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/role.yaml:70-80`

```
70: - apiGroups:
71:   - rbac.authorization.k8s.io
72:   resources:
73:   - clusterrolebindings
74:   - clusterrolebindings/finalizers
75:   - clusterroles
76:   - clusterroles/finalizers
77:   - roles
78:   - rolebindings
79:
```

### KSV-0056 (HIGH): Manage Kubernetes networking

ClusterRole 'lamp-victoria-metrics-victoria-metrics-operator' should not have access to resources ["services", "endpoints", "endpointslices", "networkpolicies", "ingresses"] for verbs ["create", "update", "patch", "delete", "deletecollection", "impersonate", "*"]

- Resolution: Networking resources are only allowed for verbs 'list', 'watch', 'get'
- See: https://avd.aquasec.com/misconfig/ksv-0056
- Location: `charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/role.yaml:21-39`

```
21: - apiGroups:
22:   - ""
23:   resources:
24:   - configmaps
25:   - configmaps/finalizers
26:   - endpoints
27:   - events
28:   - persistentvolumeclaims
29:   - persistentvolumeclaims/finalizers
30:
```

### KSV-0056 (HIGH): Manage Kubernetes networking

ClusterRole 'lamp-victoria-metrics-victoria-metrics-operator' should not have access to resources ["services", "endpoints", "endpointslices", "networkpolicies", "ingresses"] for verbs ["create", "update", "patch", "delete", "deletecollection", "impersonate", "*"]

- Resolution: Networking resources are only allowed for verbs 'list', 'watch', 'get'
- See: https://avd.aquasec.com/misconfig/ksv-0056
- Location: `charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/role.yaml:110-117`

```
110: - apiGroups:
111:   - networking.k8s.io
112:   resources:
113:   - ingresses
114:   - ingresses/finalizers
115:   - networkpolicies
116:   verbs:
117:   - "*"
```


## charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/server.yaml

### KSV-0011 (LOW): CPU not limited

Container 'operator' of Deployment 'lamp-victoria-metrics-victoria-metrics-operator' should set 'resources.limits.cpu'

- Resolution: Set a limit value under 'containers[].resources.limits.cpu'.
- See: https://avd.aquasec.com/misconfig/ksv-0011
- Location: `charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/server.yaml:38-104`

```
38:         - name: operator
39:           image: victoriametrics/operator:v0.75.2
40:           imagePullPolicy: IfNotPresent
41:           env:
42:             - name: VM_ANOMALY_VERSION
43:               value: "v1.31.1"
44:             - name: VM_LOGS_VERSION
45:               value: "v1.53.0"
46:             - name: VM_METRICS_VERSION
47:
```

### KSV-0015 (LOW): CPU requests not specified

Container 'operator' of Deployment 'lamp-victoria-metrics-victoria-metrics-operator' should set 'resources.requests.cpu'

- Resolution: Set 'containers[].resources.requests.cpu'.
- See: https://avd.aquasec.com/misconfig/ksv-0015
- Location: `charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/server.yaml:38-104`

```
38:         - name: operator
39:           image: victoriametrics/operator:v0.75.2
40:           imagePullPolicy: IfNotPresent
41:           env:
42:             - name: VM_ANOMALY_VERSION
43:               value: "v1.31.1"
44:             - name: VM_LOGS_VERSION
45:               value: "v1.53.0"
46:             - name: VM_METRICS_VERSION
47:
```

### KSV-0016 (LOW): Memory requests not specified

Container 'operator' of Deployment 'lamp-victoria-metrics-victoria-metrics-operator' should set 'resources.requests.memory'

- Resolution: Set 'containers[].resources.requests.memory'.
- See: https://avd.aquasec.com/misconfig/ksv-0016
- Location: `charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/server.yaml:38-104`

```
38:         - name: operator
39:           image: victoriametrics/operator:v0.75.2
40:           imagePullPolicy: IfNotPresent
41:           env:
42:             - name: VM_ANOMALY_VERSION
43:               value: "v1.31.1"
44:             - name: VM_LOGS_VERSION
45:               value: "v1.53.0"
46:             - name: VM_METRICS_VERSION
47:
```

### KSV-0018 (LOW): Memory not limited

Container 'operator' of Deployment 'lamp-victoria-metrics-victoria-metrics-operator' should set 'resources.limits.memory'

- Resolution: Set a limit value under 'containers[].resources.limits.memory'.
- See: https://avd.aquasec.com/misconfig/ksv-0018
- Location: `charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/server.yaml:38-104`

```
38:         - name: operator
39:           image: victoriametrics/operator:v0.75.2
40:           imagePullPolicy: IfNotPresent
41:           env:
42:             - name: VM_ANOMALY_VERSION
43:               value: "v1.31.1"
44:             - name: VM_LOGS_VERSION
45:               value: "v1.53.0"
46:             - name: VM_METRICS_VERSION
47:
```

### KSV-0020 (LOW): Runs with UID <= 10000

Container 'operator' of Deployment 'lamp-victoria-metrics-victoria-metrics-operator' should set 'securityContext.runAsUser' > 10000

- Resolution: Set 'containers[].securityContext.runAsUser' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0020
- Location: `charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/server.yaml:38-104`

```
38:         - name: operator
39:           image: victoriametrics/operator:v0.75.2
40:           imagePullPolicy: IfNotPresent
41:           env:
42:             - name: VM_ANOMALY_VERSION
43:               value: "v1.31.1"
44:             - name: VM_LOGS_VERSION
45:               value: "v1.53.0"
46:             - name: VM_METRICS_VERSION
47:
```

### KSV-0021 (LOW): Runs with GID <= 10000

Container 'operator' of Deployment 'lamp-victoria-metrics-victoria-metrics-operator' should set 'securityContext.runAsGroup' > 10000

- Resolution: Set 'containers[].securityContext.runAsGroup' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0021
- Location: `charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/server.yaml:38-104`

```
38:         - name: operator
39:           image: victoriametrics/operator:v0.75.2
40:           imagePullPolicy: IfNotPresent
41:           env:
42:             - name: VM_ANOMALY_VERSION
43:               value: "v1.31.1"
44:             - name: VM_LOGS_VERSION
45:               value: "v1.53.0"
46:             - name: VM_METRICS_VERSION
47:
```

### KSV-0030 (LOW): Runtime/Default Seccomp profile not set

Either Pod or Container should set 'securityContext.seccompProfile.type' to 'RuntimeDefault'

- Resolution: Set 'spec.securityContext.seccompProfile.type', 'spec.containers[*].securityContext.seccompProfile' and 'spec.initContainers[*].securityContext.seccompProfile' to 'RuntimeDefault' or undefined.
- See: https://avd.aquasec.com/misconfig/ksv-0030
- Location: `charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/server.yaml:38-104`

```
38:         - name: operator
39:           image: victoriametrics/operator:v0.75.2
40:           imagePullPolicy: IfNotPresent
41:           env:
42:             - name: VM_ANOMALY_VERSION
43:               value: "v1.31.1"
44:             - name: VM_LOGS_VERSION
45:               value: "v1.53.0"
46:             - name: VM_METRICS_VERSION
47:
```

### KSV-0104 (MEDIUM): Seccomp policies disabled

container "operator" of deployment "lamp-victoria-metrics-victoria-metrics-operator" in "null" namespace should specify a seccomp profile

- Resolution: Specify seccomp either by annotation or by seccomp profile type having allowed values as per pod security standards
- See: https://avd.aquasec.com/misconfig/ksv-0104
- Location: `charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/server.yaml:38-104`

```
38:         - name: operator
39:           image: victoriametrics/operator:v0.75.2
40:           imagePullPolicy: IfNotPresent
41:           env:
42:             - name: VM_ANOMALY_VERSION
43:               value: "v1.31.1"
44:             - name: VM_LOGS_VERSION
45:               value: "v1.53.0"
46:             - name: VM_METRICS_VERSION
47:
```

### KSV-0125 (MEDIUM): Restrict container images to trusted registries

Container operator in deployment lamp-victoria-metrics-victoria-metrics-operator (namespace: null) uses an image from an untrusted registry.

- Resolution: Use images from trusted registries.
- See: https://avd.aquasec.com/misconfig/ksv-0125
- Location: `charts/victoria-metrics-k8s-stack/charts/victoria-metrics-operator/templates/server.yaml:38-104`

```
38:         - name: operator
39:           image: victoriametrics/operator:v0.75.2
40:           imagePullPolicy: IfNotPresent
41:           env:
42:             - name: VM_ANOMALY_VERSION
43:               value: "v1.31.1"
44:             - name: VM_LOGS_VERSION
45:               value: "v1.53.0"
46:             - name: VM_METRICS_VERSION
47:
```
