# lamp-grafana

![Version: 0.0.20](https://img.shields.io/badge/Version-0.0.20-informational?style=flat-square)

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| auth.auto_assign_org_role | string | `"Admin"` |  |
| auth.disable_login_form | bool | `true` |  |
| auth.gitlab.allow_sign_up | bool | `true` |  |
| auth.gitlab.api_url | string | `"https://gitlab.com/api/v4"` |  |
| auth.gitlab.auth_url | string | `"https://gitlab.com/oauth/authorize"` |  |
| auth.gitlab.auto_login | bool | `true` |  |
| auth.gitlab.enabled | bool | `true` |  |
| auth.gitlab.remoteSecretKeys.clientId | string | `"grafana-oauth-client-id"` |  |
| auth.gitlab.remoteSecretKeys.clientSecret | string | `"grafana-oauth-client-secret"` |  |
| auth.gitlab.scopes | string | `"read_user read_api"` |  |
| auth.gitlab.tls_skip_verify_insecure | bool | `false` |  |
| auth.gitlab.token_url | string | `"https://gitlab.com/oauth/token"` |  |
| auth.gitlab.use_pkce | bool | `true` |  |
| auth.gitlab.use_refresh_token | bool | `true` |  |
| auth.google.allow_sign_up | bool | `true` |  |
| auth.google.allowed_domains | string | `"example.allowed.domain"` |  |
| auth.google.auto_login | bool | `true` |  |
| auth.google.enabled | bool | `false` |  |
| auth.google.remoteSecretKeys.clientId | string | `"grafana-oauth-client-id"` |  |
| auth.google.remoteSecretKeys.clientSecret | string | `"grafana-oauth-client-secret"` |  |
| auth.viewers_can_edit | bool | `true` |  |
| dashboards.argo_rollouts.enabled | bool | `false` |  |
| dashboards.argocd.enabled | bool | `true` |  |
| dashboards.cert_manager.enabled | bool | `true` |  |
| dashboards.cilium.agent | bool | `true` |  |
| dashboards.cilium.enabled | bool | `false` |  |
| dashboards.cilium.hubble | bool | `true` |  |
| dashboards.cilium.operator | bool | `true` |  |
| dashboards.claude_code.enabled | bool | `false` |  |
| dashboards.coredns.enabled | bool | `false` |  |
| dashboards.elasticsearch.enabled | bool | `false` |  |
| dashboards.elasticsearch.overview | bool | `true` |  |
| dashboards.etcd.enabled | bool | `false` |  |
| dashboards.external_secrets.enabled | bool | `false` |  |
| dashboards.google.cloud-storage-monitoring | bool | `true` |  |
| dashboards.google.cloudfunctions-monitoring | bool | `true` |  |
| dashboards.google.cloudsql-monitoring | bool | `true` |  |
| dashboards.google.cloudsql-mysql-monitoring | bool | `true` |  |
| dashboards.google.cloudsql-postgre-monitoring | bool | `true` |  |
| dashboards.google.cloudtasks-monitoring | bool | `true` |  |
| dashboards.google.dataprocessing-monitoring | bool | `true` |  |
| dashboards.google.enabled | bool | `false` |  |
| dashboards.google.firewall-insight-monitoring | bool | `true` |  |
| dashboards.google.gce-network-monitoring | bool | `true` |  |
| dashboards.google.gce-vm-instance-monitoring | bool | `true` |  |
| dashboards.google.gke-prometheus-pod-node-monitoring | bool | `true` |  |
| dashboards.google.https-lb-backend-services-monitoring | bool | `true` |  |
| dashboards.google.https-loadbalancer-monitoring | bool | `true` |  |
| dashboards.google.micro-service-monitoring | bool | `true` |  |
| dashboards.google.network-tcp-loadbalancer-monitoring | bool | `true` |  |
| dashboards.grafana.enabled | bool | `false` |  |
| dashboards.hazelcast.enabled | bool | `false` |  |
| dashboards.istio.control-plane | bool | `true` |  |
| dashboards.istio.enabled | bool | `false` |  |
| dashboards.istio.mesh | bool | `true` |  |
| dashboards.istio.performance | bool | `true` |  |
| dashboards.istio.service | bool | `true` |  |
| dashboards.istio.wasm | bool | `true` |  |
| dashboards.istio.workload | bool | `true` |  |
| dashboards.kafka.enabled | bool | `false` |  |
| dashboards.kafka.strimzi-bridge | bool | `true` |  |
| dashboards.kafka.strimzi-connect | bool | `true` |  |
| dashboards.kafka.strimzi-cruise-control | bool | `true` |  |
| dashboards.kafka.strimzi-exporter | bool | `true` |  |
| dashboards.kafka.strimzi-kafka | bool | `true` |  |
| dashboards.kafka.strimzi-kraft | bool | `true` |  |
| dashboards.kafka.strimzi-mirror-maker | bool | `true` |  |
| dashboards.kafka.strimzi-oauth | bool | `true` |  |
| dashboards.kafka.strimzi-operators | bool | `true` |  |
| dashboards.kubernetes.apiServer | bool | `false` |  |
| dashboards.kubernetes.enabled | bool | `true` |  |
| dashboards.kubernetes.global | bool | `true` |  |
| dashboards.kubernetes.namespaces | bool | `true` |  |
| dashboards.kubernetes.nodes | bool | `true` |  |
| dashboards.kubernetes.pods | bool | `true` |  |
| dashboards.litellm.enabled | bool | `false` |  |
| dashboards.loki.enabled | bool | `true` |  |
| dashboards.loki.logs-by-service | bool | `true` |  |
| dashboards.mongodb.enabled | bool | `false` |  |
| dashboards.mysql.enabled | bool | `false` |  |
| dashboards.mysql.mixin | bool | `true` |  |
| dashboards.nginx.enabled | bool | `false` |  |
| dashboards.nginx.ingress | bool | `true` |  |
| dashboards.nginx.loki | bool | `true` |  |
| dashboards.node_exporter.enabled | bool | `false` |  |
| dashboards.openwrt.enabled | bool | `false` |  |
| dashboards.postgresql.cnpg | bool | `false` |  |
| dashboards.postgresql.enabled | bool | `false` |  |
| dashboards.postgresql.mixin | bool | `false` |  |
| dashboards.redis.enabled | bool | `false` |  |
| dashboards.redis.exporter | bool | `true` |  |
| dashboards.smartctl_exporter.enabled | bool | `false` |  |
| dashboards.vault.enabled | bool | `false` |  |
| dashboards.victoria_metrics.enabled | bool | `true` |  |
| datasources.alertmanager.enabled | bool | `true` |  |
| datasources.alertmanager.url | string | `"http://vmalertmanager-victoria-metrics-0.vmalertmanager-victoria-metrics.victoria-metrics.svc.cluster.local.:9093"` |  |
| datasources.google.defaultProject | string | `"example-infra"` |  |
| datasources.google.enabled | bool | `false` |  |
| datasources.google.serviceAccountEmail | string | `"grafana-monitoring-viewer@example-infra.iam.gserviceaccount.com"` |  |
| datasources.loki.enabled | bool | `true` |  |
| datasources.loki.url | string | `"http://loki.loki.svc.cluster.local:3100"` |  |
| datasources.pyroscope.enabled | bool | `true` |  |
| datasources.pyroscope.url | string | `"http://pyroscope.pyroscope.svc.cluster.local:4040"` |  |
| datasources.tempo.enabled | bool | `true` |  |
| datasources.tempo.url | string | `"http://tempo-query-frontend.tempo.svc.cluster.local:3200"` |  |
| datasources.victoria_metrics.enabled | bool | `true` |  |
| datasources.victoria_metrics.url | string | `"http://vmselect-victoria-metrics.victoria-metrics:8481/select/0/prometheus"` |  |
| domain | string | `"grafana.example.infra.cloud"` |  |
| externalSecrets.creationPolicy | string | `"Orphan"` |  |
| externalSecrets.kind | string | `"ClusterSecretStore"` |  |
| externalSecrets.name | string | `"oracle"` |  |
| externalSecrets.refreshInterval | string | `"1h"` |  |
| global.projectId | string | `"example-dev"` |  |
| homeDashboardUid | string | `"loki-logs-by-service"` |  |
| image.name | string | `"grafana/grafana"` |  |
| image.tag | string | `"10.0.3"` |  |
| ingress.enabled | bool | `false` |  |
| ingress.ingressClassName | string | `"nginx-internal"` |  |
# Trivy scan - Helm Chart
```

Report Summary

┌──────────────────────────────────────────────────────────────────────────────────┬────────────┬───────────────────┐
│                                      Target                                      │    Type    │ Misconfigurations │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-grafana-0.0.20.tgz:templates/dashboards/folders.yaml                │    helm    │         0         │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-grafana-0.0.20.tgz:templates/dashboards/platform/argo.yaml          │    helm    │         0         │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-grafana-0.0.20.tgz:templates/dashboards/platform/argocd.yaml        │    helm    │         0         │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-grafana-0.0.20.tgz:templates/dashboards/platform/cert-manager.yaml  │    helm    │         0         │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-grafana-0.0.20.tgz:templates/dashboards/platform/kubernetes.yaml    │    helm    │         0         │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-grafana-0.0.20.tgz:templates/dashboards/platform/loki.yaml          │    helm    │         0         │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-grafana-0.0.20.tgz:templates/dashboards/platform/victoria-metrics.- │    helm    │         0         │
│ yaml                                                                             │            │                   │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-grafana-0.0.20.tgz:templates/datasources/alertmanager.yaml          │    helm    │         0         │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-grafana-0.0.20.tgz:templates/datasources/loki.yaml                  │    helm    │         0         │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-grafana-0.0.20.tgz:templates/datasources/pyroscope.yaml             │    helm    │         0         │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-grafana-0.0.20.tgz:templates/datasources/tempo.yaml                 │    helm    │         0         │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-grafana-0.0.20.tgz:templates/datasources/victoria-metrics.yaml      │    helm    │         0         │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-grafana-0.0.20.tgz:templates/grafana.yaml                           │    helm    │         0         │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ .output/lamp-grafana-0.0.20.tgz:templates/sso/gitlab.yaml                        │    helm    │         0         │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ templates/dashboards/folders.yaml                                                │ kubernetes │         0         │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ templates/dashboards/platform/argo.yaml                                          │    helm    │         0         │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ templates/dashboards/platform/argocd.yaml                                        │    helm    │         0         │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ templates/dashboards/platform/cert-manager.yaml                                  │    helm    │         0         │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ templates/dashboards/platform/kubernetes.yaml                                    │    helm    │         0         │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ templates/dashboards/platform/loki.yaml                                          │    helm    │         0         │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ templates/dashboards/platform/victoria-metrics.yaml                              │    helm    │         0         │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ templates/datasources/alertmanager.yaml                                          │    helm    │         0         │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ templates/datasources/loki.yaml                                                  │    helm    │         0         │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ templates/datasources/pyroscope.yaml                                             │    helm    │         0         │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ templates/datasources/tempo.yaml                                                 │    helm    │         0         │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ templates/datasources/victoria-metrics.yaml                                      │    helm    │         0         │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ templates/grafana.yaml                                                           │    helm    │         0         │
├──────────────────────────────────────────────────────────────────────────────────┼────────────┼───────────────────┤
│ templates/sso/gitlab.yaml                                                        │    helm    │         0         │
└──────────────────────────────────────────────────────────────────────────────────┴────────────┴───────────────────┘
Legend:
- '-': Not scanned
- '0': Clean (no security findings detected)

```
