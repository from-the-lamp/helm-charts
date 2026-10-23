# CLAUDE.md

## Commands come from the Taskfile, not from memory or docs

Run `task --list-all` before doing anything. This repo also ships a `mise.toml` pinning the CLI
tools (`helm`, etc.) the Taskfile expects - run `mise trust` once per clone, then `mise install`
to get everything needed, instead of assuming tools are on PATH or installing them another way.

## There is no "already exists, skip" guard here - unlike docker-images/terraform-modules

`task build:push:changed` builds and pushes **every** chart whose `Chart.yaml` is in the last
commit's diff (`git diff --name-only HEAD~1 | grep 'Chart.yaml$'`), unconditionally - `helm push`
just overwrites. There's also no `build_dev.yml` / dev mode in this repo. Practical upshot: if you
edit a chart's templates/values without bumping `version:` in its `Chart.yaml`, CI won't rebuild it
at all (same "nothing in the diff" trap as docker-images); if you DO bump `version:`, it rebuilds
and pushes regardless of whether that version already exists upstream - there's no accidental-skip
risk here, but also no accidental-immutability guarantee: re-pushing the same version number twice
silently overwrites it.

To force a specific chart to build/push regardless of git diff: `task build:push:<dirname>`.

## Downstream consumers pin exact chart versions

`argo-apps` Application manifests reference this chart by exact `version:` via
`oci://registry.gitlab.com/from-the-lamp/infra/helm-charts`. Bumping a chart's templates without
bumping `version:` means no consumer ever sees the change (ArgoCD resolves the pinned version, not
"latest"). After a chart change lands here, the consuming app's `Chart.yaml` dependency version in
`argo-apps` needs a matching bump.
