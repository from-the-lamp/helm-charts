{{/*
Expand the name of the chart.
*/}}
{{- define "remnawave-panel.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{/*
Create a default fully qualified app name.
If fullnameOverride is set, use that. 
Otherwise use the release name + chart name (или nameOverride).
*/}}
{{- define "remnawave-panel.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version.
*/}}
{{- define "remnawave-panel.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{/*
Common labels
*/}}
{{- define "remnawave-panel.labels" -}}
helm.sh/chart: {{ include "remnawave-panel.chart" . }}
{{ include "remnawave-panel.selectorLabels" . }}
{{- if .Values.image.tag }}
app.kubernetes.io/version: {{ .Values.image.tag | trimPrefix "v" | quote }}
{{- else if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "remnawave-panel.selectorLabels" -}}
app.kubernetes.io/name: {{ include "remnawave-panel.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
