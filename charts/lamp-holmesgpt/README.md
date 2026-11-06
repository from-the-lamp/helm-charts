# lamp-holmesgpt

![Version: 0.0.1](https://img.shields.io/badge/Version-0.0.1-informational?style=flat-square)

Thin wrapper around the upstream HolmesGPT chart (read-only alert/incident investigation agent)

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://robusta-charts.storage.googleapis.com | holmes | 0.46.0 |

# Trivy scan - Helm Chart

## Report Summary

| Target | Type | Misconfigurations |
| --- | --- | --- |
| charts/holmes/templates/holmes.yaml | helm | 12 |
| charts/holmes/templates/holmesgpt-service-account.yaml | helm | 0 |
| charts/holmes/templates/toolset-config.yaml | helm | 0 |

## charts/holmes/templates/holmes.yaml

### KSV-0001 (MEDIUM): Can elevate its own privileges

Container 'holmes' of Deployment 'lamp-holmesgpt-holmes' should set 'securityContext.allowPrivilegeEscalation' to false

- Resolution: Set 'set containers[].securityContext.allowPrivilegeEscalation' to 'false'.
- See: https://avd.aquasec.com/misconfig/ksv-0001
- Location: `charts/holmes/templates/holmes.yaml:28-84`

```
28:       - name: holmes
29:         image: "robustadev/holmes:0.46.0"
30:         imagePullPolicy: IfNotPresent
31:         # Read-only root filesystem for security hardening.
32:         # /tmp is mounted as a writable emptyDir for ephemeral tool result files.
33:         # Required for OpenShift restricted SCC and other security-hardened
34:         # environments that enforce read-only root filesystems.
35:         securityContext:
36:           readOnlyRootFilesystem: true
37:
```

### KSV-0003 (LOW): Default capabilities: some containers do not drop all

Container 'holmes' of Deployment 'lamp-holmesgpt-holmes' should add 'ALL' to 'securityContext.capabilities.drop'

- Resolution: Add 'ALL' to containers[].securityContext.capabilities.drop.
- See: https://avd.aquasec.com/misconfig/ksv-0003
- Location: `charts/holmes/templates/holmes.yaml:28-84`

```
28:       - name: holmes
29:         image: "robustadev/holmes:0.46.0"
30:         imagePullPolicy: IfNotPresent
31:         # Read-only root filesystem for security hardening.
32:         # /tmp is mounted as a writable emptyDir for ephemeral tool result files.
33:         # Required for OpenShift restricted SCC and other security-hardened
34:         # environments that enforce read-only root filesystems.
35:         securityContext:
36:           readOnlyRootFilesystem: true
37:
```

### KSV-0004 (LOW): Default capabilities: some containers do not drop any

Container 'holmes' of 'deployment' 'lamp-holmesgpt-holmes' in 'null' namespace should set securityContext.capabilities.drop

- Resolution: Specify at least one unneeded capability in 'containers[].securityContext.capabilities.drop'
- See: https://avd.aquasec.com/misconfig/ksv-0004
- Location: `charts/holmes/templates/holmes.yaml:28-84`

```
28:       - name: holmes
29:         image: "robustadev/holmes:0.46.0"
30:         imagePullPolicy: IfNotPresent
31:         # Read-only root filesystem for security hardening.
32:         # /tmp is mounted as a writable emptyDir for ephemeral tool result files.
33:         # Required for OpenShift restricted SCC and other security-hardened
34:         # environments that enforce read-only root filesystems.
35:         securityContext:
36:           readOnlyRootFilesystem: true
37:
```

### KSV-0011 (LOW): CPU not limited

Container 'holmes' of Deployment 'lamp-holmesgpt-holmes' should set 'resources.limits.cpu'

- Resolution: Set a limit value under 'containers[].resources.limits.cpu'.
- See: https://avd.aquasec.com/misconfig/ksv-0011
- Location: `charts/holmes/templates/holmes.yaml:28-84`

```
28:       - name: holmes
29:         image: "robustadev/holmes:0.46.0"
30:         imagePullPolicy: IfNotPresent
31:         # Read-only root filesystem for security hardening.
32:         # /tmp is mounted as a writable emptyDir for ephemeral tool result files.
33:         # Required for OpenShift restricted SCC and other security-hardened
34:         # environments that enforce read-only root filesystems.
35:         securityContext:
36:           readOnlyRootFilesystem: true
37:
```

### KSV-0012 (MEDIUM): Runs as root user

Container 'holmes' of Deployment 'lamp-holmesgpt-holmes' should set 'securityContext.runAsNonRoot' to true

- Resolution: Set 'containers[].securityContext.runAsNonRoot' to true.
- See: https://avd.aquasec.com/misconfig/ksv-0012
- Location: `charts/holmes/templates/holmes.yaml:28-84`

```
28:       - name: holmes
29:         image: "robustadev/holmes:0.46.0"
30:         imagePullPolicy: IfNotPresent
31:         # Read-only root filesystem for security hardening.
32:         # /tmp is mounted as a writable emptyDir for ephemeral tool result files.
33:         # Required for OpenShift restricted SCC and other security-hardened
34:         # environments that enforce read-only root filesystems.
35:         securityContext:
36:           readOnlyRootFilesystem: true
37:
```

### KSV-0020 (LOW): Runs with UID <= 10000

Container 'holmes' of Deployment 'lamp-holmesgpt-holmes' should set 'securityContext.runAsUser' > 10000

- Resolution: Set 'containers[].securityContext.runAsUser' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0020
- Location: `charts/holmes/templates/holmes.yaml:28-84`

```
28:       - name: holmes
29:         image: "robustadev/holmes:0.46.0"
30:         imagePullPolicy: IfNotPresent
31:         # Read-only root filesystem for security hardening.
32:         # /tmp is mounted as a writable emptyDir for ephemeral tool result files.
33:         # Required for OpenShift restricted SCC and other security-hardened
34:         # environments that enforce read-only root filesystems.
35:         securityContext:
36:           readOnlyRootFilesystem: true
37:
```

### KSV-0021 (LOW): Runs with GID <= 10000

Container 'holmes' of Deployment 'lamp-holmesgpt-holmes' should set 'securityContext.runAsGroup' > 10000

- Resolution: Set 'containers[].securityContext.runAsGroup' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0021
- Location: `charts/holmes/templates/holmes.yaml:28-84`

```
28:       - name: holmes
29:         image: "robustadev/holmes:0.46.0"
30:         imagePullPolicy: IfNotPresent
31:         # Read-only root filesystem for security hardening.
32:         # /tmp is mounted as a writable emptyDir for ephemeral tool result files.
33:         # Required for OpenShift restricted SCC and other security-hardened
34:         # environments that enforce read-only root filesystems.
35:         securityContext:
36:           readOnlyRootFilesystem: true
37:
```

### KSV-0030 (LOW): Runtime/Default Seccomp profile not set

Either Pod or Container should set 'securityContext.seccompProfile.type' to 'RuntimeDefault'

- Resolution: Set 'spec.securityContext.seccompProfile.type', 'spec.containers[*].securityContext.seccompProfile' and 'spec.initContainers[*].securityContext.seccompProfile' to 'RuntimeDefault' or undefined.
- See: https://avd.aquasec.com/misconfig/ksv-0030
- Location: `charts/holmes/templates/holmes.yaml:28-84`

```
28:       - name: holmes
29:         image: "robustadev/holmes:0.46.0"
30:         imagePullPolicy: IfNotPresent
31:         # Read-only root filesystem for security hardening.
32:         # /tmp is mounted as a writable emptyDir for ephemeral tool result files.
33:         # Required for OpenShift restricted SCC and other security-hardened
34:         # environments that enforce read-only root filesystems.
35:         securityContext:
36:           readOnlyRootFilesystem: true
37:
```

### KSV-0104 (MEDIUM): Seccomp policies disabled

container "holmes" of deployment "lamp-holmesgpt-holmes" in "null" namespace should specify a seccomp profile

- Resolution: Specify seccomp either by annotation or by seccomp profile type having allowed values as per pod security standards
- See: https://avd.aquasec.com/misconfig/ksv-0104
- Location: `charts/holmes/templates/holmes.yaml:28-84`

```
28:       - name: holmes
29:         image: "robustadev/holmes:0.46.0"
30:         imagePullPolicy: IfNotPresent
31:         # Read-only root filesystem for security hardening.
32:         # /tmp is mounted as a writable emptyDir for ephemeral tool result files.
33:         # Required for OpenShift restricted SCC and other security-hardened
34:         # environments that enforce read-only root filesystems.
35:         securityContext:
36:           readOnlyRootFilesystem: true
37:
```

### KSV-0106 (LOW): Container capabilities must only include NET_BIND_SERVICE

container should drop all

- Resolution: Set 'spec.containers[*].securityContext.capabilities.drop' to 'ALL' and only add 'NET_BIND_SERVICE' to 'spec.containers[*].securityContext.capabilities.add'.
- See: https://avd.aquasec.com/misconfig/ksv-0106
- Location: `charts/holmes/templates/holmes.yaml:28-84`

```
28:       - name: holmes
29:         image: "robustadev/holmes:0.46.0"
30:         imagePullPolicy: IfNotPresent
31:         # Read-only root filesystem for security hardening.
32:         # /tmp is mounted as a writable emptyDir for ephemeral tool result files.
33:         # Required for OpenShift restricted SCC and other security-hardened
34:         # environments that enforce read-only root filesystems.
35:         securityContext:
36:           readOnlyRootFilesystem: true
37:
```

### KSV-0118 (HIGH): Default security context configured

deployment lamp-holmesgpt-holmes in null namespace is using the default security context, which allows root privileges

- Resolution: To enhance security, it is strongly recommended not to rely on the default security context. Instead, it is advisable to explicitly define the required security parameters (such as runAsNonRoot, capabilities, readOnlyRootFilesystem, etc.) within the security context.
- See: https://avd.aquasec.com/misconfig/ksv-0118
- Location: `charts/holmes/templates/holmes.yaml:24-97`

```
24:     spec:
25:       serviceAccountName: lamp-holmesgpt-holmes-service-account
26:       dnsPolicy: ClusterFirst
27:       containers:
28:       - name: holmes
29:         image: "robustadev/holmes:0.46.0"
30:         imagePullPolicy: IfNotPresent
31:         # Read-only root filesystem for security hardening.
32:         # /tmp is mounted as a writable emptyDir for ephemeral tool result files.
33:
```

### KSV-0125 (MEDIUM): Restrict container images to trusted registries

Container holmes in deployment lamp-holmesgpt-holmes (namespace: null) uses an image from an untrusted registry.

- Resolution: Use images from trusted registries.
- See: https://avd.aquasec.com/misconfig/ksv-0125
- Location: `charts/holmes/templates/holmes.yaml:28-84`

```
28:       - name: holmes
29:         image: "robustadev/holmes:0.46.0"
30:         imagePullPolicy: IfNotPresent
31:         # Read-only root filesystem for security hardening.
32:         # /tmp is mounted as a writable emptyDir for ephemeral tool result files.
33:         # Required for OpenShift restricted SCC and other security-hardened
34:         # environments that enforce read-only root filesystems.
35:         securityContext:
36:           readOnlyRootFilesystem: true
37:
```
