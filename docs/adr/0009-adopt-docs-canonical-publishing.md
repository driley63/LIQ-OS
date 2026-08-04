# ADR-0009: Adopt docs/ as the Canonical Documentation Source

Status: Accepted
Date: 2026-08-03
Owner: LIQ OS Maintainers

## Context

MkDocs requires the documentation source directory to be a child of the repository root. The initial repository mirrored top-level Markdown folders into docs/, which created duplicate source-of-truth risk and caused avoidable MkDocs warnings.

## Decision

All publishable LIQ OS Markdown content lives under docs/. The repository root is reserved for operational files, configuration, assets, templates, and tooling.

## Alternatives Considered

- Use repository root as docs_dir
- Keep top-level canonical folders and mirror them into docs/
- Move to a different static-site generator

## Consequences

- MkDocs can build without unsupported parent-directory configuration.
- Canonical content no longer exists in both root-level folders and a mirrored docs tree.
- Reviewers know that changes to Core, specs, ADRs, RFCs, playbook, and releases happen under docs/.

## Traceability

- Core principle: implementation-first standards
- Release: v1.0.1
