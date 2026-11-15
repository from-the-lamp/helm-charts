{{- define "lamp-volsync-backup.name" -}}
{{- .Values.name | default .Release.Name -}}
{{- end -}}

{{- define "lamp-volsync-backup.secretName" -}}
{{- printf "%s-volsync-restic" (include "lamp-volsync-backup.name" .) -}}
{{- end -}}

{{- define "lamp-volsync-backup.repository" -}}
{{- $path := .Values.repository.path | default (printf "restic/%s" (include "lamp-volsync-backup.name" .)) -}}
{{- printf "s3:%s/%s/%s" .Values.repository.endpoint .Values.repository.bucket $path -}}
{{- end -}}
