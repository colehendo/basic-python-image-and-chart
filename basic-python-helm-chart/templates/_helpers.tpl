{{- define "name" -}}
{{- .Values.name | default .Chart.Name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "labels" -}}
helm.sh/chart: {{ include "chart" . }}
{{ include "selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{- define "selectorLabels" -}}
app.kubernetes.io/name: {{ include "name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}