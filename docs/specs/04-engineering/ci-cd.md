# CI/CD

Status: Released
Owner: Engineering Working Group
Version: 1.4.0
Last updated: 2026-08-04

## Purpose

Defines continuous integration and deployment standards for validation, build artifacts, secrets, environments, and deployment gates.

## Scope

- GitHub Actions and future CI/CD providers
- Documentation, mobile, web, package, test, security, and release workflows
- Pull requests, protected branches, preview builds, release candidates, and production deployments

## Requirements

- Required checks must pass before merge to protected branches.
- CI must run deterministic validation for docs, tests, lint, schema, and build steps relevant to changed files.
- Secrets must be stored in approved CI secret stores and must not be printed in logs.
- Deployment workflows must identify artifact source, commit SHA, environment, and approver where required.
- Failed required checks must block release until resolved or explicitly waived with owner and expiry.
- CI changes that reduce coverage or remove gates require review.

## Pipeline Stages

| Stage | Purpose |
| --- | --- |
| Validate | Format, lint, static checks, manifest/schema validation |
| Test | Unit, component, integration, accessibility, and contract tests |
| Build | Produce docs, app, package, or preview artifacts |
| Security | Dependency, secret, and configuration checks where available |
| Package | Attach version, metadata, and provenance to artifacts |
| Deploy | Promote reviewed artifacts to target environment |
| Verify | Confirm deployment health and rollback path |

## Required Metadata

Build and deployment records should include:

- Commit SHA
- Branch or tag
- Workflow name and run ID
- Artifact name and version
- Environment
- Actor or approver
- Validation status
- Deployment URL or package destination when applicable

## Implementation Guidance

- Prefer reusable workflows for repeated validation.
- Keep deployment and validation jobs separate.
- Use least-privilege tokens for CI operations.
- Cache dependencies without caching secrets or user data.
- Make CI failures actionable with clear logs and ownership.

## Acceptance Criteria

- Required checks protect `main`.
- Build artifacts are reproducible from repository content.
- Secrets are not exposed in logs or artifacts.
- Deployment provenance is traceable.
- Failed checks provide enough detail for remediation.

## References

- core/SPEC.md
- docs/playbook/build-the-docs-site.md
- specs/04-engineering/testing.md
- specs/04-engineering/release-engineering.md

## Version History

- v1.4.0: Adds CI/CD pipeline stages, metadata, gates, and secret-handling rules.
- v1.0.0: Initial repository baseline.
