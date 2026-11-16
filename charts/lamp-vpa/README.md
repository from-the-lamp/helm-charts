# lamp-vpa

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square)

Vertical Pod Autoscaler controller (recommender-only by default - no auto-resize, no admission webhook)

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.fairwinds.com/stable | vpa | 5.2.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| vpa.admissionController.enabled | bool | `false` |  |
| vpa.metrics-server.enabled | bool | `false` |  |
| vpa.recommender.enabled | bool | `true` |  |
| vpa.updater.enabled | bool | `false` |  |
# Trivy scan - Helm Chart

## Report Summary

| Target | Type | Misconfigurations |
| --- | --- | --- |
