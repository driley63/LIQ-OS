# Changelog

All notable changes to LIQ OS are recorded in this file.

The format follows Keep a Changelog conventions and the project uses semantic versioning for published operating system releases.

## [v1.0.1] - 2026-08-03

### Fixed

- Removed duplicated canonical Markdown folders from the repository root.
- Made `docs/` the single canonical Markdown source for MkDocs publishing.
- Removed the root-level `docs/README.md` conflict that triggered MkDocs warnings.
- Updated Amplify build instructions to avoid virtual-environment path failures.

### Added

- ADR-0009 documenting the `docs/`-canonical documentation publishing model.
- Release notes and manifest for v1.0.1.
- CI validation that checks repository layout and runs `mkdocs build --strict`.

### Changed

- Root `README.md` now focuses on repository operations and deployment.
- `mkdocs.yml` now documents the single-source `docs/` architecture.

## [v1.0.0] - 2026-08-02

### Added

- Initial LIQ OS repository structure.
- LIQ OS Core specification and constitutional governance.
- Brand Identity, Design Language, Product Experience, Engineering, AI, Architecture, Marketing, and Governance specification volumes.
- Initial ADR set for name, philosophy, AI color reservation, signature gradient, versioned OS model, Markdown-first source, Inter typography, and GitHub-ready documentation.
- Initial RFC set for typography, component library, Flutter design system, AI insight model, and documentation publishing.
- MkDocs configuration for static documentation publishing.
- GitHub issue templates, pull request template, CODEOWNERS placeholder, and CI workflow.
- Brand assets and design-token placeholders.

### Baseline Decisions

- Product name: LifestyleIQ.
- Internal system name: LifestyleIQ Operating System (LIQ OS).
- Philosophy: "Translating daily habits into a plan towards optimal health."
- Signature palette: Fresh Lime to Evergreen gradient.
- AI accent: Purple reserved for AI-generated insights and machine-learning behavior.
