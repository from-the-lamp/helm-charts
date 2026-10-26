# CLAUDE.md

## Commands come from the Taskfile, not from memory or docs

Run `task --list-all` before doing anything. This repo also ships a `mise.toml` pinning the CLI
tools (`helm`, etc.) the Taskfile expects - run `mise trust` once per clone, then `mise install`
to get everything needed, instead of assuming tools are on PATH or installing them another way.

## CI: a build stage, then a push stage - and only `main` pushes

`.gitlab-ci.yml` only includes the shared `task-pipeline` component from `infra/cicd` (its README
has the jobs, inputs and contract). The `build` job runs `task auth` + `task build:changed` in every
pipeline - `helm dependency update`, `helm lint`, `helm package` into `<chart>/.output`, kept as
artifacts. The `push` job runs `task auth` + `task push:changed` on `main` only - `helm push` of
those packages. Change what a stage does in this Taskfile; change the pipeline skeleton
(rules, stages, tools image job) in `infra/cicd`, where it applies to every repository at once.

MR pipelines therefore build and lint but cannot publish. Before this split every MR pipeline
pushed (an unmerged Renovate MR overwrote `lamp-cert-manager:0.3.3`) - do not reintroduce a push
outside `main`. `workflow:rules` also stops the duplicate branch pipeline for a branch with an open MR.

What counts as changed: charts whose `Chart.yaml` differs from `DIFF_BASE`. In CI that is the MR's
merge base, or the previous `main` commit for a push to `main`; locally it is `HEAD~1` against the
working tree. Both can be overridden through the environment:

- `task plan` - prints the diff base and every chart CI would build and push, with its target OCI ref.
  Run it before pushing; it is the cheap way for a human or an agent to see what the pipeline will do.
- `DIFF_BASE=origin/main task plan` - compare against another ref.
- `TARGETS="lamp-foo lamp-bar" task build:changed` - name the charts explicitly. The same `TARGETS`
  variable in "Run pipeline" (or an API-triggered pipeline) on `main` rebuilds and republishes those
  charts without a commit.

The release trigger is still the `Chart.yaml` diff, so editing templates/values without touching
`Chart.yaml` builds nothing. There is no "already exists, skip" guard (unlike
docker-images/terraform-modules): pushing the same `version:` again overwrites it. That is what
Renovate relies on - its MRs bump a dependency in `Chart.yaml` without bumping the chart's own
`version:`, and merging them republishes that version. There's also no `build_dev.yml` / dev mode here.

To force one chart through build and push locally regardless of git diff: `task build:push:<dirname>`.

## Downstream consumers pin exact chart versions

`argo-apps` Application manifests reference this chart by exact `version:` via
`oci://registry.gitlab.com/from-the-lamp/infra/helm-charts`. Bumping a chart's templates without
bumping `version:` means no consumer ever sees the change (ArgoCD resolves the pinned version, not
"latest"). After a chart change lands here, the consuming app's `Chart.yaml` dependency version in
`argo-apps` needs a matching bump.
