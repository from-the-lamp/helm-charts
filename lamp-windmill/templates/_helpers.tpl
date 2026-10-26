{{- define "lamp-windmill.externalSecret" -}}
{{- $store := .root.Values.externalSecrets -}}
apiVersion: external-secrets.io/v1
kind: ExternalSecret
metadata:
  name: {{ .name }}
spec:
  refreshInterval: {{ $store.refreshInterval | quote }}
  secretStoreRef:
    kind: {{ $store.kind | quote }}
    name: {{ $store.name | quote }}
  target:
    name: {{ .name }}
    creationPolicy: {{ $store.creationPolicy | quote }}
    {{- with .template }}
    template:
      data:
        {{- toYaml . | nindent 8 }}
    {{- end }}
  data:
    {{- range $secretKey, $ref := .data }}
    - secretKey: {{ $secretKey }}
      remoteRef:
        key: {{ required (printf "lamp-windmill: %s needs a Vault key" $secretKey) $ref.key }}
        {{- with $ref.property }}
        property: {{ . }}
        {{- end }}
    {{- end }}
{{- end -}}

{{- define "lamp-windmill.variableFile" -}}
/bootstrap/{{ replace "/" "." . }}
{{- end -}}
