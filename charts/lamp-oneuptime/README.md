# lamp-oneuptime

![Version: 0.7.3](https://img.shields.io/badge/Version-0.7.3-informational?style=flat-square)

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://helm-chart.oneuptime.com | oneuptime | 15.0.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| adminBootstrap.emailProperty | string | `"admin-email"` |  |
| adminBootstrap.enabled | bool | `true` |  |
| adminBootstrap.nameProperty | string | `"admin-name"` |  |
| adminBootstrap.passwordProperty | string | `"admin-password"` |  |
| adminBootstrap.remoteSecretKey | string | `"platform/oneuptime"` |  |
| clickhousePasswordSecret.name | string | `"clickhouse-oneuptime-password"` |  |
| clickhousePasswordSecret.remoteSecretKey | string | `"clickhouse"` |  |
| clickhousePasswordSecret.remoteSecretProperty | string | `"users.oneuptime.password"` |  |
| database.passwordSecret.name | string | `"postgres-oneuptime-password"` |  |
| database.passwordSecret.remoteSecretKey | string | `"postgres"` |  |
| database.passwordSecret.remoteSecretProperty | string | `"users.oneuptime.password"` |  |
| emailSecret.enabled | bool | `true` |  |
| emailSecret.passwordProperty | string | `"brevo.smtp-api-key"` |  |
| emailSecret.remoteSecretKey | string | `"smtp"` |  |
| externalSecrets.creationPolicy | string | `"Orphan"` |  |
| externalSecrets.kind | string | `"ClusterSecretStore"` |  |
| externalSecrets.name | string | `"vault"` |  |
| externalSecrets.refreshInterval | string | `"1h"` |  |
| globalConfig.disableSignup | bool | `true` |  |
| globalConfig.requireSsoForLogin | bool | `true` |  |
| globalConfig.setupChecklist.backups | string | `"confirmed"` |  |
| globalConfig.setupChecklist.smsAndCalls | string | `"skipped"` |  |
| globalOidcBootstrap.clientIdProperty | string | `"client-id"` |  |
| globalOidcBootstrap.clientSecretProperty | string | `"client-secret"` |  |
| globalOidcBootstrap.description | string | `"GitLab OIDC SSO for homelab OneUptime, group from-the-lamp"` |  |
| globalOidcBootstrap.disableSignUpWithSso | bool | `false` |  |
| globalOidcBootstrap.discoveryURL | string | `"https://gitlab.com/.well-known/openid-configuration"` |  |
| globalOidcBootstrap.emailClaimName | string | `"email"` |  |
| globalOidcBootstrap.enabled | bool | `true` |  |
| globalOidcBootstrap.isEnabled | bool | `true` |  |
| globalOidcBootstrap.issuerURL | string | `"https://gitlab.com"` |  |
| globalOidcBootstrap.name | string | `"GitLab (from-the-lamp)"` |  |
| globalOidcBootstrap.nameClaimName | string | `"name"` |  |
| globalOidcBootstrap.remoteSecretKey | string | `"platform/oneuptime"` |  |
| globalOidcBootstrap.restrictToAttachedProjects | bool | `false` |  |
| globalOidcBootstrap.scopes | string | `"openid email profile"` |  |
| oneuptime.app.extraEnv[0].name | string | `"INCOMING_REQUEST_INGEST_COALESCE_ENABLED"` |  |
| oneuptime.app.extraEnv[0].value | string | `"false"` |  |
| oneuptime.app.resources.limits.memory | string | `"1792Mi"` |  |
| oneuptime.app.resources.requests.cpu | string | `"200m"` |  |
| oneuptime.app.resources.requests.memory | string | `"896Mi"` |  |
| oneuptime.clickhouse.enabled | bool | `false` |  |
| oneuptime.email.existingSecret.name | string | `"oneuptime-email"` |  |
| oneuptime.email.fromEmail | string | `"artyom.zverev@proton.me"` |  |
| oneuptime.email.fromName | string | `"OneUptime"` |  |
| oneuptime.email.serverType | string | `"custom-smtp"` |  |
| oneuptime.email.smtp.host | string | `"smtp-relay.brevo.com"` |  |
| oneuptime.email.smtp.port | int | `587` |  |
| oneuptime.email.smtp.requireTls | bool | `true` |  |
| oneuptime.email.smtp.username | string | `"c40526001@smtp-brevo.com"` |  |
| oneuptime.encryptionSecret | string | `"5a7b269f475bbc0ecffbb28b5a0ae8509c78fd17715e91ef"` |  |
| oneuptime.externalClickhouse.clusterName | string | `"default"` |  |
| oneuptime.externalClickhouse.database | string | `"oneuptime"` |  |
| oneuptime.externalClickhouse.existingSecret.name | string | `"clickhouse-oneuptime-password"` |  |
| oneuptime.externalClickhouse.existingSecret.passwordKey | string | `"password"` |  |
| oneuptime.externalClickhouse.host | string | `"clickhouse-cluster.clickhouse.svc.cluster.local"` |  |
| oneuptime.externalClickhouse.isHostHttps | bool | `false` |  |
| oneuptime.externalClickhouse.port | int | `8123` |  |
| oneuptime.externalClickhouse.tls.enabled | bool | `false` |  |
| oneuptime.externalClickhouse.username | string | `"oneuptime"` |  |
| oneuptime.externalPostgres.database | string | `"oneuptime"` |  |
| oneuptime.externalPostgres.existingSecret.name | string | `"postgres-oneuptime-password"` |  |
| oneuptime.externalPostgres.existingSecret.passwordKey | string | `"password"` |  |
| oneuptime.externalPostgres.host | string | `"postgres-rw.postgres.svc.cluster.local"` |  |
| oneuptime.externalPostgres.port | int | `5432` |  |
| oneuptime.externalPostgres.username | string | `"oneuptime"` |  |
| oneuptime.global.storageClass | string | `"local-path"` |  |
| oneuptime.host | string | `"oneuptime.from-the-lamp.work"` |  |
| oneuptime.httpProtocol | string | `"https"` |  |
| oneuptime.image.pullPolicy | string | `"IfNotPresent"` |  |
| oneuptime.image.tag | string | `"15.0.0"` |  |
| oneuptime.image.type | string | `"community-edition"` |  |
| oneuptime.migrate.annotations."argocd.argoproj.io/sync-options" | string | `"Replace=true,Force=true"` |  |
| oneuptime.migrate.resources.limits.memory | string | `"512Mi"` |  |
| oneuptime.migrate.resources.requests.cpu | string | `"50m"` |  |
| oneuptime.migrate.resources.requests.memory | string | `"256Mi"` |  |
| oneuptime.nginx.resources.limits.memory | string | `"768Mi"` |  |
| oneuptime.nginx.resources.requests.cpu | string | `"10m"` |  |
| oneuptime.nginx.resources.requests.memory | string | `"448Mi"` |  |
| oneuptime.nginx.service.type | string | `"ClusterIP"` |  |
| oneuptime.oneuptimeSecret | string | `"aae773dc92ab56adaed5572c19f7da561da0391320f14227"` |  |
| oneuptime.postgresql.enabled | bool | `false` |  |
| oneuptime.probeContainerSecurityContext.capabilities.add[0] | string | `"CHOWN"` |  |
| oneuptime.probeContainerSecurityContext.capabilities.add[1] | string | `"DAC_OVERRIDE"` |  |
| oneuptime.probeContainerSecurityContext.capabilities.add[2] | string | `"KILL"` |  |
| oneuptime.probeContainerSecurityContext.capabilities.add[3] | string | `"SETGID"` |  |
| oneuptime.probeContainerSecurityContext.capabilities.add[4] | string | `"SETUID"` |  |
| oneuptime.probes.one.resources.limits.memory | string | `"512Mi"` |  |
| oneuptime.probes.one.resources.requests.cpu | string | `"50m"` |  |
| oneuptime.probes.one.resources.requests.memory | string | `"256Mi"` |  |
| oneuptime.products.onThisServer | string | `"incident-response"` |  |
| oneuptime.registerProbeKey | string | `"48524500951e237d50a49f38227552ecf7308135572a8f38"` |  |
| oneuptime.slackApp.clientId | string | `"6547522206593.12639247996437"` |  |
| oneuptime.slackApp.existingSecret.clientIdKey | string | `"clientId"` |  |
| oneuptime.slackApp.existingSecret.clientSecretKey | string | `"clientSecret"` |  |
| oneuptime.slackApp.existingSecret.name | string | `"oneuptime-slack"` |  |
| oneuptime.slackApp.existingSecret.signingSecretKey | string | `"signingSecret"` |  |
| oneuptime.telemetry.disableIngestion | bool | `true` |  |
| oneuptime.valkey.auth.password | string | `"52756b121de34e5f052b36168ecf58d5000209d73d5571d4"` |  |
| oneuptime.valkey.master.resources.limits.memory | string | `"128Mi"` |  |
| oneuptime.valkey.master.resources.requests.cpu | string | `"10m"` |  |
| oneuptime.valkey.master.resources.requests.memory | string | `"32Mi"` |  |
| slackSecret.clientIdProperty | string | `"oneuptime.client-id"` |  |
| slackSecret.clientSecretProperty | string | `"oneuptime.client-secret"` |  |
| slackSecret.enabled | bool | `true` |  |
| slackSecret.remoteSecretKey | string | `"slack"` |  |
| slackSecret.signingSecretProperty | string | `"oneuptime.signing-secret"` |  |
# Trivy scan - Helm Chart

## Report Summary

| Target | Type | Misconfigurations |
| --- | --- | --- |
