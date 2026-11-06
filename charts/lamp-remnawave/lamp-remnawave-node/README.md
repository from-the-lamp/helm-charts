# lamp-remnawave-node

![Version: 0.0.2](https://img.shields.io/badge/Version-0.0.2-informational?style=flat-square)

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| deployment.annotations | object | `{}` |  |
| deployment.replicas | int | `1` |  |
| env.SSL_CERT | string | `"eyJub2RlQ2VydFBlbSI6Ii0tLS0tQkVHSU4gQ0VSVElGSUNBVEUtLS0tLVxuTUlJQmZqQ0NBU09nQXdJQkFnSUhBWFZ5Z1dkVll6QUtCZ2dxaGtqT1BRUURBakFvTVNZd0pBWURWUVFERXgxblxuYWtFeVZDMHdha3B5TkhOMGMzaHdSMG8zV25RMWRsTkJUVFZsVnpBZUZ3MHlOVEE1TURjeU1UUTNOVFZhRncweVxuT0RBNU1EY3lNVFEzTlRWYU1DZ3hKakFrQmdOVkJBTVRIVUZxWXpjNVdEQjFSVXgxYzNrNGNGazJWVnBuWVdKQlxuWlhGMVJYTjVNRmt3RXdZSEtvWkl6ajBDQVFZSUtvWkl6ajBEQVFjRFFnQUVIUzF3MVNHUW1ValphemZhWmp6N1xua2xIQ2pPaG9hTVJBLyttS0VPS0dRZEt5c3MycnNLYWdPeDBBTXZrbnl3UEducFkvdkd5ZFlTVE1CTGhZTjh6RVxuZTZNNE1EWXdEQVlEVlIwVEFRSC9CQUl3QURBT0JnTlZIUThCQWY4RUJBTUNCYUF3RmdZRFZSMGxBUUgvQkF3d1xuQ2dZSUt3WUJCUVVIQXdFd0NnWUlLb1pJemowRUF3SURTUUF3UmdJaEFPN3Q0bWk4YStsR0ZHVjhvZmxXbG9kK1xuR1RiQU1tb0pOZFBqbnBHZGRjd2dBaUVBbkpTeFhSUlRxeERGUEZ0ZS81RUJqSEdrRlBFVFZzUWxLU0t6NnB0d1xuaElnPVxuLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLSIsIm5vZGVLZXlQZW0iOiItLS0tLUJFR0lOIFBSSVZBVEUgS0VZLS0tLS1cbk1JR0hBZ0VBTUJNR0J5cUdTTTQ5QWdFR0NDcUdTTTQ5QXdFSEJHMHdhd0lCQVFRZ3BWUG9keFZGa2lyb3hZQjhcbk9XbHNFVUlVR0pnVHV3ekZKUVJyNFRJTDZJZWhSQU5DQUFRZExYRFZJWkNaU05sck45cG1QUHVTVWNLTTZHaG9cbnhFRC82WW9RNG9aQjByS3l6YXV3cHFBN0hRQXkrU2ZMQThhZWxqKzhiSjFoSk13RXVGZzN6TVI3XG4tLS0tLUVORCBQUklWQVRFIEtFWS0tLS0tIiwiY2FDZXJ0UGVtIjoiLS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tXG5NSUlCWWpDQ0FRaWdBd0lCQWdJQkFUQUtCZ2dxaGtqT1BRUURBakFvTVNZd0pBWURWUVFERXgxbmFrRXlWQzB3XG5ha3B5TkhOMGMzaHdSMG8zV25RMWRsTkJUVFZsVnpBZUZ3MHlOVEE1TURjeU1UUTJNekJhRncwek5UQTVNRGN5XG5NVFEyTXpCYU1DZ3hKakFrQmdOVkJBTVRIV2RxUVRKVUxUQnFTbkkwYzNSemVIQkhTamRhZERWMlUwRk5OV1ZYXG5NRmt3RXdZSEtvWkl6ajBDQVFZSUtvWkl6ajBEQVFjRFFnQUVDS1Vja0k0YVBJNmU4SCtpU3k4QWwyLzlmSHZpXG5SUjBmYm9KT3ByQjZRMEsySlU4VzlYdG9zSWFXcnZOVWtKK1Nia0JHd29XMTYxUEFrQlJhVmo1bWU2TWpNQ0V3XG5Ed1lEVlIwVEFRSC9CQVV3QXdFQi96QU9CZ05WSFE4QkFmOEVCQU1DQW9Rd0NnWUlLb1pJemowRUF3SURTQUF3XG5SUUlnYUczSEJSWk1mZWxuaEF3S1l0UHh0UTRKNFhaanRPdlZnaHRiSWpDTy8zTUNJUURZd0VRd3dZWm9hdFpUXG5CTXl2MjdlL1FkcVVrem9BUVJSdCt6MnZJNThUMFE9PVxuLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLSIsImp3dFB1YmxpY0tleSI6Ii0tLS0tQkVHSU4gUFVCTElDIEtFWS0tLS0tXG5NSUlCSWpBTkJna3Foa2lHOXcwQkFRRUZBQU9DQVE4QU1JSUJDZ0tDQVFFQXdwOFJjaFhRRjFDM0xudkxBeklNXG51N1ExOFpKUm5oaFZaRlhKRkxCdm1jOG5vQ3lNSkt5ZnA4OGpaUWpveXhSYm1HTlAxT2xKaG4yV0R3V1JJbTV2XG5OK0tDVDNFNkRkdlZ1aHZGVFBBeEt2OFc3WDJkMzY5a1lXMXBocWpvdk91dXViUWVOanpNbkxHMGFHMkVDS2kyXG5GdXJOOU9YY2JQTjVlV0tHSFV4aGt6VC9CZG4vOEE2N1hPZGd4Q2NtUVhGVXhvUW5kbFlENDVaNU9rUGhpK2VuXG52TW8rZVNLWCtPTzgwNHJUemh0dU9sYlc3TmIwQkJjdWxpNnF0MkNUK0krSTVkSERDYmxJYVVYTExoaC93OURyXG5lMkFwOFZvbFVhYW9CTWl6Wk0xR2l1b0JvMjI5UC9YMnNDemFCU1VMeFlaWTVuRVlaeWN2azVlLy9iZVdlcC95XG40UUlEQVFBQlxuLS0tLS1FTkQgUFVCTElDIEtFWS0tLS0tXG4ifQ=="` |  |
| existingSecret | string | `""` |  |
| image.name | string | `"remnawave/node"` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.pullSecrets | list | `[]` |  |
| image.tag | string | `"2.1.6"` |  |
| service.annotations."oci-network-load-balancer.oraclecloud.com/security-list-management-mode" | string | `"All"` |  |
| service.annotations."oci.oraclecloud.com/load-balancer-type" | string | `"nlb"` |  |
| service.externalTrafficPolicy | string | `"Local"` |  |
| service.ports[0].name | string | `"node"` |  |
| service.ports[0].port | int | `2222` |  |
| service.ports[0].protocol | string | `"TCP"` |  |
| service.ports[0].targetPort | int | `2222` |  |
| service.ports[1].name | string | `"xray"` |  |
| service.ports[1].port | int | `1234` |  |
| service.ports[1].protocol | string | `"TCP"` |  |
| service.ports[1].targetPort | int | `1234` |  |
| service.type | string | `"LoadBalancer"` |  |
# Trivy scan - Helm Chart

## Report Summary

| Target | Type | Misconfigurations |
| --- | --- | --- |
| templates/deployment.yaml | helm | 18 |
| templates/env.yaml | helm | 1 |
| templates/service.yaml | helm | 0 |

## templates/deployment.yaml

### KSV-0001 (MEDIUM): Can elevate its own privileges

Container 'remnawave' of Deployment 'lamp-remnawave-node' should set 'securityContext.allowPrivilegeEscalation' to false

- Resolution: Set 'set containers[].securityContext.allowPrivilegeEscalation' to 'false'.
- See: https://avd.aquasec.com/misconfig/ksv-0001
- Location: `templates/deployment.yaml:26-31`

```
26:       - image: remnawave/node:2.1.6
27:         imagePullPolicy: IfNotPresent
28:         name: remnawave
29:         envFrom:
30:           - configMapRef:
31:               name: lamp-remnawave-node-config
```

### KSV-0003 (LOW): Default capabilities: some containers do not drop all

Container 'remnawave' of Deployment 'lamp-remnawave-node' should add 'ALL' to 'securityContext.capabilities.drop'

- Resolution: Add 'ALL' to containers[].securityContext.capabilities.drop.
- See: https://avd.aquasec.com/misconfig/ksv-0003
- Location: `templates/deployment.yaml:26-31`

```
26:       - image: remnawave/node:2.1.6
27:         imagePullPolicy: IfNotPresent
28:         name: remnawave
29:         envFrom:
30:           - configMapRef:
31:               name: lamp-remnawave-node-config
```

### KSV-0004 (LOW): Default capabilities: some containers do not drop any

Container 'remnawave' of 'deployment' 'lamp-remnawave-node' in 'default' namespace should set securityContext.capabilities.drop

- Resolution: Specify at least one unneeded capability in 'containers[].securityContext.capabilities.drop'
- See: https://avd.aquasec.com/misconfig/ksv-0004
- Location: `templates/deployment.yaml:26-31`

```
26:       - image: remnawave/node:2.1.6
27:         imagePullPolicy: IfNotPresent
28:         name: remnawave
29:         envFrom:
30:           - configMapRef:
31:               name: lamp-remnawave-node-config
```

### KSV-0011 (LOW): CPU not limited

Container 'remnawave' of Deployment 'lamp-remnawave-node' should set 'resources.limits.cpu'

- Resolution: Set a limit value under 'containers[].resources.limits.cpu'.
- See: https://avd.aquasec.com/misconfig/ksv-0011
- Location: `templates/deployment.yaml:26-31`

```
26:       - image: remnawave/node:2.1.6
27:         imagePullPolicy: IfNotPresent
28:         name: remnawave
29:         envFrom:
30:           - configMapRef:
31:               name: lamp-remnawave-node-config
```

### KSV-0012 (MEDIUM): Runs as root user

Container 'remnawave' of Deployment 'lamp-remnawave-node' should set 'securityContext.runAsNonRoot' to true

- Resolution: Set 'containers[].securityContext.runAsNonRoot' to true.
- See: https://avd.aquasec.com/misconfig/ksv-0012
- Location: `templates/deployment.yaml:26-31`

```
26:       - image: remnawave/node:2.1.6
27:         imagePullPolicy: IfNotPresent
28:         name: remnawave
29:         envFrom:
30:           - configMapRef:
31:               name: lamp-remnawave-node-config
```

### KSV-0014 (HIGH): Root file system is not read-only

Container 'remnawave' of Deployment 'lamp-remnawave-node' should set 'securityContext.readOnlyRootFilesystem' to true

- Resolution: Change 'containers[].securityContext.readOnlyRootFilesystem' to 'true'.
- See: https://avd.aquasec.com/misconfig/ksv-0014
- Location: `templates/deployment.yaml:26-31`

```
26:       - image: remnawave/node:2.1.6
27:         imagePullPolicy: IfNotPresent
28:         name: remnawave
29:         envFrom:
30:           - configMapRef:
31:               name: lamp-remnawave-node-config
```

### KSV-0015 (LOW): CPU requests not specified

Container 'remnawave' of Deployment 'lamp-remnawave-node' should set 'resources.requests.cpu'

- Resolution: Set 'containers[].resources.requests.cpu'.
- See: https://avd.aquasec.com/misconfig/ksv-0015
- Location: `templates/deployment.yaml:26-31`

```
26:       - image: remnawave/node:2.1.6
27:         imagePullPolicy: IfNotPresent
28:         name: remnawave
29:         envFrom:
30:           - configMapRef:
31:               name: lamp-remnawave-node-config
```

### KSV-0016 (LOW): Memory requests not specified

Container 'remnawave' of Deployment 'lamp-remnawave-node' should set 'resources.requests.memory'

- Resolution: Set 'containers[].resources.requests.memory'.
- See: https://avd.aquasec.com/misconfig/ksv-0016
- Location: `templates/deployment.yaml:26-31`

```
26:       - image: remnawave/node:2.1.6
27:         imagePullPolicy: IfNotPresent
28:         name: remnawave
29:         envFrom:
30:           - configMapRef:
31:               name: lamp-remnawave-node-config
```

### KSV-0018 (LOW): Memory not limited

Container 'remnawave' of Deployment 'lamp-remnawave-node' should set 'resources.limits.memory'

- Resolution: Set a limit value under 'containers[].resources.limits.memory'.
- See: https://avd.aquasec.com/misconfig/ksv-0018
- Location: `templates/deployment.yaml:26-31`

```
26:       - image: remnawave/node:2.1.6
27:         imagePullPolicy: IfNotPresent
28:         name: remnawave
29:         envFrom:
30:           - configMapRef:
31:               name: lamp-remnawave-node-config
```

### KSV-0020 (LOW): Runs with UID <= 10000

Container 'remnawave' of Deployment 'lamp-remnawave-node' should set 'securityContext.runAsUser' > 10000

- Resolution: Set 'containers[].securityContext.runAsUser' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0020
- Location: `templates/deployment.yaml:26-31`

```
26:       - image: remnawave/node:2.1.6
27:         imagePullPolicy: IfNotPresent
28:         name: remnawave
29:         envFrom:
30:           - configMapRef:
31:               name: lamp-remnawave-node-config
```

### KSV-0021 (LOW): Runs with GID <= 10000

Container 'remnawave' of Deployment 'lamp-remnawave-node' should set 'securityContext.runAsGroup' > 10000

- Resolution: Set 'containers[].securityContext.runAsGroup' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0021
- Location: `templates/deployment.yaml:26-31`

```
26:       - image: remnawave/node:2.1.6
27:         imagePullPolicy: IfNotPresent
28:         name: remnawave
29:         envFrom:
30:           - configMapRef:
31:               name: lamp-remnawave-node-config
```

### KSV-0030 (LOW): Runtime/Default Seccomp profile not set

Either Pod or Container should set 'securityContext.seccompProfile.type' to 'RuntimeDefault'

- Resolution: Set 'spec.securityContext.seccompProfile.type', 'spec.containers[*].securityContext.seccompProfile' and 'spec.initContainers[*].securityContext.seccompProfile' to 'RuntimeDefault' or undefined.
- See: https://avd.aquasec.com/misconfig/ksv-0030
- Location: `templates/deployment.yaml:26-31`

```
26:       - image: remnawave/node:2.1.6
27:         imagePullPolicy: IfNotPresent
28:         name: remnawave
29:         envFrom:
30:           - configMapRef:
31:               name: lamp-remnawave-node-config
```

### KSV-0104 (MEDIUM): Seccomp policies disabled

container "remnawave" of deployment "lamp-remnawave-node" in "default" namespace should specify a seccomp profile

- Resolution: Specify seccomp either by annotation or by seccomp profile type having allowed values as per pod security standards
- See: https://avd.aquasec.com/misconfig/ksv-0104
- Location: `templates/deployment.yaml:26-31`

```
26:       - image: remnawave/node:2.1.6
27:         imagePullPolicy: IfNotPresent
28:         name: remnawave
29:         envFrom:
30:           - configMapRef:
31:               name: lamp-remnawave-node-config
```

### KSV-0106 (LOW): Container capabilities must only include NET_BIND_SERVICE

container should drop all

- Resolution: Set 'spec.containers[*].securityContext.capabilities.drop' to 'ALL' and only add 'NET_BIND_SERVICE' to 'spec.containers[*].securityContext.capabilities.add'.
- See: https://avd.aquasec.com/misconfig/ksv-0106
- Location: `templates/deployment.yaml:26-31`

```
26:       - image: remnawave/node:2.1.6
27:         imagePullPolicy: IfNotPresent
28:         name: remnawave
29:         envFrom:
30:           - configMapRef:
31:               name: lamp-remnawave-node-config
```

### KSV-0110 (LOW): Workloads in the default namespace

deployment lamp-remnawave-node in default namespace should set metadata.namespace to a non-default namespace

- Resolution: Set 'metadata.namespace' to a non-default namespace.
- See: https://avd.aquasec.com/misconfig/ksv-0110
- Location: `templates/deployment.yaml:4-11`

```
4: metadata:
5:   name: lamp-remnawave-node
6:   labels:
7:     helm.sh/chart: lamp-remnawave-node-0.0.2
8:     app.kubernetes.io/name: lamp-remnawave-node
9:     app.kubernetes.io/instance: lamp-remnawave-node
10:     app.kubernetes.io/version: "2.1.6"
11:     app.kubernetes.io/managed-by: Helm
```

### KSV-0118 (HIGH): Default security context configured

container lamp-remnawave-node in default namespace is using the default security context

- Resolution: To enhance security, it is strongly recommended not to rely on the default security context. Instead, it is advisable to explicitly define the required security parameters (such as runAsNonRoot, capabilities, readOnlyRootFilesystem, etc.) within the security context.
- See: https://avd.aquasec.com/misconfig/ksv-0118
- Location: `templates/deployment.yaml:26-31`

```
26:       - image: remnawave/node:2.1.6
27:         imagePullPolicy: IfNotPresent
28:         name: remnawave
29:         envFrom:
30:           - configMapRef:
31:               name: lamp-remnawave-node-config
```

### KSV-0118 (HIGH): Default security context configured

deployment lamp-remnawave-node in default namespace is using the default security context, which allows root privileges

- Resolution: To enhance security, it is strongly recommended not to rely on the default security context. Instead, it is advisable to explicitly define the required security parameters (such as runAsNonRoot, capabilities, readOnlyRootFilesystem, etc.) within the security context.
- See: https://avd.aquasec.com/misconfig/ksv-0118
- Location: `templates/deployment.yaml:24-31`

```
24:     spec:
25:       containers:
26:       - image: remnawave/node:2.1.6
27:         imagePullPolicy: IfNotPresent
28:         name: remnawave
29:         envFrom:
30:           - configMapRef:
31:               name: lamp-remnawave-node-config
```

### KSV-0125 (MEDIUM): Restrict container images to trusted registries

Container remnawave in deployment lamp-remnawave-node (namespace: default) uses an image from an untrusted registry.

- Resolution: Use images from trusted registries.
- See: https://avd.aquasec.com/misconfig/ksv-0125
- Location: `templates/deployment.yaml:26-31`

```
26:       - image: remnawave/node:2.1.6
27:         imagePullPolicy: IfNotPresent
28:         name: remnawave
29:         envFrom:
30:           - configMapRef:
31:               name: lamp-remnawave-node-config
```


## templates/env.yaml

### KSV-01010 (MEDIUM): ConfigMap with sensitive content

ConfigMap 'lamp-remnawave-node-config' in 'default' namespace stores sensitive contents in key(s) or value(s) '{"APP_PORT", "SSL_CERT"}'

- Resolution: Remove sensitive content from configMap data value
- See: https://avd.aquasec.com/misconfig/ksv-01010
