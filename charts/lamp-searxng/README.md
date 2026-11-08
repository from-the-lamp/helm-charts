# lamp-searxng

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square)

SearXNG metasearch instance - gives Open WebUI's web search a single configured engine that itself aggregates and fails over across multiple public search backends (no API key for any of them)

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"docker.io/searxng/searxng"` |  |
| image.tag | string | `"latest"` |  |
| replicaCount | int | `1` |  |
| resources.limits.memory | string | `"512Mi"` |  |
| resources.requests.cpu | string | `"50m"` |  |
| resources.requests.memory | string | `"256Mi"` |  |
| secretKey | string | `"ultrasecretkey"` |  |
| service.port | int | `8080` |  |
| service.type | string | `"ClusterIP"` |  |
| settings.general.donation_url | bool | `false` |  |
| settings.general.instance_name | string | `"lamp-searxng"` |  |
| settings.search.formats[0] | string | `"html"` |  |
| settings.search.formats[1] | string | `"json"` |  |
| settings.search.safe_search | int | `0` |  |
| settings.server.image_proxy | bool | `true` |  |
| settings.server.limiter | bool | `false` |  |
| settings.server.secret_key | string | `"ultrasecretkey"` |  |
# Trivy scan - Helm Chart

## Report Summary

| Target | Type | Misconfigurations |
| --- | --- | --- |
| templates/configmap-settings.yaml | helm | 1 |
| templates/deployment.yaml | helm | 16 |
| templates/service.yaml | helm | 0 |

## templates/configmap-settings.yaml

### KSV-01010 (MEDIUM): ConfigMap with sensitive content

ConfigMap 'lamp-searxng-settings' in 'default' namespace stores sensitive contents in key(s) or value(s) '{"  secret_key"}'

- Resolution: Remove sensitive content from configMap data value
- See: https://avd.aquasec.com/misconfig/ksv-01010


## templates/deployment.yaml

### KSV-0001 (MEDIUM): Can elevate its own privileges

Container 'lamp-searxng' of Deployment 'lamp-searxng' should set 'securityContext.allowPrivilegeEscalation' to false

- Resolution: Set 'set containers[].securityContext.allowPrivilegeEscalation' to 'false'.
- See: https://avd.aquasec.com/misconfig/ksv-0001
- Location: `templates/deployment.yaml:26-55`

```
26:         - name: lamp-searxng
27:           image: "docker.io/searxng/searxng:latest"
28:           imagePullPolicy: IfNotPresent
29:           env:
30:             - name: SEARXNG_SECRET
31:               value: "ultrasecretkey"
32:             - name: SEARXNG_BASE_URL
33:               value: "http://lamp-searxng:8080/"
34:           ports:
35:
```

### KSV-0003 (LOW): Default capabilities: some containers do not drop all

Container 'lamp-searxng' of Deployment 'lamp-searxng' should add 'ALL' to 'securityContext.capabilities.drop'

- Resolution: Add 'ALL' to containers[].securityContext.capabilities.drop.
- See: https://avd.aquasec.com/misconfig/ksv-0003
- Location: `templates/deployment.yaml:26-55`

```
26:         - name: lamp-searxng
27:           image: "docker.io/searxng/searxng:latest"
28:           imagePullPolicy: IfNotPresent
29:           env:
30:             - name: SEARXNG_SECRET
31:               value: "ultrasecretkey"
32:             - name: SEARXNG_BASE_URL
33:               value: "http://lamp-searxng:8080/"
34:           ports:
35:
```

### KSV-0004 (LOW): Default capabilities: some containers do not drop any

Container 'lamp-searxng' of 'deployment' 'lamp-searxng' in 'default' namespace should set securityContext.capabilities.drop

- Resolution: Specify at least one unneeded capability in 'containers[].securityContext.capabilities.drop'
- See: https://avd.aquasec.com/misconfig/ksv-0004
- Location: `templates/deployment.yaml:26-55`

```
26:         - name: lamp-searxng
27:           image: "docker.io/searxng/searxng:latest"
28:           imagePullPolicy: IfNotPresent
29:           env:
30:             - name: SEARXNG_SECRET
31:               value: "ultrasecretkey"
32:             - name: SEARXNG_BASE_URL
33:               value: "http://lamp-searxng:8080/"
34:           ports:
35:
```

### KSV-0011 (LOW): CPU not limited

Container 'lamp-searxng' of Deployment 'lamp-searxng' should set 'resources.limits.cpu'

- Resolution: Set a limit value under 'containers[].resources.limits.cpu'.
- See: https://avd.aquasec.com/misconfig/ksv-0011
- Location: `templates/deployment.yaml:26-55`

```
26:         - name: lamp-searxng
27:           image: "docker.io/searxng/searxng:latest"
28:           imagePullPolicy: IfNotPresent
29:           env:
30:             - name: SEARXNG_SECRET
31:               value: "ultrasecretkey"
32:             - name: SEARXNG_BASE_URL
33:               value: "http://lamp-searxng:8080/"
34:           ports:
35:
```

### KSV-0012 (MEDIUM): Runs as root user

Container 'lamp-searxng' of Deployment 'lamp-searxng' should set 'securityContext.runAsNonRoot' to true

- Resolution: Set 'containers[].securityContext.runAsNonRoot' to true.
- See: https://avd.aquasec.com/misconfig/ksv-0012
- Location: `templates/deployment.yaml:26-55`

```
26:         - name: lamp-searxng
27:           image: "docker.io/searxng/searxng:latest"
28:           imagePullPolicy: IfNotPresent
29:           env:
30:             - name: SEARXNG_SECRET
31:               value: "ultrasecretkey"
32:             - name: SEARXNG_BASE_URL
33:               value: "http://lamp-searxng:8080/"
34:           ports:
35:
```

### KSV-0013 (MEDIUM): Image tag ":latest" used

Container 'lamp-searxng' of Deployment 'lamp-searxng' should specify an image tag

- Resolution: Use a specific container image tag that is not 'latest'.
- See: https://avd.aquasec.com/misconfig/ksv-0013
- Location: `templates/deployment.yaml:26-55`

```
26:         - name: lamp-searxng
27:           image: "docker.io/searxng/searxng:latest"
28:           imagePullPolicy: IfNotPresent
29:           env:
30:             - name: SEARXNG_SECRET
31:               value: "ultrasecretkey"
32:             - name: SEARXNG_BASE_URL
33:               value: "http://lamp-searxng:8080/"
34:           ports:
35:
```

### KSV-0014 (HIGH): Root file system is not read-only

Container 'lamp-searxng' of Deployment 'lamp-searxng' should set 'securityContext.readOnlyRootFilesystem' to true

- Resolution: Change 'containers[].securityContext.readOnlyRootFilesystem' to 'true'.
- See: https://avd.aquasec.com/misconfig/ksv-0014
- Location: `templates/deployment.yaml:26-55`

```
26:         - name: lamp-searxng
27:           image: "docker.io/searxng/searxng:latest"
28:           imagePullPolicy: IfNotPresent
29:           env:
30:             - name: SEARXNG_SECRET
31:               value: "ultrasecretkey"
32:             - name: SEARXNG_BASE_URL
33:               value: "http://lamp-searxng:8080/"
34:           ports:
35:
```

### KSV-0020 (LOW): Runs with UID <= 10000

Container 'lamp-searxng' of Deployment 'lamp-searxng' should set 'securityContext.runAsUser' > 10000

- Resolution: Set 'containers[].securityContext.runAsUser' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0020
- Location: `templates/deployment.yaml:26-55`

```
26:         - name: lamp-searxng
27:           image: "docker.io/searxng/searxng:latest"
28:           imagePullPolicy: IfNotPresent
29:           env:
30:             - name: SEARXNG_SECRET
31:               value: "ultrasecretkey"
32:             - name: SEARXNG_BASE_URL
33:               value: "http://lamp-searxng:8080/"
34:           ports:
35:
```

### KSV-0021 (LOW): Runs with GID <= 10000

Container 'lamp-searxng' of Deployment 'lamp-searxng' should set 'securityContext.runAsGroup' > 10000

- Resolution: Set 'containers[].securityContext.runAsGroup' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0021
- Location: `templates/deployment.yaml:26-55`

```
26:         - name: lamp-searxng
27:           image: "docker.io/searxng/searxng:latest"
28:           imagePullPolicy: IfNotPresent
29:           env:
30:             - name: SEARXNG_SECRET
31:               value: "ultrasecretkey"
32:             - name: SEARXNG_BASE_URL
33:               value: "http://lamp-searxng:8080/"
34:           ports:
35:
```

### KSV-0030 (LOW): Runtime/Default Seccomp profile not set

Either Pod or Container should set 'securityContext.seccompProfile.type' to 'RuntimeDefault'

- Resolution: Set 'spec.securityContext.seccompProfile.type', 'spec.containers[*].securityContext.seccompProfile' and 'spec.initContainers[*].securityContext.seccompProfile' to 'RuntimeDefault' or undefined.
- See: https://avd.aquasec.com/misconfig/ksv-0030
- Location: `templates/deployment.yaml:26-55`

```
26:         - name: lamp-searxng
27:           image: "docker.io/searxng/searxng:latest"
28:           imagePullPolicy: IfNotPresent
29:           env:
30:             - name: SEARXNG_SECRET
31:               value: "ultrasecretkey"
32:             - name: SEARXNG_BASE_URL
33:               value: "http://lamp-searxng:8080/"
34:           ports:
35:
```

### KSV-0104 (MEDIUM): Seccomp policies disabled

container "lamp-searxng" of deployment "lamp-searxng" in "default" namespace should specify a seccomp profile

- Resolution: Specify seccomp either by annotation or by seccomp profile type having allowed values as per pod security standards
- See: https://avd.aquasec.com/misconfig/ksv-0104
- Location: `templates/deployment.yaml:26-55`

```
26:         - name: lamp-searxng
27:           image: "docker.io/searxng/searxng:latest"
28:           imagePullPolicy: IfNotPresent
29:           env:
30:             - name: SEARXNG_SECRET
31:               value: "ultrasecretkey"
32:             - name: SEARXNG_BASE_URL
33:               value: "http://lamp-searxng:8080/"
34:           ports:
35:
```

### KSV-0106 (LOW): Container capabilities must only include NET_BIND_SERVICE

container should drop all

- Resolution: Set 'spec.containers[*].securityContext.capabilities.drop' to 'ALL' and only add 'NET_BIND_SERVICE' to 'spec.containers[*].securityContext.capabilities.add'.
- See: https://avd.aquasec.com/misconfig/ksv-0106
- Location: `templates/deployment.yaml:26-55`

```
26:         - name: lamp-searxng
27:           image: "docker.io/searxng/searxng:latest"
28:           imagePullPolicy: IfNotPresent
29:           env:
30:             - name: SEARXNG_SECRET
31:               value: "ultrasecretkey"
32:             - name: SEARXNG_BASE_URL
33:               value: "http://lamp-searxng:8080/"
34:           ports:
35:
```

### KSV-0110 (LOW): Workloads in the default namespace

deployment lamp-searxng in default namespace should set metadata.namespace to a non-default namespace

- Resolution: Set 'metadata.namespace' to a non-default namespace.
- See: https://avd.aquasec.com/misconfig/ksv-0110
- Location: `templates/deployment.yaml:4-12`

```
4: metadata:
5:   name: lamp-searxng
6:   annotations:
7:     reloader.stakater.com/auto: "true"
8:   labels:
9:     helm.sh/chart: lamp-searxng-0.1.0
10:     app.kubernetes.io/name: lamp-searxng
11:     app.kubernetes.io/instance: lamp-searxng
12:     app.kubernetes.io/managed-by: Helm
```

### KSV-0118 (HIGH): Default security context configured

container lamp-searxng in default namespace is using the default security context

- Resolution: To enhance security, it is strongly recommended not to rely on the default security context. Instead, it is advisable to explicitly define the required security parameters (such as runAsNonRoot, capabilities, readOnlyRootFilesystem, etc.) within the security context.
- See: https://avd.aquasec.com/misconfig/ksv-0118
- Location: `templates/deployment.yaml:26-55`

```
26:         - name: lamp-searxng
27:           image: "docker.io/searxng/searxng:latest"
28:           imagePullPolicy: IfNotPresent
29:           env:
30:             - name: SEARXNG_SECRET
31:               value: "ultrasecretkey"
32:             - name: SEARXNG_BASE_URL
33:               value: "http://lamp-searxng:8080/"
34:           ports:
35:
```

### KSV-0118 (HIGH): Default security context configured

deployment lamp-searxng in default namespace is using the default security context, which allows root privileges

- Resolution: To enhance security, it is strongly recommended not to rely on the default security context. Instead, it is advisable to explicitly define the required security parameters (such as runAsNonRoot, capabilities, readOnlyRootFilesystem, etc.) within the security context.
- See: https://avd.aquasec.com/misconfig/ksv-0118
- Location: `templates/deployment.yaml:24-59`

```
24:     spec:
25:       containers:
26:         - name: lamp-searxng
27:           image: "docker.io/searxng/searxng:latest"
28:           imagePullPolicy: IfNotPresent
29:           env:
30:             - name: SEARXNG_SECRET
31:               value: "ultrasecretkey"
32:             - name: SEARXNG_BASE_URL
33:
```

### KSV-0125 (MEDIUM): Restrict container images to trusted registries

Container lamp-searxng in deployment lamp-searxng (namespace: default) uses an image from an untrusted registry.

- Resolution: Use images from trusted registries.
- See: https://avd.aquasec.com/misconfig/ksv-0125
- Location: `templates/deployment.yaml:26-55`

```
26:         - name: lamp-searxng
27:           image: "docker.io/searxng/searxng:latest"
28:           imagePullPolicy: IfNotPresent
29:           env:
30:             - name: SEARXNG_SECRET
31:               value: "ultrasecretkey"
32:             - name: SEARXNG_BASE_URL
33:               value: "http://lamp-searxng:8080/"
34:           ports:
35:
```
