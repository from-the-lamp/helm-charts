# lamp-oauth2-proxy

![Version: 1.2.1](https://img.shields.io/badge/Version-1.2.1-informational?style=flat-square)

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://oauth2-proxy.github.io/manifests | oauth2-proxy | 10.7.4 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| oauth2-proxy.config.cookieName | string | `"eikooc"` |  |
| oauth2-proxy.deploymentAnnotations."reloader.stakater.com/auto" | string | `"true"` |  |
| oauth2-proxy.extraArgs.cookie-csrf-expire | string | `"5m"` |  |
| oauth2-proxy.extraArgs.cookie-csrf-per-request | bool | `true` |  |
| oauth2-proxy.extraArgs.cookie-secure | bool | `false` |  |
| oauth2-proxy.extraArgs.email-domain | string | `"*"` |  |
| oauth2-proxy.extraArgs.gitlab-group | string | `"from-the-lamp"` |  |
| oauth2-proxy.extraArgs.oidc-issuer-url | string | `"https://gitlab.com"` |  |
| oauth2-proxy.extraArgs.pass-access-token | bool | `true` |  |
| oauth2-proxy.extraArgs.pass-authorization-header | bool | `true` |  |
| oauth2-proxy.extraArgs.provider | string | `"gitlab"` |  |
| oauth2-proxy.extraArgs.reverse-proxy | bool | `true` |  |
| oauth2-proxy.extraArgs.scope | string | `"openid email"` |  |
| oauth2-proxy.extraArgs.set-authorization-header | bool | `true` |  |
| oauth2-proxy.extraArgs.set-xauthrequest | bool | `true` |  |
| oauth2-proxy.extraArgs.skip-provider-button | bool | `true` |  |
| oauth2-proxy.extraArgs.upstream | string | `"static://200"` |  |
# Trivy scan - Helm Chart

## Report Summary

| Target | Type | Misconfigurations |
| --- | --- | --- |
