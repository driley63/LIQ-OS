# Release Engineering

Status: Draft refinement
Owner: Engineering Working Group
Version: 1.4.0-draft
Last updated: 2026-08-04

## Purpose

Defines release engineering standards for versioning, release branches, artifacts, approvals, deployment, rollback, verification, and post-release review.

## Scope

- Documentation releases, package releases, mobile/web app releases, and future service releases
- Release candidates, production deployments, hotfixes, rollback, release notes, and operational verification
- GitHub, CI/CD, Amplify, app store, and package distribution workflows where applicable

## Requirements

- Releases must be reproducible from reviewed repository content.
- Release artifacts must identify version, commit SHA, build environment, validation status, and owner.
- Release candidates must pass required CI/CD checks and relevant manual review before promotion.
- Rollback or forward-fix options must be documented before production-impacting deployment.
- Hotfixes must be scoped, reviewed, and followed by release notes or patch metadata.
- Post-release verification must confirm deployment health, user-impact signals, and known limitations.

## Release Record

Each release should define:

- Version and status
- Source branch, tag, or commit SHA
- Included changes and migration notes
- Required checks and manual review
- Artifacts and destinations
- Deployment owner and approver
- Rollback or remediation path
- Post-release verification notes

## Release Types

| Type | Use | Requirement |
| --- | --- | --- |
| Draft minor | Starts a new implementation milestone | Checklist and manifest identify pending review |
| Released minor | Publishes additive implementation standards | Checklist complete and release notes updated |
| Patch | Clarifies or fixes released behavior | Minimal scope and explicit impact |
| Hotfix | Urgent production correction | Owner, risk, validation, and follow-up required |
| Breaking release | Changes existing contract materially | ADR or governance review required |

## Deployment Verification

- Confirm deployed version and commit.
- Confirm required headers, assets, or environment config are active.
- Confirm key health indicators and error rates.
- Check critical user paths or docs pages.
- Record known limitations and follow-up items.

## Implementation Guidance

- Prefer pull requests for all release metadata changes.
- Do not publish artifacts from unreviewed local state.
- Keep release notes user-readable and changelog-structured.
- Tag releases only after reviewed content is merged.
- Delete or archive obsolete release branches after merge when repository policy allows it.

## Acceptance Criteria

- Release state can be reproduced and audited.
- Artifacts map to reviewed source.
- Rollback or remediation path exists.
- Post-release verification is documented.
- Consumers can understand what changed and whether action is required.

## References

- core/release-process.md
- core/versioning.md
- specs/04-engineering/ci-cd.md
- docs/playbook/cut-a-release.md

## Version History

- v1.4.0-draft: Adds release records, release types, deployment verification, and artifact requirements.
- v1.0.0: Initial repository baseline.
