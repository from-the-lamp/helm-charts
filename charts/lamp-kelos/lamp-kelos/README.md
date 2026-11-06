# lamp-kelos

![Version: 0.0.2](https://img.shields.io/badge/Version-0.0.2-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square)

Kelos controller and CRDs

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| claudeCodeImage | string | `"ghcr.io/kelos-dev/claude-code"` |  |
| codexAuthRefresher.schedule | string | `"0 */6 * * *"` |  |
| codexImage | string | `"ghcr.io/kelos-dev/codex"` |  |
| consoleServer.defaultNamespace | string | `"default"` |  |
| consoleServer.enabled | bool | `false` |  |
| consoleServer.image | string | `"ghcr.io/kelos-dev/kelos-console-server"` |  |
| consoleServer.replicas | int | `1` |  |
| consoleServer.resources.limits.cpu | string | `"500m"` |  |
| consoleServer.resources.limits.memory | string | `"256Mi"` |  |
| consoleServer.resources.requests.cpu | string | `"10m"` |  |
| consoleServer.resources.requests.memory | string | `"64Mi"` |  |
| consoleServer.secretName | string | `""` |  |
| consoleServer.secureCookie | bool | `false` |  |
| consoleServer.service.port | int | `80` |  |
| consoleServer.service.type | string | `"ClusterIP"` |  |
| consoleServer.tokenKey | string | `"token"` |  |
| controller.resources.limits | object | `{}` |  |
| controller.resources.requests | object | `{}` |  |
| controllerImage | string | `"ghcr.io/kelos-dev/kelos-controller"` |  |
| crds.install | bool | `false` |  |
| crds.keep | bool | `true` |  |
| cursorImage | string | `"ghcr.io/kelos-dev/cursor"` |  |
| geminiImage | string | `"ghcr.io/kelos-dev/gemini"` |  |
| ghproxy.allowedUpstreams | string | `"https://api.github.com"` |  |
| ghproxy.cacheTTL | string | `""` |  |
| ghproxy.image | string | `"ghcr.io/kelos-dev/ghproxy"` |  |
| ghproxy.resources.limits | string | `""` |  |
| ghproxy.resources.requests | string | `""` |  |
| image.pullPolicy | string | `""` |  |
| image.tag | string | `"v0.58.0"` |  |
| opencodeImage | string | `"ghcr.io/kelos-dev/opencode"` |  |
| podMonitor.annotations | object | `{}` |  |
| podMonitor.enabled | bool | `false` |  |
| podMonitor.honorLabels | bool | `false` |  |
| podMonitor.interval | string | `"30s"` |  |
| podMonitor.labels | object | `{}` |  |
| podMonitor.scrapeTimeout | string | `"10s"` |  |
| podMonitor.spawners.enabled | bool | `false` |  |
| sessionRuntime.image | string | `"ghcr.io/kelos-dev/kelos-session-runtime"` |  |
| slackServer.denySlackConnectChannels | bool | `false` |  |
| slackServer.enabled | bool | `false` |  |
| slackServer.image | string | `"ghcr.io/kelos-dev/kelos-slack-server"` |  |
| slackServer.joinMessage | string | `""` |  |
| slackServer.replicas | int | `1` |  |
| slackServer.resources.limits.cpu | string | `"500m"` |  |
| slackServer.resources.limits.memory | string | `"128Mi"` |  |
| slackServer.resources.requests.cpu | string | `"10m"` |  |
| slackServer.resources.requests.memory | string | `"64Mi"` |  |
| slackServer.secretName | string | `""` |  |
| spawner.image | string | `"ghcr.io/kelos-dev/kelos-spawner"` |  |
| spawner.resources.limits | string | `""` |  |
| spawner.resources.requests | string | `""` |  |
| telemetry.enabled | bool | `true` |  |
| webhookServer.gateway.annotations | object | `{}` |  |
| webhookServer.gateway.enabled | bool | `false` |  |
| webhookServer.gateway.gatewayClassName | string | `""` |  |
| webhookServer.gateway.gatewayName | string | `"kelos-webhook-gateway"` |  |
| webhookServer.gateway.host | string | `""` |  |
| webhookServer.gateway.tls.certificateRefs | list | `[]` |  |
| webhookServer.gateway.tls.enabled | bool | `false` |  |
| webhookServer.gatewayServer.annotations | object | `{}` |  |
| webhookServer.gatewayServer.enabled | bool | `false` |  |
| webhookServer.gatewayServer.labels | object | `{}` |  |
| webhookServer.gatewayServer.podAnnotations | object | `{}` |  |
| webhookServer.gatewayServer.podLabels | object | `{}` |  |
| webhookServer.gatewayServer.replicas | int | `1` |  |
| webhookServer.gatewayServer.service.type | string | `"ClusterIP"` |  |
| webhookServer.gatewayServer.serviceAccountName | string | `"kelos-webhook"` |  |
| webhookServer.image | string | `"ghcr.io/kelos-dev/kelos-webhook-server"` |  |
| webhookServer.ingress.annotations | object | `{}` |  |
| webhookServer.ingress.className | string | `""` |  |
| webhookServer.ingress.enabled | bool | `false` |  |
| webhookServer.ingress.host | string | `""` |  |
| webhookServer.ingress.tls.enabled | bool | `false` |  |
| webhookServer.ingress.tls.secretName | string | `""` |  |
| webhookServer.resources.limits.cpu | string | `"500m"` |  |
| webhookServer.resources.limits.memory | string | `"128Mi"` |  |
| webhookServer.resources.requests.cpu | string | `"10m"` |  |
| webhookServer.resources.requests.memory | string | `"64Mi"` |  |
| webhookServer.sources.generic.enabled | bool | `false` |  |
| webhookServer.sources.generic.replicas | int | `1` |  |
| webhookServer.sources.generic.secretName | string | `""` |  |
| webhookServer.sources.generic.service.type | string | `"ClusterIP"` |  |
| webhookServer.sources.github.enabled | bool | `false` |  |
| webhookServer.sources.github.githubSecretName | string | `""` |  |
| webhookServer.sources.github.replicas | int | `1` |  |
| webhookServer.sources.github.secretName | string | `""` |  |
| webhookServer.sources.github.service.type | string | `"ClusterIP"` |  |
| webhookServer.sources.linear.apiKeySecretName | string | `""` |  |
| webhookServer.sources.linear.enabled | bool | `false` |  |
| webhookServer.sources.linear.replicas | int | `1` |  |
| webhookServer.sources.linear.secretName | string | `""` |  |
| webhookServer.sources.linear.service.type | string | `"ClusterIP"` |  |
| workerRunner.image | string | `"ghcr.io/kelos-dev/kelos-worker-runner"` |  |
# Trivy scan - Helm Chart

## Report Summary

| Target | Type | Misconfigurations |
| --- | --- | --- |
| templates/cronjob.yaml | helm | 6 |
| templates/deployment.yaml | helm | 10 |
| templates/namespace.yaml | kubernetes | 0 |
| templates/rbac.yaml | helm | 9 |
| templates/serviceaccount.yaml | helm | 0 |
| templates/validating-webhook.yaml | kubernetes | 0 |
| templates/webhook.yaml | kubernetes | 0 |

## templates/cronjob.yaml

### KSV-0014 (HIGH): Root file system is not read-only

Container 'telemetry' of CronJob 'kelos-telemetry' should set 'securityContext.readOnlyRootFilesystem' to true

- Resolution: Change 'containers[].securityContext.readOnlyRootFilesystem' to 'true'.
- See: https://avd.aquasec.com/misconfig/ksv-0014
- Location: `templates/cronjob.yaml:26-41`

```
26:             - name: telemetry
27:               image: ghcr.io/kelos-dev/kelos-controller:v0.58.0
28:               args:
29:                 - --telemetry-report
30:               securityContext:
31:                 allowPrivilegeEscalation: false
32:                 capabilities:
33:                   drop:
34:                     - ALL
35:
```

### KSV-0020 (LOW): Runs with UID <= 10000

Container 'telemetry' of CronJob 'kelos-telemetry' should set 'securityContext.runAsUser' > 10000

- Resolution: Set 'containers[].securityContext.runAsUser' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0020
- Location: `templates/cronjob.yaml:26-41`

```
26:             - name: telemetry
27:               image: ghcr.io/kelos-dev/kelos-controller:v0.58.0
28:               args:
29:                 - --telemetry-report
30:               securityContext:
31:                 allowPrivilegeEscalation: false
32:                 capabilities:
33:                   drop:
34:                     - ALL
35:
```

### KSV-0021 (LOW): Runs with GID <= 10000

Container 'telemetry' of CronJob 'kelos-telemetry' should set 'securityContext.runAsGroup' > 10000

- Resolution: Set 'containers[].securityContext.runAsGroup' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0021
- Location: `templates/cronjob.yaml:26-41`

```
26:             - name: telemetry
27:               image: ghcr.io/kelos-dev/kelos-controller:v0.58.0
28:               args:
29:                 - --telemetry-report
30:               securityContext:
31:                 allowPrivilegeEscalation: false
32:                 capabilities:
33:                   drop:
34:                     - ALL
35:
```

### KSV-0030 (LOW): Runtime/Default Seccomp profile not set

Either Pod or Container should set 'securityContext.seccompProfile.type' to 'RuntimeDefault'

- Resolution: Set 'spec.securityContext.seccompProfile.type', 'spec.containers[*].securityContext.seccompProfile' and 'spec.initContainers[*].securityContext.seccompProfile' to 'RuntimeDefault' or undefined.
- See: https://avd.aquasec.com/misconfig/ksv-0030
- Location: `templates/cronjob.yaml:26-41`

```
26:             - name: telemetry
27:               image: ghcr.io/kelos-dev/kelos-controller:v0.58.0
28:               args:
29:                 - --telemetry-report
30:               securityContext:
31:                 allowPrivilegeEscalation: false
32:                 capabilities:
33:                   drop:
34:                     - ALL
35:
```

### KSV-0104 (MEDIUM): Seccomp policies disabled

container "telemetry" of cronjob "kelos-telemetry" in "kelos-system" namespace should specify a seccomp profile

- Resolution: Specify seccomp either by annotation or by seccomp profile type having allowed values as per pod security standards
- See: https://avd.aquasec.com/misconfig/ksv-0104
- Location: `templates/cronjob.yaml:26-41`

```
26:             - name: telemetry
27:               image: ghcr.io/kelos-dev/kelos-controller:v0.58.0
28:               args:
29:                 - --telemetry-report
30:               securityContext:
31:                 allowPrivilegeEscalation: false
32:                 capabilities:
33:                   drop:
34:                     - ALL
35:
```

### KSV-0125 (MEDIUM): Restrict container images to trusted registries

Container telemetry in cronjob kelos-telemetry (namespace: kelos-system) uses an image from an untrusted registry.

- Resolution: Use images from trusted registries.
- See: https://avd.aquasec.com/misconfig/ksv-0125
- Location: `templates/cronjob.yaml:26-41`

```
26:             - name: telemetry
27:               image: ghcr.io/kelos-dev/kelos-controller:v0.58.0
28:               args:
29:                 - --telemetry-report
30:               securityContext:
31:                 allowPrivilegeEscalation: false
32:                 capabilities:
33:                   drop:
34:                     - ALL
35:
```


## templates/deployment.yaml

### KSV-0011 (LOW): CPU not limited

Container 'manager' of Deployment 'kelos-controller-manager' should set 'resources.limits.cpu'

- Resolution: Set a limit value under 'containers[].resources.limits.cpu'.
- See: https://avd.aquasec.com/misconfig/ksv-0011
- Location: `templates/deployment.yaml:32-77`

```
32:         - name: manager
33:           image: ghcr.io/kelos-dev/kelos-controller:v0.58.0
34:           args:
35:             - --leader-elect
36:             - --version=v0.58.0
37:             - --claude-code-image=ghcr.io/kelos-dev/claude-code
38:             - --codex-image=ghcr.io/kelos-dev/codex
39:             - --gemini-image=ghcr.io/kelos-dev/gemini
40:             - --opencode-image=ghcr.io/kelos-dev/opencode
41:
```

### KSV-0014 (HIGH): Root file system is not read-only

Container 'manager' of Deployment 'kelos-controller-manager' should set 'securityContext.readOnlyRootFilesystem' to true

- Resolution: Change 'containers[].securityContext.readOnlyRootFilesystem' to 'true'.
- See: https://avd.aquasec.com/misconfig/ksv-0014
- Location: `templates/deployment.yaml:32-77`

```
32:         - name: manager
33:           image: ghcr.io/kelos-dev/kelos-controller:v0.58.0
34:           args:
35:             - --leader-elect
36:             - --version=v0.58.0
37:             - --claude-code-image=ghcr.io/kelos-dev/claude-code
38:             - --codex-image=ghcr.io/kelos-dev/codex
39:             - --gemini-image=ghcr.io/kelos-dev/gemini
40:             - --opencode-image=ghcr.io/kelos-dev/opencode
41:
```

### KSV-0015 (LOW): CPU requests not specified

Container 'manager' of Deployment 'kelos-controller-manager' should set 'resources.requests.cpu'

- Resolution: Set 'containers[].resources.requests.cpu'.
- See: https://avd.aquasec.com/misconfig/ksv-0015
- Location: `templates/deployment.yaml:32-77`

```
32:         - name: manager
33:           image: ghcr.io/kelos-dev/kelos-controller:v0.58.0
34:           args:
35:             - --leader-elect
36:             - --version=v0.58.0
37:             - --claude-code-image=ghcr.io/kelos-dev/claude-code
38:             - --codex-image=ghcr.io/kelos-dev/codex
39:             - --gemini-image=ghcr.io/kelos-dev/gemini
40:             - --opencode-image=ghcr.io/kelos-dev/opencode
41:
```

### KSV-0016 (LOW): Memory requests not specified

Container 'manager' of Deployment 'kelos-controller-manager' should set 'resources.requests.memory'

- Resolution: Set 'containers[].resources.requests.memory'.
- See: https://avd.aquasec.com/misconfig/ksv-0016
- Location: `templates/deployment.yaml:32-77`

```
32:         - name: manager
33:           image: ghcr.io/kelos-dev/kelos-controller:v0.58.0
34:           args:
35:             - --leader-elect
36:             - --version=v0.58.0
37:             - --claude-code-image=ghcr.io/kelos-dev/claude-code
38:             - --codex-image=ghcr.io/kelos-dev/codex
39:             - --gemini-image=ghcr.io/kelos-dev/gemini
40:             - --opencode-image=ghcr.io/kelos-dev/opencode
41:
```

### KSV-0018 (LOW): Memory not limited

Container 'manager' of Deployment 'kelos-controller-manager' should set 'resources.limits.memory'

- Resolution: Set a limit value under 'containers[].resources.limits.memory'.
- See: https://avd.aquasec.com/misconfig/ksv-0018
- Location: `templates/deployment.yaml:32-77`

```
32:         - name: manager
33:           image: ghcr.io/kelos-dev/kelos-controller:v0.58.0
34:           args:
35:             - --leader-elect
36:             - --version=v0.58.0
37:             - --claude-code-image=ghcr.io/kelos-dev/claude-code
38:             - --codex-image=ghcr.io/kelos-dev/codex
39:             - --gemini-image=ghcr.io/kelos-dev/gemini
40:             - --opencode-image=ghcr.io/kelos-dev/opencode
41:
```

### KSV-0020 (LOW): Runs with UID <= 10000

Container 'manager' of Deployment 'kelos-controller-manager' should set 'securityContext.runAsUser' > 10000

- Resolution: Set 'containers[].securityContext.runAsUser' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0020
- Location: `templates/deployment.yaml:32-77`

```
32:         - name: manager
33:           image: ghcr.io/kelos-dev/kelos-controller:v0.58.0
34:           args:
35:             - --leader-elect
36:             - --version=v0.58.0
37:             - --claude-code-image=ghcr.io/kelos-dev/claude-code
38:             - --codex-image=ghcr.io/kelos-dev/codex
39:             - --gemini-image=ghcr.io/kelos-dev/gemini
40:             - --opencode-image=ghcr.io/kelos-dev/opencode
41:
```

### KSV-0021 (LOW): Runs with GID <= 10000

Container 'manager' of Deployment 'kelos-controller-manager' should set 'securityContext.runAsGroup' > 10000

- Resolution: Set 'containers[].securityContext.runAsGroup' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0021
- Location: `templates/deployment.yaml:32-77`

```
32:         - name: manager
33:           image: ghcr.io/kelos-dev/kelos-controller:v0.58.0
34:           args:
35:             - --leader-elect
36:             - --version=v0.58.0
37:             - --claude-code-image=ghcr.io/kelos-dev/claude-code
38:             - --codex-image=ghcr.io/kelos-dev/codex
39:             - --gemini-image=ghcr.io/kelos-dev/gemini
40:             - --opencode-image=ghcr.io/kelos-dev/opencode
41:
```

### KSV-0030 (LOW): Runtime/Default Seccomp profile not set

Either Pod or Container should set 'securityContext.seccompProfile.type' to 'RuntimeDefault'

- Resolution: Set 'spec.securityContext.seccompProfile.type', 'spec.containers[*].securityContext.seccompProfile' and 'spec.initContainers[*].securityContext.seccompProfile' to 'RuntimeDefault' or undefined.
- See: https://avd.aquasec.com/misconfig/ksv-0030
- Location: `templates/deployment.yaml:32-77`

```
32:         - name: manager
33:           image: ghcr.io/kelos-dev/kelos-controller:v0.58.0
34:           args:
35:             - --leader-elect
36:             - --version=v0.58.0
37:             - --claude-code-image=ghcr.io/kelos-dev/claude-code
38:             - --codex-image=ghcr.io/kelos-dev/codex
39:             - --gemini-image=ghcr.io/kelos-dev/gemini
40:             - --opencode-image=ghcr.io/kelos-dev/opencode
41:
```

### KSV-0104 (MEDIUM): Seccomp policies disabled

container "manager" of deployment "kelos-controller-manager" in "kelos-system" namespace should specify a seccomp profile

- Resolution: Specify seccomp either by annotation or by seccomp profile type having allowed values as per pod security standards
- See: https://avd.aquasec.com/misconfig/ksv-0104
- Location: `templates/deployment.yaml:32-77`

```
32:         - name: manager
33:           image: ghcr.io/kelos-dev/kelos-controller:v0.58.0
34:           args:
35:             - --leader-elect
36:             - --version=v0.58.0
37:             - --claude-code-image=ghcr.io/kelos-dev/claude-code
38:             - --codex-image=ghcr.io/kelos-dev/codex
39:             - --gemini-image=ghcr.io/kelos-dev/gemini
40:             - --opencode-image=ghcr.io/kelos-dev/opencode
41:
```

### KSV-0125 (MEDIUM): Restrict container images to trusted registries

Container manager in deployment kelos-controller-manager (namespace: kelos-system) uses an image from an untrusted registry.

- Resolution: Use images from trusted registries.
- See: https://avd.aquasec.com/misconfig/ksv-0125
- Location: `templates/deployment.yaml:32-77`

```
32:         - name: manager
33:           image: ghcr.io/kelos-dev/kelos-controller:v0.58.0
34:           args:
35:             - --leader-elect
36:             - --version=v0.58.0
37:             - --claude-code-image=ghcr.io/kelos-dev/claude-code
38:             - --codex-image=ghcr.io/kelos-dev/codex
39:             - --gemini-image=ghcr.io/kelos-dev/gemini
40:             - --opencode-image=ghcr.io/kelos-dev/opencode
41:
```


## templates/rbac.yaml

### KSV-0041 (CRITICAL): Manage secrets

ClusterRole 'kelos-controller-role' shouldn't have access to manage resource 'secrets'

- Resolution: Manage secrets are not allowed. Remove resource 'secrets' from cluster role
- See: https://avd.aquasec.com/misconfig/ksv-0041
- Location: `templates/rbac.yaml:7-17`

```
7: - apiGroups:
8:   - ""
9:   resources:
10:   - configmaps
11:   - secrets
12:   verbs:
13:   - create
14:   - get
15:   - list
16:
```

### KSV-0041 (CRITICAL): Manage secrets

ClusterRole 'kelos-spawner-role' shouldn't have access to manage resource 'secrets'

- Resolution: Manage secrets are not allowed. Remove resource 'secrets' from cluster role
- See: https://avd.aquasec.com/misconfig/ksv-0041
- Location: `templates/rbac.yaml:7-12`

```
7:   - apiGroups:
8:       - ""
9:     resources:
10:       - secrets
11:     verbs:
12:       - get
```

### KSV-0048 (MEDIUM): Manage Kubernetes workloads and pods

ClusterRole 'kelos-controller-role' should not have access to resources ["pods", "deployments", "jobs", "cronjobs", "statefulsets", "daemonsets", "replicasets", "replicationcontrollers"] for verbs ["create", "update", "patch", "delete", "deletecollection", "impersonate", "*"]

- Resolution: Kubernetes workloads resources are only allowed for verbs 'list', 'watch', 'get'
- See: https://avd.aquasec.com/misconfig/ksv-0048
- Location: `templates/rbac.yaml:35-45`

```
35: - apiGroups:
36:   - ""
37:   resources:
38:   - pods
39:   verbs:
40:   - delete
41:   - get
42:   - list
43:   - patch
44:
```

### KSV-0048 (MEDIUM): Manage Kubernetes workloads and pods

ClusterRole 'kelos-controller-role' should not have access to resources ["pods", "deployments", "jobs", "cronjobs", "statefulsets", "daemonsets", "replicasets", "replicationcontrollers"] for verbs ["create", "update", "patch", "delete", "deletecollection", "impersonate", "*"]

- Resolution: Kubernetes workloads resources are only allowed for verbs 'list', 'watch', 'get'
- See: https://avd.aquasec.com/misconfig/ksv-0048
- Location: `templates/rbac.yaml:75-87`

```
75: - apiGroups:
76:   - apps
77:   resources:
78:   - deployments
79:   - statefulsets
80:   verbs:
81:   - create
82:   - delete
83:   - get
84:
```

### KSV-0048 (MEDIUM): Manage Kubernetes workloads and pods

ClusterRole 'kelos-controller-role' should not have access to resources ["pods", "deployments", "jobs", "cronjobs", "statefulsets", "daemonsets", "replicasets", "replicationcontrollers"] for verbs ["create", "update", "patch", "delete", "deletecollection", "impersonate", "*"]

- Resolution: Kubernetes workloads resources are only allowed for verbs 'list', 'watch', 'get'
- See: https://avd.aquasec.com/misconfig/ksv-0048
- Location: `templates/rbac.yaml:88-100`

```
88: - apiGroups:
89:   - batch
90:   resources:
91:   - cronjobs
92:   - jobs
93:   verbs:
94:   - create
95:   - delete
96:   - get
97:
```

### KSV-0048 (MEDIUM): Manage Kubernetes workloads and pods

ClusterRole 'kelos-worker-runner-role' should not have access to resources ["pods", "deployments", "jobs", "cronjobs", "statefulsets", "daemonsets", "replicasets", "replicationcontrollers"] for verbs ["create", "update", "patch", "delete", "deletecollection", "impersonate", "*"]

- Resolution: Kubernetes workloads resources are only allowed for verbs 'list', 'watch', 'get'
- See: https://avd.aquasec.com/misconfig/ksv-0048
- Location: `templates/rbac.yaml:7-14`

```
7:   - apiGroups:
8:       - ""
9:     resources:
10:       - pods
11:     verbs:
12:       - get
13:       - update
14:       - patch
```

### KSV-0049 (MEDIUM): Manage configmaps

ClusterRole 'kelos-controller-role' should not have access to resource 'configmaps' for verbs ["create", "update", "patch", "delete", "deletecollection", "impersonate", "*"]

- Resolution: Remove write permission verbs for resource 'configmaps'
- See: https://avd.aquasec.com/misconfig/ksv-0049
- Location: `templates/rbac.yaml:7-17`

```
7: - apiGroups:
8:   - ""
9:   resources:
10:   - configmaps
11:   - secrets
12:   verbs:
13:   - create
14:   - get
15:   - list
16:
```

### KSV-0049 (MEDIUM): Manage configmaps

Role 'kelos-leader-election-role' should not have access to resource 'configmaps' for verbs ["create", "update", "patch", "delete", "deletecollection", "impersonate", "*"]

- Resolution: Remove write permission verbs for resource 'configmaps'
- See: https://avd.aquasec.com/misconfig/ksv-0049
- Location: `templates/rbac.yaml:8-19`

```
8:   - apiGroups:
9:       - ""
10:     resources:
11:       - configmaps
12:     verbs:
13:       - get
14:       - list
15:       - watch
16:       - create
17:
```

### KSV-0056 (HIGH): Manage Kubernetes networking

ClusterRole 'kelos-controller-role' should not have access to resources ["services", "endpoints", "endpointslices", "networkpolicies", "ingresses"] for verbs ["create", "update", "patch", "delete", "deletecollection", "impersonate", "*"]

- Resolution: Networking resources are only allowed for verbs 'list', 'watch', 'get'
- See: https://avd.aquasec.com/misconfig/ksv-0056
- Location: `templates/rbac.yaml:63-74`

```
63: - apiGroups:
64:   - ""
65:   resources:
66:   - services
67:   verbs:
68:   - create
69:   - delete
70:   - get
71:   - list
72:
```
