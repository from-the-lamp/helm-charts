{{- define "lamp-kelos-workspaces.setupScript" -}}
git config --global user.email "kelos@from-the-lamp.work"
git config --global user.name "{{ . }}"
mkdir -p ~/.codex
cat > ~/.codex/config.toml <<'TOML'
model_provider = "litellm"
model = "gpt-5.6-terra"
approval_policy = "never"
sandbox_mode = "workspace-write"

[sandbox_workspace_write]
network_access = true

[model_providers.litellm]
name = "litellm"
base_url = "http://litellm.litellm.svc.cluster.local:4000/v1"
env_key = "OPENAI_API_KEY"
wire_api = "responses"
TOML
{{- end -}}
