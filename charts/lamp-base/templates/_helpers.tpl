{{/*
Expand the name of the chart.
*/}}
{{- define "app.name" -}}
{{- default .Release.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{/*
Create a default fully qualified app name.
If fullnameOverride is set, use that.
Otherwise use the release name + chart name (or nameOverride).
*/}}
{{- define "app.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else }}
{{- printf "%s" .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version.
*/}}
{{- define "app.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{/*
Selector labels - deliberately minimal (name + instance only). These feed
spec.selector.matchLabels, which is immutable after the first apply, so
nothing that could ever change release-to-release (version, component,
part-of) belongs here.
*/}}
{{- define "app.selectorLabels" -}}
app.kubernetes.io/name: {{ include "app.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Full recommended label set (https://kubernetes.io/docs/concepts/overview/working-with-objects/common-labels/),
safe to put on any object's metadata AND on the Pod template itself -
nothing here is used as a selector, so it's free to change release to
release without breaking an existing Rollout/Service.
*/}}
{{- define "app.labels" -}}
helm.sh/chart: {{ include "app.chart" . }}
{{ include "app.selectorLabels" . }}
{{- if .Values.image.tag }}
  {{- if contains "sha256:" .Values.image.tag }}
app.kubernetes.io/version: {{ regexReplaceAll ".*sha256:([0-9a-f]{8}).*" .Values.image.tag "sha-${1}" | quote }}
  {{- else }}
app.kubernetes.io/version: {{ .Values.image.tag | trimPrefix "v" | quote }}
  {{- end }}
{{- else if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- with .Values.labels.component }}
app.kubernetes.io/component: {{ . | quote }}
{{- end }}
{{- with .Values.labels.partOf }}
app.kubernetes.io/part-of: {{ . | quote }}
{{- end }}
{{- end }}

{{/*
Full image reference - "name:tag" for a semver tag (SemVer Kargo strategy),
"name@digest" for a digest (Digest Kargo strategy). `@tag` where tag isn't
a real digest is an invalid OCI reference, so this can't just always use
`@` like the chart used to.
*/}}
{{- define "app.image" -}}
{{- if contains "sha256:" (.Values.image.tag | default "") -}}
{{ .Values.image.name }}@{{ .Values.image.tag }}
{{- else -}}
{{ .Values.image.name }}:{{ .Values.image.tag }}
{{- end -}}
{{- end }}

{{/*
ServiceAccount name - the dedicated one this chart creates when
serviceAccount.create is true, otherwise the namespace default.
*/}}
{{- define "app.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "app.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}
