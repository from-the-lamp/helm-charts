{{/*
Pod-template annotations applied to every MCPServer this chart renders, so
that the backing Secret (ExternalSecrets-synced from Vault) rotating or being
recreated always triggers a pod restart via Reloader - without this, a
rotated/recreated secret leaves the running pod on its old (now invalid)
value until someone restarts it by hand. VirtualMCPServer resources
(lamp-toolhive-vmcps) and the toolhive-operator's own checksum-based restart
for them are a separate, already-covered mechanism; backend MCPServer pods
(this chart) have no equivalent built-in, so Reloader is the only thing that
closes this gap for them.
*/}}
{{- define "lamp-toolhive-mcps.podAnnotations" -}}
reloader.stakater.com/auto: "true"
{{- end -}}
