{{- define "vsoft-vault-backup.provider" -}}
{{- $provider := dig "provider" "gcs" .Values.backup -}}
{{- if not (has $provider (list "s3" "gcs")) -}}
{{- fail (printf "backup.provider must be one of s3, gcs (got %q)" $provider) -}}
{{- end -}}
{{- $provider -}}
{{- end -}}

{{- define "vsoft-vault-backup.gcsAuth" -}}
{{- $auth := dig "gcs" "auth" "workloadIdentity" .Values.backup -}}
{{- if not (has $auth (list "workloadIdentity" "key")) -}}
{{- fail (printf "backup.gcs.auth must be one of workloadIdentity, key (got %q)" $auth) -}}
{{- end -}}
{{- $auth -}}
{{- end -}}

{{- define "vsoft-vault-backup.tokenSource" -}}
{{- $source := dig "vault" "token" "source" "existingSecret" .Values.backup -}}
{{- if not (has $source (list "existingSecret" "externalSecret")) -}}
{{- fail (printf "backup.vault.token.source must be one of existingSecret, externalSecret (got %q)" $source) -}}
{{- end -}}
{{- $source -}}
{{- end -}}

{{- define "vsoft-vault-backup.needsCredentials" -}}
{{- $provider := include "vsoft-vault-backup.provider" . -}}
{{- if or (eq $provider "s3") (eq (include "vsoft-vault-backup.gcsAuth" .) "key") (eq (include "vsoft-vault-backup.tokenSource" .) "externalSecret") -}}
true
{{- end -}}
{{- end -}}

{{- define "vsoft-vault-backup.gcsBucket" -}}
{{- $name := dig "gcs" "bucket" "name" "" .Values.backup -}}
{{- if $name -}}
{{- $name -}}
{{- else -}}
{{- printf "%s-vault-backups" (required "global.projectId must be set to derive the backup bucket name" .Values.global.projectId) -}}
{{- end -}}
{{- end -}}

{{- define "vsoft-vault-backup.bucket" -}}
{{- if eq (include "vsoft-vault-backup.provider" .) "gcs" -}}
{{- include "vsoft-vault-backup.gcsBucket" . -}}
{{- else -}}
{{- required "backup.s3.bucket must be set" .Values.backup.s3.bucket -}}
{{- end -}}
{{- end -}}

{{- define "vsoft-vault-backup.path" -}}
{{- if eq (include "vsoft-vault-backup.provider" .) "gcs" -}}
{{- dig "gcs" "path" "vault" .Values.backup -}}
{{- else -}}
{{- dig "s3" "path" "vault" .Values.backup -}}
{{- end -}}
{{- end -}}

{{- define "vsoft-vault-backup.workloadIdentitySA" -}}
{{- if .Values.backup.enabled -}}
{{- if and (eq (include "vsoft-vault-backup.provider" .) "gcs") (eq (include "vsoft-vault-backup.gcsAuth" .) "workloadIdentity") -}}
{{- dig "gcs" "serviceAccount" "name" "vault-backup" .Values.backup -}}
{{- end -}}
{{- end -}}
{{- end -}}
