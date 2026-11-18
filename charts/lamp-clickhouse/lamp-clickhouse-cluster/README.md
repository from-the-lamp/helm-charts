# lamp-clickhouse-cluster

![Version: 0.3.0](https://img.shields.io/badge/Version-0.3.0-informational?style=flat-square)

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| cluster.backup.enabled | bool | `true` |  |
| cluster.backup.gcs.auth | string | `"workloadIdentity"` |  |
| cluster.backup.gcs.bucket.create | bool | `true` |  |
| cluster.backup.gcs.bucket.location | string | `""` |  |
| cluster.backup.gcs.bucket.name | string | `""` |  |
| cluster.backup.gcs.bucket.storageClass | string | `"STANDARD"` |  |
| cluster.backup.gcs.credentialsJson.key | string | `"example-key"` |  |
| cluster.backup.gcs.credentialsJson.path | string | `"example/path"` |  |
| cluster.backup.gcs.path | string | `"clickhouse"` |  |
| cluster.backup.gcs.serviceAccount.create | bool | `true` |  |
| cluster.backup.gcs.serviceAccount.name | string | `"clickhouse-backup"` |  |
| cluster.backup.keep | int | `3` |  |
| cluster.backup.logLevel | string | `"debug"` |  |
| cluster.backup.provider | string | `"s3"` |  |
| cluster.backup.resources.limits.memory | string | `"768Mi"` |  |
| cluster.backup.resources.requests.cpu | string | `"50m"` |  |
| cluster.backup.resources.requests.memory | string | `"64Mi"` |  |
| cluster.backup.s3.accessKey.key | string | `"example-key"` |  |
| cluster.backup.s3.accessKey.path | string | `"example/path"` |  |
| cluster.backup.s3.bucket | string | `"example-bucket"` |  |
| cluster.backup.s3.path | string | `"clickhouse"` |  |
| cluster.backup.s3.region | string | `"example-region"` |  |
| cluster.backup.s3.secretKey.key | string | `"example-key"` |  |
| cluster.backup.s3.secretKey.path | string | `"example/path"` |  |
| cluster.backup.user | string | `"backup"` |  |
| cluster.image.name | string | `"clickhouse/clickhouse-server"` |  |
| cluster.image.tag | string | `"26.2.3"` |  |
| cluster.mountCerts | bool | `true` |  |
| cluster.name | string | `"default"` |  |
| cluster.namedCollections | object | `{}` |  |
| cluster.pools[0].affinity | object | `{}` |  |
| cluster.pools[0].name | string | `"default"` |  |
| cluster.pools[0].replicas | int | `2` |  |
| cluster.pools[0].resources | object | `{}` |  |
| cluster.pools[0].tolerations | list | `[]` |  |
| cluster.profiles.default/postgresql_connection_pool_size | int | `64` |  |
| cluster.replicatedAccess.enabled | bool | `true` |  |
| cluster.replicatedAccess.keepLocalDirectory | bool | `true` |  |
| cluster.replicatedAccess.zookeeperPath | string | `"/clickhouse/access/"` |  |
| cluster.restartEnv | string | `"randomValue"` |  |
| cluster.shards | int | `1` |  |
| cluster.storage.mode | string | `"ReadWriteOnce"` |  |
| cluster.storage.name | string | `"local-path"` |  |
| cluster.storage.size | string | `"10Gi"` |  |
| cluster.systemLogs.disable[0] | string | `"text_log"` |  |
| cluster.systemLogs.disable[1] | string | `"query_views_log"` |  |
| cluster.systemLogs.disable[2] | string | `"background_schedule_pool_log"` |  |
| cluster.systemLogs.retention[0].orderBy | string | `"(event_date, event_time)"` |  |
| cluster.systemLogs.retention[0].partitionBy | string | `"event_date"` |  |
| cluster.systemLogs.retention[0].table | string | `"metric_log"` |  |
| cluster.systemLogs.retention[0].ttlDays | int | `3` |  |
| cluster.systemLogs.retention[1].orderBy | string | `"(metric, event_date, event_time)"` |  |
| cluster.systemLogs.retention[1].partitionBy | string | `"event_date"` |  |
| cluster.systemLogs.retention[1].table | string | `"asynchronous_metric_log"` |  |
| cluster.systemLogs.retention[1].ttlDays | int | `3` |  |
| cluster.systemLogs.retention[2].orderBy | string | `"event_time"` |  |
| cluster.systemLogs.retention[2].partitionBy | string | `"event_date"` |  |
| cluster.systemLogs.retention[2].table | string | `"trace_log"` |  |
| cluster.systemLogs.retention[2].ttlDays | int | `7` |  |
| cluster.systemLogs.retention[3].orderBy | string | `"event_time"` |  |
| cluster.systemLogs.retention[3].partitionBy | string | `"event_date"` |  |
| cluster.systemLogs.retention[3].table | string | `"part_log"` |  |
| cluster.systemLogs.retention[3].ttlDays | int | `7` |  |
| cluster.systemLogs.retention[4].orderBy | string | `"(event_time)"` |  |
| cluster.systemLogs.retention[4].partitionBy | string | `"event_date"` |  |
| cluster.systemLogs.retention[4].table | string | `"query_log"` |  |
| cluster.systemLogs.retention[4].ttlDays | int | `14` |  |
| cluster.users[0].access | string | `"0.0.0.0/0"` |  |
| cluster.users[0].name | string | `"backup"` |  |
| cluster.users[0].remoteSecret.key | string | `"example_key"` |  |
| cluster.users[0].remoteSecret.path | string | `"example/path"` |  |
| cluster.users[1].access | string | `"0.0.0.0/0"` |  |
| cluster.users[1].name | string | `"admin"` |  |
| cluster.users[1].remoteSecret.key | string | `"example_key"` |  |
| cluster.users[1].remoteSecret.path | string | `"example/path"` |  |
| externalSecrets.creationPolicy | string | `"Orphan"` |  |
| externalSecrets.kind | string | `"ClusterSecretStore"` |  |
| externalSecrets.name | string | `"vault"` |  |
| externalSecrets.refreshInterval | string | `"1h"` |  |
| global.projectId | string | `""` |  |
| global.region | string | `""` |  |
| keeper.affinity | object | `{}` |  |
| keeper.image.name | string | `"clickhouse/clickhouse-keeper"` |  |
| keeper.image.tag | float | `25.4` |  |
| keeper.replicas | int | `1` |  |
| keeper.resources | object | `{}` |  |
| keeper.restartEnv | string | `"randomValue"` |  |
| keeper.storage.mode | string | `"ReadWriteOnce"` |  |
| keeper.storage.name | string | `"local-path"` |  |
| keeper.storage.size | string | `"10Gi"` |  |
# Trivy scan - Helm Chart

## Report Summary

| Target | Type | Misconfigurations |
| --- | --- | --- |
| templates/backup-env.yaml | helm | 0 |
| templates/cluster.yaml | helm | 0 |
| templates/cron-backup.yaml | helm | 18 |
| templates/cron-restore.yaml | helm | 19 |
| templates/keeper.yaml | helm | 0 |
| templates/passwords.yaml | helm | 0 |

## templates/cron-backup.yaml

### KSV-0001 (MEDIUM): Can elevate its own privileges

Container 'run-backup-cron' of CronJob 'clickhouse-backup' should set 'securityContext.allowPrivilegeEscalation' to false

- Resolution: Set 'set containers[].securityContext.allowPrivilegeEscalation' to 'false'.
- See: https://avd.aquasec.com/misconfig/ksv-0001
- Location: `templates/cron-backup.yaml:20-29`

```
20:             - name: run-backup-cron
21:               image: "clickhouse/clickhouse-server:26.2.3"
22:               imagePullPolicy: IfNotPresent
23:               envFrom:
24:                 - secretRef:
25:                     name: clickhouse-backup-env
26:               command:
27:                 - bash
28:                 - -ec
29:                 - CLICKHOUSE_SERVICES=$(echo $CLICKHOUSE_SERVICES | tr "," " ");
```

### KSV-0003 (LOW): Default capabilities: some containers do not drop all

Container 'run-backup-cron' of CronJob 'clickhouse-backup' should add 'ALL' to 'securityContext.capabilities.drop'

- Resolution: Add 'ALL' to containers[].securityContext.capabilities.drop.
- See: https://avd.aquasec.com/misconfig/ksv-0003
- Location: `templates/cron-backup.yaml:20-29`

```
20:             - name: run-backup-cron
21:               image: "clickhouse/clickhouse-server:26.2.3"
22:               imagePullPolicy: IfNotPresent
23:               envFrom:
24:                 - secretRef:
25:                     name: clickhouse-backup-env
26:               command:
27:                 - bash
28:                 - -ec
29:                 - CLICKHOUSE_SERVICES=$(echo $CLICKHOUSE_SERVICES | tr "," " ");
```

### KSV-0004 (LOW): Default capabilities: some containers do not drop any

Container 'run-backup-cron' of 'cronjob' 'clickhouse-backup' in 'default' namespace should set securityContext.capabilities.drop

- Resolution: Specify at least one unneeded capability in 'containers[].securityContext.capabilities.drop'
- See: https://avd.aquasec.com/misconfig/ksv-0004
- Location: `templates/cron-backup.yaml:20-29`

```
20:             - name: run-backup-cron
21:               image: "clickhouse/clickhouse-server:26.2.3"
22:               imagePullPolicy: IfNotPresent
23:               envFrom:
24:                 - secretRef:
25:                     name: clickhouse-backup-env
26:               command:
27:                 - bash
28:                 - -ec
29:                 - CLICKHOUSE_SERVICES=$(echo $CLICKHOUSE_SERVICES | tr "," " ");
```

### KSV-0011 (LOW): CPU not limited

Container 'run-backup-cron' of CronJob 'clickhouse-backup' should set 'resources.limits.cpu'

- Resolution: Set a limit value under 'containers[].resources.limits.cpu'.
- See: https://avd.aquasec.com/misconfig/ksv-0011
- Location: `templates/cron-backup.yaml:20-29`

```
20:             - name: run-backup-cron
21:               image: "clickhouse/clickhouse-server:26.2.3"
22:               imagePullPolicy: IfNotPresent
23:               envFrom:
24:                 - secretRef:
25:                     name: clickhouse-backup-env
26:               command:
27:                 - bash
28:                 - -ec
29:                 - CLICKHOUSE_SERVICES=$(echo $CLICKHOUSE_SERVICES | tr "," " ");
```

### KSV-0012 (MEDIUM): Runs as root user

Container 'run-backup-cron' of CronJob 'clickhouse-backup' should set 'securityContext.runAsNonRoot' to true

- Resolution: Set 'containers[].securityContext.runAsNonRoot' to true.
- See: https://avd.aquasec.com/misconfig/ksv-0012
- Location: `templates/cron-backup.yaml:20-29`

```
20:             - name: run-backup-cron
21:               image: "clickhouse/clickhouse-server:26.2.3"
22:               imagePullPolicy: IfNotPresent
23:               envFrom:
24:                 - secretRef:
25:                     name: clickhouse-backup-env
26:               command:
27:                 - bash
28:                 - -ec
29:                 - CLICKHOUSE_SERVICES=$(echo $CLICKHOUSE_SERVICES | tr "," " ");
```

### KSV-0014 (HIGH): Root file system is not read-only

Container 'run-backup-cron' of CronJob 'clickhouse-backup' should set 'securityContext.readOnlyRootFilesystem' to true

- Resolution: Change 'containers[].securityContext.readOnlyRootFilesystem' to 'true'.
- See: https://avd.aquasec.com/misconfig/ksv-0014
- Location: `templates/cron-backup.yaml:20-29`

```
20:             - name: run-backup-cron
21:               image: "clickhouse/clickhouse-server:26.2.3"
22:               imagePullPolicy: IfNotPresent
23:               envFrom:
24:                 - secretRef:
25:                     name: clickhouse-backup-env
26:               command:
27:                 - bash
28:                 - -ec
29:                 - CLICKHOUSE_SERVICES=$(echo $CLICKHOUSE_SERVICES | tr "," " ");
```

### KSV-0015 (LOW): CPU requests not specified

Container 'run-backup-cron' of CronJob 'clickhouse-backup' should set 'resources.requests.cpu'

- Resolution: Set 'containers[].resources.requests.cpu'.
- See: https://avd.aquasec.com/misconfig/ksv-0015
- Location: `templates/cron-backup.yaml:20-29`

```
20:             - name: run-backup-cron
21:               image: "clickhouse/clickhouse-server:26.2.3"
22:               imagePullPolicy: IfNotPresent
23:               envFrom:
24:                 - secretRef:
25:                     name: clickhouse-backup-env
26:               command:
27:                 - bash
28:                 - -ec
29:                 - CLICKHOUSE_SERVICES=$(echo $CLICKHOUSE_SERVICES | tr "," " ");
```

### KSV-0016 (LOW): Memory requests not specified

Container 'run-backup-cron' of CronJob 'clickhouse-backup' should set 'resources.requests.memory'

- Resolution: Set 'containers[].resources.requests.memory'.
- See: https://avd.aquasec.com/misconfig/ksv-0016
- Location: `templates/cron-backup.yaml:20-29`

```
20:             - name: run-backup-cron
21:               image: "clickhouse/clickhouse-server:26.2.3"
22:               imagePullPolicy: IfNotPresent
23:               envFrom:
24:                 - secretRef:
25:                     name: clickhouse-backup-env
26:               command:
27:                 - bash
28:                 - -ec
29:                 - CLICKHOUSE_SERVICES=$(echo $CLICKHOUSE_SERVICES | tr "," " ");
```

### KSV-0018 (LOW): Memory not limited

Container 'run-backup-cron' of CronJob 'clickhouse-backup' should set 'resources.limits.memory'

- Resolution: Set a limit value under 'containers[].resources.limits.memory'.
- See: https://avd.aquasec.com/misconfig/ksv-0018
- Location: `templates/cron-backup.yaml:20-29`

```
20:             - name: run-backup-cron
21:               image: "clickhouse/clickhouse-server:26.2.3"
22:               imagePullPolicy: IfNotPresent
23:               envFrom:
24:                 - secretRef:
25:                     name: clickhouse-backup-env
26:               command:
27:                 - bash
28:                 - -ec
29:                 - CLICKHOUSE_SERVICES=$(echo $CLICKHOUSE_SERVICES | tr "," " ");
```

### KSV-0020 (LOW): Runs with UID <= 10000

Container 'run-backup-cron' of CronJob 'clickhouse-backup' should set 'securityContext.runAsUser' > 10000

- Resolution: Set 'containers[].securityContext.runAsUser' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0020
- Location: `templates/cron-backup.yaml:20-29`

```
20:             - name: run-backup-cron
21:               image: "clickhouse/clickhouse-server:26.2.3"
22:               imagePullPolicy: IfNotPresent
23:               envFrom:
24:                 - secretRef:
25:                     name: clickhouse-backup-env
26:               command:
27:                 - bash
28:                 - -ec
29:                 - CLICKHOUSE_SERVICES=$(echo $CLICKHOUSE_SERVICES | tr "," " ");
```

### KSV-0021 (LOW): Runs with GID <= 10000

Container 'run-backup-cron' of CronJob 'clickhouse-backup' should set 'securityContext.runAsGroup' > 10000

- Resolution: Set 'containers[].securityContext.runAsGroup' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0021
- Location: `templates/cron-backup.yaml:20-29`

```
20:             - name: run-backup-cron
21:               image: "clickhouse/clickhouse-server:26.2.3"
22:               imagePullPolicy: IfNotPresent
23:               envFrom:
24:                 - secretRef:
25:                     name: clickhouse-backup-env
26:               command:
27:                 - bash
28:                 - -ec
29:                 - CLICKHOUSE_SERVICES=$(echo $CLICKHOUSE_SERVICES | tr "," " ");
```

### KSV-0030 (LOW): Runtime/Default Seccomp profile not set

Either Pod or Container should set 'securityContext.seccompProfile.type' to 'RuntimeDefault'

- Resolution: Set 'spec.securityContext.seccompProfile.type', 'spec.containers[*].securityContext.seccompProfile' and 'spec.initContainers[*].securityContext.seccompProfile' to 'RuntimeDefault' or undefined.
- See: https://avd.aquasec.com/misconfig/ksv-0030
- Location: `templates/cron-backup.yaml:20-29`

```
20:             - name: run-backup-cron
21:               image: "clickhouse/clickhouse-server:26.2.3"
22:               imagePullPolicy: IfNotPresent
23:               envFrom:
24:                 - secretRef:
25:                     name: clickhouse-backup-env
26:               command:
27:                 - bash
28:                 - -ec
29:                 - CLICKHOUSE_SERVICES=$(echo $CLICKHOUSE_SERVICES | tr "," " ");
```

### KSV-0104 (MEDIUM): Seccomp policies disabled

container "run-backup-cron" of cronjob "clickhouse-backup" in "default" namespace should specify a seccomp profile

- Resolution: Specify seccomp either by annotation or by seccomp profile type having allowed values as per pod security standards
- See: https://avd.aquasec.com/misconfig/ksv-0104
- Location: `templates/cron-backup.yaml:20-29`

```
20:             - name: run-backup-cron
21:               image: "clickhouse/clickhouse-server:26.2.3"
22:               imagePullPolicy: IfNotPresent
23:               envFrom:
24:                 - secretRef:
25:                     name: clickhouse-backup-env
26:               command:
27:                 - bash
28:                 - -ec
29:                 - CLICKHOUSE_SERVICES=$(echo $CLICKHOUSE_SERVICES | tr "," " ");
```

### KSV-0106 (LOW): Container capabilities must only include NET_BIND_SERVICE

container should drop all

- Resolution: Set 'spec.containers[*].securityContext.capabilities.drop' to 'ALL' and only add 'NET_BIND_SERVICE' to 'spec.containers[*].securityContext.capabilities.add'.
- See: https://avd.aquasec.com/misconfig/ksv-0106
- Location: `templates/cron-backup.yaml:20-29`

```
20:             - name: run-backup-cron
21:               image: "clickhouse/clickhouse-server:26.2.3"
22:               imagePullPolicy: IfNotPresent
23:               envFrom:
24:                 - secretRef:
25:                     name: clickhouse-backup-env
26:               command:
27:                 - bash
28:                 - -ec
29:                 - CLICKHOUSE_SERVICES=$(echo $CLICKHOUSE_SERVICES | tr "," " ");
```

### KSV-0110 (LOW): Workloads in the default namespace

cronjob clickhouse-backup in default namespace should set metadata.namespace to a non-default namespace

- Resolution: Set 'metadata.namespace' to a non-default namespace.
- See: https://avd.aquasec.com/misconfig/ksv-0110
- Location: `templates/cron-backup.yaml:4-7`

```
4: metadata:
5:   name: clickhouse-backup
6:   annotations:
7:     k8s.cronitor.io/include: "true"
```

### KSV-0118 (HIGH): Default security context configured

container clickhouse-backup in default namespace is using the default security context

- Resolution: To enhance security, it is strongly recommended not to rely on the default security context. Instead, it is advisable to explicitly define the required security parameters (such as runAsNonRoot, capabilities, readOnlyRootFilesystem, etc.) within the security context.
- See: https://avd.aquasec.com/misconfig/ksv-0118
- Location: `templates/cron-backup.yaml:20-29`

```
20:             - name: run-backup-cron
21:               image: "clickhouse/clickhouse-server:26.2.3"
22:               imagePullPolicy: IfNotPresent
23:               envFrom:
24:                 - secretRef:
25:                     name: clickhouse-backup-env
26:               command:
27:                 - bash
28:                 - -ec
29:                 - CLICKHOUSE_SERVICES=$(echo $CLICKHOUSE_SERVICES | tr "," " ");
```

### KSV-0118 (HIGH): Default security context configured

cronjob clickhouse-backup in default namespace is using the default security context, which allows root privileges

- Resolution: To enhance security, it is strongly recommended not to rely on the default security context. Instead, it is advisable to explicitly define the required security parameters (such as runAsNonRoot, capabilities, readOnlyRootFilesystem, etc.) within the security context.
- See: https://avd.aquasec.com/misconfig/ksv-0118
- Location: `templates/cron-backup.yaml:17-29`

```
17:         spec:
18:           restartPolicy: Never
19:           containers:
20:             - name: run-backup-cron
21:               image: "clickhouse/clickhouse-server:26.2.3"
22:               imagePullPolicy: IfNotPresent
23:               envFrom:
24:                 - secretRef:
25:                     name: clickhouse-backup-env
26:
```

### KSV-0125 (MEDIUM): Restrict container images to trusted registries

Container run-backup-cron in cronjob clickhouse-backup (namespace: default) uses an image from an untrusted registry.

- Resolution: Use images from trusted registries.
- See: https://avd.aquasec.com/misconfig/ksv-0125
- Location: `templates/cron-backup.yaml:20-29`

```
20:             - name: run-backup-cron
21:               image: "clickhouse/clickhouse-server:26.2.3"
22:               imagePullPolicy: IfNotPresent
23:               envFrom:
24:                 - secretRef:
25:                     name: clickhouse-backup-env
26:               command:
27:                 - bash
28:                 - -ec
29:                 - CLICKHOUSE_SERVICES=$(echo $CLICKHOUSE_SERVICES | tr "," " ");
```


## templates/cron-restore.yaml

### KSV-0001 (MEDIUM): Can elevate its own privileges

Container 'clickhouse-restore' of CronJob 'clickhouse-restore' should set 'securityContext.allowPrivilegeEscalation' to false

- Resolution: Set 'set containers[].securityContext.allowPrivilegeEscalation' to 'false'.
- See: https://avd.aquasec.com/misconfig/ksv-0001
- Location: `templates/cron-restore.yaml:18-27`

```
18:             - name: clickhouse-restore
19:               image: clickhouse/clickhouse-client:latest
20:               imagePullPolicy: IfNotPresent
21:               envFrom:
22:                 - secretRef:
23:                     name: clickhouse-backup-env
24:               command:
25:                 - bash
26:                 - -ec
27:                 - if [[ "" != "$BACKUP_PASSWORD" ]]; then
```

### KSV-0003 (LOW): Default capabilities: some containers do not drop all

Container 'clickhouse-restore' of CronJob 'clickhouse-restore' should add 'ALL' to 'securityContext.capabilities.drop'

- Resolution: Add 'ALL' to containers[].securityContext.capabilities.drop.
- See: https://avd.aquasec.com/misconfig/ksv-0003
- Location: `templates/cron-restore.yaml:18-27`

```
18:             - name: clickhouse-restore
19:               image: clickhouse/clickhouse-client:latest
20:               imagePullPolicy: IfNotPresent
21:               envFrom:
22:                 - secretRef:
23:                     name: clickhouse-backup-env
24:               command:
25:                 - bash
26:                 - -ec
27:                 - if [[ "" != "$BACKUP_PASSWORD" ]]; then
```

### KSV-0004 (LOW): Default capabilities: some containers do not drop any

Container 'clickhouse-restore' of 'cronjob' 'clickhouse-restore' in 'default' namespace should set securityContext.capabilities.drop

- Resolution: Specify at least one unneeded capability in 'containers[].securityContext.capabilities.drop'
- See: https://avd.aquasec.com/misconfig/ksv-0004
- Location: `templates/cron-restore.yaml:18-27`

```
18:             - name: clickhouse-restore
19:               image: clickhouse/clickhouse-client:latest
20:               imagePullPolicy: IfNotPresent
21:               envFrom:
22:                 - secretRef:
23:                     name: clickhouse-backup-env
24:               command:
25:                 - bash
26:                 - -ec
27:                 - if [[ "" != "$BACKUP_PASSWORD" ]]; then
```

### KSV-0011 (LOW): CPU not limited

Container 'clickhouse-restore' of CronJob 'clickhouse-restore' should set 'resources.limits.cpu'

- Resolution: Set a limit value under 'containers[].resources.limits.cpu'.
- See: https://avd.aquasec.com/misconfig/ksv-0011
- Location: `templates/cron-restore.yaml:18-27`

```
18:             - name: clickhouse-restore
19:               image: clickhouse/clickhouse-client:latest
20:               imagePullPolicy: IfNotPresent
21:               envFrom:
22:                 - secretRef:
23:                     name: clickhouse-backup-env
24:               command:
25:                 - bash
26:                 - -ec
27:                 - if [[ "" != "$BACKUP_PASSWORD" ]]; then
```

### KSV-0012 (MEDIUM): Runs as root user

Container 'clickhouse-restore' of CronJob 'clickhouse-restore' should set 'securityContext.runAsNonRoot' to true

- Resolution: Set 'containers[].securityContext.runAsNonRoot' to true.
- See: https://avd.aquasec.com/misconfig/ksv-0012
- Location: `templates/cron-restore.yaml:18-27`

```
18:             - name: clickhouse-restore
19:               image: clickhouse/clickhouse-client:latest
20:               imagePullPolicy: IfNotPresent
21:               envFrom:
22:                 - secretRef:
23:                     name: clickhouse-backup-env
24:               command:
25:                 - bash
26:                 - -ec
27:                 - if [[ "" != "$BACKUP_PASSWORD" ]]; then
```

### KSV-0013 (MEDIUM): Image tag ":latest" used

Container 'clickhouse-restore' of CronJob 'clickhouse-restore' should specify an image tag

- Resolution: Use a specific container image tag that is not 'latest'.
- See: https://avd.aquasec.com/misconfig/ksv-0013
- Location: `templates/cron-restore.yaml:18-27`

```
18:             - name: clickhouse-restore
19:               image: clickhouse/clickhouse-client:latest
20:               imagePullPolicy: IfNotPresent
21:               envFrom:
22:                 - secretRef:
23:                     name: clickhouse-backup-env
24:               command:
25:                 - bash
26:                 - -ec
27:                 - if [[ "" != "$BACKUP_PASSWORD" ]]; then
```

### KSV-0014 (HIGH): Root file system is not read-only

Container 'clickhouse-restore' of CronJob 'clickhouse-restore' should set 'securityContext.readOnlyRootFilesystem' to true

- Resolution: Change 'containers[].securityContext.readOnlyRootFilesystem' to 'true'.
- See: https://avd.aquasec.com/misconfig/ksv-0014
- Location: `templates/cron-restore.yaml:18-27`

```
18:             - name: clickhouse-restore
19:               image: clickhouse/clickhouse-client:latest
20:               imagePullPolicy: IfNotPresent
21:               envFrom:
22:                 - secretRef:
23:                     name: clickhouse-backup-env
24:               command:
25:                 - bash
26:                 - -ec
27:                 - if [[ "" != "$BACKUP_PASSWORD" ]]; then
```

### KSV-0015 (LOW): CPU requests not specified

Container 'clickhouse-restore' of CronJob 'clickhouse-restore' should set 'resources.requests.cpu'

- Resolution: Set 'containers[].resources.requests.cpu'.
- See: https://avd.aquasec.com/misconfig/ksv-0015
- Location: `templates/cron-restore.yaml:18-27`

```
18:             - name: clickhouse-restore
19:               image: clickhouse/clickhouse-client:latest
20:               imagePullPolicy: IfNotPresent
21:               envFrom:
22:                 - secretRef:
23:                     name: clickhouse-backup-env
24:               command:
25:                 - bash
26:                 - -ec
27:                 - if [[ "" != "$BACKUP_PASSWORD" ]]; then
```

### KSV-0016 (LOW): Memory requests not specified

Container 'clickhouse-restore' of CronJob 'clickhouse-restore' should set 'resources.requests.memory'

- Resolution: Set 'containers[].resources.requests.memory'.
- See: https://avd.aquasec.com/misconfig/ksv-0016
- Location: `templates/cron-restore.yaml:18-27`

```
18:             - name: clickhouse-restore
19:               image: clickhouse/clickhouse-client:latest
20:               imagePullPolicy: IfNotPresent
21:               envFrom:
22:                 - secretRef:
23:                     name: clickhouse-backup-env
24:               command:
25:                 - bash
26:                 - -ec
27:                 - if [[ "" != "$BACKUP_PASSWORD" ]]; then
```

### KSV-0018 (LOW): Memory not limited

Container 'clickhouse-restore' of CronJob 'clickhouse-restore' should set 'resources.limits.memory'

- Resolution: Set a limit value under 'containers[].resources.limits.memory'.
- See: https://avd.aquasec.com/misconfig/ksv-0018
- Location: `templates/cron-restore.yaml:18-27`

```
18:             - name: clickhouse-restore
19:               image: clickhouse/clickhouse-client:latest
20:               imagePullPolicy: IfNotPresent
21:               envFrom:
22:                 - secretRef:
23:                     name: clickhouse-backup-env
24:               command:
25:                 - bash
26:                 - -ec
27:                 - if [[ "" != "$BACKUP_PASSWORD" ]]; then
```

### KSV-0020 (LOW): Runs with UID <= 10000

Container 'clickhouse-restore' of CronJob 'clickhouse-restore' should set 'securityContext.runAsUser' > 10000

- Resolution: Set 'containers[].securityContext.runAsUser' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0020
- Location: `templates/cron-restore.yaml:18-27`

```
18:             - name: clickhouse-restore
19:               image: clickhouse/clickhouse-client:latest
20:               imagePullPolicy: IfNotPresent
21:               envFrom:
22:                 - secretRef:
23:                     name: clickhouse-backup-env
24:               command:
25:                 - bash
26:                 - -ec
27:                 - if [[ "" != "$BACKUP_PASSWORD" ]]; then
```

### KSV-0021 (LOW): Runs with GID <= 10000

Container 'clickhouse-restore' of CronJob 'clickhouse-restore' should set 'securityContext.runAsGroup' > 10000

- Resolution: Set 'containers[].securityContext.runAsGroup' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0021
- Location: `templates/cron-restore.yaml:18-27`

```
18:             - name: clickhouse-restore
19:               image: clickhouse/clickhouse-client:latest
20:               imagePullPolicy: IfNotPresent
21:               envFrom:
22:                 - secretRef:
23:                     name: clickhouse-backup-env
24:               command:
25:                 - bash
26:                 - -ec
27:                 - if [[ "" != "$BACKUP_PASSWORD" ]]; then
```

### KSV-0030 (LOW): Runtime/Default Seccomp profile not set

Either Pod or Container should set 'securityContext.seccompProfile.type' to 'RuntimeDefault'

- Resolution: Set 'spec.securityContext.seccompProfile.type', 'spec.containers[*].securityContext.seccompProfile' and 'spec.initContainers[*].securityContext.seccompProfile' to 'RuntimeDefault' or undefined.
- See: https://avd.aquasec.com/misconfig/ksv-0030
- Location: `templates/cron-restore.yaml:18-27`

```
18:             - name: clickhouse-restore
19:               image: clickhouse/clickhouse-client:latest
20:               imagePullPolicy: IfNotPresent
21:               envFrom:
22:                 - secretRef:
23:                     name: clickhouse-backup-env
24:               command:
25:                 - bash
26:                 - -ec
27:                 - if [[ "" != "$BACKUP_PASSWORD" ]]; then
```

### KSV-0104 (MEDIUM): Seccomp policies disabled

container "clickhouse-restore" of cronjob "clickhouse-restore" in "default" namespace should specify a seccomp profile

- Resolution: Specify seccomp either by annotation or by seccomp profile type having allowed values as per pod security standards
- See: https://avd.aquasec.com/misconfig/ksv-0104
- Location: `templates/cron-restore.yaml:18-27`

```
18:             - name: clickhouse-restore
19:               image: clickhouse/clickhouse-client:latest
20:               imagePullPolicy: IfNotPresent
21:               envFrom:
22:                 - secretRef:
23:                     name: clickhouse-backup-env
24:               command:
25:                 - bash
26:                 - -ec
27:                 - if [[ "" != "$BACKUP_PASSWORD" ]]; then
```

### KSV-0106 (LOW): Container capabilities must only include NET_BIND_SERVICE

container should drop all

- Resolution: Set 'spec.containers[*].securityContext.capabilities.drop' to 'ALL' and only add 'NET_BIND_SERVICE' to 'spec.containers[*].securityContext.capabilities.add'.
- See: https://avd.aquasec.com/misconfig/ksv-0106
- Location: `templates/cron-restore.yaml:18-27`

```
18:             - name: clickhouse-restore
19:               image: clickhouse/clickhouse-client:latest
20:               imagePullPolicy: IfNotPresent
21:               envFrom:
22:                 - secretRef:
23:                     name: clickhouse-backup-env
24:               command:
25:                 - bash
26:                 - -ec
27:                 - if [[ "" != "$BACKUP_PASSWORD" ]]; then
```

### KSV-0110 (LOW): Workloads in the default namespace

cronjob clickhouse-restore in default namespace should set metadata.namespace to a non-default namespace

- Resolution: Set 'metadata.namespace' to a non-default namespace.
- See: https://avd.aquasec.com/misconfig/ksv-0110
- Location: `templates/cron-restore.yaml:4-5`

```
4: metadata:
5:   name: clickhouse-restore
```

### KSV-0118 (HIGH): Default security context configured

container clickhouse-restore in default namespace is using the default security context

- Resolution: To enhance security, it is strongly recommended not to rely on the default security context. Instead, it is advisable to explicitly define the required security parameters (such as runAsNonRoot, capabilities, readOnlyRootFilesystem, etc.) within the security context.
- See: https://avd.aquasec.com/misconfig/ksv-0118
- Location: `templates/cron-restore.yaml:18-27`

```
18:             - name: clickhouse-restore
19:               image: clickhouse/clickhouse-client:latest
20:               imagePullPolicy: IfNotPresent
21:               envFrom:
22:                 - secretRef:
23:                     name: clickhouse-backup-env
24:               command:
25:                 - bash
26:                 - -ec
27:                 - if [[ "" != "$BACKUP_PASSWORD" ]]; then
```

### KSV-0118 (HIGH): Default security context configured

cronjob clickhouse-restore in default namespace is using the default security context, which allows root privileges

- Resolution: To enhance security, it is strongly recommended not to rely on the default security context. Instead, it is advisable to explicitly define the required security parameters (such as runAsNonRoot, capabilities, readOnlyRootFilesystem, etc.) within the security context.
- See: https://avd.aquasec.com/misconfig/ksv-0118
- Location: `templates/cron-restore.yaml:15-27`

```
15:         spec:
16:           restartPolicy: Never
17:           containers:
18:             - name: clickhouse-restore
19:               image: clickhouse/clickhouse-client:latest
20:               imagePullPolicy: IfNotPresent
21:               envFrom:
22:                 - secretRef:
23:                     name: clickhouse-backup-env
24:
```

### KSV-0125 (MEDIUM): Restrict container images to trusted registries

Container clickhouse-restore in cronjob clickhouse-restore (namespace: default) uses an image from an untrusted registry.

- Resolution: Use images from trusted registries.
- See: https://avd.aquasec.com/misconfig/ksv-0125
- Location: `templates/cron-restore.yaml:18-27`

```
18:             - name: clickhouse-restore
19:               image: clickhouse/clickhouse-client:latest
20:               imagePullPolicy: IfNotPresent
21:               envFrom:
22:                 - secretRef:
23:                     name: clickhouse-backup-env
24:               command:
25:                 - bash
26:                 - -ec
27:                 - if [[ "" != "$BACKUP_PASSWORD" ]]; then
```
