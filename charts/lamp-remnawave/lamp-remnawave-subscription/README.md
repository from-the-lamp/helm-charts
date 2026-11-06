# lamp-remnawave-subscription

![Version: 0.0.3](https://img.shields.io/badge/Version-0.0.3-informational?style=flat-square)

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| deployment.annotations | object | `{}` |  |
| deployment.replicas | int | `1` |  |
| env.META_DESCRIPTION | string | `"Subscription Page Description"` |  |
| env.META_TITLE | string | `"Subscription Page Title"` |  |
| env.REMNAWAVE_PANEL_URL | string | `"https://remnawave.CHANGE-ME.invalid"` |  |
| existingSecret | string | `""` |  |
| image.name | string | `"remnawave/subscription-page"` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.pullSecrets | list | `[]` |  |
| image.tag | string | `"8.0.1"` |  |
| service.annotations | object | `{}` |  |
| service.port | int | `3010` |  |
| service.type | string | `"ClusterIP"` |  |
# Trivy scan - Helm Chart

## Report Summary

| Target | Type | Misconfigurations |
| --- | --- | --- |
| templates/deployment.yaml | helm | 18 |
| templates/env.yaml | helm | 1 |
| templates/service.yaml | helm | 0 |

## templates/deployment.yaml

### KSV-0001 (MEDIUM): Can elevate its own privileges

Container 'remnawave' of Deployment 'lamp-remnawave-subscription' should set 'securityContext.allowPrivilegeEscalation' to false

- Resolution: Set 'set containers[].securityContext.allowPrivilegeEscalation' to 'false'.
- See: https://avd.aquasec.com/misconfig/ksv-0001
- Location: `templates/deployment.yaml:26-34`

```
26:       - image: remnawave/subscription-page:8.0.1
27:         imagePullPolicy: IfNotPresent
28:         name: remnawave
29:         ports:
30:           - name: http
31:             containerPort: 3010
32:         envFrom:
33:           - configMapRef:
34:               name: lamp-remnawave-subscription-config
```

### KSV-0003 (LOW): Default capabilities: some containers do not drop all

Container 'remnawave' of Deployment 'lamp-remnawave-subscription' should add 'ALL' to 'securityContext.capabilities.drop'

- Resolution: Add 'ALL' to containers[].securityContext.capabilities.drop.
- See: https://avd.aquasec.com/misconfig/ksv-0003
- Location: `templates/deployment.yaml:26-34`

```
26:       - image: remnawave/subscription-page:8.0.1
27:         imagePullPolicy: IfNotPresent
28:         name: remnawave
29:         ports:
30:           - name: http
31:             containerPort: 3010
32:         envFrom:
33:           - configMapRef:
34:               name: lamp-remnawave-subscription-config
```

### KSV-0004 (LOW): Default capabilities: some containers do not drop any

Container 'remnawave' of 'deployment' 'lamp-remnawave-subscription' in 'default' namespace should set securityContext.capabilities.drop

- Resolution: Specify at least one unneeded capability in 'containers[].securityContext.capabilities.drop'
- See: https://avd.aquasec.com/misconfig/ksv-0004
- Location: `templates/deployment.yaml:26-34`

```
26:       - image: remnawave/subscription-page:8.0.1
27:         imagePullPolicy: IfNotPresent
28:         name: remnawave
29:         ports:
30:           - name: http
31:             containerPort: 3010
32:         envFrom:
33:           - configMapRef:
34:               name: lamp-remnawave-subscription-config
```

### KSV-0011 (LOW): CPU not limited

Container 'remnawave' of Deployment 'lamp-remnawave-subscription' should set 'resources.limits.cpu'

- Resolution: Set a limit value under 'containers[].resources.limits.cpu'.
- See: https://avd.aquasec.com/misconfig/ksv-0011
- Location: `templates/deployment.yaml:26-34`

```
26:       - image: remnawave/subscription-page:8.0.1
27:         imagePullPolicy: IfNotPresent
28:         name: remnawave
29:         ports:
30:           - name: http
31:             containerPort: 3010
32:         envFrom:
33:           - configMapRef:
34:               name: lamp-remnawave-subscription-config
```

### KSV-0012 (MEDIUM): Runs as root user

Container 'remnawave' of Deployment 'lamp-remnawave-subscription' should set 'securityContext.runAsNonRoot' to true

- Resolution: Set 'containers[].securityContext.runAsNonRoot' to true.
- See: https://avd.aquasec.com/misconfig/ksv-0012
- Location: `templates/deployment.yaml:26-34`

```
26:       - image: remnawave/subscription-page:8.0.1
27:         imagePullPolicy: IfNotPresent
28:         name: remnawave
29:         ports:
30:           - name: http
31:             containerPort: 3010
32:         envFrom:
33:           - configMapRef:
34:               name: lamp-remnawave-subscription-config
```

### KSV-0014 (HIGH): Root file system is not read-only

Container 'remnawave' of Deployment 'lamp-remnawave-subscription' should set 'securityContext.readOnlyRootFilesystem' to true

- Resolution: Change 'containers[].securityContext.readOnlyRootFilesystem' to 'true'.
- See: https://avd.aquasec.com/misconfig/ksv-0014
- Location: `templates/deployment.yaml:26-34`

```
26:       - image: remnawave/subscription-page:8.0.1
27:         imagePullPolicy: IfNotPresent
28:         name: remnawave
29:         ports:
30:           - name: http
31:             containerPort: 3010
32:         envFrom:
33:           - configMapRef:
34:               name: lamp-remnawave-subscription-config
```

### KSV-0015 (LOW): CPU requests not specified

Container 'remnawave' of Deployment 'lamp-remnawave-subscription' should set 'resources.requests.cpu'

- Resolution: Set 'containers[].resources.requests.cpu'.
- See: https://avd.aquasec.com/misconfig/ksv-0015
- Location: `templates/deployment.yaml:26-34`

```
26:       - image: remnawave/subscription-page:8.0.1
27:         imagePullPolicy: IfNotPresent
28:         name: remnawave
29:         ports:
30:           - name: http
31:             containerPort: 3010
32:         envFrom:
33:           - configMapRef:
34:               name: lamp-remnawave-subscription-config
```

### KSV-0016 (LOW): Memory requests not specified

Container 'remnawave' of Deployment 'lamp-remnawave-subscription' should set 'resources.requests.memory'

- Resolution: Set 'containers[].resources.requests.memory'.
- See: https://avd.aquasec.com/misconfig/ksv-0016
- Location: `templates/deployment.yaml:26-34`

```
26:       - image: remnawave/subscription-page:8.0.1
27:         imagePullPolicy: IfNotPresent
28:         name: remnawave
29:         ports:
30:           - name: http
31:             containerPort: 3010
32:         envFrom:
33:           - configMapRef:
34:               name: lamp-remnawave-subscription-config
```

### KSV-0018 (LOW): Memory not limited

Container 'remnawave' of Deployment 'lamp-remnawave-subscription' should set 'resources.limits.memory'

- Resolution: Set a limit value under 'containers[].resources.limits.memory'.
- See: https://avd.aquasec.com/misconfig/ksv-0018
- Location: `templates/deployment.yaml:26-34`

```
26:       - image: remnawave/subscription-page:8.0.1
27:         imagePullPolicy: IfNotPresent
28:         name: remnawave
29:         ports:
30:           - name: http
31:             containerPort: 3010
32:         envFrom:
33:           - configMapRef:
34:               name: lamp-remnawave-subscription-config
```

### KSV-0020 (LOW): Runs with UID <= 10000

Container 'remnawave' of Deployment 'lamp-remnawave-subscription' should set 'securityContext.runAsUser' > 10000

- Resolution: Set 'containers[].securityContext.runAsUser' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0020
- Location: `templates/deployment.yaml:26-34`

```
26:       - image: remnawave/subscription-page:8.0.1
27:         imagePullPolicy: IfNotPresent
28:         name: remnawave
29:         ports:
30:           - name: http
31:             containerPort: 3010
32:         envFrom:
33:           - configMapRef:
34:               name: lamp-remnawave-subscription-config
```

### KSV-0021 (LOW): Runs with GID <= 10000

Container 'remnawave' of Deployment 'lamp-remnawave-subscription' should set 'securityContext.runAsGroup' > 10000

- Resolution: Set 'containers[].securityContext.runAsGroup' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0021
- Location: `templates/deployment.yaml:26-34`

```
26:       - image: remnawave/subscription-page:8.0.1
27:         imagePullPolicy: IfNotPresent
28:         name: remnawave
29:         ports:
30:           - name: http
31:             containerPort: 3010
32:         envFrom:
33:           - configMapRef:
34:               name: lamp-remnawave-subscription-config
```

### KSV-0030 (LOW): Runtime/Default Seccomp profile not set

Either Pod or Container should set 'securityContext.seccompProfile.type' to 'RuntimeDefault'

- Resolution: Set 'spec.securityContext.seccompProfile.type', 'spec.containers[*].securityContext.seccompProfile' and 'spec.initContainers[*].securityContext.seccompProfile' to 'RuntimeDefault' or undefined.
- See: https://avd.aquasec.com/misconfig/ksv-0030
- Location: `templates/deployment.yaml:26-34`

```
26:       - image: remnawave/subscription-page:8.0.1
27:         imagePullPolicy: IfNotPresent
28:         name: remnawave
29:         ports:
30:           - name: http
31:             containerPort: 3010
32:         envFrom:
33:           - configMapRef:
34:               name: lamp-remnawave-subscription-config
```

### KSV-0104 (MEDIUM): Seccomp policies disabled

container "remnawave" of deployment "lamp-remnawave-subscription" in "default" namespace should specify a seccomp profile

- Resolution: Specify seccomp either by annotation or by seccomp profile type having allowed values as per pod security standards
- See: https://avd.aquasec.com/misconfig/ksv-0104
- Location: `templates/deployment.yaml:26-34`

```
26:       - image: remnawave/subscription-page:8.0.1
27:         imagePullPolicy: IfNotPresent
28:         name: remnawave
29:         ports:
30:           - name: http
31:             containerPort: 3010
32:         envFrom:
33:           - configMapRef:
34:               name: lamp-remnawave-subscription-config
```

### KSV-0106 (LOW): Container capabilities must only include NET_BIND_SERVICE

container should drop all

- Resolution: Set 'spec.containers[*].securityContext.capabilities.drop' to 'ALL' and only add 'NET_BIND_SERVICE' to 'spec.containers[*].securityContext.capabilities.add'.
- See: https://avd.aquasec.com/misconfig/ksv-0106
- Location: `templates/deployment.yaml:26-34`

```
26:       - image: remnawave/subscription-page:8.0.1
27:         imagePullPolicy: IfNotPresent
28:         name: remnawave
29:         ports:
30:           - name: http
31:             containerPort: 3010
32:         envFrom:
33:           - configMapRef:
34:               name: lamp-remnawave-subscription-config
```

### KSV-0110 (LOW): Workloads in the default namespace

deployment lamp-remnawave-subscription in default namespace should set metadata.namespace to a non-default namespace

- Resolution: Set 'metadata.namespace' to a non-default namespace.
- See: https://avd.aquasec.com/misconfig/ksv-0110
- Location: `templates/deployment.yaml:4-11`

```
4: metadata:
5:   name: lamp-remnawave-subscription
6:   labels:
7:     helm.sh/chart: lamp-remnawave-subscription-0.0.3
8:     app.kubernetes.io/name: lamp-remnawave-subscription
9:     app.kubernetes.io/instance: lamp-remnawave-subscription
10:     app.kubernetes.io/version: "8.0.1"
11:     app.kubernetes.io/managed-by: Helm
```

### KSV-0118 (HIGH): Default security context configured

container lamp-remnawave-subscription in default namespace is using the default security context

- Resolution: To enhance security, it is strongly recommended not to rely on the default security context. Instead, it is advisable to explicitly define the required security parameters (such as runAsNonRoot, capabilities, readOnlyRootFilesystem, etc.) within the security context.
- See: https://avd.aquasec.com/misconfig/ksv-0118
- Location: `templates/deployment.yaml:26-34`

```
26:       - image: remnawave/subscription-page:8.0.1
27:         imagePullPolicy: IfNotPresent
28:         name: remnawave
29:         ports:
30:           - name: http
31:             containerPort: 3010
32:         envFrom:
33:           - configMapRef:
34:               name: lamp-remnawave-subscription-config
```

### KSV-0118 (HIGH): Default security context configured

deployment lamp-remnawave-subscription in default namespace is using the default security context, which allows root privileges

- Resolution: To enhance security, it is strongly recommended not to rely on the default security context. Instead, it is advisable to explicitly define the required security parameters (such as runAsNonRoot, capabilities, readOnlyRootFilesystem, etc.) within the security context.
- See: https://avd.aquasec.com/misconfig/ksv-0118
- Location: `templates/deployment.yaml:24-34`

```
24:     spec:
25:       containers:
26:       - image: remnawave/subscription-page:8.0.1
27:         imagePullPolicy: IfNotPresent
28:         name: remnawave
29:         ports:
30:           - name: http
31:             containerPort: 3010
32:         envFrom:
33:
```

### KSV-0125 (MEDIUM): Restrict container images to trusted registries

Container remnawave in deployment lamp-remnawave-subscription (namespace: default) uses an image from an untrusted registry.

- Resolution: Use images from trusted registries.
- See: https://avd.aquasec.com/misconfig/ksv-0125
- Location: `templates/deployment.yaml:26-34`

```
26:       - image: remnawave/subscription-page:8.0.1
27:         imagePullPolicy: IfNotPresent
28:         name: remnawave
29:         ports:
30:           - name: http
31:             containerPort: 3010
32:         envFrom:
33:           - configMapRef:
34:               name: lamp-remnawave-subscription-config
```


## templates/env.yaml

### KSV-01010 (MEDIUM): ConfigMap with sensitive content

ConfigMap 'lamp-remnawave-subscription-config' in 'default' namespace stores sensitive contents in key(s) or value(s) '{"APP_PORT"}'

- Resolution: Remove sensitive content from configMap data value
- See: https://avd.aquasec.com/misconfig/ksv-01010
