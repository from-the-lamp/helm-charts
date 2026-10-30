{{- define "xdata-kubernetes-rbac.subjects" -}}
{{- $namespace := .namespace -}}
subjects:
{{- range .subjects }}
- kind: {{ .kind }}
  name: {{ .name }}
  {{- if eq .kind "ServiceAccount" }}
  {{- with (default $namespace .namespace) }}
  namespace: {{ . }}
  {{- end }}
  {{- else }}
  apiGroup: rbac.authorization.k8s.io
  {{- end }}
{{- end }}
{{- end -}}
