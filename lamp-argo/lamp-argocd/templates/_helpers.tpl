{{- define "argocd.secretStoreName" -}}
{{ required "externalSecrets.name is required whenever repositories, githubApps, externalClusters or sso are configured (e.g. vault)" .Values.externalSecrets.name }}
{{- end -}}
