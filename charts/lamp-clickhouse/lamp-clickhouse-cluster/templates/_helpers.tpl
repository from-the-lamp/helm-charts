{{- define "vsoft-clickhouse-cluster.backup.provider" -}}
{{- $provider := dig "provider" "s3" .Values.cluster.backup -}}
{{- if not (has $provider (list "s3" "gcs")) -}}
{{- fail (printf "cluster.backup.provider must be one of s3, gcs (got %q)" $provider) -}}
{{- end -}}
{{- $provider -}}
{{- end -}}

{{- define "vsoft-clickhouse-cluster.backup.gcsAuth" -}}
{{- $auth := dig "gcs" "auth" "workloadIdentity" .Values.cluster.backup -}}
{{- if not (has $auth (list "workloadIdentity" "key")) -}}
{{- fail (printf "cluster.backup.gcs.auth must be one of workloadIdentity, key (got %q)" $auth) -}}
{{- end -}}
{{- $auth -}}
{{- end -}}

{{- define "vsoft-clickhouse-cluster.backup.gcsBucket" -}}
{{- $name := dig "gcs" "bucket" "name" "" .Values.cluster.backup -}}
{{- if $name -}}
{{- $name -}}
{{- else -}}
{{- printf "%s-clickhouse-backups" (required "global.projectId must be set to derive the backup bucket name" .Values.global.projectId) -}}
{{- end -}}
{{- end -}}

{{- define "vsoft-clickhouse-cluster.user.secretKey" -}}
{{- . | replace "." "_" | replace "-" "_" -}}
{{- end -}}

{{- define "vsoft-clickhouse-cluster.podTemplate" -}}
{{- $root := .root -}}
{{- $g := .pool -}}
{{- $backup := $root.Values.cluster.backup.enabled -}}
{{- $image := dig "image" "name" $root.Values.cluster.image.name $g -}}
{{- $tag := dig "image" "tag" $root.Values.cluster.image.tag $g -}}
- name: {{ $g.name }}
  metadata:
    labels:
      clickhouse-pool: {{ $g.name }}
    annotations:
      prometheus.io/scrape: 'true'
      prometheus.io/port: '8888'
      prometheus.io/path: '/metrics'
      {{- if $backup }}
      clickhouse.backup/scrape: 'true'
      clickhouse.backup/port: '7171'
      clickhouse.backup/path: '/metrics'
      {{- end }}
  spec:
    {{- with (include "vsoft-clickhouse-cluster.backup.workloadIdentitySA" $root) }}
    serviceAccountName: {{ . }}
    {{- end }}
    securityContext:
      runAsUser: 101
      runAsGroup: 101
      fsGroup: 101
    containers:
      - name: clickhouse-pod
        image: "{{ $image }}:{{ $tag }}"
        command:
          - clickhouse-server
          - --config-file=/etc/clickhouse-server/config.xml
        env:
          - name: RESTART
            value: {{ $root.Values.cluster.restartEnv }}
        {{- if $root.Values.cluster.namedCollections }}
        envFrom:
          - secretRef:
              name: clickhouse-named-collections
        {{- end }}
        {{- with $g.resources }}
        resources:
          {{- toYaml . | nindent 10 }}
        {{- end }}
      {{- if $backup }}
      - name: clickhouse-backup
        image: altinity/clickhouse-backup:latest
        imagePullPolicy: Always
        args: [ "server" ]
        envFrom:
          - secretRef:
              name: clickhouse-backup-env
        ports:
          - name: backup-rest
            containerPort: 7171
        {{- with $root.Values.cluster.backup.resources }}
        resources:
          {{- toYaml . | nindent 10 }}
        {{- end }}
      {{- end }}
    {{- with $g.affinity }}
    affinity:
      {{- toYaml . | nindent 6 }}
    {{- end }}
    {{- with $g.tolerations }}
    tolerations:
      {{- toYaml . | nindent 6 }}
    {{- end }}
{{- end -}}

{{- define "vsoft-clickhouse-cluster.pools" -}}
{{- if not .Values.cluster.pools -}}
{{- fail "cluster.pools must be set: a list of {name, replicas, resources, affinity, tolerations, storage, profiles, image, service, replicaNamePrefix}" -}}
{{- end -}}
{{- $names := list -}}
{{- range .Values.cluster.pools -}}
{{- if not .name -}}
{{- fail "each entry in cluster.pools must have a name" -}}
{{- end -}}
{{- if not (regexMatch "^[a-z0-9]([-a-z0-9]*[a-z0-9])?$" .name) -}}
{{- fail (printf "cluster.pools: %q is not a valid name, expected a lowercase DNS-1123 label" .name) -}}
{{- end -}}
{{- if lt (int (include "vsoft-clickhouse-cluster.pool.replicas" .)) 1 -}}
{{- fail (printf "cluster.pools: pool %q must have replicas >= 1, drop the pool to disable it" .name) -}}
{{- end -}}
{{- if and .replicaNamePrefix (not (regexMatch "^[a-z0-9]([-a-z0-9]*[a-z0-9])?$" .replicaNamePrefix)) -}}
{{- fail (printf "cluster.pools: pool %q has replicaNamePrefix %q, expected a lowercase DNS-1123 label" .name .replicaNamePrefix) -}}
{{- end -}}
{{- $names = append $names .name -}}
{{- end -}}
{{- if ne (len $names) (len (uniq $names)) -}}
{{- fail (printf "cluster.pools: names must be unique, got %v" $names) -}}
{{- end -}}
{{- toYaml .Values.cluster.pools -}}
{{- end -}}

{{- define "vsoft-clickhouse-cluster.pool.replicas" -}}
{{- if hasKey . "replicas" -}}
{{- int .replicas -}}
{{- else -}}
1
{{- end -}}
{{- end -}}

{{- define "vsoft-clickhouse-cluster.toXml" -}}
{{- range $k, $v := . }}
{{- if kindIs "map" $v }}
<{{ $k }}>{{ include "vsoft-clickhouse-cluster.toXml" $v | trim | nindent 2 }}
</{{ $k }}>
{{- else if and (kindIs "float64" $v) (eq $v (floor $v)) }}
<{{ $k }}>{{ printf "%.0f" $v }}</{{ $k }}>
{{- else }}
<{{ $k }}>{{ $v }}</{{ $k }}>
{{- end }}
{{- end }}
{{- end -}}

{{- define "vsoft-clickhouse-cluster.replicaNames" -}}
{{- $names := list -}}
{{- $index := 0 -}}
{{- range $pool := include "vsoft-clickhouse-cluster.pools" . | fromYamlArray -}}
{{- $prefix := $pool.replicaNamePrefix -}}
{{- range $i := until (int (include "vsoft-clickhouse-cluster.pool.replicas" $pool)) -}}
{{- if $prefix -}}
{{- $names = append $names (printf "%s-%d" $prefix $i) -}}
{{- else -}}
{{- $names = append $names (printf "%d" $index) -}}
{{- end -}}
{{- $index = add $index 1 -}}
{{- end -}}
{{- end -}}
{{- toYaml $names -}}
{{- end -}}

{{- define "vsoft-clickhouse-cluster.totalReplicas" -}}
{{- $total := 0 -}}
{{- range include "vsoft-clickhouse-cluster.pools" . | fromYamlArray -}}
{{- $total = add $total (int (include "vsoft-clickhouse-cluster.pool.replicas" .)) -}}
{{- end -}}
{{- $total -}}
{{- end -}}

{{- define "vsoft-clickhouse-cluster.backup.workloadIdentitySA" -}}
{{- if .Values.cluster.backup.enabled -}}
{{- if and (eq (include "vsoft-clickhouse-cluster.backup.provider" .) "gcs") (eq (include "vsoft-clickhouse-cluster.backup.gcsAuth" .) "workloadIdentity") -}}
{{- dig "gcs" "serviceAccount" "name" "clickhouse-backup" .Values.cluster.backup -}}
{{- end -}}
{{- end -}}
{{- end -}}
