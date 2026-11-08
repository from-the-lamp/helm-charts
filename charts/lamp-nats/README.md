# lamp-nats

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square)

NATS JetStream - event broker for the monorepo microservices (adapters -> processor -> notifiers)

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://nats-io.github.io/k8s/helm/charts/ | nats | 2.15.2 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| nats.config.cluster.enabled | bool | `false` |  |
| nats.config.jetstream.enabled | bool | `true` |  |
| nats.config.jetstream.fileStore.enabled | bool | `true` |  |
| nats.config.jetstream.fileStore.pvc.size | string | `"5Gi"` |  |
| nats.config.jetstream.fileStore.pvc.storageClassName | string | `"local-path"` |  |
# Trivy scan - Helm Chart

## Report Summary

| Target | Type | Misconfigurations |
| --- | --- | --- |
| charts/nats/templates/config-map.yaml | helm | 0 |
| charts/nats/templates/headless-service.yaml | helm | 0 |
| charts/nats/templates/nats-box/contexts-secret.yaml | helm | 0 |
| charts/nats/templates/nats-box/deployment.yaml | helm | 18 |
| charts/nats/templates/pod-disruption-budget.yaml | helm | 0 |
| charts/nats/templates/service.yaml | helm | 0 |
| charts/nats/templates/stateful-set.yaml | helm | 33 |

## charts/nats/templates/nats-box/deployment.yaml

### KSV-0001 (MEDIUM): Can elevate its own privileges

Container 'nats-box' of Deployment 'lamp-nats-box' should set 'securityContext.allowPrivilegeEscalation' to false

- Resolution: Set 'set containers[].securityContext.allowPrivilegeEscalation' to 'false'.
- See: https://avd.aquasec.com/misconfig/ksv-0001
- Location: `charts/nats/templates/nats-box/deployment.yaml:31-56`

```
31:       - args:
32:         - sh
33:         - -ec
34:         - trap true INT TERM; sleep infinity & wait
35:         command:
36:         - sh
37:         - -ec
38:         - |
39:           work_dir="$(pwd)"
40:
```

### KSV-0003 (LOW): Default capabilities: some containers do not drop all

Container 'nats-box' of Deployment 'lamp-nats-box' should add 'ALL' to 'securityContext.capabilities.drop'

- Resolution: Add 'ALL' to containers[].securityContext.capabilities.drop.
- See: https://avd.aquasec.com/misconfig/ksv-0003
- Location: `charts/nats/templates/nats-box/deployment.yaml:31-56`

```
31:       - args:
32:         - sh
33:         - -ec
34:         - trap true INT TERM; sleep infinity & wait
35:         command:
36:         - sh
37:         - -ec
38:         - |
39:           work_dir="$(pwd)"
40:
```

### KSV-0004 (LOW): Default capabilities: some containers do not drop any

Container 'nats-box' of 'deployment' 'lamp-nats-box' in 'default' namespace should set securityContext.capabilities.drop

- Resolution: Specify at least one unneeded capability in 'containers[].securityContext.capabilities.drop'
- See: https://avd.aquasec.com/misconfig/ksv-0004
- Location: `charts/nats/templates/nats-box/deployment.yaml:31-56`

```
31:       - args:
32:         - sh
33:         - -ec
34:         - trap true INT TERM; sleep infinity & wait
35:         command:
36:         - sh
37:         - -ec
38:         - |
39:           work_dir="$(pwd)"
40:
```

### KSV-0011 (LOW): CPU not limited

Container 'nats-box' of Deployment 'lamp-nats-box' should set 'resources.limits.cpu'

- Resolution: Set a limit value under 'containers[].resources.limits.cpu'.
- See: https://avd.aquasec.com/misconfig/ksv-0011
- Location: `charts/nats/templates/nats-box/deployment.yaml:31-56`

```
31:       - args:
32:         - sh
33:         - -ec
34:         - trap true INT TERM; sleep infinity & wait
35:         command:
36:         - sh
37:         - -ec
38:         - |
39:           work_dir="$(pwd)"
40:
```

### KSV-0012 (MEDIUM): Runs as root user

Container 'nats-box' of Deployment 'lamp-nats-box' should set 'securityContext.runAsNonRoot' to true

- Resolution: Set 'containers[].securityContext.runAsNonRoot' to true.
- See: https://avd.aquasec.com/misconfig/ksv-0012
- Location: `charts/nats/templates/nats-box/deployment.yaml:31-56`

```
31:       - args:
32:         - sh
33:         - -ec
34:         - trap true INT TERM; sleep infinity & wait
35:         command:
36:         - sh
37:         - -ec
38:         - |
39:           work_dir="$(pwd)"
40:
```

### KSV-0014 (HIGH): Root file system is not read-only

Container 'nats-box' of Deployment 'lamp-nats-box' should set 'securityContext.readOnlyRootFilesystem' to true

- Resolution: Change 'containers[].securityContext.readOnlyRootFilesystem' to 'true'.
- See: https://avd.aquasec.com/misconfig/ksv-0014
- Location: `charts/nats/templates/nats-box/deployment.yaml:31-56`

```
31:       - args:
32:         - sh
33:         - -ec
34:         - trap true INT TERM; sleep infinity & wait
35:         command:
36:         - sh
37:         - -ec
38:         - |
39:           work_dir="$(pwd)"
40:
```

### KSV-0015 (LOW): CPU requests not specified

Container 'nats-box' of Deployment 'lamp-nats-box' should set 'resources.requests.cpu'

- Resolution: Set 'containers[].resources.requests.cpu'.
- See: https://avd.aquasec.com/misconfig/ksv-0015
- Location: `charts/nats/templates/nats-box/deployment.yaml:31-56`

```
31:       - args:
32:         - sh
33:         - -ec
34:         - trap true INT TERM; sleep infinity & wait
35:         command:
36:         - sh
37:         - -ec
38:         - |
39:           work_dir="$(pwd)"
40:
```

### KSV-0016 (LOW): Memory requests not specified

Container 'nats-box' of Deployment 'lamp-nats-box' should set 'resources.requests.memory'

- Resolution: Set 'containers[].resources.requests.memory'.
- See: https://avd.aquasec.com/misconfig/ksv-0016
- Location: `charts/nats/templates/nats-box/deployment.yaml:31-56`

```
31:       - args:
32:         - sh
33:         - -ec
34:         - trap true INT TERM; sleep infinity & wait
35:         command:
36:         - sh
37:         - -ec
38:         - |
39:           work_dir="$(pwd)"
40:
```

### KSV-0018 (LOW): Memory not limited

Container 'nats-box' of Deployment 'lamp-nats-box' should set 'resources.limits.memory'

- Resolution: Set a limit value under 'containers[].resources.limits.memory'.
- See: https://avd.aquasec.com/misconfig/ksv-0018
- Location: `charts/nats/templates/nats-box/deployment.yaml:31-56`

```
31:       - args:
32:         - sh
33:         - -ec
34:         - trap true INT TERM; sleep infinity & wait
35:         command:
36:         - sh
37:         - -ec
38:         - |
39:           work_dir="$(pwd)"
40:
```

### KSV-0020 (LOW): Runs with UID <= 10000

Container 'nats-box' of Deployment 'lamp-nats-box' should set 'securityContext.runAsUser' > 10000

- Resolution: Set 'containers[].securityContext.runAsUser' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0020
- Location: `charts/nats/templates/nats-box/deployment.yaml:31-56`

```
31:       - args:
32:         - sh
33:         - -ec
34:         - trap true INT TERM; sleep infinity & wait
35:         command:
36:         - sh
37:         - -ec
38:         - |
39:           work_dir="$(pwd)"
40:
```

### KSV-0021 (LOW): Runs with GID <= 10000

Container 'nats-box' of Deployment 'lamp-nats-box' should set 'securityContext.runAsGroup' > 10000

- Resolution: Set 'containers[].securityContext.runAsGroup' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0021
- Location: `charts/nats/templates/nats-box/deployment.yaml:31-56`

```
31:       - args:
32:         - sh
33:         - -ec
34:         - trap true INT TERM; sleep infinity & wait
35:         command:
36:         - sh
37:         - -ec
38:         - |
39:           work_dir="$(pwd)"
40:
```

### KSV-0030 (LOW): Runtime/Default Seccomp profile not set

Either Pod or Container should set 'securityContext.seccompProfile.type' to 'RuntimeDefault'

- Resolution: Set 'spec.securityContext.seccompProfile.type', 'spec.containers[*].securityContext.seccompProfile' and 'spec.initContainers[*].securityContext.seccompProfile' to 'RuntimeDefault' or undefined.
- See: https://avd.aquasec.com/misconfig/ksv-0030
- Location: `charts/nats/templates/nats-box/deployment.yaml:31-56`

```
31:       - args:
32:         - sh
33:         - -ec
34:         - trap true INT TERM; sleep infinity & wait
35:         command:
36:         - sh
37:         - -ec
38:         - |
39:           work_dir="$(pwd)"
40:
```

### KSV-0104 (MEDIUM): Seccomp policies disabled

container "nats-box" of deployment "lamp-nats-box" in "default" namespace should specify a seccomp profile

- Resolution: Specify seccomp either by annotation or by seccomp profile type having allowed values as per pod security standards
- See: https://avd.aquasec.com/misconfig/ksv-0104
- Location: `charts/nats/templates/nats-box/deployment.yaml:31-56`

```
31:       - args:
32:         - sh
33:         - -ec
34:         - trap true INT TERM; sleep infinity & wait
35:         command:
36:         - sh
37:         - -ec
38:         - |
39:           work_dir="$(pwd)"
40:
```

### KSV-0106 (LOW): Container capabilities must only include NET_BIND_SERVICE

container should drop all

- Resolution: Set 'spec.containers[*].securityContext.capabilities.drop' to 'ALL' and only add 'NET_BIND_SERVICE' to 'spec.containers[*].securityContext.capabilities.add'.
- See: https://avd.aquasec.com/misconfig/ksv-0106
- Location: `charts/nats/templates/nats-box/deployment.yaml:31-56`

```
31:       - args:
32:         - sh
33:         - -ec
34:         - trap true INT TERM; sleep infinity & wait
35:         command:
36:         - sh
37:         - -ec
38:         - |
39:           work_dir="$(pwd)"
40:
```

### KSV-0110 (LOW): Workloads in the default namespace

deployment lamp-nats-box in default namespace should set metadata.namespace to a non-default namespace

- Resolution: Set 'metadata.namespace' to a non-default namespace.
- See: https://avd.aquasec.com/misconfig/ksv-0110
- Location: `charts/nats/templates/nats-box/deployment.yaml:4-12`

```
4: metadata:
5:   labels:
6:     app.kubernetes.io/component: nats-box
7:     app.kubernetes.io/instance: lamp-nats
8:     app.kubernetes.io/managed-by: Helm
9:     app.kubernetes.io/name: nats
10:     app.kubernetes.io/version: 2.15.2
11:     helm.sh/chart: nats-2.15.2
12:   name: lamp-nats-box
```

### KSV-0118 (HIGH): Default security context configured

container lamp-nats-box in default namespace is using the default security context

- Resolution: To enhance security, it is strongly recommended not to rely on the default security context. Instead, it is advisable to explicitly define the required security parameters (such as runAsNonRoot, capabilities, readOnlyRootFilesystem, etc.) within the security context.
- See: https://avd.aquasec.com/misconfig/ksv-0118
- Location: `charts/nats/templates/nats-box/deployment.yaml:31-56`

```
31:       - args:
32:         - sh
33:         - -ec
34:         - trap true INT TERM; sleep infinity & wait
35:         command:
36:         - sh
37:         - -ec
38:         - |
39:           work_dir="$(pwd)"
40:
```

### KSV-0118 (HIGH): Default security context configured

deployment lamp-nats-box in default namespace is using the default security context, which allows root privileges

- Resolution: To enhance security, it is strongly recommended not to rely on the default security context. Instead, it is advisable to explicitly define the required security parameters (such as runAsNonRoot, capabilities, readOnlyRootFilesystem, etc.) within the security context.
- See: https://avd.aquasec.com/misconfig/ksv-0118
- Location: `charts/nats/templates/nats-box/deployment.yaml:29-61`

```
29:     spec:
30:       containers:
31:       - args:
32:         - sh
33:         - -ec
34:         - trap true INT TERM; sleep infinity & wait
35:         command:
36:         - sh
37:         - -ec
38:
```

### KSV-0125 (MEDIUM): Restrict container images to trusted registries

Container nats-box in deployment lamp-nats-box (namespace: default) uses an image from an untrusted registry.

- Resolution: Use images from trusted registries.
- See: https://avd.aquasec.com/misconfig/ksv-0125
- Location: `charts/nats/templates/nats-box/deployment.yaml:31-56`

```
31:       - args:
32:         - sh
33:         - -ec
34:         - trap true INT TERM; sleep infinity & wait
35:         command:
36:         - sh
37:         - -ec
38:         - |
39:           work_dir="$(pwd)"
40:
```


## charts/nats/templates/stateful-set.yaml

### KSV-0001 (MEDIUM): Can elevate its own privileges

Container 'nats' of StatefulSet 'lamp-nats' should set 'securityContext.allowPrivilegeEscalation' to false

- Resolution: Set 'set containers[].securityContext.allowPrivilegeEscalation' to 'false'.
- See: https://avd.aquasec.com/misconfig/ksv-0001
- Location: `charts/nats/templates/stateful-set.yaml:34-91`

```
34:       - args:
35:         - --config
36:         - /etc/nats-config/nats.conf
37:         env:
38:         - name: POD_NAME
39:           valueFrom:
40:             fieldRef:
41:               fieldPath: metadata.name
42:         - name: SERVER_NAME
43:
```

### KSV-0001 (MEDIUM): Can elevate its own privileges

Container 'reloader' of StatefulSet 'lamp-nats' should set 'securityContext.allowPrivilegeEscalation' to false

- Resolution: Set 'set containers[].securityContext.allowPrivilegeEscalation' to 'false'.
- See: https://avd.aquasec.com/misconfig/ksv-0001
- Location: `charts/nats/templates/stateful-set.yaml:92-103`

```
92:       - args:
93:         - -pid
94:         - /var/run/nats/nats.pid
95:         - -config
96:         - /etc/nats-config/nats.conf
97:         image: natsio/nats-server-config-reloader:0.24.0
98:         name: reloader
99:         volumeMounts:
100:         - mountPath: /var/run/nats
101:
```

### KSV-0003 (LOW): Default capabilities: some containers do not drop all

Container 'nats' of StatefulSet 'lamp-nats' should add 'ALL' to 'securityContext.capabilities.drop'

- Resolution: Add 'ALL' to containers[].securityContext.capabilities.drop.
- See: https://avd.aquasec.com/misconfig/ksv-0003
- Location: `charts/nats/templates/stateful-set.yaml:34-91`

```
34:       - args:
35:         - --config
36:         - /etc/nats-config/nats.conf
37:         env:
38:         - name: POD_NAME
39:           valueFrom:
40:             fieldRef:
41:               fieldPath: metadata.name
42:         - name: SERVER_NAME
43:
```

### KSV-0003 (LOW): Default capabilities: some containers do not drop all

Container 'reloader' of StatefulSet 'lamp-nats' should add 'ALL' to 'securityContext.capabilities.drop'

- Resolution: Add 'ALL' to containers[].securityContext.capabilities.drop.
- See: https://avd.aquasec.com/misconfig/ksv-0003
- Location: `charts/nats/templates/stateful-set.yaml:92-103`

```
92:       - args:
93:         - -pid
94:         - /var/run/nats/nats.pid
95:         - -config
96:         - /etc/nats-config/nats.conf
97:         image: natsio/nats-server-config-reloader:0.24.0
98:         name: reloader
99:         volumeMounts:
100:         - mountPath: /var/run/nats
101:
```

### KSV-0004 (LOW): Default capabilities: some containers do not drop any

Container 'nats' of 'statefulset' 'lamp-nats' in 'default' namespace should set securityContext.capabilities.drop

- Resolution: Specify at least one unneeded capability in 'containers[].securityContext.capabilities.drop'
- See: https://avd.aquasec.com/misconfig/ksv-0004
- Location: `charts/nats/templates/stateful-set.yaml:34-91`

```
34:       - args:
35:         - --config
36:         - /etc/nats-config/nats.conf
37:         env:
38:         - name: POD_NAME
39:           valueFrom:
40:             fieldRef:
41:               fieldPath: metadata.name
42:         - name: SERVER_NAME
43:
```

### KSV-0004 (LOW): Default capabilities: some containers do not drop any

Container 'reloader' of 'statefulset' 'lamp-nats' in 'default' namespace should set securityContext.capabilities.drop

- Resolution: Specify at least one unneeded capability in 'containers[].securityContext.capabilities.drop'
- See: https://avd.aquasec.com/misconfig/ksv-0004
- Location: `charts/nats/templates/stateful-set.yaml:92-103`

```
92:       - args:
93:         - -pid
94:         - /var/run/nats/nats.pid
95:         - -config
96:         - /etc/nats-config/nats.conf
97:         image: natsio/nats-server-config-reloader:0.24.0
98:         name: reloader
99:         volumeMounts:
100:         - mountPath: /var/run/nats
101:
```

### KSV-0011 (LOW): CPU not limited

Container 'nats' of StatefulSet 'lamp-nats' should set 'resources.limits.cpu'

- Resolution: Set a limit value under 'containers[].resources.limits.cpu'.
- See: https://avd.aquasec.com/misconfig/ksv-0011
- Location: `charts/nats/templates/stateful-set.yaml:34-91`

```
34:       - args:
35:         - --config
36:         - /etc/nats-config/nats.conf
37:         env:
38:         - name: POD_NAME
39:           valueFrom:
40:             fieldRef:
41:               fieldPath: metadata.name
42:         - name: SERVER_NAME
43:
```

### KSV-0011 (LOW): CPU not limited

Container 'reloader' of StatefulSet 'lamp-nats' should set 'resources.limits.cpu'

- Resolution: Set a limit value under 'containers[].resources.limits.cpu'.
- See: https://avd.aquasec.com/misconfig/ksv-0011
- Location: `charts/nats/templates/stateful-set.yaml:92-103`

```
92:       - args:
93:         - -pid
94:         - /var/run/nats/nats.pid
95:         - -config
96:         - /etc/nats-config/nats.conf
97:         image: natsio/nats-server-config-reloader:0.24.0
98:         name: reloader
99:         volumeMounts:
100:         - mountPath: /var/run/nats
101:
```

### KSV-0012 (MEDIUM): Runs as root user

Container 'nats' of StatefulSet 'lamp-nats' should set 'securityContext.runAsNonRoot' to true

- Resolution: Set 'containers[].securityContext.runAsNonRoot' to true.
- See: https://avd.aquasec.com/misconfig/ksv-0012
- Location: `charts/nats/templates/stateful-set.yaml:34-91`

```
34:       - args:
35:         - --config
36:         - /etc/nats-config/nats.conf
37:         env:
38:         - name: POD_NAME
39:           valueFrom:
40:             fieldRef:
41:               fieldPath: metadata.name
42:         - name: SERVER_NAME
43:
```

### KSV-0012 (MEDIUM): Runs as root user

Container 'reloader' of StatefulSet 'lamp-nats' should set 'securityContext.runAsNonRoot' to true

- Resolution: Set 'containers[].securityContext.runAsNonRoot' to true.
- See: https://avd.aquasec.com/misconfig/ksv-0012
- Location: `charts/nats/templates/stateful-set.yaml:92-103`

```
92:       - args:
93:         - -pid
94:         - /var/run/nats/nats.pid
95:         - -config
96:         - /etc/nats-config/nats.conf
97:         image: natsio/nats-server-config-reloader:0.24.0
98:         name: reloader
99:         volumeMounts:
100:         - mountPath: /var/run/nats
101:
```

### KSV-0014 (HIGH): Root file system is not read-only

Container 'nats' of StatefulSet 'lamp-nats' should set 'securityContext.readOnlyRootFilesystem' to true

- Resolution: Change 'containers[].securityContext.readOnlyRootFilesystem' to 'true'.
- See: https://avd.aquasec.com/misconfig/ksv-0014
- Location: `charts/nats/templates/stateful-set.yaml:34-91`

```
34:       - args:
35:         - --config
36:         - /etc/nats-config/nats.conf
37:         env:
38:         - name: POD_NAME
39:           valueFrom:
40:             fieldRef:
41:               fieldPath: metadata.name
42:         - name: SERVER_NAME
43:
```

### KSV-0014 (HIGH): Root file system is not read-only

Container 'reloader' of StatefulSet 'lamp-nats' should set 'securityContext.readOnlyRootFilesystem' to true

- Resolution: Change 'containers[].securityContext.readOnlyRootFilesystem' to 'true'.
- See: https://avd.aquasec.com/misconfig/ksv-0014
- Location: `charts/nats/templates/stateful-set.yaml:92-103`

```
92:       - args:
93:         - -pid
94:         - /var/run/nats/nats.pid
95:         - -config
96:         - /etc/nats-config/nats.conf
97:         image: natsio/nats-server-config-reloader:0.24.0
98:         name: reloader
99:         volumeMounts:
100:         - mountPath: /var/run/nats
101:
```

### KSV-0015 (LOW): CPU requests not specified

Container 'nats' of StatefulSet 'lamp-nats' should set 'resources.requests.cpu'

- Resolution: Set 'containers[].resources.requests.cpu'.
- See: https://avd.aquasec.com/misconfig/ksv-0015
- Location: `charts/nats/templates/stateful-set.yaml:34-91`

```
34:       - args:
35:         - --config
36:         - /etc/nats-config/nats.conf
37:         env:
38:         - name: POD_NAME
39:           valueFrom:
40:             fieldRef:
41:               fieldPath: metadata.name
42:         - name: SERVER_NAME
43:
```

### KSV-0015 (LOW): CPU requests not specified

Container 'reloader' of StatefulSet 'lamp-nats' should set 'resources.requests.cpu'

- Resolution: Set 'containers[].resources.requests.cpu'.
- See: https://avd.aquasec.com/misconfig/ksv-0015
- Location: `charts/nats/templates/stateful-set.yaml:92-103`

```
92:       - args:
93:         - -pid
94:         - /var/run/nats/nats.pid
95:         - -config
96:         - /etc/nats-config/nats.conf
97:         image: natsio/nats-server-config-reloader:0.24.0
98:         name: reloader
99:         volumeMounts:
100:         - mountPath: /var/run/nats
101:
```

### KSV-0016 (LOW): Memory requests not specified

Container 'nats' of StatefulSet 'lamp-nats' should set 'resources.requests.memory'

- Resolution: Set 'containers[].resources.requests.memory'.
- See: https://avd.aquasec.com/misconfig/ksv-0016
- Location: `charts/nats/templates/stateful-set.yaml:34-91`

```
34:       - args:
35:         - --config
36:         - /etc/nats-config/nats.conf
37:         env:
38:         - name: POD_NAME
39:           valueFrom:
40:             fieldRef:
41:               fieldPath: metadata.name
42:         - name: SERVER_NAME
43:
```

### KSV-0016 (LOW): Memory requests not specified

Container 'reloader' of StatefulSet 'lamp-nats' should set 'resources.requests.memory'

- Resolution: Set 'containers[].resources.requests.memory'.
- See: https://avd.aquasec.com/misconfig/ksv-0016
- Location: `charts/nats/templates/stateful-set.yaml:92-103`

```
92:       - args:
93:         - -pid
94:         - /var/run/nats/nats.pid
95:         - -config
96:         - /etc/nats-config/nats.conf
97:         image: natsio/nats-server-config-reloader:0.24.0
98:         name: reloader
99:         volumeMounts:
100:         - mountPath: /var/run/nats
101:
```

### KSV-0018 (LOW): Memory not limited

Container 'nats' of StatefulSet 'lamp-nats' should set 'resources.limits.memory'

- Resolution: Set a limit value under 'containers[].resources.limits.memory'.
- See: https://avd.aquasec.com/misconfig/ksv-0018
- Location: `charts/nats/templates/stateful-set.yaml:34-91`

```
34:       - args:
35:         - --config
36:         - /etc/nats-config/nats.conf
37:         env:
38:         - name: POD_NAME
39:           valueFrom:
40:             fieldRef:
41:               fieldPath: metadata.name
42:         - name: SERVER_NAME
43:
```

### KSV-0018 (LOW): Memory not limited

Container 'reloader' of StatefulSet 'lamp-nats' should set 'resources.limits.memory'

- Resolution: Set a limit value under 'containers[].resources.limits.memory'.
- See: https://avd.aquasec.com/misconfig/ksv-0018
- Location: `charts/nats/templates/stateful-set.yaml:92-103`

```
92:       - args:
93:         - -pid
94:         - /var/run/nats/nats.pid
95:         - -config
96:         - /etc/nats-config/nats.conf
97:         image: natsio/nats-server-config-reloader:0.24.0
98:         name: reloader
99:         volumeMounts:
100:         - mountPath: /var/run/nats
101:
```

### KSV-0020 (LOW): Runs with UID <= 10000

Container 'nats' of StatefulSet 'lamp-nats' should set 'securityContext.runAsUser' > 10000

- Resolution: Set 'containers[].securityContext.runAsUser' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0020
- Location: `charts/nats/templates/stateful-set.yaml:34-91`

```
34:       - args:
35:         - --config
36:         - /etc/nats-config/nats.conf
37:         env:
38:         - name: POD_NAME
39:           valueFrom:
40:             fieldRef:
41:               fieldPath: metadata.name
42:         - name: SERVER_NAME
43:
```

### KSV-0020 (LOW): Runs with UID <= 10000

Container 'reloader' of StatefulSet 'lamp-nats' should set 'securityContext.runAsUser' > 10000

- Resolution: Set 'containers[].securityContext.runAsUser' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0020
- Location: `charts/nats/templates/stateful-set.yaml:92-103`

```
92:       - args:
93:         - -pid
94:         - /var/run/nats/nats.pid
95:         - -config
96:         - /etc/nats-config/nats.conf
97:         image: natsio/nats-server-config-reloader:0.24.0
98:         name: reloader
99:         volumeMounts:
100:         - mountPath: /var/run/nats
101:
```

### KSV-0021 (LOW): Runs with GID <= 10000

Container 'nats' of StatefulSet 'lamp-nats' should set 'securityContext.runAsGroup' > 10000

- Resolution: Set 'containers[].securityContext.runAsGroup' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0021
- Location: `charts/nats/templates/stateful-set.yaml:34-91`

```
34:       - args:
35:         - --config
36:         - /etc/nats-config/nats.conf
37:         env:
38:         - name: POD_NAME
39:           valueFrom:
40:             fieldRef:
41:               fieldPath: metadata.name
42:         - name: SERVER_NAME
43:
```

### KSV-0021 (LOW): Runs with GID <= 10000

Container 'reloader' of StatefulSet 'lamp-nats' should set 'securityContext.runAsGroup' > 10000

- Resolution: Set 'containers[].securityContext.runAsGroup' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0021
- Location: `charts/nats/templates/stateful-set.yaml:92-103`

```
92:       - args:
93:         - -pid
94:         - /var/run/nats/nats.pid
95:         - -config
96:         - /etc/nats-config/nats.conf
97:         image: natsio/nats-server-config-reloader:0.24.0
98:         name: reloader
99:         volumeMounts:
100:         - mountPath: /var/run/nats
101:
```

### KSV-0030 (LOW): Runtime/Default Seccomp profile not set

Either Pod or Container should set 'securityContext.seccompProfile.type' to 'RuntimeDefault'

- Resolution: Set 'spec.securityContext.seccompProfile.type', 'spec.containers[*].securityContext.seccompProfile' and 'spec.initContainers[*].securityContext.seccompProfile' to 'RuntimeDefault' or undefined.
- See: https://avd.aquasec.com/misconfig/ksv-0030
- Location: `charts/nats/templates/stateful-set.yaml:34-91`

```
34:       - args:
35:         - --config
36:         - /etc/nats-config/nats.conf
37:         env:
38:         - name: POD_NAME
39:           valueFrom:
40:             fieldRef:
41:               fieldPath: metadata.name
42:         - name: SERVER_NAME
43:
```

### KSV-0030 (LOW): Runtime/Default Seccomp profile not set

Either Pod or Container should set 'securityContext.seccompProfile.type' to 'RuntimeDefault'

- Resolution: Set 'spec.securityContext.seccompProfile.type', 'spec.containers[*].securityContext.seccompProfile' and 'spec.initContainers[*].securityContext.seccompProfile' to 'RuntimeDefault' or undefined.
- See: https://avd.aquasec.com/misconfig/ksv-0030
- Location: `charts/nats/templates/stateful-set.yaml:92-103`

```
92:       - args:
93:         - -pid
94:         - /var/run/nats/nats.pid
95:         - -config
96:         - /etc/nats-config/nats.conf
97:         image: natsio/nats-server-config-reloader:0.24.0
98:         name: reloader
99:         volumeMounts:
100:         - mountPath: /var/run/nats
101:
```

### KSV-0104 (MEDIUM): Seccomp policies disabled

container "nats" of statefulset "lamp-nats" in "default" namespace should specify a seccomp profile

- Resolution: Specify seccomp either by annotation or by seccomp profile type having allowed values as per pod security standards
- See: https://avd.aquasec.com/misconfig/ksv-0104
- Location: `charts/nats/templates/stateful-set.yaml:34-91`

```
34:       - args:
35:         - --config
36:         - /etc/nats-config/nats.conf
37:         env:
38:         - name: POD_NAME
39:           valueFrom:
40:             fieldRef:
41:               fieldPath: metadata.name
42:         - name: SERVER_NAME
43:
```

### KSV-0104 (MEDIUM): Seccomp policies disabled

container "reloader" of statefulset "lamp-nats" in "default" namespace should specify a seccomp profile

- Resolution: Specify seccomp either by annotation or by seccomp profile type having allowed values as per pod security standards
- See: https://avd.aquasec.com/misconfig/ksv-0104
- Location: `charts/nats/templates/stateful-set.yaml:92-103`

```
92:       - args:
93:         - -pid
94:         - /var/run/nats/nats.pid
95:         - -config
96:         - /etc/nats-config/nats.conf
97:         image: natsio/nats-server-config-reloader:0.24.0
98:         name: reloader
99:         volumeMounts:
100:         - mountPath: /var/run/nats
101:
```

### KSV-0106 (LOW): Container capabilities must only include NET_BIND_SERVICE

container should drop all

- Resolution: Set 'spec.containers[*].securityContext.capabilities.drop' to 'ALL' and only add 'NET_BIND_SERVICE' to 'spec.containers[*].securityContext.capabilities.add'.
- See: https://avd.aquasec.com/misconfig/ksv-0106
- Location: `charts/nats/templates/stateful-set.yaml:34-91`

```
34:       - args:
35:         - --config
36:         - /etc/nats-config/nats.conf
37:         env:
38:         - name: POD_NAME
39:           valueFrom:
40:             fieldRef:
41:               fieldPath: metadata.name
42:         - name: SERVER_NAME
43:
```

### KSV-0106 (LOW): Container capabilities must only include NET_BIND_SERVICE

container should drop all

- Resolution: Set 'spec.containers[*].securityContext.capabilities.drop' to 'ALL' and only add 'NET_BIND_SERVICE' to 'spec.containers[*].securityContext.capabilities.add'.
- See: https://avd.aquasec.com/misconfig/ksv-0106
- Location: `charts/nats/templates/stateful-set.yaml:92-103`

```
92:       - args:
93:         - -pid
94:         - /var/run/nats/nats.pid
95:         - -config
96:         - /etc/nats-config/nats.conf
97:         image: natsio/nats-server-config-reloader:0.24.0
98:         name: reloader
99:         volumeMounts:
100:         - mountPath: /var/run/nats
101:
```

### KSV-0110 (LOW): Workloads in the default namespace

statefulset lamp-nats in default namespace should set metadata.namespace to a non-default namespace

- Resolution: Set 'metadata.namespace' to a non-default namespace.
- See: https://avd.aquasec.com/misconfig/ksv-0110
- Location: `charts/nats/templates/stateful-set.yaml:4-12`

```
4: metadata:
5:   labels:
6:     app.kubernetes.io/component: nats
7:     app.kubernetes.io/instance: lamp-nats
8:     app.kubernetes.io/managed-by: Helm
9:     app.kubernetes.io/name: nats
10:     app.kubernetes.io/version: 2.15.2
11:     helm.sh/chart: nats-2.15.2
12:   name: lamp-nats
```

### KSV-0118 (HIGH): Default security context configured

container lamp-nats in default namespace is using the default security context

- Resolution: To enhance security, it is strongly recommended not to rely on the default security context. Instead, it is advisable to explicitly define the required security parameters (such as runAsNonRoot, capabilities, readOnlyRootFilesystem, etc.) within the security context.
- See: https://avd.aquasec.com/misconfig/ksv-0118
- Location: `charts/nats/templates/stateful-set.yaml:34-91`

```
34:       - args:
35:         - --config
36:         - /etc/nats-config/nats.conf
37:         env:
38:         - name: POD_NAME
39:           valueFrom:
40:             fieldRef:
41:               fieldPath: metadata.name
42:         - name: SERVER_NAME
43:
```

### KSV-0118 (HIGH): Default security context configured

container lamp-nats in default namespace is using the default security context

- Resolution: To enhance security, it is strongly recommended not to rely on the default security context. Instead, it is advisable to explicitly define the required security parameters (such as runAsNonRoot, capabilities, readOnlyRootFilesystem, etc.) within the security context.
- See: https://avd.aquasec.com/misconfig/ksv-0118
- Location: `charts/nats/templates/stateful-set.yaml:92-103`

```
92:       - args:
93:         - -pid
94:         - /var/run/nats/nats.pid
95:         - -config
96:         - /etc/nats-config/nats.conf
97:         image: natsio/nats-server-config-reloader:0.24.0
98:         name: reloader
99:         volumeMounts:
100:         - mountPath: /var/run/nats
101:
```

### KSV-0118 (HIGH): Default security context configured

statefulset lamp-nats in default namespace is using the default security context, which allows root privileges

- Resolution: To enhance security, it is strongly recommended not to rely on the default security context. Instead, it is advisable to explicitly define the required security parameters (such as runAsNonRoot, capabilities, readOnlyRootFilesystem, etc.) within the security context.
- See: https://avd.aquasec.com/misconfig/ksv-0118
- Location: `charts/nats/templates/stateful-set.yaml:32-112`

```
32:     spec:
33:       containers:
34:       - args:
35:         - --config
36:         - /etc/nats-config/nats.conf
37:         env:
38:         - name: POD_NAME
39:           valueFrom:
40:             fieldRef:
41:
```

### KSV-0125 (MEDIUM): Restrict container images to trusted registries

Container reloader in statefulset lamp-nats (namespace: default) uses an image from an untrusted registry.

- Resolution: Use images from trusted registries.
- See: https://avd.aquasec.com/misconfig/ksv-0125
- Location: `charts/nats/templates/stateful-set.yaml:92-103`

```
92:       - args:
93:         - -pid
94:         - /var/run/nats/nats.pid
95:         - -config
96:         - /etc/nats-config/nats.conf
97:         image: natsio/nats-server-config-reloader:0.24.0
98:         name: reloader
99:         volumeMounts:
100:         - mountPath: /var/run/nats
101:
```
