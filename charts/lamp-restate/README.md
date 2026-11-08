# lamp-restate

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square)

Restate - durable execution engine for the monorepo processor (replaces Windmill's suspend/resume for human-in-the-loop approval)

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| oci://ghcr.io/restatedev | restate(restate-helm) | 1.0.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| restate.nameOverride | string | `"restate"` |  |
| restate.resources.limits.memory | string | `"1Gi"` |  |
| restate.resources.requests.cpu | string | `"100m"` |  |
| restate.resources.requests.memory | string | `"256Mi"` |  |
| restate.storage.size | string | `"10Gi"` |  |
| restate.storage.storageClassName | string | `"local-path"` |  |
| restate.version | string | `"1.7.12"` |  |
# Trivy scan - Helm Chart

## Report Summary

| Target | Type | Misconfigurations |
| --- | --- | --- |
| charts/restate/templates/service.yaml | helm | 0 |
| charts/restate/templates/serviceaccount.yaml | helm | 0 |
| charts/restate/templates/statefulset.yaml | helm | 6 |

## charts/restate/templates/statefulset.yaml

### KSV-0020 (LOW): Runs with UID <= 10000

Container 'restate' of StatefulSet 'restate' should set 'securityContext.runAsUser' > 10000

- Resolution: Set 'containers[].securityContext.runAsUser' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0020
- Location: `charts/restate/templates/statefulset.yaml:28-71`

```
28:         - name: restate
29:           image: docker.io/restatedev/restate:1.7.12
30:           imagePullPolicy: IfNotPresent
31:           securityContext:
32:             allowPrivilegeEscalation: false
33:             capabilities:
34:               drop:
35:               - ALL
36:             readOnlyRootFilesystem: true
37:
```

### KSV-0021 (LOW): Runs with GID <= 10000

Container 'restate' of StatefulSet 'restate' should set 'securityContext.runAsGroup' > 10000

- Resolution: Set 'containers[].securityContext.runAsGroup' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0021
- Location: `charts/restate/templates/statefulset.yaml:28-71`

```
28:         - name: restate
29:           image: docker.io/restatedev/restate:1.7.12
30:           imagePullPolicy: IfNotPresent
31:           securityContext:
32:             allowPrivilegeEscalation: false
33:             capabilities:
34:               drop:
35:               - ALL
36:             readOnlyRootFilesystem: true
37:
```

### KSV-0030 (LOW): Runtime/Default Seccomp profile not set

Either Pod or Container should set 'securityContext.seccompProfile.type' to 'RuntimeDefault'

- Resolution: Set 'spec.securityContext.seccompProfile.type', 'spec.containers[*].securityContext.seccompProfile' and 'spec.initContainers[*].securityContext.seccompProfile' to 'RuntimeDefault' or undefined.
- See: https://avd.aquasec.com/misconfig/ksv-0030
- Location: `charts/restate/templates/statefulset.yaml:28-71`

```
28:         - name: restate
29:           image: docker.io/restatedev/restate:1.7.12
30:           imagePullPolicy: IfNotPresent
31:           securityContext:
32:             allowPrivilegeEscalation: false
33:             capabilities:
34:               drop:
35:               - ALL
36:             readOnlyRootFilesystem: true
37:
```

### KSV-0104 (MEDIUM): Seccomp policies disabled

container "restate" of statefulset "restate" in "default" namespace should specify a seccomp profile

- Resolution: Specify seccomp either by annotation or by seccomp profile type having allowed values as per pod security standards
- See: https://avd.aquasec.com/misconfig/ksv-0104
- Location: `charts/restate/templates/statefulset.yaml:28-71`

```
28:         - name: restate
29:           image: docker.io/restatedev/restate:1.7.12
30:           imagePullPolicy: IfNotPresent
31:           securityContext:
32:             allowPrivilegeEscalation: false
33:             capabilities:
34:               drop:
35:               - ALL
36:             readOnlyRootFilesystem: true
37:
```

### KSV-0110 (LOW): Workloads in the default namespace

statefulset restate in default namespace should set metadata.namespace to a non-default namespace

- Resolution: Set 'metadata.namespace' to a non-default namespace.
- See: https://avd.aquasec.com/misconfig/ksv-0110
- Location: `charts/restate/templates/statefulset.yaml:4-9`

```
4: metadata:
5:   name: restate
6:   labels:
7:     app: restate
8:     app.kubernetes.io/name: restate
9:     app.kubernetes.io/version: "1.7.12"
```

### KSV-0125 (MEDIUM): Restrict container images to trusted registries

Container restate in statefulset restate (namespace: default) uses an image from an untrusted registry.

- Resolution: Use images from trusted registries.
- See: https://avd.aquasec.com/misconfig/ksv-0125
- Location: `charts/restate/templates/statefulset.yaml:28-71`

```
28:         - name: restate
29:           image: docker.io/restatedev/restate:1.7.12
30:           imagePullPolicy: IfNotPresent
31:           securityContext:
32:             allowPrivilegeEscalation: false
33:             capabilities:
34:               drop:
35:               - ALL
36:             readOnlyRootFilesystem: true
37:
```
