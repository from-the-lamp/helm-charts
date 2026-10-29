{{- define "lamp-litellm.remoteRef" -}}
{{- if not .key }}{{ fail (printf "lamp-litellm: %s needs .key" .name) }}{{ end -}}
key: {{ .key }}
{{- with .property }}
property: {{ . }}
{{- end }}
{{- end -}}
