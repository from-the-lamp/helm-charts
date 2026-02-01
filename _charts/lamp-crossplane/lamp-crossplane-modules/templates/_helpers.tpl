{{- define "auth.host" -}}
{{- if index . "auth" "host" }}
{{- index . "auth" "host" }}
{{- else -}}
{{ `{{ .host }}` }}
{{- end }}
{{- end }}

{{- define "auth.port" -}}
{{- if index . "auth" "port" }}
{{- index . "auth" "port" }}
{{- else -}}
{{ `{{ .port }}` }}
{{- end }}
{{- end }}

{{- define "auth.user" -}}
{{- if index . "auth" "user" }}
{{- index . "auth" "user" }}
{{- else -}}
{{ `{{ .user }}` }}
{{- end }}
{{- end }}

{{- define "auth.pass" -}}
{{- if index . "auth" "pass" }}
{{- index . "auth" "pass" }}
{{- else -}}
{{ `{{ .pass }}` }}
{{- end }}
{{- end }}

{{- define "auth.db" -}}
{{- if index . "auth" "db" }}
{{- index . "auth" "db" }}
{{- else -}}
{{ `{{ .db }}` }}
{{- end }}
{{- end }}

{{- define "auth.remoteRefs" -}}
{{- with index . "auth" "remoteSecretKeys" }}
  {{- if .host }}
- secretKey: host
  remoteRef:
    key: {{ .host }}
  {{- end }}
  {{- if .port }}
- secretKey: port
  remoteRef:
    key: {{ .port }}
  {{- end }}
  {{- if .user }}
- secretKey: user
  remoteRef:
    key: {{ .user }}
  {{- end }}
  {{- if .pass }}
- secretKey: pass
  remoteRef:
    key: {{ .pass }}
  {{- end }}
  {{- if .db }}
- secretKey: db
  remoteRef:
    key: {{ .db }}
  {{- end }}
{{- end }}
{{- end }}
