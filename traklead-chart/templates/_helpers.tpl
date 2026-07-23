{{- define "traklead.selectorLabels" -}}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/component: {{ .component }}
{{- end -}}

{{- define "traklead.commonLabels" -}}
{{ include "traklead.selectorLabels" . }}
app.kubernetes.io/part-of: traklead
{{- end -}}
