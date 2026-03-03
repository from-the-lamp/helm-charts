# from-the-lamp Helm Charts

This repository contains Helm charts and supporting tooling used to deploy and operate cloud-native infrastructure components.

## What’s inside

- `_charts/` — Helm charts (and upstream vendors) for core platform components
- `.gitlab-ci.yml` — CI automation for chart workflows
- `Taskfile.yml` — developer automation (lint/build/release helpers)

## Design principles (high level)

These artifacts reflect a standardized, automation-first approach:

- **Reproducibility**: environment/application deployments are defined declaratively
- **Safety**: predictable releases via CI/CD automation and consistent chart patterns
- **Maintainability**: modular components and clear separation of concerns

## How to use

Repository usage is organization-specific; public consumers can use this repository as a reference for structuring Helm-based platform delivery.

