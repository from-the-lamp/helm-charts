# lamp-talos-backup

![Version: 0.0.4](https://img.shields.io/badge/Version-0.0.4-informational?style=flat-square)

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| ageRecipientPublicKey | string | `"age1hllmpt38qq45zmurfu9j2tr3c5j8vdglj6v9z7u29w4zm38kv9hqr5cvcy"` |  |
| clusterName | string | `"homelab"` |  |
| enableCompression | bool | `true` |  |
| externalSecrets.creationPolicy | string | `"Orphan"` |  |
| externalSecrets.kind | string | `"ClusterSecretStore"` |  |
| externalSecrets.name | string | `"vault"` |  |
| externalSecrets.refreshInterval | string | `"1h"` |  |
| image.name | string | `"ghcr.io/siderolabs/talos-backup"` |  |
| image.tag | string | `"v0.1.0-beta.3-5-g07d09ec"` |  |
| remoteSecretKeys.accessKeyId.key | string | `"s3"` |  |
| remoteSecretKeys.accessKeyId.property | string | `"backblaze.from-the-lamp.id"` |  |
| remoteSecretKeys.secretAccessKey.key | string | `"s3"` |  |
| remoteSecretKeys.secretAccessKey.property | string | `"backblaze.from-the-lamp.secret"` |  |
| resources.limits.memory | string | `"768Mi"` |  |
| resources.requests.cpu | string | `"10m"` |  |
| resources.requests.memory | string | `"128Mi"` |  |
| s3.bucket | string | `"from-the-lamp"` |  |
| s3.endpoint | string | `"https://s3.eu-central-003.backblazeb2.com"` |  |
| s3.region | string | `"eu-central-003"` |  |
| s3Prefix | string | `"talos-etcd"` |  |
| schedule | string | `"0 */6 * * *"` |  |
| usePathStyle | bool | `true` |  |
# Trivy scan - Helm Chart

## Report Summary

| Target | Type | Misconfigurations |
| --- | --- | --- |
| templates/cronjob.yaml | helm | 7 |
| templates/externalsecret.yaml | helm | 0 |
| templates/talos-serviceaccount.yaml | kubernetes | 0 |

## templates/cronjob.yaml

### KSV-0011 (LOW): CPU not limited

Container 'talos-backup' of CronJob 'talos-backup' should set 'resources.limits.cpu'

- Resolution: Set a limit value under 'containers[].resources.limits.cpu'.
- See: https://avd.aquasec.com/misconfig/ksv-0011
- Location: `templates/cronjob.yaml:18-83`

```
18:             - name: talos-backup
19:               image: "ghcr.io/siderolabs/talos-backup:v0.1.0-beta.3-5-g07d09ec"
20:               workingDir: /tmp
21:               imagePullPolicy: IfNotPresent
22:               env:
23:                 - name: AWS_ACCESS_KEY_ID
24:                   valueFrom:
25:                     secretKeyRef:
26:                       name: talos-backup-s3-creds
27:
```

### KSV-0014 (HIGH): Root file system is not read-only

Container 'talos-backup' of CronJob 'talos-backup' should set 'securityContext.readOnlyRootFilesystem' to true

- Resolution: Change 'containers[].securityContext.readOnlyRootFilesystem' to 'true'.
- See: https://avd.aquasec.com/misconfig/ksv-0014
- Location: `templates/cronjob.yaml:18-83`

```
18:             - name: talos-backup
19:               image: "ghcr.io/siderolabs/talos-backup:v0.1.0-beta.3-5-g07d09ec"
20:               workingDir: /tmp
21:               imagePullPolicy: IfNotPresent
22:               env:
23:                 - name: AWS_ACCESS_KEY_ID
24:                   valueFrom:
25:                     secretKeyRef:
26:                       name: talos-backup-s3-creds
27:
```

### KSV-0020 (LOW): Runs with UID <= 10000

Container 'talos-backup' of CronJob 'talos-backup' should set 'securityContext.runAsUser' > 10000

- Resolution: Set 'containers[].securityContext.runAsUser' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0020
- Location: `templates/cronjob.yaml:18-83`

```
18:             - name: talos-backup
19:               image: "ghcr.io/siderolabs/talos-backup:v0.1.0-beta.3-5-g07d09ec"
20:               workingDir: /tmp
21:               imagePullPolicy: IfNotPresent
22:               env:
23:                 - name: AWS_ACCESS_KEY_ID
24:                   valueFrom:
25:                     secretKeyRef:
26:                       name: talos-backup-s3-creds
27:
```

### KSV-0021 (LOW): Runs with GID <= 10000

Container 'talos-backup' of CronJob 'talos-backup' should set 'securityContext.runAsGroup' > 10000

- Resolution: Set 'containers[].securityContext.runAsGroup' to an integer > 10000.
- See: https://avd.aquasec.com/misconfig/ksv-0021
- Location: `templates/cronjob.yaml:18-83`

```
18:             - name: talos-backup
19:               image: "ghcr.io/siderolabs/talos-backup:v0.1.0-beta.3-5-g07d09ec"
20:               workingDir: /tmp
21:               imagePullPolicy: IfNotPresent
22:               env:
23:                 - name: AWS_ACCESS_KEY_ID
24:                   valueFrom:
25:                     secretKeyRef:
26:                       name: talos-backup-s3-creds
27:
```

### KSV-0110 (LOW): Workloads in the default namespace

cronjob talos-backup in default namespace should set metadata.namespace to a non-default namespace

- Resolution: Set 'metadata.namespace' to a non-default namespace.
- See: https://avd.aquasec.com/misconfig/ksv-0110
- Location: `templates/cronjob.yaml:4-5`

```
4: metadata:
5:   name: talos-backup
```

### KSV-0118 (HIGH): Default security context configured

cronjob talos-backup in default namespace is using the default security context, which allows root privileges

- Resolution: To enhance security, it is strongly recommended not to rely on the default security context. Instead, it is advisable to explicitly define the required security parameters (such as runAsNonRoot, capabilities, readOnlyRootFilesystem, etc.) within the security context.
- See: https://avd.aquasec.com/misconfig/ksv-0118
- Location: `templates/cronjob.yaml:15-91`

```
15:         spec:
16:           restartPolicy: OnFailure
17:           containers:
18:             - name: talos-backup
19:               image: "ghcr.io/siderolabs/talos-backup:v0.1.0-beta.3-5-g07d09ec"
20:               workingDir: /tmp
21:               imagePullPolicy: IfNotPresent
22:               env:
23:                 - name: AWS_ACCESS_KEY_ID
24:
```

### KSV-0125 (MEDIUM): Restrict container images to trusted registries

Container talos-backup in cronjob talos-backup (namespace: default) uses an image from an untrusted registry.

- Resolution: Use images from trusted registries.
- See: https://avd.aquasec.com/misconfig/ksv-0125
- Location: `templates/cronjob.yaml:18-83`

```
18:             - name: talos-backup
19:               image: "ghcr.io/siderolabs/talos-backup:v0.1.0-beta.3-5-g07d09ec"
20:               workingDir: /tmp
21:               imagePullPolicy: IfNotPresent
22:               env:
23:                 - name: AWS_ACCESS_KEY_ID
24:                   valueFrom:
25:                     secretKeyRef:
26:                       name: talos-backup-s3-creds
27:
```
