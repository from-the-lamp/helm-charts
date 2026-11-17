# lamp-llama-cpp

![Version: 0.1.4](https://img.shields.io/badge/Version-0.1.4-informational?style=flat-square) ![AppVersion: server-vulkan](https://img.shields.io/badge/AppVersion-server--vulkan-informational?style=flat-square)

llama.cpp OpenAI-compatible inference server (Vulkan GPU backend)

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| fullnameOverride | string | `""` |  |
| gpu.enabled | bool | `true` |  |
| gpu.renderDevicePath | string | `"/dev/dri"` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"ghcr.io/ggml-org/llama.cpp"` |  |
| image.tag | string | `"server-vulkan-b12429"` |  |
| model.fetchImage.repository | string | `"curlimages/curl"` |  |
| model.fetchImage.tag | string | `"8.12.1"` |  |
| model.file | string | `"Qwen2.5-7B-Instruct-Q4_K_M.gguf"` |  |
| model.repo | string | `"bartowski/Qwen2.5-7B-Instruct-GGUF"` |  |
| model.revision | string | `"8911e8a47f92bac19d6f5c64a2e2095bd2f7d031"` |  |
| model.sha256 | string | `"65b8fcd92af6b4fefa935c625d1ac27ea29dcb6ee14589c55a8f115ceaaa1423"` |  |
| modelFetchSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| modelFetchSecurityContext.privileged | bool | `false` |  |
| modelFetchSecurityContext.readOnlyRootFilesystem | bool | `false` |  |
| modelFetchSecurityContext.runAsNonRoot | bool | `false` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| persistence.accessMode | string | `"ReadWriteOnce"` |  |
| persistence.size | string | `"20Gi"` |  |
| persistence.storageClass | string | `"local-path"` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext.fsGroup | int | `1000` |  |
| priorityClassName | string | `"llama-cpp-low-priority"` |  |
| replicaCount | int | `1` |  |
| resources.limits.memory | string | `"9Gi"` |  |
| resources.requests.cpu | string | `"2"` |  |
| resources.requests.memory | string | `"6Gi"` |  |
| securityContext.privileged | bool | `true` |  |
| securityContext.readOnlyRootFilesystem | bool | `false` |  |
| securityContext.runAsNonRoot | bool | `false` |  |
| server.contextSize | int | `8192` |  |
| server.extraArgs | list | `[]` |  |
| server.gpuLayers | int | `99` |  |
| service.port | int | `8080` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |
| terminationGracePeriodSeconds | int | `30` |  |
| tolerations | list | `[]` |  |
| vpa.enabled | bool | `true` |  |
| vpa.updateMode | string | `"Off"` |  |
# Trivy scan - Helm Chart

## Report Summary

| Target | Type | Misconfigurations |
| --- | --- | --- |
| templates/priorityclass.yaml | helm | 0 |
| templates/service.yaml | helm | 0 |
| templates/serviceaccount.yaml | helm | 0 |
| templates/statefulset.yaml | helm | 29 |
| templates/vpa.yaml | helm | 0 |

## templates/statefulset.yaml

### KSV-0001 (MEDIUM): Can elevate its own privileges

Container 'llama-cpp' of StatefulSet 'lamp-llama-cpp' should set 'securityContext.allowPrivilegeEscalation' to false

- Resolution: Set 'set containers[].securityContext.allowPrivilegeEscalation' to 'false'.
- See: https://avd.aquasec.com/misconfig/ksv-0001
- Location: `templates/statefulset.yaml:68-126`

```
68:         - name: llama-cpp
69:           image: "ghcr.io/ggml-org/llama.cpp:server-vulkan-b12429"
70:           imagePullPolicy: IfNotPresent
71:           securityContext:
72:             privileged: true
73:             readOnlyRootFilesystem: false
74:             runAsNonRoot: false
75:           args:
76:             - --model
77:
```

### KSV-0003 (LOW): Default capabilities: some containers do not drop all

Container 'llama-cpp' of StatefulSet 'lamp-llama-cpp' should add 'ALL' to 'securityContext.capabilities.drop'

- Resolution: Add 'ALL' to containers[].securityContext.capabilities.drop.
- See: https://avd.aquasec.com/misconfig/ksv-0003
- Location: `templates/statefulset.yaml:68-126`

```
68:         - name: llama-cpp
69:           image: "ghcr.io/ggml-org/llama.cpp:server-vulkan-b12429"
70:           imagePullPolicy: IfNotPresent
71:           securityContext:
72:             privileged: true
73:             readOnlyRootFilesystem: false
74:             runAsNonRoot: false
75:           args:
76:             - --model
77:
```

### KSV-0003 (LOW): Default capabilities: some containers do not drop all

Container 'model-fetch' of StatefulSet 'lamp-llama-cpp' should add 'ALL' to 'securityContext.capabilities.drop'

- Resolution: Add 'ALL' to containers[].securityContext.capabilities.drop.
- See: https://avd.aquasec.com/misconfig/ksv-0003
- Location: `templates/statefulset.yaml:35-66`

```
35:         - name: model-fetch
36:           image: "curlimages/curl:8.12.1"
37:           imagePullPolicy: IfNotPresent
38:           securityContext:
39:             allowPrivilegeEscalation: false
40:             privileged: false
41:             readOnlyRootFilesystem: false
42:             runAsNonRoot: false
43:           env:
44:
```

### KSV-0004 (LOW): Default capabilities: some containers do not drop any

Container 'llama-cpp' of 'statefulset' 'lamp-llama-cpp' in 'default' namespace should set securityContext.capabilities.drop

- Resolution: Specify at least one unneeded capability in 'containers[].securityContext.capabilities.drop'
- See: https://avd.aquasec.com/misconfig/ksv-0004
- Location: `templates/statefulset.yaml:68-126`

```
68:         - name: llama-cpp
69:           image: "ghcr.io/ggml-org/llama.cpp:server-vulkan-b12429"
70:           imagePullPolicy: IfNotPresent
71:           securityContext:
72:             privileged: true
73:             readOnlyRootFilesystem: false
74:             runAsNonRoot: false
75:           args:
76:             - --model
77:
```

### KSV-0004 (LOW): Default capabilities: some containers do not drop any

Container 'model-fetch' of 'statefulset' 'lamp-llama-cpp' in 'default' namespace should set securityContext.capabilities.drop

- Resolution: Specify at least one unneeded capability in 'containers[].securityContext.capabilities.drop'
- See: https://avd.aquasec.com/misconfig/ksv-0004
- Location: `templates/statefulset.yaml:35-66`

```
35:         - name: model-fetch
36:           image: "curlimages/curl:8.12.1"
37:           imagePullPolicy: IfNotPresent
38:           securityContext:
39:             allowPrivilegeEscalation: false
40:             privileged: false
41:             readOnlyRootFilesystem: false
42:             runAsNonRoot: false
43:           env:
44:
```

### KSV-0011 (LOW): CPU not limited

Container 'llama-cpp' of StatefulSet 'lamp-llama-cpp' should set 'resources.limits.cpu'

- Resolution: Set a limit value under 'containers[].resources.limits.cpu'.
- See: https://avd.aquasec.com/misconfig/ksv-0011
- Location: `templates/statefulset.yaml:68-126`

```
68:         - name: llama-cpp
69:           image: "ghcr.io/ggml-org/llama.cpp:server-vulkan-b12429"
70:           imagePullPolicy: IfNotPresent
71:           securityContext:
72:             privileged: true
73:             readOnlyRootFilesystem: false
74:             runAsNonRoot: false
75:           args:
76:             - --model
77:
```

### KSV-0011 (LOW): CPU not limited

Container 'model-fetch' of StatefulSet 'lamp-llama-cpp' should set 'resources.limits.cpu'

- Resolution: Set a limit value under 'containers[].resources.limits.cpu'.
- See: https://avd.aquasec.com/misconfig/ksv-0011
- Location: `templates/statefulset.yaml:35-66`

```
35:         - name: model-fetch
36:           image: "curlimages/curl:8.12.1"
37:           imagePullPolicy: IfNotPresent
38:           securityContext:
39:             allowPrivilegeEscalation: false
40:             privileged: false
41:             readOnlyRootFilesystem: false
42:             runAsNonRoot: false
43:           env:
44:
```

### KSV-0012 (MEDIUM): Runs as root user

Container 'llama-cpp' of StatefulSet 'lamp-llama-cpp' should set 'securityContext.runAsNonRoot' to true

- Resolution: Set 'containers[].securityContext.runAsNonRoot' to true.
- See: https://avd.aquasec.com/misconfig/ksv-0012
- Location: `templates/statefulset.yaml:68-126`

```
68:         - name: llama-cpp
69:           image: "ghcr.io/ggml-org/llama.cpp:server-vulkan-b12429"
70:           imagePullPolicy: IfNotPresent
71:           securityContext:
72:             privileged: true
73:             readOnlyRootFilesystem: false
74:             runAsNonRoot: false
75:           args:
76:             - --model
77:
```

### KSV-0012 (MEDIUM): Runs as root user

Container 'model-fetch' of StatefulSet 'lamp-llama-cpp' should set 'securityContext.runAsNonRoot' to true

- Resolution: Set 'containers[].securityContext.runAsNonRoot' to true.
- See: https://avd.aquasec.com/misconfig/ksv-0012
- Location: `templates/statefulset.yaml:35-66`

```
35:         - name: model-fetch
36:           image: "curlimages/curl:8.12.1"
37:           imagePullPolicy: IfNotPresent
38:           securityContext:
39:             allowPrivilegeEscalation: false
40:             privileged: false
41:             readOnlyRootFilesystem: false
42:             runAsNonRoot: false
43:           env:
44:
```

### KSV-0014 (HIGH): Root file system is not read-only

Container 'llama-cpp' of StatefulSet 'lamp-llama-cpp' should set 'securityContext.readOnlyRootFilesystem' to true

- Resolution: Change 'containers[].securityContext.readOnlyRootFilesystem' to 'true'.
- See: https://avd.aquasec.com/misconfig/ksv-0014
- Location: `templates/statefulset.yaml:68-126`

```
68:         - name: llama-cpp
69:           image: "ghcr.io/ggml-org/llama.cpp:server-vulkan-b12429"
70:           imagePullPolicy: IfNotPresent
71:           securityContext:
72:             privileged: true
73:             readOnlyRootFilesystem: false
74:             runAsNonRoot: false
75:           args:
76:             - --model
77:
```

### KSV-0014 (HIGH): Root file system is not read-only

Container 'model-fetch' of StatefulSet 'lamp-llama-cpp' should set 'securityContext.readOnlyRootFilesystem' to true

- Resolution: Change 'containers[].securityContext.readOnlyRootFilesystem' to 'true'.
- See: https://avd.aquasec.com/misconfig/ksv-0014
- Location: `templates/statefulset.yaml:35-66`

```
35:         - name: model-fetch
36:           image: "curlimages/curl:8.12.1"
37:           imagePullPolicy: IfNotPresent
38:           securityContext:
39:             allowPrivilegeEscalation: false
40:             privileged: false
41:             readOnlyRootFilesystem: false
42:             runAsNonRoot: false
43:           env:
44:
```

### KSV-0015 (LOW): CPU requests not specified

Container 'model-fetch' of StatefulSet 'lamp-llama-cpp' should set 'resources.requests.cpu'

- Resolution: Set 'containers[].resources.requests.cpu'.
- See: https://avd.aquasec.com/misconfig/ksv-0015
- Location: `templates/statefulset.yaml:35-66`

```
35:         - name: model-fetch
36:           image: "curlimages/curl:8.12.1"
37:           imagePullPolicy: IfNotPresent
38:           securityContext:
39:             allowPrivilegeEscalation: false
40:             privileged: false
41:             readOnlyRootFilesystem: false
42:             runAsNonRoot: false
43:           env:
44:
```

### KSV-0016 (LOW): Memory requests not specified

Container 'model-fetch' of StatefulSet 'lamp-llama-cpp' should set 'resources.requests.memory'

- Resolution: Set 'containers[].resources.requests.memory'.
- See: https://avd.aquasec.com/misconfig/ksv-0016
- Location: `templates/statefulset.yaml:35-66`

```
35:         - name: model-fetch
36:           image: "curlimages/curl:8.12.1"
37:           imagePullPolicy: IfNotPresent
38:           securityContext:
39:             allowPrivilegeEscalation: false
40:             privileged: false
41:             readOnlyRootFilesystem: false
42:             runAsNonRoot: false
43:           env:
44:
```

### KSV-0017 (HIGH): Privileged

Container 'llama-cpp' of StatefulSet 'lamp-llama-cpp' should set 'securityContext.privileged' to false

- Resolution: Change 'containers[].securityContext.privileged' to 'false'.
- See: https://avd.aquasec.com/misconfig/ksv-0017
- Location: `templates/statefulset.yaml:68-126`

```
68:         - name: llama-cpp
69:           image: "ghcr.io/ggml-org/llama.cpp:server-vulkan-b12429"
70:           imagePullPolicy: IfNotPresent
71:           securityContext:
72:             privileged: true
73:             readOnlyRootFilesystem: false
74:             runAsNonRoot: false
75:           args:
76:             - --model
77:
```

### KSV-0018 (LOW): Memory not limited

Container 'model-fetch' of StatefulSet 'lamp-llama-cpp' should set 'resources.limits.memory'

- Resolution: Set a limit value under 'containers[].resources.limits.memory'.
- See: https://avd.aquasec.com/misconfig/ksv-0018
- Location: `templates/statefulset.yaml:35-66`

```
35:         - name: model-fetch
36:           image: "curlimages/curl:8.12.1"
37:           imagePullPolicy: IfNotPresent
38:           securityContext:
39:             allowPrivilegeEscalation: false
40:             privileged: false
41:             readOnlyRootFilesystem: false
42:             runAsNonRoot: false
43:           env:
44:
```

### KSV-0020 (LOW): Runs with UID <= 10000

Container 'llama-cpp' of StatefulSet 'lamp-llama-cpp' should set 'securityContext.runAsUser' > 10000

- Resolution: Set 'containers[].securityContext.runAsUser' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0020
- Location: `templates/statefulset.yaml:68-126`

```
68:         - name: llama-cpp
69:           image: "ghcr.io/ggml-org/llama.cpp:server-vulkan-b12429"
70:           imagePullPolicy: IfNotPresent
71:           securityContext:
72:             privileged: true
73:             readOnlyRootFilesystem: false
74:             runAsNonRoot: false
75:           args:
76:             - --model
77:
```

### KSV-0020 (LOW): Runs with UID <= 10000

Container 'model-fetch' of StatefulSet 'lamp-llama-cpp' should set 'securityContext.runAsUser' > 10000

- Resolution: Set 'containers[].securityContext.runAsUser' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0020
- Location: `templates/statefulset.yaml:35-66`

```
35:         - name: model-fetch
36:           image: "curlimages/curl:8.12.1"
37:           imagePullPolicy: IfNotPresent
38:           securityContext:
39:             allowPrivilegeEscalation: false
40:             privileged: false
41:             readOnlyRootFilesystem: false
42:             runAsNonRoot: false
43:           env:
44:
```

### KSV-0021 (LOW): Runs with GID <= 10000

Container 'llama-cpp' of StatefulSet 'lamp-llama-cpp' should set 'securityContext.runAsGroup' > 10000

- Resolution: Set 'containers[].securityContext.runAsGroup' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0021
- Location: `templates/statefulset.yaml:68-126`

```
68:         - name: llama-cpp
69:           image: "ghcr.io/ggml-org/llama.cpp:server-vulkan-b12429"
70:           imagePullPolicy: IfNotPresent
71:           securityContext:
72:             privileged: true
73:             readOnlyRootFilesystem: false
74:             runAsNonRoot: false
75:           args:
76:             - --model
77:
```

### KSV-0021 (LOW): Runs with GID <= 10000

Container 'model-fetch' of StatefulSet 'lamp-llama-cpp' should set 'securityContext.runAsGroup' > 10000

- Resolution: Set 'containers[].securityContext.runAsGroup' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0021
- Location: `templates/statefulset.yaml:35-66`

```
35:         - name: model-fetch
36:           image: "curlimages/curl:8.12.1"
37:           imagePullPolicy: IfNotPresent
38:           securityContext:
39:             allowPrivilegeEscalation: false
40:             privileged: false
41:             readOnlyRootFilesystem: false
42:             runAsNonRoot: false
43:           env:
44:
```

### KSV-0023 (MEDIUM): hostPath volumes mounted

StatefulSet 'lamp-llama-cpp' should not set 'spec.template.volumes.hostPath'

- Resolution: Do not set 'spec.volumes[*].hostPath'.
- See: https://avd.aquasec.com/misconfig/ksv-0023
- Location: `templates/statefulset.yaml:12-141`

```
12: spec:
13:   serviceName: lamp-llama-cpp
14:   # Must stay 1: the model PVC is ReadWriteOnce and the init container's
15:   # download-then-verify is not safe for two pods to race against the
16:   # same file at once. A single-node cluster has nowhere else to put a
17:   # second replica anyway.
18:   replicas: 1
19:   selector:
20:     matchLabels:
21:
```

### KSV-0030 (LOW): Runtime/Default Seccomp profile not set

Either Pod or Container should set 'securityContext.seccompProfile.type' to 'RuntimeDefault'

- Resolution: Set 'spec.securityContext.seccompProfile.type', 'spec.containers[*].securityContext.seccompProfile' and 'spec.initContainers[*].securityContext.seccompProfile' to 'RuntimeDefault' or undefined.
- See: https://avd.aquasec.com/misconfig/ksv-0030
- Location: `templates/statefulset.yaml:35-66`

```
35:         - name: model-fetch
36:           image: "curlimages/curl:8.12.1"
37:           imagePullPolicy: IfNotPresent
38:           securityContext:
39:             allowPrivilegeEscalation: false
40:             privileged: false
41:             readOnlyRootFilesystem: false
42:             runAsNonRoot: false
43:           env:
44:
```

### KSV-0030 (LOW): Runtime/Default Seccomp profile not set

Either Pod or Container should set 'securityContext.seccompProfile.type' to 'RuntimeDefault'

- Resolution: Set 'spec.securityContext.seccompProfile.type', 'spec.containers[*].securityContext.seccompProfile' and 'spec.initContainers[*].securityContext.seccompProfile' to 'RuntimeDefault' or undefined.
- See: https://avd.aquasec.com/misconfig/ksv-0030
- Location: `templates/statefulset.yaml:68-126`

```
68:         - name: llama-cpp
69:           image: "ghcr.io/ggml-org/llama.cpp:server-vulkan-b12429"
70:           imagePullPolicy: IfNotPresent
71:           securityContext:
72:             privileged: true
73:             readOnlyRootFilesystem: false
74:             runAsNonRoot: false
75:           args:
76:             - --model
77:
```

### KSV-0104 (MEDIUM): Seccomp policies disabled

container "llama-cpp" of statefulset "lamp-llama-cpp" in "default" namespace should specify a seccomp profile

- Resolution: Specify seccomp either by annotation or by seccomp profile type having allowed values as per pod security standards
- See: https://avd.aquasec.com/misconfig/ksv-0104
- Location: `templates/statefulset.yaml:68-126`

```
68:         - name: llama-cpp
69:           image: "ghcr.io/ggml-org/llama.cpp:server-vulkan-b12429"
70:           imagePullPolicy: IfNotPresent
71:           securityContext:
72:             privileged: true
73:             readOnlyRootFilesystem: false
74:             runAsNonRoot: false
75:           args:
76:             - --model
77:
```

### KSV-0104 (MEDIUM): Seccomp policies disabled

container "model-fetch" of statefulset "lamp-llama-cpp" in "default" namespace should specify a seccomp profile

- Resolution: Specify seccomp either by annotation or by seccomp profile type having allowed values as per pod security standards
- See: https://avd.aquasec.com/misconfig/ksv-0104
- Location: `templates/statefulset.yaml:35-66`

```
35:         - name: model-fetch
36:           image: "curlimages/curl:8.12.1"
37:           imagePullPolicy: IfNotPresent
38:           securityContext:
39:             allowPrivilegeEscalation: false
40:             privileged: false
41:             readOnlyRootFilesystem: false
42:             runAsNonRoot: false
43:           env:
44:
```

### KSV-0106 (LOW): Container capabilities must only include NET_BIND_SERVICE

container should drop all

- Resolution: Set 'spec.containers[*].securityContext.capabilities.drop' to 'ALL' and only add 'NET_BIND_SERVICE' to 'spec.containers[*].securityContext.capabilities.add'.
- See: https://avd.aquasec.com/misconfig/ksv-0106
- Location: `templates/statefulset.yaml:35-66`

```
35:         - name: model-fetch
36:           image: "curlimages/curl:8.12.1"
37:           imagePullPolicy: IfNotPresent
38:           securityContext:
39:             allowPrivilegeEscalation: false
40:             privileged: false
41:             readOnlyRootFilesystem: false
42:             runAsNonRoot: false
43:           env:
44:
```

### KSV-0106 (LOW): Container capabilities must only include NET_BIND_SERVICE

container should drop all

- Resolution: Set 'spec.containers[*].securityContext.capabilities.drop' to 'ALL' and only add 'NET_BIND_SERVICE' to 'spec.containers[*].securityContext.capabilities.add'.
- See: https://avd.aquasec.com/misconfig/ksv-0106
- Location: `templates/statefulset.yaml:68-126`

```
68:         - name: llama-cpp
69:           image: "ghcr.io/ggml-org/llama.cpp:server-vulkan-b12429"
70:           imagePullPolicy: IfNotPresent
71:           securityContext:
72:             privileged: true
73:             readOnlyRootFilesystem: false
74:             runAsNonRoot: false
75:           args:
76:             - --model
77:
```

### KSV-0110 (LOW): Workloads in the default namespace

statefulset lamp-llama-cpp in default namespace should set metadata.namespace to a non-default namespace

- Resolution: Set 'metadata.namespace' to a non-default namespace.
- See: https://avd.aquasec.com/misconfig/ksv-0110
- Location: `templates/statefulset.yaml:4-11`

```
4: metadata:
5:   name: lamp-llama-cpp
6:   labels:
7:     helm.sh/chart: lamp-llama-cpp-0.1.4
8:     app.kubernetes.io/name: lamp-llama-cpp
9:     app.kubernetes.io/instance: lamp-llama-cpp
10:     app.kubernetes.io/version: "server-vulkan"
11:     app.kubernetes.io/managed-by: Helm
```

### KSV-0125 (MEDIUM): Restrict container images to trusted registries

Container llama-cpp in statefulset lamp-llama-cpp (namespace: default) uses an image from an untrusted registry.

- Resolution: Use images from trusted registries.
- See: https://avd.aquasec.com/misconfig/ksv-0125
- Location: `templates/statefulset.yaml:68-126`

```
68:         - name: llama-cpp
69:           image: "ghcr.io/ggml-org/llama.cpp:server-vulkan-b12429"
70:           imagePullPolicy: IfNotPresent
71:           securityContext:
72:             privileged: true
73:             readOnlyRootFilesystem: false
74:             runAsNonRoot: false
75:           args:
76:             - --model
77:
```

### KSV-0125 (MEDIUM): Restrict container images to trusted registries

Container model-fetch in statefulset lamp-llama-cpp (namespace: default) uses an image from an untrusted registry.

- Resolution: Use images from trusted registries.
- See: https://avd.aquasec.com/misconfig/ksv-0125
- Location: `templates/statefulset.yaml:35-66`

```
35:         - name: model-fetch
36:           image: "curlimages/curl:8.12.1"
37:           imagePullPolicy: IfNotPresent
38:           securityContext:
39:             allowPrivilegeEscalation: false
40:             privileged: false
41:             readOnlyRootFilesystem: false
42:             runAsNonRoot: false
43:           env:
44:
```
