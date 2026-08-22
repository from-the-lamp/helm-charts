{{- define "lamp-litellm.codexHandlerSettings" -}}
litellm_settings:
  drop_params: true
  custom_provider_map:
    - provider: codex
      custom_handler: codex_handler.codex_auth_provider
general_settings:
  master_key: os.environ/PROXY_MASTER_KEY
{{- end -}}

{{- define "lamp-litellm.remoteRef" -}}
{{- if not .key }}{{ fail (printf "lamp-litellm: %s needs .key" .name) }}{{ end -}}
key: {{ .key }}
{{- with .property }}
property: {{ . }}
{{- end }}
{{- end -}}
