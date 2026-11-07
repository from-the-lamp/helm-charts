# lamp-loki-agent

![Version: 0.5.0](https://img.shields.io/badge/Version-0.5.0-informational?style=flat-square)

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://grafana.github.io/helm-charts | alloy | 1.15.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| alloy.alloy.configMap.create | bool | `false` |  |
| alloy.alloy.configMap.key | string | `"config"` |  |
| alloy.alloy.configMap.name | string | `"alloy-logs-config"` |  |
| alloy.config.endpoint.tls.enabled | bool | `false` |  |
| alloy.config.endpoint.tls.skip_verify | bool | `true` |  |
| alloy.config.endpoint.url | string | `"https://loki.infra.example.cloud/loki/api/v1/push"` |  |
| alloy.config.labels.cluster | string | `"staging"` |  |
| alloy.config.logging.level | string | `"info"` |  |
| alloy.config.selector.label.enabled | bool | `false` |  |
| alloy.config.selector.label.label | string | `"alloy.logs=enabled"` |  |
| alloy.config.selector.namespace.enabled | bool | `false` |  |
| alloy.config.selector.namespace.namespaces[0] | string | `"example-ns"` |  |
| alloy.fullnameOverride | string | `"alloy-logs"` |  |
# Trivy scan - Helm Chart

## Report Summary

| Target | Type | Misconfigurations |
| --- | --- | --- |
| charts/alloy/templates/controllers/daemonset.yaml | helm | 20 |
| charts/alloy/templates/rbac.yaml | helm | 1 |
| charts/alloy/templates/service.yaml | helm | 0 |
| charts/alloy/templates/serviceaccount.yaml | helm | 0 |
| templates/config.yaml | helm | 0 |

## charts/alloy/templates/controllers/daemonset.yaml

### KSV-0001 (MEDIUM): Can elevate its own privileges

Container 'alloy' of DaemonSet 'alloy-logs' should set 'securityContext.allowPrivilegeEscalation' to false

- Resolution: Set 'set containers[].securityContext.allowPrivilegeEscalation' to 'false'.
- See: https://avd.aquasec.com/misconfig/ksv-0001
- Location: `charts/alloy/templates/controllers/daemonset.yaml:30-63`

```
30:         - name: alloy
31:           image: docker.io/grafana/alloy:v1.21.3
32:           imagePullPolicy: IfNotPresent
33:           args:
34:             - run
35:             - /etc/alloy/config
36:             - --storage.path=/tmp/alloy
37:             - --server.http.listen-addr=0.0.0.0:12345
38:             - --server.http.ui-path-prefix=/
39:
```

### KSV-0003 (LOW): Default capabilities: some containers do not drop all

Container 'alloy' of DaemonSet 'alloy-logs' should add 'ALL' to 'securityContext.capabilities.drop'

- Resolution: Add 'ALL' to containers[].securityContext.capabilities.drop.
- See: https://avd.aquasec.com/misconfig/ksv-0003
- Location: `charts/alloy/templates/controllers/daemonset.yaml:30-63`

```
30:         - name: alloy
31:           image: docker.io/grafana/alloy:v1.21.3
32:           imagePullPolicy: IfNotPresent
33:           args:
34:             - run
35:             - /etc/alloy/config
36:             - --storage.path=/tmp/alloy
37:             - --server.http.listen-addr=0.0.0.0:12345
38:             - --server.http.ui-path-prefix=/
39:
```

### KSV-0004 (LOW): Default capabilities: some containers do not drop any

Container 'alloy' of 'daemonset' 'alloy-logs' in 'null' namespace should set securityContext.capabilities.drop

- Resolution: Specify at least one unneeded capability in 'containers[].securityContext.capabilities.drop'
- See: https://avd.aquasec.com/misconfig/ksv-0004
- Location: `charts/alloy/templates/controllers/daemonset.yaml:30-63`

```
30:         - name: alloy
31:           image: docker.io/grafana/alloy:v1.21.3
32:           imagePullPolicy: IfNotPresent
33:           args:
34:             - run
35:             - /etc/alloy/config
36:             - --storage.path=/tmp/alloy
37:             - --server.http.listen-addr=0.0.0.0:12345
38:             - --server.http.ui-path-prefix=/
39:
```

### KSV-0011 (LOW): CPU not limited

Container 'alloy' of DaemonSet 'alloy-logs' should set 'resources.limits.cpu'

- Resolution: Set a limit value under 'containers[].resources.limits.cpu'.
- See: https://avd.aquasec.com/misconfig/ksv-0011
- Location: `charts/alloy/templates/controllers/daemonset.yaml:30-63`

```
30:         - name: alloy
31:           image: docker.io/grafana/alloy:v1.21.3
32:           imagePullPolicy: IfNotPresent
33:           args:
34:             - run
35:             - /etc/alloy/config
36:             - --storage.path=/tmp/alloy
37:             - --server.http.listen-addr=0.0.0.0:12345
38:             - --server.http.ui-path-prefix=/
39:
```

### KSV-0011 (LOW): CPU not limited

Container 'config-reloader' of DaemonSet 'alloy-logs' should set 'resources.limits.cpu'

- Resolution: Set a limit value under 'containers[].resources.limits.cpu'.
- See: https://avd.aquasec.com/misconfig/ksv-0011
- Location: `charts/alloy/templates/controllers/daemonset.yaml:64-87`

```
64:         - name: config-reloader
65:           image: quay.io/prometheus-operator/prometheus-config-reloader:v0.94.2@sha256:a1897c67478bc23434534e91ad3855280771196b1daf17144db9dbcb655bef71
66:           imagePullPolicy: IfNotPresent
67:           args:
68:             - --watched-dir=/etc/alloy
69:             - --reload-url=http://localhost:12345/-/reload
70:           volumeMounts:
71:             - name: config
72:               mountPath: /etc/alloy
73:
```

### KSV-0012 (MEDIUM): Runs as root user

Container 'alloy' of DaemonSet 'alloy-logs' should set 'securityContext.runAsNonRoot' to true

- Resolution: Set 'containers[].securityContext.runAsNonRoot' to true.
- See: https://avd.aquasec.com/misconfig/ksv-0012
- Location: `charts/alloy/templates/controllers/daemonset.yaml:30-63`

```
30:         - name: alloy
31:           image: docker.io/grafana/alloy:v1.21.3
32:           imagePullPolicy: IfNotPresent
33:           args:
34:             - run
35:             - /etc/alloy/config
36:             - --storage.path=/tmp/alloy
37:             - --server.http.listen-addr=0.0.0.0:12345
38:             - --server.http.ui-path-prefix=/
39:
```

### KSV-0014 (HIGH): Root file system is not read-only

Container 'alloy' of DaemonSet 'alloy-logs' should set 'securityContext.readOnlyRootFilesystem' to true

- Resolution: Change 'containers[].securityContext.readOnlyRootFilesystem' to 'true'.
- See: https://avd.aquasec.com/misconfig/ksv-0014
- Location: `charts/alloy/templates/controllers/daemonset.yaml:30-63`

```
30:         - name: alloy
31:           image: docker.io/grafana/alloy:v1.21.3
32:           imagePullPolicy: IfNotPresent
33:           args:
34:             - run
35:             - /etc/alloy/config
36:             - --storage.path=/tmp/alloy
37:             - --server.http.listen-addr=0.0.0.0:12345
38:             - --server.http.ui-path-prefix=/
39:
```

### KSV-0015 (LOW): CPU requests not specified

Container 'alloy' of DaemonSet 'alloy-logs' should set 'resources.requests.cpu'

- Resolution: Set 'containers[].resources.requests.cpu'.
- See: https://avd.aquasec.com/misconfig/ksv-0015
- Location: `charts/alloy/templates/controllers/daemonset.yaml:30-63`

```
30:         - name: alloy
31:           image: docker.io/grafana/alloy:v1.21.3
32:           imagePullPolicy: IfNotPresent
33:           args:
34:             - run
35:             - /etc/alloy/config
36:             - --storage.path=/tmp/alloy
37:             - --server.http.listen-addr=0.0.0.0:12345
38:             - --server.http.ui-path-prefix=/
39:
```

### KSV-0016 (LOW): Memory requests not specified

Container 'alloy' of DaemonSet 'alloy-logs' should set 'resources.requests.memory'

- Resolution: Set 'containers[].resources.requests.memory'.
- See: https://avd.aquasec.com/misconfig/ksv-0016
- Location: `charts/alloy/templates/controllers/daemonset.yaml:30-63`

```
30:         - name: alloy
31:           image: docker.io/grafana/alloy:v1.21.3
32:           imagePullPolicy: IfNotPresent
33:           args:
34:             - run
35:             - /etc/alloy/config
36:             - --storage.path=/tmp/alloy
37:             - --server.http.listen-addr=0.0.0.0:12345
38:             - --server.http.ui-path-prefix=/
39:
```

### KSV-0018 (LOW): Memory not limited

Container 'alloy' of DaemonSet 'alloy-logs' should set 'resources.limits.memory'

- Resolution: Set a limit value under 'containers[].resources.limits.memory'.
- See: https://avd.aquasec.com/misconfig/ksv-0018
- Location: `charts/alloy/templates/controllers/daemonset.yaml:30-63`

```
30:         - name: alloy
31:           image: docker.io/grafana/alloy:v1.21.3
32:           imagePullPolicy: IfNotPresent
33:           args:
34:             - run
35:             - /etc/alloy/config
36:             - --storage.path=/tmp/alloy
37:             - --server.http.listen-addr=0.0.0.0:12345
38:             - --server.http.ui-path-prefix=/
39:
```

### KSV-0018 (LOW): Memory not limited

Container 'config-reloader' of DaemonSet 'alloy-logs' should set 'resources.limits.memory'

- Resolution: Set a limit value under 'containers[].resources.limits.memory'.
- See: https://avd.aquasec.com/misconfig/ksv-0018
- Location: `charts/alloy/templates/controllers/daemonset.yaml:64-87`

```
64:         - name: config-reloader
65:           image: quay.io/prometheus-operator/prometheus-config-reloader:v0.94.2@sha256:a1897c67478bc23434534e91ad3855280771196b1daf17144db9dbcb655bef71
66:           imagePullPolicy: IfNotPresent
67:           args:
68:             - --watched-dir=/etc/alloy
69:             - --reload-url=http://localhost:12345/-/reload
70:           volumeMounts:
71:             - name: config
72:               mountPath: /etc/alloy
73:
```

### KSV-0020 (LOW): Runs with UID <= 10000

Container 'alloy' of DaemonSet 'alloy-logs' should set 'securityContext.runAsUser' > 10000

- Resolution: Set 'containers[].securityContext.runAsUser' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0020
- Location: `charts/alloy/templates/controllers/daemonset.yaml:30-63`

```
30:         - name: alloy
31:           image: docker.io/grafana/alloy:v1.21.3
32:           imagePullPolicy: IfNotPresent
33:           args:
34:             - run
35:             - /etc/alloy/config
36:             - --storage.path=/tmp/alloy
37:             - --server.http.listen-addr=0.0.0.0:12345
38:             - --server.http.ui-path-prefix=/
39:
```

### KSV-0021 (LOW): Runs with GID <= 10000

Container 'alloy' of DaemonSet 'alloy-logs' should set 'securityContext.runAsGroup' > 10000

- Resolution: Set 'containers[].securityContext.runAsGroup' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0021
- Location: `charts/alloy/templates/controllers/daemonset.yaml:30-63`

```
30:         - name: alloy
31:           image: docker.io/grafana/alloy:v1.21.3
32:           imagePullPolicy: IfNotPresent
33:           args:
34:             - run
35:             - /etc/alloy/config
36:             - --storage.path=/tmp/alloy
37:             - --server.http.listen-addr=0.0.0.0:12345
38:             - --server.http.ui-path-prefix=/
39:
```

### KSV-0030 (LOW): Runtime/Default Seccomp profile not set

Either Pod or Container should set 'securityContext.seccompProfile.type' to 'RuntimeDefault'

- Resolution: Set 'spec.securityContext.seccompProfile.type', 'spec.containers[*].securityContext.seccompProfile' and 'spec.initContainers[*].securityContext.seccompProfile' to 'RuntimeDefault' or undefined.
- See: https://avd.aquasec.com/misconfig/ksv-0030
- Location: `charts/alloy/templates/controllers/daemonset.yaml:30-63`

```
30:         - name: alloy
31:           image: docker.io/grafana/alloy:v1.21.3
32:           imagePullPolicy: IfNotPresent
33:           args:
34:             - run
35:             - /etc/alloy/config
36:             - --storage.path=/tmp/alloy
37:             - --server.http.listen-addr=0.0.0.0:12345
38:             - --server.http.ui-path-prefix=/
39:
```

### KSV-0104 (MEDIUM): Seccomp policies disabled

container "alloy" of daemonset "alloy-logs" in "null" namespace should specify a seccomp profile

- Resolution: Specify seccomp either by annotation or by seccomp profile type having allowed values as per pod security standards
- See: https://avd.aquasec.com/misconfig/ksv-0104
- Location: `charts/alloy/templates/controllers/daemonset.yaml:30-63`

```
30:         - name: alloy
31:           image: docker.io/grafana/alloy:v1.21.3
32:           imagePullPolicy: IfNotPresent
33:           args:
34:             - run
35:             - /etc/alloy/config
36:             - --storage.path=/tmp/alloy
37:             - --server.http.listen-addr=0.0.0.0:12345
38:             - --server.http.ui-path-prefix=/
39:
```

### KSV-0106 (LOW): Container capabilities must only include NET_BIND_SERVICE

container should drop all

- Resolution: Set 'spec.containers[*].securityContext.capabilities.drop' to 'ALL' and only add 'NET_BIND_SERVICE' to 'spec.containers[*].securityContext.capabilities.add'.
- See: https://avd.aquasec.com/misconfig/ksv-0106
- Location: `charts/alloy/templates/controllers/daemonset.yaml:30-63`

```
30:         - name: alloy
31:           image: docker.io/grafana/alloy:v1.21.3
32:           imagePullPolicy: IfNotPresent
33:           args:
34:             - run
35:             - /etc/alloy/config
36:             - --storage.path=/tmp/alloy
37:             - --server.http.listen-addr=0.0.0.0:12345
38:             - --server.http.ui-path-prefix=/
39:
```

### KSV-0118 (HIGH): Default security context configured

container alloy-logs in null namespace is using the default security context

- Resolution: To enhance security, it is strongly recommended not to rely on the default security context. Instead, it is advisable to explicitly define the required security parameters (such as runAsNonRoot, capabilities, readOnlyRootFilesystem, etc.) within the security context.
- See: https://avd.aquasec.com/misconfig/ksv-0118
- Location: `charts/alloy/templates/controllers/daemonset.yaml:30-63`

```
30:         - name: alloy
31:           image: docker.io/grafana/alloy:v1.21.3
32:           imagePullPolicy: IfNotPresent
33:           args:
34:             - run
35:             - /etc/alloy/config
36:             - --storage.path=/tmp/alloy
37:             - --server.http.listen-addr=0.0.0.0:12345
38:             - --server.http.ui-path-prefix=/
39:
```

### KSV-0118 (HIGH): Default security context configured

daemonset alloy-logs in null namespace is using the default security context, which allows root privileges

- Resolution: To enhance security, it is strongly recommended not to rely on the default security context. Instead, it is advisable to explicitly define the required security parameters (such as runAsNonRoot, capabilities, readOnlyRootFilesystem, etc.) within the security context.
- See: https://avd.aquasec.com/misconfig/ksv-0118
- Location: `charts/alloy/templates/controllers/daemonset.yaml:27-92`

```
27:     spec:
28:       serviceAccountName: alloy-logs
29:       containers:
30:         - name: alloy
31:           image: docker.io/grafana/alloy:v1.21.3
32:           imagePullPolicy: IfNotPresent
33:           args:
34:             - run
35:             - /etc/alloy/config
36:
```

### KSV-0125 (MEDIUM): Restrict container images to trusted registries

Container alloy in daemonset alloy-logs (namespace: null) uses an image from an untrusted registry.

- Resolution: Use images from trusted registries.
- See: https://avd.aquasec.com/misconfig/ksv-0125
- Location: `charts/alloy/templates/controllers/daemonset.yaml:30-63`

```
30:         - name: alloy
31:           image: docker.io/grafana/alloy:v1.21.3
32:           imagePullPolicy: IfNotPresent
33:           args:
34:             - run
35:             - /etc/alloy/config
36:             - --storage.path=/tmp/alloy
37:             - --server.http.listen-addr=0.0.0.0:12345
38:             - --server.http.ui-path-prefix=/
39:
```

### KSV-0125 (MEDIUM): Restrict container images to trusted registries

Container config-reloader in daemonset alloy-logs (namespace: null) uses an image from an untrusted registry.

- Resolution: Use images from trusted registries.
- See: https://avd.aquasec.com/misconfig/ksv-0125
- Location: `charts/alloy/templates/controllers/daemonset.yaml:64-87`

```
64:         - name: config-reloader
65:           image: quay.io/prometheus-operator/prometheus-config-reloader:v0.94.2@sha256:a1897c67478bc23434534e91ad3855280771196b1daf17144db9dbcb655bef71
66:           imagePullPolicy: IfNotPresent
67:           args:
68:             - --watched-dir=/etc/alloy
69:             - --reload-url=http://localhost:12345/-/reload
70:           volumeMounts:
71:             - name: config
72:               mountPath: /etc/alloy
73:
```


## charts/alloy/templates/rbac.yaml

### KSV-0041 (CRITICAL): Manage secrets

ClusterRole 'alloy-logs' shouldn't have access to manage resource 'secrets'

- Resolution: Manage secrets are not allowed. Remove resource 'secrets' from cluster role
- See: https://avd.aquasec.com/misconfig/ksv-0041
- Location: `charts/alloy/templates/rbac.yaml:82-90`

```
82:   - apiGroups:
83:     - ""
84:     resources:
85:     - configmaps
86:     - secrets
87:     verbs:
88:     - get
89:     - list
90:     - watch
```
