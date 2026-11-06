# lamp-tailscale-nodes

![Version: 0.0.7](https://img.shields.io/badge/Version-0.0.7-informational?style=flat-square)

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| connectors[0].advertiseRoutes[0] | string | `"10.43.0.0/16"` |  |
| connectors[0].hostname | string | `"k3s-infra-subnet-router"` |  |
| connectors[0].name | string | `"k3s-infra-subnet-router"` |  |
| externalSecrets.creationPolicy | string | `"Orphan"` |  |
| externalSecrets.kind | string | `"ClusterSecretStore"` |  |
| externalSecrets.name | string | `"vault"` |  |
| externalSecrets.refreshInterval | string | `"1h"` |  |
| hostNodes[0].exitNode | bool | `true` |  |
| hostNodes[0].hostname | string | `"k3s-infra-exit-direct"` |  |
| hostNodes[0].name | string | `"exit"` |  |
| hostNodes[0].nodeSelector."kubernetes.io/hostname" | string | `"infra-worker-03"` |  |
| hostNodes[0].resources.requests.cpu | string | `"100m"` |  |
| hostNodes[0].resources.requests.memory | string | `"128Mi"` |  |
| hostNodes[0].sysctls."net.core.rmem_max" | string | `"7500000"` |  |
| hostNodes[0].sysctls."net.core.wmem_max" | string | `"7500000"` |  |
| hostNodes[0].tags[0] | string | `"tag:exit"` |  |
| image.name | string | `"tailscale/tailscale"` |  |
| image.tag | string | `"v1.104.4"` |  |
| remoteSecretKeys.tailscale | string | `"tailscale"` |  |
# Trivy scan - Helm Chart

## Report Summary

| Target | Type | Misconfigurations |
| --- | --- | --- |
| templates/connector.yaml | helm | 0 |
| templates/hostnode-auth.yaml | helm | 0 |
| templates/hostnode-deployment.yaml | helm | 33 |
| templates/hostnode-rbac.yaml | helm | 2 |
| templates/hostnode-state.yaml | helm | 0 |

## templates/hostnode-deployment.yaml

### KSV-0001 (MEDIUM): Can elevate its own privileges

Container 'sysctls' of Deployment 'tailscale-exit' should set 'securityContext.allowPrivilegeEscalation' to false

- Resolution: Set 'set containers[].securityContext.allowPrivilegeEscalation' to 'false'.
- See: https://avd.aquasec.com/misconfig/ksv-0001
- Location: `templates/hostnode-deployment.yaml:24-31`

```
24:         - name: sysctls
25:           image: "tailscale/tailscale:v1.104.4"
26:           securityContext:
27:             privileged: true
28:           command:
29:             - /bin/sh
30:             - -c
31:             - |
```

### KSV-0001 (MEDIUM): Can elevate its own privileges

Container 'tailscale' of Deployment 'tailscale-exit' should set 'securityContext.allowPrivilegeEscalation' to false

- Resolution: Set 'set containers[].securityContext.allowPrivilegeEscalation' to 'false'.
- See: https://avd.aquasec.com/misconfig/ksv-0001
- Location: `templates/hostnode-deployment.yaml:35-68`

```
35:         - name: tailscale
36:           image: "tailscale/tailscale:v1.104.4"
37:           securityContext:
38:             privileged: true
39:           env:
40:             - name: POD_NAME
41:               valueFrom:
42:                 fieldRef:
43:                   fieldPath: metadata.name
44:
```

### KSV-0003 (LOW): Default capabilities: some containers do not drop all

Container 'sysctls' of Deployment 'tailscale-exit' should add 'ALL' to 'securityContext.capabilities.drop'

- Resolution: Add 'ALL' to containers[].securityContext.capabilities.drop.
- See: https://avd.aquasec.com/misconfig/ksv-0003
- Location: `templates/hostnode-deployment.yaml:24-31`

```
24:         - name: sysctls
25:           image: "tailscale/tailscale:v1.104.4"
26:           securityContext:
27:             privileged: true
28:           command:
29:             - /bin/sh
30:             - -c
31:             - |
```

### KSV-0003 (LOW): Default capabilities: some containers do not drop all

Container 'tailscale' of Deployment 'tailscale-exit' should add 'ALL' to 'securityContext.capabilities.drop'

- Resolution: Add 'ALL' to containers[].securityContext.capabilities.drop.
- See: https://avd.aquasec.com/misconfig/ksv-0003
- Location: `templates/hostnode-deployment.yaml:35-68`

```
35:         - name: tailscale
36:           image: "tailscale/tailscale:v1.104.4"
37:           securityContext:
38:             privileged: true
39:           env:
40:             - name: POD_NAME
41:               valueFrom:
42:                 fieldRef:
43:                   fieldPath: metadata.name
44:
```

### KSV-0004 (LOW): Default capabilities: some containers do not drop any

Container 'sysctls' of 'deployment' 'tailscale-exit' in 'default' namespace should set securityContext.capabilities.drop

- Resolution: Specify at least one unneeded capability in 'containers[].securityContext.capabilities.drop'
- See: https://avd.aquasec.com/misconfig/ksv-0004
- Location: `templates/hostnode-deployment.yaml:24-31`

```
24:         - name: sysctls
25:           image: "tailscale/tailscale:v1.104.4"
26:           securityContext:
27:             privileged: true
28:           command:
29:             - /bin/sh
30:             - -c
31:             - |
```

### KSV-0004 (LOW): Default capabilities: some containers do not drop any

Container 'tailscale' of 'deployment' 'tailscale-exit' in 'default' namespace should set securityContext.capabilities.drop

- Resolution: Specify at least one unneeded capability in 'containers[].securityContext.capabilities.drop'
- See: https://avd.aquasec.com/misconfig/ksv-0004
- Location: `templates/hostnode-deployment.yaml:35-68`

```
35:         - name: tailscale
36:           image: "tailscale/tailscale:v1.104.4"
37:           securityContext:
38:             privileged: true
39:           env:
40:             - name: POD_NAME
41:               valueFrom:
42:                 fieldRef:
43:                   fieldPath: metadata.name
44:
```

### KSV-0009 (HIGH): Access to host network

Deployment 'tailscale-exit' should not set 'spec.template.spec.hostNetwork' to true

- Resolution: Do not set 'spec.template.spec.hostNetwork' to true.
- See: https://avd.aquasec.com/misconfig/ksv-0009
- Location: `templates/hostnode-deployment.yaml:6-68`

```
6: spec:
7:   replicas: 1
8:   strategy:
9:     type: Recreate
10:   selector:
11:     matchLabels:
12:       app: tailscale-exit
13:   template:
14:     metadata:
15:
```

### KSV-0011 (LOW): CPU not limited

Container 'sysctls' of Deployment 'tailscale-exit' should set 'resources.limits.cpu'

- Resolution: Set a limit value under 'containers[].resources.limits.cpu'.
- See: https://avd.aquasec.com/misconfig/ksv-0011
- Location: `templates/hostnode-deployment.yaml:24-31`

```
24:         - name: sysctls
25:           image: "tailscale/tailscale:v1.104.4"
26:           securityContext:
27:             privileged: true
28:           command:
29:             - /bin/sh
30:             - -c
31:             - |
```

### KSV-0011 (LOW): CPU not limited

Container 'tailscale' of Deployment 'tailscale-exit' should set 'resources.limits.cpu'

- Resolution: Set a limit value under 'containers[].resources.limits.cpu'.
- See: https://avd.aquasec.com/misconfig/ksv-0011
- Location: `templates/hostnode-deployment.yaml:35-68`

```
35:         - name: tailscale
36:           image: "tailscale/tailscale:v1.104.4"
37:           securityContext:
38:             privileged: true
39:           env:
40:             - name: POD_NAME
41:               valueFrom:
42:                 fieldRef:
43:                   fieldPath: metadata.name
44:
```

### KSV-0012 (MEDIUM): Runs as root user

Container 'sysctls' of Deployment 'tailscale-exit' should set 'securityContext.runAsNonRoot' to true

- Resolution: Set 'containers[].securityContext.runAsNonRoot' to true.
- See: https://avd.aquasec.com/misconfig/ksv-0012
- Location: `templates/hostnode-deployment.yaml:24-31`

```
24:         - name: sysctls
25:           image: "tailscale/tailscale:v1.104.4"
26:           securityContext:
27:             privileged: true
28:           command:
29:             - /bin/sh
30:             - -c
31:             - |
```

### KSV-0012 (MEDIUM): Runs as root user

Container 'tailscale' of Deployment 'tailscale-exit' should set 'securityContext.runAsNonRoot' to true

- Resolution: Set 'containers[].securityContext.runAsNonRoot' to true.
- See: https://avd.aquasec.com/misconfig/ksv-0012
- Location: `templates/hostnode-deployment.yaml:35-68`

```
35:         - name: tailscale
36:           image: "tailscale/tailscale:v1.104.4"
37:           securityContext:
38:             privileged: true
39:           env:
40:             - name: POD_NAME
41:               valueFrom:
42:                 fieldRef:
43:                   fieldPath: metadata.name
44:
```

### KSV-0014 (HIGH): Root file system is not read-only

Container 'sysctls' of Deployment 'tailscale-exit' should set 'securityContext.readOnlyRootFilesystem' to true

- Resolution: Change 'containers[].securityContext.readOnlyRootFilesystem' to 'true'.
- See: https://avd.aquasec.com/misconfig/ksv-0014
- Location: `templates/hostnode-deployment.yaml:24-31`

```
24:         - name: sysctls
25:           image: "tailscale/tailscale:v1.104.4"
26:           securityContext:
27:             privileged: true
28:           command:
29:             - /bin/sh
30:             - -c
31:             - |
```

### KSV-0014 (HIGH): Root file system is not read-only

Container 'tailscale' of Deployment 'tailscale-exit' should set 'securityContext.readOnlyRootFilesystem' to true

- Resolution: Change 'containers[].securityContext.readOnlyRootFilesystem' to 'true'.
- See: https://avd.aquasec.com/misconfig/ksv-0014
- Location: `templates/hostnode-deployment.yaml:35-68`

```
35:         - name: tailscale
36:           image: "tailscale/tailscale:v1.104.4"
37:           securityContext:
38:             privileged: true
39:           env:
40:             - name: POD_NAME
41:               valueFrom:
42:                 fieldRef:
43:                   fieldPath: metadata.name
44:
```

### KSV-0015 (LOW): CPU requests not specified

Container 'sysctls' of Deployment 'tailscale-exit' should set 'resources.requests.cpu'

- Resolution: Set 'containers[].resources.requests.cpu'.
- See: https://avd.aquasec.com/misconfig/ksv-0015
- Location: `templates/hostnode-deployment.yaml:24-31`

```
24:         - name: sysctls
25:           image: "tailscale/tailscale:v1.104.4"
26:           securityContext:
27:             privileged: true
28:           command:
29:             - /bin/sh
30:             - -c
31:             - |
```

### KSV-0016 (LOW): Memory requests not specified

Container 'sysctls' of Deployment 'tailscale-exit' should set 'resources.requests.memory'

- Resolution: Set 'containers[].resources.requests.memory'.
- See: https://avd.aquasec.com/misconfig/ksv-0016
- Location: `templates/hostnode-deployment.yaml:24-31`

```
24:         - name: sysctls
25:           image: "tailscale/tailscale:v1.104.4"
26:           securityContext:
27:             privileged: true
28:           command:
29:             - /bin/sh
30:             - -c
31:             - |
```

### KSV-0017 (HIGH): Privileged

Container 'sysctls' of Deployment 'tailscale-exit' should set 'securityContext.privileged' to false

- Resolution: Change 'containers[].securityContext.privileged' to 'false'.
- See: https://avd.aquasec.com/misconfig/ksv-0017
- Location: `templates/hostnode-deployment.yaml:24-31`

```
24:         - name: sysctls
25:           image: "tailscale/tailscale:v1.104.4"
26:           securityContext:
27:             privileged: true
28:           command:
29:             - /bin/sh
30:             - -c
31:             - |
```

### KSV-0017 (HIGH): Privileged

Container 'tailscale' of Deployment 'tailscale-exit' should set 'securityContext.privileged' to false

- Resolution: Change 'containers[].securityContext.privileged' to 'false'.
- See: https://avd.aquasec.com/misconfig/ksv-0017
- Location: `templates/hostnode-deployment.yaml:35-68`

```
35:         - name: tailscale
36:           image: "tailscale/tailscale:v1.104.4"
37:           securityContext:
38:             privileged: true
39:           env:
40:             - name: POD_NAME
41:               valueFrom:
42:                 fieldRef:
43:                   fieldPath: metadata.name
44:
```

### KSV-0018 (LOW): Memory not limited

Container 'sysctls' of Deployment 'tailscale-exit' should set 'resources.limits.memory'

- Resolution: Set a limit value under 'containers[].resources.limits.memory'.
- See: https://avd.aquasec.com/misconfig/ksv-0018
- Location: `templates/hostnode-deployment.yaml:24-31`

```
24:         - name: sysctls
25:           image: "tailscale/tailscale:v1.104.4"
26:           securityContext:
27:             privileged: true
28:           command:
29:             - /bin/sh
30:             - -c
31:             - |
```

### KSV-0018 (LOW): Memory not limited

Container 'tailscale' of Deployment 'tailscale-exit' should set 'resources.limits.memory'

- Resolution: Set a limit value under 'containers[].resources.limits.memory'.
- See: https://avd.aquasec.com/misconfig/ksv-0018
- Location: `templates/hostnode-deployment.yaml:35-68`

```
35:         - name: tailscale
36:           image: "tailscale/tailscale:v1.104.4"
37:           securityContext:
38:             privileged: true
39:           env:
40:             - name: POD_NAME
41:               valueFrom:
42:                 fieldRef:
43:                   fieldPath: metadata.name
44:
```

### KSV-0020 (LOW): Runs with UID <= 10000

Container 'sysctls' of Deployment 'tailscale-exit' should set 'securityContext.runAsUser' > 10000

- Resolution: Set 'containers[].securityContext.runAsUser' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0020
- Location: `templates/hostnode-deployment.yaml:24-31`

```
24:         - name: sysctls
25:           image: "tailscale/tailscale:v1.104.4"
26:           securityContext:
27:             privileged: true
28:           command:
29:             - /bin/sh
30:             - -c
31:             - |
```

### KSV-0020 (LOW): Runs with UID <= 10000

Container 'tailscale' of Deployment 'tailscale-exit' should set 'securityContext.runAsUser' > 10000

- Resolution: Set 'containers[].securityContext.runAsUser' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0020
- Location: `templates/hostnode-deployment.yaml:35-68`

```
35:         - name: tailscale
36:           image: "tailscale/tailscale:v1.104.4"
37:           securityContext:
38:             privileged: true
39:           env:
40:             - name: POD_NAME
41:               valueFrom:
42:                 fieldRef:
43:                   fieldPath: metadata.name
44:
```

### KSV-0021 (LOW): Runs with GID <= 10000

Container 'sysctls' of Deployment 'tailscale-exit' should set 'securityContext.runAsGroup' > 10000

- Resolution: Set 'containers[].securityContext.runAsGroup' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0021
- Location: `templates/hostnode-deployment.yaml:24-31`

```
24:         - name: sysctls
25:           image: "tailscale/tailscale:v1.104.4"
26:           securityContext:
27:             privileged: true
28:           command:
29:             - /bin/sh
30:             - -c
31:             - |
```

### KSV-0021 (LOW): Runs with GID <= 10000

Container 'tailscale' of Deployment 'tailscale-exit' should set 'securityContext.runAsGroup' > 10000

- Resolution: Set 'containers[].securityContext.runAsGroup' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0021
- Location: `templates/hostnode-deployment.yaml:35-68`

```
35:         - name: tailscale
36:           image: "tailscale/tailscale:v1.104.4"
37:           securityContext:
38:             privileged: true
39:           env:
40:             - name: POD_NAME
41:               valueFrom:
42:                 fieldRef:
43:                   fieldPath: metadata.name
44:
```

### KSV-0030 (LOW): Runtime/Default Seccomp profile not set

Either Pod or Container should set 'securityContext.seccompProfile.type' to 'RuntimeDefault'

- Resolution: Set 'spec.securityContext.seccompProfile.type', 'spec.containers[*].securityContext.seccompProfile' and 'spec.initContainers[*].securityContext.seccompProfile' to 'RuntimeDefault' or undefined.
- See: https://avd.aquasec.com/misconfig/ksv-0030
- Location: `templates/hostnode-deployment.yaml:24-31`

```
24:         - name: sysctls
25:           image: "tailscale/tailscale:v1.104.4"
26:           securityContext:
27:             privileged: true
28:           command:
29:             - /bin/sh
30:             - -c
31:             - |
```

### KSV-0030 (LOW): Runtime/Default Seccomp profile not set

Either Pod or Container should set 'securityContext.seccompProfile.type' to 'RuntimeDefault'

- Resolution: Set 'spec.securityContext.seccompProfile.type', 'spec.containers[*].securityContext.seccompProfile' and 'spec.initContainers[*].securityContext.seccompProfile' to 'RuntimeDefault' or undefined.
- See: https://avd.aquasec.com/misconfig/ksv-0030
- Location: `templates/hostnode-deployment.yaml:35-68`

```
35:         - name: tailscale
36:           image: "tailscale/tailscale:v1.104.4"
37:           securityContext:
38:             privileged: true
39:           env:
40:             - name: POD_NAME
41:               valueFrom:
42:                 fieldRef:
43:                   fieldPath: metadata.name
44:
```

### KSV-0104 (MEDIUM): Seccomp policies disabled

container "sysctls" of deployment "tailscale-exit" in "default" namespace should specify a seccomp profile

- Resolution: Specify seccomp either by annotation or by seccomp profile type having allowed values as per pod security standards
- See: https://avd.aquasec.com/misconfig/ksv-0104
- Location: `templates/hostnode-deployment.yaml:24-31`

```
24:         - name: sysctls
25:           image: "tailscale/tailscale:v1.104.4"
26:           securityContext:
27:             privileged: true
28:           command:
29:             - /bin/sh
30:             - -c
31:             - |
```

### KSV-0104 (MEDIUM): Seccomp policies disabled

container "tailscale" of deployment "tailscale-exit" in "default" namespace should specify a seccomp profile

- Resolution: Specify seccomp either by annotation or by seccomp profile type having allowed values as per pod security standards
- See: https://avd.aquasec.com/misconfig/ksv-0104
- Location: `templates/hostnode-deployment.yaml:35-68`

```
35:         - name: tailscale
36:           image: "tailscale/tailscale:v1.104.4"
37:           securityContext:
38:             privileged: true
39:           env:
40:             - name: POD_NAME
41:               valueFrom:
42:                 fieldRef:
43:                   fieldPath: metadata.name
44:
```

### KSV-0106 (LOW): Container capabilities must only include NET_BIND_SERVICE

container should drop all

- Resolution: Set 'spec.containers[*].securityContext.capabilities.drop' to 'ALL' and only add 'NET_BIND_SERVICE' to 'spec.containers[*].securityContext.capabilities.add'.
- See: https://avd.aquasec.com/misconfig/ksv-0106
- Location: `templates/hostnode-deployment.yaml:24-31`

```
24:         - name: sysctls
25:           image: "tailscale/tailscale:v1.104.4"
26:           securityContext:
27:             privileged: true
28:           command:
29:             - /bin/sh
30:             - -c
31:             - |
```

### KSV-0106 (LOW): Container capabilities must only include NET_BIND_SERVICE

container should drop all

- Resolution: Set 'spec.containers[*].securityContext.capabilities.drop' to 'ALL' and only add 'NET_BIND_SERVICE' to 'spec.containers[*].securityContext.capabilities.add'.
- See: https://avd.aquasec.com/misconfig/ksv-0106
- Location: `templates/hostnode-deployment.yaml:35-68`

```
35:         - name: tailscale
36:           image: "tailscale/tailscale:v1.104.4"
37:           securityContext:
38:             privileged: true
39:           env:
40:             - name: POD_NAME
41:               valueFrom:
42:                 fieldRef:
43:                   fieldPath: metadata.name
44:
```

### KSV-0110 (LOW): Workloads in the default namespace

deployment tailscale-exit in default namespace should set metadata.namespace to a non-default namespace

- Resolution: Set 'metadata.namespace' to a non-default namespace.
- See: https://avd.aquasec.com/misconfig/ksv-0110
- Location: `templates/hostnode-deployment.yaml:4-5`

```
4: metadata:
5:   name: tailscale-exit
```

### KSV-0118 (HIGH): Default security context configured

deployment tailscale-exit in default namespace is using the default security context, which allows root privileges

- Resolution: To enhance security, it is strongly recommended not to rely on the default security context. Instead, it is advisable to explicitly define the required security parameters (such as runAsNonRoot, capabilities, readOnlyRootFilesystem, etc.) within the security context.
- See: https://avd.aquasec.com/misconfig/ksv-0118
- Location: `templates/hostnode-deployment.yaml:17-68`

```
17:     spec:
18:       serviceAccountName: tailscale-exit
19:       hostNetwork: true
20:       dnsPolicy: ClusterFirstWithHostNet
21:       nodeSelector:
22:         kubernetes.io/hostname: infra-worker-03
23:       initContainers:
24:         - name: sysctls
25:           image: "tailscale/tailscale:v1.104.4"
26:
```

### KSV-0125 (MEDIUM): Restrict container images to trusted registries

Container sysctls in deployment tailscale-exit (namespace: default) uses an image from an untrusted registry.

- Resolution: Use images from trusted registries.
- See: https://avd.aquasec.com/misconfig/ksv-0125
- Location: `templates/hostnode-deployment.yaml:24-31`

```
24:         - name: sysctls
25:           image: "tailscale/tailscale:v1.104.4"
26:           securityContext:
27:             privileged: true
28:           command:
29:             - /bin/sh
30:             - -c
31:             - |
```

### KSV-0125 (MEDIUM): Restrict container images to trusted registries

Container tailscale in deployment tailscale-exit (namespace: default) uses an image from an untrusted registry.

- Resolution: Use images from trusted registries.
- See: https://avd.aquasec.com/misconfig/ksv-0125
- Location: `templates/hostnode-deployment.yaml:35-68`

```
35:         - name: tailscale
36:           image: "tailscale/tailscale:v1.104.4"
37:           securityContext:
38:             privileged: true
39:           env:
40:             - name: POD_NAME
41:               valueFrom:
42:                 fieldRef:
43:                   fieldPath: metadata.name
44:
```


## templates/hostnode-rbac.yaml

### KSV-0113 (MEDIUM): Manage namespace secrets

Role 'tailscale-exit' shouldn't have access to manage secrets in namespace 'default'

- Resolution: Manage namespace secrets are not allowed. Remove resource 'secrets' from role
- See: https://avd.aquasec.com/misconfig/ksv-0113
- Location: `templates/hostnode-rbac.yaml:7-9`

```
7:   - apiGroups: [""]
8:     resources: ["secrets"]
9:     verbs: ["create"]
```

### KSV-0113 (MEDIUM): Manage namespace secrets

Role 'tailscale-exit' shouldn't have access to manage secrets in namespace 'default'

- Resolution: Manage namespace secrets are not allowed. Remove resource 'secrets' from role
- See: https://avd.aquasec.com/misconfig/ksv-0113
- Location: `templates/hostnode-rbac.yaml:10-14`

```
10:   - apiGroups: [""]
11:     resources: ["secrets"]
12:     resourceNames:
13:       - "tailscale-exit-state"
14:     verbs: ["get", "update", "patch"]
```
