# lamp-home-assistant

![Version: 0.1.2](https://img.shields.io/badge/Version-0.1.2-informational?style=flat-square)

Home Assistant deployment chart

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| additionalPorts | list | `[]` |  |
| additionalServices | list | `[]` |  |
| adminBootstrap.enabled | bool | `false` |  |
| adminBootstrap.language | string | `"en"` |  |
| adminBootstrap.nameProperty | string | `"admin-name"` |  |
| adminBootstrap.passwordProperty | string | `"admin-password"` |  |
| adminBootstrap.remoteSecretKey | string | `"home-assistant"` |  |
| adminBootstrap.usernameProperty | string | `"admin-username"` |  |
| affinity | object | `{}` |  |
| configuration.history | string | `nil` |  |
| configuration.http.trusted_proxies[0] | string | `"10.42.0.0/16"` |  |
| configuration.http.use_x_forwarded_for | bool | `true` |  |
| configuration.logbook | string | `nil` |  |
| configuration.lovelace.mode | string | `"yaml"` |  |
| configuration.recorder.include.entities[0] | string | `"device_tracker.lbphone"` |  |
| configuration.recorder.include.entities[1] | string | `"device_tracker.pixel_6"` |  |
| configuration.sensor[0].duration.hours | int | `48` |  |
| configuration.sensor[0].end | string | `"{{ now() }}"` |  |
| configuration.sensor[0].entity_id | string | `"device_tracker.lbphone"` |  |
| configuration.sensor[0].name | string | `"LBPhone Movement"` |  |
| configuration.sensor[0].platform | string | `"history_stats"` |  |
| configuration.sensor[0].state | string | `"home"` |  |
| configuration.sensor[0].type | string | `"time"` |  |
| configuration.sensor[1].duration.hours | int | `48` |  |
| configuration.sensor[1].end | string | `"{{ now() }}"` |  |
| configuration.sensor[1].entity_id | string | `"device_tracker.pixel_6"` |  |
| configuration.sensor[1].name | string | `"Pixel6 Movement"` |  |
| configuration.sensor[1].platform | string | `"history_stats"` |  |
| configuration.sensor[1].state | string | `"home"` |  |
| configuration.sensor[1].type | string | `"time"` |  |
| env | list | `[]` |  |
| envFrom | list | `[]` |  |
| externalSecrets.creationPolicy | string | `"Orphan"` |  |
| externalSecrets.kind | string | `"ClusterSecretStore"` |  |
| externalSecrets.name | string | `"vault"` |  |
| externalSecrets.refreshInterval | string | `"1h"` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"ghcr.io/home-assistant/home-assistant"` |  |
| image.tag | string | `"stable"` |  |
| imagePullSecrets | list | `[]` |  |
| lovelace.title | string | `"Home"` |  |
| lovelace.views[0].cards[0].auto_fit | bool | `true` |  |
| lovelace.views[0].cards[0].entities[0] | string | `"zone.home"` |  |
| lovelace.views[0].cards[0].entities[1] | string | `"device_tracker.lbphone"` |  |
| lovelace.views[0].cards[0].entities[2] | string | `"device_tracker.pixel_6"` |  |
| lovelace.views[0].cards[0].hours_to_show | int | `48` |  |
| lovelace.views[0].cards[0].track[0].entity | string | `"device_tracker.lbphone"` |  |
| lovelace.views[0].cards[0].track[0].hours_to_show | int | `48` |  |
| lovelace.views[0].cards[0].track[0].name | string | `"LBPhone Track"` |  |
| lovelace.views[0].cards[0].track[1].entity | string | `"device_tracker.pixel_6"` |  |
| lovelace.views[0].cards[0].track[1].hours_to_show | int | `48` |  |
| lovelace.views[0].cards[0].track[1].name | string | `"Pixel 6 Track"` |  |
| lovelace.views[0].cards[0].type | string | `"map"` |  |
| lovelace.views[0].hours_to_show | int | `48` |  |
| lovelace.views[0].icon | string | `"mdi:map"` |  |
| lovelace.views[0].subview | bool | `true` |  |
| lovelace.views[0].title | string | `"Map"` |  |
| lovelace.views[0].type | string | `"panel"` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| persistence.accessMode | string | `"ReadWriteOnce"` |  |
| persistence.size | string | `"5Gi"` |  |
| persistence.storageClass | string | `""` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| securityContext | object | `{}` |  |
| service.annotations | object | `{}` |  |
| service.port | int | `8080` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |
| tolerations | list | `[]` |  |
# Trivy scan - Helm Chart

## Report Summary

| Target | Type | Misconfigurations |
| --- | --- | --- |
| templates/config.yaml | helm | 0 |
| templates/lovelace.yaml | helm | 0 |
| templates/service.yaml | helm | 0 |
| templates/serviceaccount.yaml | helm | 0 |
| templates/statefulset.yaml | helm | 34 |

## templates/statefulset.yaml

### KSV-0001 (MEDIUM): Can elevate its own privileges

Container 'http-storage-seed' of StatefulSet 'lamp-home-assistant' should set 'securityContext.allowPrivilegeEscalation' to false

- Resolution: Set 'set containers[].securityContext.allowPrivilegeEscalation' to 'false'.
- See: https://avd.aquasec.com/misconfig/ksv-0001
- Location: `templates/statefulset.yaml:29-69`

```
29:         - name: http-storage-seed
30:           image: "ghcr.io/home-assistant/home-assistant:stable"
31:           imagePullPolicy: IfNotPresent
32:           securityContext:
33:             {}
34:           env:
35:             - name: TRUSTED_PROXIES_JSON
36:               value: "[\"10.42.0.0/16\"]"
37:             - name: USE_X_FORWARDED_FOR
38:
```

### KSV-0001 (MEDIUM): Can elevate its own privileges

Container 'lamp-home-assistant' of StatefulSet 'lamp-home-assistant' should set 'securityContext.allowPrivilegeEscalation' to false

- Resolution: Set 'set containers[].securityContext.allowPrivilegeEscalation' to 'false'.
- See: https://avd.aquasec.com/misconfig/ksv-0001
- Location: `templates/statefulset.yaml:71-96`

```
71:         - name: lamp-home-assistant
72:           securityContext:
73:             {}
74:           image: "ghcr.io/home-assistant/home-assistant:stable"
75:           imagePullPolicy: IfNotPresent
76:           ports:
77:             - name: http
78:               containerPort: 8123
79:               protocol: TCP
80:
```

### KSV-0003 (LOW): Default capabilities: some containers do not drop all

Container 'http-storage-seed' of StatefulSet 'lamp-home-assistant' should add 'ALL' to 'securityContext.capabilities.drop'

- Resolution: Add 'ALL' to containers[].securityContext.capabilities.drop.
- See: https://avd.aquasec.com/misconfig/ksv-0003
- Location: `templates/statefulset.yaml:29-69`

```
29:         - name: http-storage-seed
30:           image: "ghcr.io/home-assistant/home-assistant:stable"
31:           imagePullPolicy: IfNotPresent
32:           securityContext:
33:             {}
34:           env:
35:             - name: TRUSTED_PROXIES_JSON
36:               value: "[\"10.42.0.0/16\"]"
37:             - name: USE_X_FORWARDED_FOR
38:
```

### KSV-0003 (LOW): Default capabilities: some containers do not drop all

Container 'lamp-home-assistant' of StatefulSet 'lamp-home-assistant' should add 'ALL' to 'securityContext.capabilities.drop'

- Resolution: Add 'ALL' to containers[].securityContext.capabilities.drop.
- See: https://avd.aquasec.com/misconfig/ksv-0003
- Location: `templates/statefulset.yaml:71-96`

```
71:         - name: lamp-home-assistant
72:           securityContext:
73:             {}
74:           image: "ghcr.io/home-assistant/home-assistant:stable"
75:           imagePullPolicy: IfNotPresent
76:           ports:
77:             - name: http
78:               containerPort: 8123
79:               protocol: TCP
80:
```

### KSV-0004 (LOW): Default capabilities: some containers do not drop any

Container 'http-storage-seed' of 'statefulset' 'lamp-home-assistant' in 'default' namespace should set securityContext.capabilities.drop

- Resolution: Specify at least one unneeded capability in 'containers[].securityContext.capabilities.drop'
- See: https://avd.aquasec.com/misconfig/ksv-0004
- Location: `templates/statefulset.yaml:29-69`

```
29:         - name: http-storage-seed
30:           image: "ghcr.io/home-assistant/home-assistant:stable"
31:           imagePullPolicy: IfNotPresent
32:           securityContext:
33:             {}
34:           env:
35:             - name: TRUSTED_PROXIES_JSON
36:               value: "[\"10.42.0.0/16\"]"
37:             - name: USE_X_FORWARDED_FOR
38:
```

### KSV-0004 (LOW): Default capabilities: some containers do not drop any

Container 'lamp-home-assistant' of 'statefulset' 'lamp-home-assistant' in 'default' namespace should set securityContext.capabilities.drop

- Resolution: Specify at least one unneeded capability in 'containers[].securityContext.capabilities.drop'
- See: https://avd.aquasec.com/misconfig/ksv-0004
- Location: `templates/statefulset.yaml:71-96`

```
71:         - name: lamp-home-assistant
72:           securityContext:
73:             {}
74:           image: "ghcr.io/home-assistant/home-assistant:stable"
75:           imagePullPolicy: IfNotPresent
76:           ports:
77:             - name: http
78:               containerPort: 8123
79:               protocol: TCP
80:
```

### KSV-0011 (LOW): CPU not limited

Container 'http-storage-seed' of StatefulSet 'lamp-home-assistant' should set 'resources.limits.cpu'

- Resolution: Set a limit value under 'containers[].resources.limits.cpu'.
- See: https://avd.aquasec.com/misconfig/ksv-0011
- Location: `templates/statefulset.yaml:29-69`

```
29:         - name: http-storage-seed
30:           image: "ghcr.io/home-assistant/home-assistant:stable"
31:           imagePullPolicy: IfNotPresent
32:           securityContext:
33:             {}
34:           env:
35:             - name: TRUSTED_PROXIES_JSON
36:               value: "[\"10.42.0.0/16\"]"
37:             - name: USE_X_FORWARDED_FOR
38:
```

### KSV-0011 (LOW): CPU not limited

Container 'lamp-home-assistant' of StatefulSet 'lamp-home-assistant' should set 'resources.limits.cpu'

- Resolution: Set a limit value under 'containers[].resources.limits.cpu'.
- See: https://avd.aquasec.com/misconfig/ksv-0011
- Location: `templates/statefulset.yaml:71-96`

```
71:         - name: lamp-home-assistant
72:           securityContext:
73:             {}
74:           image: "ghcr.io/home-assistant/home-assistant:stable"
75:           imagePullPolicy: IfNotPresent
76:           ports:
77:             - name: http
78:               containerPort: 8123
79:               protocol: TCP
80:
```

### KSV-0012 (MEDIUM): Runs as root user

Container 'http-storage-seed' of StatefulSet 'lamp-home-assistant' should set 'securityContext.runAsNonRoot' to true

- Resolution: Set 'containers[].securityContext.runAsNonRoot' to true.
- See: https://avd.aquasec.com/misconfig/ksv-0012
- Location: `templates/statefulset.yaml:29-69`

```
29:         - name: http-storage-seed
30:           image: "ghcr.io/home-assistant/home-assistant:stable"
31:           imagePullPolicy: IfNotPresent
32:           securityContext:
33:             {}
34:           env:
35:             - name: TRUSTED_PROXIES_JSON
36:               value: "[\"10.42.0.0/16\"]"
37:             - name: USE_X_FORWARDED_FOR
38:
```

### KSV-0012 (MEDIUM): Runs as root user

Container 'lamp-home-assistant' of StatefulSet 'lamp-home-assistant' should set 'securityContext.runAsNonRoot' to true

- Resolution: Set 'containers[].securityContext.runAsNonRoot' to true.
- See: https://avd.aquasec.com/misconfig/ksv-0012
- Location: `templates/statefulset.yaml:71-96`

```
71:         - name: lamp-home-assistant
72:           securityContext:
73:             {}
74:           image: "ghcr.io/home-assistant/home-assistant:stable"
75:           imagePullPolicy: IfNotPresent
76:           ports:
77:             - name: http
78:               containerPort: 8123
79:               protocol: TCP
80:
```

### KSV-0014 (HIGH): Root file system is not read-only

Container 'http-storage-seed' of StatefulSet 'lamp-home-assistant' should set 'securityContext.readOnlyRootFilesystem' to true

- Resolution: Change 'containers[].securityContext.readOnlyRootFilesystem' to 'true'.
- See: https://avd.aquasec.com/misconfig/ksv-0014
- Location: `templates/statefulset.yaml:29-69`

```
29:         - name: http-storage-seed
30:           image: "ghcr.io/home-assistant/home-assistant:stable"
31:           imagePullPolicy: IfNotPresent
32:           securityContext:
33:             {}
34:           env:
35:             - name: TRUSTED_PROXIES_JSON
36:               value: "[\"10.42.0.0/16\"]"
37:             - name: USE_X_FORWARDED_FOR
38:
```

### KSV-0014 (HIGH): Root file system is not read-only

Container 'lamp-home-assistant' of StatefulSet 'lamp-home-assistant' should set 'securityContext.readOnlyRootFilesystem' to true

- Resolution: Change 'containers[].securityContext.readOnlyRootFilesystem' to 'true'.
- See: https://avd.aquasec.com/misconfig/ksv-0014
- Location: `templates/statefulset.yaml:71-96`

```
71:         - name: lamp-home-assistant
72:           securityContext:
73:             {}
74:           image: "ghcr.io/home-assistant/home-assistant:stable"
75:           imagePullPolicy: IfNotPresent
76:           ports:
77:             - name: http
78:               containerPort: 8123
79:               protocol: TCP
80:
```

### KSV-0015 (LOW): CPU requests not specified

Container 'http-storage-seed' of StatefulSet 'lamp-home-assistant' should set 'resources.requests.cpu'

- Resolution: Set 'containers[].resources.requests.cpu'.
- See: https://avd.aquasec.com/misconfig/ksv-0015
- Location: `templates/statefulset.yaml:29-69`

```
29:         - name: http-storage-seed
30:           image: "ghcr.io/home-assistant/home-assistant:stable"
31:           imagePullPolicy: IfNotPresent
32:           securityContext:
33:             {}
34:           env:
35:             - name: TRUSTED_PROXIES_JSON
36:               value: "[\"10.42.0.0/16\"]"
37:             - name: USE_X_FORWARDED_FOR
38:
```

### KSV-0015 (LOW): CPU requests not specified

Container 'lamp-home-assistant' of StatefulSet 'lamp-home-assistant' should set 'resources.requests.cpu'

- Resolution: Set 'containers[].resources.requests.cpu'.
- See: https://avd.aquasec.com/misconfig/ksv-0015
- Location: `templates/statefulset.yaml:71-96`

```
71:         - name: lamp-home-assistant
72:           securityContext:
73:             {}
74:           image: "ghcr.io/home-assistant/home-assistant:stable"
75:           imagePullPolicy: IfNotPresent
76:           ports:
77:             - name: http
78:               containerPort: 8123
79:               protocol: TCP
80:
```

### KSV-0016 (LOW): Memory requests not specified

Container 'http-storage-seed' of StatefulSet 'lamp-home-assistant' should set 'resources.requests.memory'

- Resolution: Set 'containers[].resources.requests.memory'.
- See: https://avd.aquasec.com/misconfig/ksv-0016
- Location: `templates/statefulset.yaml:29-69`

```
29:         - name: http-storage-seed
30:           image: "ghcr.io/home-assistant/home-assistant:stable"
31:           imagePullPolicy: IfNotPresent
32:           securityContext:
33:             {}
34:           env:
35:             - name: TRUSTED_PROXIES_JSON
36:               value: "[\"10.42.0.0/16\"]"
37:             - name: USE_X_FORWARDED_FOR
38:
```

### KSV-0016 (LOW): Memory requests not specified

Container 'lamp-home-assistant' of StatefulSet 'lamp-home-assistant' should set 'resources.requests.memory'

- Resolution: Set 'containers[].resources.requests.memory'.
- See: https://avd.aquasec.com/misconfig/ksv-0016
- Location: `templates/statefulset.yaml:71-96`

```
71:         - name: lamp-home-assistant
72:           securityContext:
73:             {}
74:           image: "ghcr.io/home-assistant/home-assistant:stable"
75:           imagePullPolicy: IfNotPresent
76:           ports:
77:             - name: http
78:               containerPort: 8123
79:               protocol: TCP
80:
```

### KSV-0018 (LOW): Memory not limited

Container 'http-storage-seed' of StatefulSet 'lamp-home-assistant' should set 'resources.limits.memory'

- Resolution: Set a limit value under 'containers[].resources.limits.memory'.
- See: https://avd.aquasec.com/misconfig/ksv-0018
- Location: `templates/statefulset.yaml:29-69`

```
29:         - name: http-storage-seed
30:           image: "ghcr.io/home-assistant/home-assistant:stable"
31:           imagePullPolicy: IfNotPresent
32:           securityContext:
33:             {}
34:           env:
35:             - name: TRUSTED_PROXIES_JSON
36:               value: "[\"10.42.0.0/16\"]"
37:             - name: USE_X_FORWARDED_FOR
38:
```

### KSV-0018 (LOW): Memory not limited

Container 'lamp-home-assistant' of StatefulSet 'lamp-home-assistant' should set 'resources.limits.memory'

- Resolution: Set a limit value under 'containers[].resources.limits.memory'.
- See: https://avd.aquasec.com/misconfig/ksv-0018
- Location: `templates/statefulset.yaml:71-96`

```
71:         - name: lamp-home-assistant
72:           securityContext:
73:             {}
74:           image: "ghcr.io/home-assistant/home-assistant:stable"
75:           imagePullPolicy: IfNotPresent
76:           ports:
77:             - name: http
78:               containerPort: 8123
79:               protocol: TCP
80:
```

### KSV-0020 (LOW): Runs with UID <= 10000

Container 'http-storage-seed' of StatefulSet 'lamp-home-assistant' should set 'securityContext.runAsUser' > 10000

- Resolution: Set 'containers[].securityContext.runAsUser' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0020
- Location: `templates/statefulset.yaml:29-69`

```
29:         - name: http-storage-seed
30:           image: "ghcr.io/home-assistant/home-assistant:stable"
31:           imagePullPolicy: IfNotPresent
32:           securityContext:
33:             {}
34:           env:
35:             - name: TRUSTED_PROXIES_JSON
36:               value: "[\"10.42.0.0/16\"]"
37:             - name: USE_X_FORWARDED_FOR
38:
```

### KSV-0020 (LOW): Runs with UID <= 10000

Container 'lamp-home-assistant' of StatefulSet 'lamp-home-assistant' should set 'securityContext.runAsUser' > 10000

- Resolution: Set 'containers[].securityContext.runAsUser' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0020
- Location: `templates/statefulset.yaml:71-96`

```
71:         - name: lamp-home-assistant
72:           securityContext:
73:             {}
74:           image: "ghcr.io/home-assistant/home-assistant:stable"
75:           imagePullPolicy: IfNotPresent
76:           ports:
77:             - name: http
78:               containerPort: 8123
79:               protocol: TCP
80:
```

### KSV-0021 (LOW): Runs with GID <= 10000

Container 'http-storage-seed' of StatefulSet 'lamp-home-assistant' should set 'securityContext.runAsGroup' > 10000

- Resolution: Set 'containers[].securityContext.runAsGroup' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0021
- Location: `templates/statefulset.yaml:29-69`

```
29:         - name: http-storage-seed
30:           image: "ghcr.io/home-assistant/home-assistant:stable"
31:           imagePullPolicy: IfNotPresent
32:           securityContext:
33:             {}
34:           env:
35:             - name: TRUSTED_PROXIES_JSON
36:               value: "[\"10.42.0.0/16\"]"
37:             - name: USE_X_FORWARDED_FOR
38:
```

### KSV-0021 (LOW): Runs with GID <= 10000

Container 'lamp-home-assistant' of StatefulSet 'lamp-home-assistant' should set 'securityContext.runAsGroup' > 10000

- Resolution: Set 'containers[].securityContext.runAsGroup' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0021
- Location: `templates/statefulset.yaml:71-96`

```
71:         - name: lamp-home-assistant
72:           securityContext:
73:             {}
74:           image: "ghcr.io/home-assistant/home-assistant:stable"
75:           imagePullPolicy: IfNotPresent
76:           ports:
77:             - name: http
78:               containerPort: 8123
79:               protocol: TCP
80:
```

### KSV-0030 (LOW): Runtime/Default Seccomp profile not set

Either Pod or Container should set 'securityContext.seccompProfile.type' to 'RuntimeDefault'

- Resolution: Set 'spec.securityContext.seccompProfile.type', 'spec.containers[*].securityContext.seccompProfile' and 'spec.initContainers[*].securityContext.seccompProfile' to 'RuntimeDefault' or undefined.
- See: https://avd.aquasec.com/misconfig/ksv-0030
- Location: `templates/statefulset.yaml:29-69`

```
29:         - name: http-storage-seed
30:           image: "ghcr.io/home-assistant/home-assistant:stable"
31:           imagePullPolicy: IfNotPresent
32:           securityContext:
33:             {}
34:           env:
35:             - name: TRUSTED_PROXIES_JSON
36:               value: "[\"10.42.0.0/16\"]"
37:             - name: USE_X_FORWARDED_FOR
38:
```

### KSV-0030 (LOW): Runtime/Default Seccomp profile not set

Either Pod or Container should set 'securityContext.seccompProfile.type' to 'RuntimeDefault'

- Resolution: Set 'spec.securityContext.seccompProfile.type', 'spec.containers[*].securityContext.seccompProfile' and 'spec.initContainers[*].securityContext.seccompProfile' to 'RuntimeDefault' or undefined.
- See: https://avd.aquasec.com/misconfig/ksv-0030
- Location: `templates/statefulset.yaml:71-96`

```
71:         - name: lamp-home-assistant
72:           securityContext:
73:             {}
74:           image: "ghcr.io/home-assistant/home-assistant:stable"
75:           imagePullPolicy: IfNotPresent
76:           ports:
77:             - name: http
78:               containerPort: 8123
79:               protocol: TCP
80:
```

### KSV-0104 (MEDIUM): Seccomp policies disabled

container "http-storage-seed" of statefulset "lamp-home-assistant" in "default" namespace should specify a seccomp profile

- Resolution: Specify seccomp either by annotation or by seccomp profile type having allowed values as per pod security standards
- See: https://avd.aquasec.com/misconfig/ksv-0104
- Location: `templates/statefulset.yaml:29-69`

```
29:         - name: http-storage-seed
30:           image: "ghcr.io/home-assistant/home-assistant:stable"
31:           imagePullPolicy: IfNotPresent
32:           securityContext:
33:             {}
34:           env:
35:             - name: TRUSTED_PROXIES_JSON
36:               value: "[\"10.42.0.0/16\"]"
37:             - name: USE_X_FORWARDED_FOR
38:
```

### KSV-0104 (MEDIUM): Seccomp policies disabled

container "lamp-home-assistant" of statefulset "lamp-home-assistant" in "default" namespace should specify a seccomp profile

- Resolution: Specify seccomp either by annotation or by seccomp profile type having allowed values as per pod security standards
- See: https://avd.aquasec.com/misconfig/ksv-0104
- Location: `templates/statefulset.yaml:71-96`

```
71:         - name: lamp-home-assistant
72:           securityContext:
73:             {}
74:           image: "ghcr.io/home-assistant/home-assistant:stable"
75:           imagePullPolicy: IfNotPresent
76:           ports:
77:             - name: http
78:               containerPort: 8123
79:               protocol: TCP
80:
```

### KSV-0106 (LOW): Container capabilities must only include NET_BIND_SERVICE

container should drop all

- Resolution: Set 'spec.containers[*].securityContext.capabilities.drop' to 'ALL' and only add 'NET_BIND_SERVICE' to 'spec.containers[*].securityContext.capabilities.add'.
- See: https://avd.aquasec.com/misconfig/ksv-0106
- Location: `templates/statefulset.yaml:29-69`

```
29:         - name: http-storage-seed
30:           image: "ghcr.io/home-assistant/home-assistant:stable"
31:           imagePullPolicy: IfNotPresent
32:           securityContext:
33:             {}
34:           env:
35:             - name: TRUSTED_PROXIES_JSON
36:               value: "[\"10.42.0.0/16\"]"
37:             - name: USE_X_FORWARDED_FOR
38:
```

### KSV-0106 (LOW): Container capabilities must only include NET_BIND_SERVICE

container should drop all

- Resolution: Set 'spec.containers[*].securityContext.capabilities.drop' to 'ALL' and only add 'NET_BIND_SERVICE' to 'spec.containers[*].securityContext.capabilities.add'.
- See: https://avd.aquasec.com/misconfig/ksv-0106
- Location: `templates/statefulset.yaml:71-96`

```
71:         - name: lamp-home-assistant
72:           securityContext:
73:             {}
74:           image: "ghcr.io/home-assistant/home-assistant:stable"
75:           imagePullPolicy: IfNotPresent
76:           ports:
77:             - name: http
78:               containerPort: 8123
79:               protocol: TCP
80:
```

### KSV-0110 (LOW): Workloads in the default namespace

statefulset lamp-home-assistant in default namespace should set metadata.namespace to a non-default namespace

- Resolution: Set 'metadata.namespace' to a non-default namespace.
- See: https://avd.aquasec.com/misconfig/ksv-0110
- Location: `templates/statefulset.yaml:4-12`

```
4: metadata:
5:   name: lamp-home-assistant
6:   annotations:
7:     reloader.stakater.com/auto: "true"
8:   labels:
9:     helm.sh/chart: lamp-home-assistant-0.1.2
10:     app.kubernetes.io/name: lamp-home-assistant
11:     app.kubernetes.io/instance: lamp-home-assistant
12:     app.kubernetes.io/managed-by: Helm
```

### KSV-0118 (HIGH): Default security context configured

container lamp-home-assistant in default namespace is using the default security context

- Resolution: To enhance security, it is strongly recommended not to rely on the default security context. Instead, it is advisable to explicitly define the required security parameters (such as runAsNonRoot, capabilities, readOnlyRootFilesystem, etc.) within the security context.
- See: https://avd.aquasec.com/misconfig/ksv-0118
- Location: `templates/statefulset.yaml:29-69`

```
29:         - name: http-storage-seed
30:           image: "ghcr.io/home-assistant/home-assistant:stable"
31:           imagePullPolicy: IfNotPresent
32:           securityContext:
33:             {}
34:           env:
35:             - name: TRUSTED_PROXIES_JSON
36:               value: "[\"10.42.0.0/16\"]"
37:             - name: USE_X_FORWARDED_FOR
38:
```

### KSV-0118 (HIGH): Default security context configured

container lamp-home-assistant in default namespace is using the default security context

- Resolution: To enhance security, it is strongly recommended not to rely on the default security context. Instead, it is advisable to explicitly define the required security parameters (such as runAsNonRoot, capabilities, readOnlyRootFilesystem, etc.) within the security context.
- See: https://avd.aquasec.com/misconfig/ksv-0118
- Location: `templates/statefulset.yaml:71-96`

```
71:         - name: lamp-home-assistant
72:           securityContext:
73:             {}
74:           image: "ghcr.io/home-assistant/home-assistant:stable"
75:           imagePullPolicy: IfNotPresent
76:           ports:
77:             - name: http
78:               containerPort: 8123
79:               protocol: TCP
80:
```

### KSV-0118 (HIGH): Default security context configured

statefulset lamp-home-assistant in default namespace is using the default security context, which allows root privileges

- Resolution: To enhance security, it is strongly recommended not to rely on the default security context. Instead, it is advisable to explicitly define the required security parameters (such as runAsNonRoot, capabilities, readOnlyRootFilesystem, etc.) within the security context.
- See: https://avd.aquasec.com/misconfig/ksv-0118
- Location: `templates/statefulset.yaml:25-103`

```
25:     spec:
26:       securityContext:
27:         {}
28:       initContainers:
29:         - name: http-storage-seed
30:           image: "ghcr.io/home-assistant/home-assistant:stable"
31:           imagePullPolicy: IfNotPresent
32:           securityContext:
33:             {}
34:
```

### KSV-0125 (MEDIUM): Restrict container images to trusted registries

Container http-storage-seed in statefulset lamp-home-assistant (namespace: default) uses an image from an untrusted registry.

- Resolution: Use images from trusted registries.
- See: https://avd.aquasec.com/misconfig/ksv-0125
- Location: `templates/statefulset.yaml:29-69`

```
29:         - name: http-storage-seed
30:           image: "ghcr.io/home-assistant/home-assistant:stable"
31:           imagePullPolicy: IfNotPresent
32:           securityContext:
33:             {}
34:           env:
35:             - name: TRUSTED_PROXIES_JSON
36:               value: "[\"10.42.0.0/16\"]"
37:             - name: USE_X_FORWARDED_FOR
38:
```

### KSV-0125 (MEDIUM): Restrict container images to trusted registries

Container lamp-home-assistant in statefulset lamp-home-assistant (namespace: default) uses an image from an untrusted registry.

- Resolution: Use images from trusted registries.
- See: https://avd.aquasec.com/misconfig/ksv-0125
- Location: `templates/statefulset.yaml:71-96`

```
71:         - name: lamp-home-assistant
72:           securityContext:
73:             {}
74:           image: "ghcr.io/home-assistant/home-assistant:stable"
75:           imagePullPolicy: IfNotPresent
76:           ports:
77:             - name: http
78:               containerPort: 8123
79:               protocol: TCP
80:
```
