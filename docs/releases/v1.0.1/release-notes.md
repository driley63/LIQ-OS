# Release Notes - v1.0.1

Date: 2026-08-03
Status: Released patch

## Summary

This release removes duplicate documentation sources and makes `docs/` the canonical MkDocs source tree.

## Fixed

- Removed the unsupported root-level MkDocs source layout.
- Removed the duplicate root-level documentation folders.
- Removed the root `docs/README.md` conflict with `docs/index.md`.
- Removed Amplify's dependency on `.venv/bin/python3`.

## Added

- ADR-0009 for the documentation publishing architecture.
- CI checks that validate repository layout and run `mkdocs build --strict`.
- Explicit Amplify deployment guidance in `README.md`.

## Migration Notes

- Move edits for Core, specs, ADRs, RFCs, playbook, and releases into `docs/`.
- Do not recreate root-level `core/`, `specs/`, `adr/`, `rfc/`, `playbook/`, or `releases/` folders.
- Amplify should deploy the generated `site/` directory from `mkdocs build --strict`.
