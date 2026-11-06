# lamp-trivy-dashboard

![Version: 0.0.2](https://img.shields.io/badge/Version-0.0.2-informational?style=flat-square)

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| clusterRbac.create | bool | `true` |  |
| extraEnvValues | list | `[]` |  |
| fullnameOverride | string | `""` |  |
| gitHub.checkForUpdatesIntervalInMinutes | int | `360` |  |
| gitHub.serverCheckForUpdates | bool | `true` |  |
| image.pullPolicy | string | `"Always"` |  |
| image.repository | string | `"ghcr.io/raoulx24/trivy-operator-dashboard"` |  |
| image.tag | string | `"1.9"` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.className | string | `"nginx"` |  |
| ingress.enabled | bool | `true` |  |
| ingress.hosts[0].host | string | `"chart-example.local"` |  |
| ingress.hosts[0].paths[0].path | string | `"/"` |  |
| ingress.hosts[0].paths[0].pathType | string | `"ImplementationSpecific"` |  |
| ingress.tls | list | `[]` |  |
| kubernetes.kubeConfigFileName | string | `""` |  |
| kubernetes.namespaceList | string | `""` |  |
| kubernetes.trivyUseClusterComplianceReport | bool | `true` |  |
| kubernetes.trivyUseClusterRbacAssessmentReport | bool | `true` |  |
| kubernetes.trivyUseClusterSbomReport | bool | `true` |  |
| kubernetes.trivyUseClusterVulnerabilityReport | bool | `true` |  |
| kubernetes.trivyUseConfigAuditReport | bool | `true` |  |
| kubernetes.trivyUseExposedSecretReport | bool | `true` |  |
| kubernetes.trivyUseRbacAssessmentReport | bool | `true` |  |
| kubernetes.trivyUseSbomReport | bool | `true` |  |
| kubernetes.trivyUseVulnerabilityReport | bool | `true` |  |
| livenessProbe.httpGet.path | string | `"/healthz/live"` |  |
| livenessProbe.httpGet.port | string | `"http"` |  |
| livenessProbe.initialDelaySeconds | int | `30` |  |
| livenessProbe.periodSeconds | int | `30` |  |
| logging.level | string | `"Information"` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| openTelemetry.aspNetCoreInstrumentationEnabled | bool | `true` |  |
| openTelemetry.consoleEnabled | bool | `false` |  |
| openTelemetry.enabled | bool | `false` |  |
| openTelemetry.otelEndpoint | string | `nil` |  |
| openTelemetry.otelProtocol | string | `"grpc"` |  |
| openTelemetry.prometheusExporterPort | string | `nil` |  |
| openTelemetry.runtimeInstrumentationEnabled | bool | `true` |  |
| podAnnotations | object | `{}` |  |
| podLabels."app.kubernetes.io/component" | string | `"web"` |  |
| podLabels."app.kubernetes.io/part-of" | string | `"trivy-operator"` |  |
| podSecurityContext | object | `{}` |  |
| readinessProbe.httpGet.path | string | `"/healthz/ready"` |  |
| readinessProbe.httpGet.port | string | `"http"` |  |
| readinessProbe.initialDelaySeconds | int | `30` |  |
| readinessProbe.periodSeconds | int | `30` |  |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| securityContext | object | `{}` |  |
| service.port | int | `8900` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |
| tolerations | list | `[]` |  |
# Trivy scan - Helm Chart

## Report Summary

| Target | Type | Misconfigurations |
| --- | --- | --- |
| templates/clusterrole.yaml | helm | 1 |
| templates/clusterrolebinding.yaml | helm | 0 |
| templates/deployment.yaml | helm | 18 |
| templates/ingress.yaml | helm | 0 |
| templates/service.yaml | helm | 0 |
| templates/serviceaccount.yaml | helm | 0 |

## templates/clusterrole.yaml

### KSV-0046 (CRITICAL): Manage all resources

ClusterRole 'lamp-trivy-dashboard' shouldn't manage all resources

- Resolution: Remove '*' from 'rules.resources'. Provide specific list of resources to be managed by cluster role
- See: https://avd.aquasec.com/misconfig/ksv-0046
- Location: `templates/clusterrole.yaml:10-12`

```
10: - apiGroups: ["aquasecurity.github.io"]
11:   resources: ["*"]
12:   verbs: ["get", "watch", "list"]
```


## templates/deployment.yaml

### KSV-0001 (MEDIUM): Can elevate its own privileges

Container 'lamp-trivy-dashboard' of Deployment 'lamp-trivy-dashboard' should set 'securityContext.allowPrivilegeEscalation' to false

- Resolution: Set 'set containers[].securityContext.allowPrivilegeEscalation' to 'false'.
- See: https://avd.aquasec.com/misconfig/ksv-0001
- Location: `templates/deployment.yaml:31-101`

```
31:       - name: lamp-trivy-dashboard
32:         securityContext:
33:           {}
34:         image: "ghcr.io/raoulx24/trivy-operator-dashboard:1.9"
35:         imagePullPolicy: Always
36:         env:
37:         - name: MAINAPPPORT
38:           value: "8900"
39:         - name: KUBERNETES__KUBECONFIGFILENAME
40:
```

### KSV-0003 (LOW): Default capabilities: some containers do not drop all

Container 'lamp-trivy-dashboard' of Deployment 'lamp-trivy-dashboard' should add 'ALL' to 'securityContext.capabilities.drop'

- Resolution: Add 'ALL' to containers[].securityContext.capabilities.drop.
- See: https://avd.aquasec.com/misconfig/ksv-0003
- Location: `templates/deployment.yaml:31-101`

```
31:       - name: lamp-trivy-dashboard
32:         securityContext:
33:           {}
34:         image: "ghcr.io/raoulx24/trivy-operator-dashboard:1.9"
35:         imagePullPolicy: Always
36:         env:
37:         - name: MAINAPPPORT
38:           value: "8900"
39:         - name: KUBERNETES__KUBECONFIGFILENAME
40:
```

### KSV-0004 (LOW): Default capabilities: some containers do not drop any

Container 'lamp-trivy-dashboard' of 'deployment' 'lamp-trivy-dashboard' in 'default' namespace should set securityContext.capabilities.drop

- Resolution: Specify at least one unneeded capability in 'containers[].securityContext.capabilities.drop'
- See: https://avd.aquasec.com/misconfig/ksv-0004
- Location: `templates/deployment.yaml:31-101`

```
31:       - name: lamp-trivy-dashboard
32:         securityContext:
33:           {}
34:         image: "ghcr.io/raoulx24/trivy-operator-dashboard:1.9"
35:         imagePullPolicy: Always
36:         env:
37:         - name: MAINAPPPORT
38:           value: "8900"
39:         - name: KUBERNETES__KUBECONFIGFILENAME
40:
```

### KSV-0011 (LOW): CPU not limited

Container 'lamp-trivy-dashboard' of Deployment 'lamp-trivy-dashboard' should set 'resources.limits.cpu'

- Resolution: Set a limit value under 'containers[].resources.limits.cpu'.
- See: https://avd.aquasec.com/misconfig/ksv-0011
- Location: `templates/deployment.yaml:31-101`

```
31:       - name: lamp-trivy-dashboard
32:         securityContext:
33:           {}
34:         image: "ghcr.io/raoulx24/trivy-operator-dashboard:1.9"
35:         imagePullPolicy: Always
36:         env:
37:         - name: MAINAPPPORT
38:           value: "8900"
39:         - name: KUBERNETES__KUBECONFIGFILENAME
40:
```

### KSV-0012 (MEDIUM): Runs as root user

Container 'lamp-trivy-dashboard' of Deployment 'lamp-trivy-dashboard' should set 'securityContext.runAsNonRoot' to true

- Resolution: Set 'containers[].securityContext.runAsNonRoot' to true.
- See: https://avd.aquasec.com/misconfig/ksv-0012
- Location: `templates/deployment.yaml:31-101`

```
31:       - name: lamp-trivy-dashboard
32:         securityContext:
33:           {}
34:         image: "ghcr.io/raoulx24/trivy-operator-dashboard:1.9"
35:         imagePullPolicy: Always
36:         env:
37:         - name: MAINAPPPORT
38:           value: "8900"
39:         - name: KUBERNETES__KUBECONFIGFILENAME
40:
```

### KSV-0014 (HIGH): Root file system is not read-only

Container 'lamp-trivy-dashboard' of Deployment 'lamp-trivy-dashboard' should set 'securityContext.readOnlyRootFilesystem' to true

- Resolution: Change 'containers[].securityContext.readOnlyRootFilesystem' to 'true'.
- See: https://avd.aquasec.com/misconfig/ksv-0014
- Location: `templates/deployment.yaml:31-101`

```
31:       - name: lamp-trivy-dashboard
32:         securityContext:
33:           {}
34:         image: "ghcr.io/raoulx24/trivy-operator-dashboard:1.9"
35:         imagePullPolicy: Always
36:         env:
37:         - name: MAINAPPPORT
38:           value: "8900"
39:         - name: KUBERNETES__KUBECONFIGFILENAME
40:
```

### KSV-0015 (LOW): CPU requests not specified

Container 'lamp-trivy-dashboard' of Deployment 'lamp-trivy-dashboard' should set 'resources.requests.cpu'

- Resolution: Set 'containers[].resources.requests.cpu'.
- See: https://avd.aquasec.com/misconfig/ksv-0015
- Location: `templates/deployment.yaml:31-101`

```
31:       - name: lamp-trivy-dashboard
32:         securityContext:
33:           {}
34:         image: "ghcr.io/raoulx24/trivy-operator-dashboard:1.9"
35:         imagePullPolicy: Always
36:         env:
37:         - name: MAINAPPPORT
38:           value: "8900"
39:         - name: KUBERNETES__KUBECONFIGFILENAME
40:
```

### KSV-0016 (LOW): Memory requests not specified

Container 'lamp-trivy-dashboard' of Deployment 'lamp-trivy-dashboard' should set 'resources.requests.memory'

- Resolution: Set 'containers[].resources.requests.memory'.
- See: https://avd.aquasec.com/misconfig/ksv-0016
- Location: `templates/deployment.yaml:31-101`

```
31:       - name: lamp-trivy-dashboard
32:         securityContext:
33:           {}
34:         image: "ghcr.io/raoulx24/trivy-operator-dashboard:1.9"
35:         imagePullPolicy: Always
36:         env:
37:         - name: MAINAPPPORT
38:           value: "8900"
39:         - name: KUBERNETES__KUBECONFIGFILENAME
40:
```

### KSV-0018 (LOW): Memory not limited

Container 'lamp-trivy-dashboard' of Deployment 'lamp-trivy-dashboard' should set 'resources.limits.memory'

- Resolution: Set a limit value under 'containers[].resources.limits.memory'.
- See: https://avd.aquasec.com/misconfig/ksv-0018
- Location: `templates/deployment.yaml:31-101`

```
31:       - name: lamp-trivy-dashboard
32:         securityContext:
33:           {}
34:         image: "ghcr.io/raoulx24/trivy-operator-dashboard:1.9"
35:         imagePullPolicy: Always
36:         env:
37:         - name: MAINAPPPORT
38:           value: "8900"
39:         - name: KUBERNETES__KUBECONFIGFILENAME
40:
```

### KSV-0020 (LOW): Runs with UID <= 10000

Container 'lamp-trivy-dashboard' of Deployment 'lamp-trivy-dashboard' should set 'securityContext.runAsUser' > 10000

- Resolution: Set 'containers[].securityContext.runAsUser' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0020
- Location: `templates/deployment.yaml:31-101`

```
31:       - name: lamp-trivy-dashboard
32:         securityContext:
33:           {}
34:         image: "ghcr.io/raoulx24/trivy-operator-dashboard:1.9"
35:         imagePullPolicy: Always
36:         env:
37:         - name: MAINAPPPORT
38:           value: "8900"
39:         - name: KUBERNETES__KUBECONFIGFILENAME
40:
```

### KSV-0021 (LOW): Runs with GID <= 10000

Container 'lamp-trivy-dashboard' of Deployment 'lamp-trivy-dashboard' should set 'securityContext.runAsGroup' > 10000

- Resolution: Set 'containers[].securityContext.runAsGroup' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0021
- Location: `templates/deployment.yaml:31-101`

```
31:       - name: lamp-trivy-dashboard
32:         securityContext:
33:           {}
34:         image: "ghcr.io/raoulx24/trivy-operator-dashboard:1.9"
35:         imagePullPolicy: Always
36:         env:
37:         - name: MAINAPPPORT
38:           value: "8900"
39:         - name: KUBERNETES__KUBECONFIGFILENAME
40:
```

### KSV-0030 (LOW): Runtime/Default Seccomp profile not set

Either Pod or Container should set 'securityContext.seccompProfile.type' to 'RuntimeDefault'

- Resolution: Set 'spec.securityContext.seccompProfile.type', 'spec.containers[*].securityContext.seccompProfile' and 'spec.initContainers[*].securityContext.seccompProfile' to 'RuntimeDefault' or undefined.
- See: https://avd.aquasec.com/misconfig/ksv-0030
- Location: `templates/deployment.yaml:31-101`

```
31:       - name: lamp-trivy-dashboard
32:         securityContext:
33:           {}
34:         image: "ghcr.io/raoulx24/trivy-operator-dashboard:1.9"
35:         imagePullPolicy: Always
36:         env:
37:         - name: MAINAPPPORT
38:           value: "8900"
39:         - name: KUBERNETES__KUBECONFIGFILENAME
40:
```

### KSV-0104 (MEDIUM): Seccomp policies disabled

container "lamp-trivy-dashboard" of deployment "lamp-trivy-dashboard" in "default" namespace should specify a seccomp profile

- Resolution: Specify seccomp either by annotation or by seccomp profile type having allowed values as per pod security standards
- See: https://avd.aquasec.com/misconfig/ksv-0104
- Location: `templates/deployment.yaml:31-101`

```
31:       - name: lamp-trivy-dashboard
32:         securityContext:
33:           {}
34:         image: "ghcr.io/raoulx24/trivy-operator-dashboard:1.9"
35:         imagePullPolicy: Always
36:         env:
37:         - name: MAINAPPPORT
38:           value: "8900"
39:         - name: KUBERNETES__KUBECONFIGFILENAME
40:
```

### KSV-0106 (LOW): Container capabilities must only include NET_BIND_SERVICE

container should drop all

- Resolution: Set 'spec.containers[*].securityContext.capabilities.drop' to 'ALL' and only add 'NET_BIND_SERVICE' to 'spec.containers[*].securityContext.capabilities.add'.
- See: https://avd.aquasec.com/misconfig/ksv-0106
- Location: `templates/deployment.yaml:31-101`

```
31:       - name: lamp-trivy-dashboard
32:         securityContext:
33:           {}
34:         image: "ghcr.io/raoulx24/trivy-operator-dashboard:1.9"
35:         imagePullPolicy: Always
36:         env:
37:         - name: MAINAPPPORT
38:           value: "8900"
39:         - name: KUBERNETES__KUBECONFIGFILENAME
40:
```

### KSV-0110 (LOW): Workloads in the default namespace

deployment lamp-trivy-dashboard in default namespace should set metadata.namespace to a non-default namespace

- Resolution: Set 'metadata.namespace' to a non-default namespace.
- See: https://avd.aquasec.com/misconfig/ksv-0110
- Location: `templates/deployment.yaml:4-10`

```
4: metadata:
5:   name: lamp-trivy-dashboard
6:   labels:
7:     helm.sh/chart: lamp-trivy-dashboard-0.0.2
8:     app.kubernetes.io/name: lamp-trivy-dashboard
9:     app.kubernetes.io/instance: lamp-trivy-dashboard
10:     app.kubernetes.io/managed-by: Helm
```

### KSV-0118 (HIGH): Default security context configured

container lamp-trivy-dashboard in default namespace is using the default security context

- Resolution: To enhance security, it is strongly recommended not to rely on the default security context. Instead, it is advisable to explicitly define the required security parameters (such as runAsNonRoot, capabilities, readOnlyRootFilesystem, etc.) within the security context.
- See: https://avd.aquasec.com/misconfig/ksv-0118
- Location: `templates/deployment.yaml:31-101`

```
31:       - name: lamp-trivy-dashboard
32:         securityContext:
33:           {}
34:         image: "ghcr.io/raoulx24/trivy-operator-dashboard:1.9"
35:         imagePullPolicy: Always
36:         env:
37:         - name: MAINAPPPORT
38:           value: "8900"
39:         - name: KUBERNETES__KUBECONFIGFILENAME
40:
```

### KSV-0118 (HIGH): Default security context configured

deployment lamp-trivy-dashboard in default namespace is using the default security context, which allows root privileges

- Resolution: To enhance security, it is strongly recommended not to rely on the default security context. Instead, it is advisable to explicitly define the required security parameters (such as runAsNonRoot, capabilities, readOnlyRootFilesystem, etc.) within the security context.
- See: https://avd.aquasec.com/misconfig/ksv-0118
- Location: `templates/deployment.yaml:26-105`

```
26:     spec:
27:       serviceAccountName: lamp-trivy-dashboard
28:       securityContext:
29:         {}
30:       containers:
31:       - name: lamp-trivy-dashboard
32:         securityContext:
33:           {}
34:         image: "ghcr.io/raoulx24/trivy-operator-dashboard:1.9"
35:
```

### KSV-0125 (MEDIUM): Restrict container images to trusted registries

Container lamp-trivy-dashboard in deployment lamp-trivy-dashboard (namespace: default) uses an image from an untrusted registry.

- Resolution: Use images from trusted registries.
- See: https://avd.aquasec.com/misconfig/ksv-0125
- Location: `templates/deployment.yaml:31-101`

```
31:       - name: lamp-trivy-dashboard
32:         securityContext:
33:           {}
34:         image: "ghcr.io/raoulx24/trivy-operator-dashboard:1.9"
35:         imagePullPolicy: Always
36:         env:
37:         - name: MAINAPPPORT
38:           value: "8900"
39:         - name: KUBERNETES__KUBECONFIGFILENAME
40:
```
