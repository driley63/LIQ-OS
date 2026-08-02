# LIQ OS

LifestyleIQ Operating System (LIQ OS) is the canonical source of truth for LifestyleIQ's brand, design language, product experience, engineering standards, AI behavior, and release governance.

This repository treats product documentation like software. Specifications are versioned, reviewed, released, and traceable to decisions. Word and PDF versions can be generated later, but Markdown is the authoritative source.

## Current Release

- Version: v1.0.0
- Status: Approved baseline
- Release date: 2026-08-02
- Product name: LifestyleIQ
- Operating system name: LIQ OS
- Design philosophy: "Translating daily habits into a plan towards optimal health."

## Repository Map

```text
LIQ-OS/
|-- core/                  Foundational constitution, governance, versioning, and quality standards
|-- specs/                 Versioned specification volumes
|-- adr/                   Accepted architectural and product decision records
|-- rfc/                   Reviewable proposals before decisions are locked
|-- playbook/              Contributor workflows and operating guidance
|-- templates/             Reusable templates for specs, ADRs, RFCs, releases, and reviews
|-- assets/                Source assets, token files, and generated asset placeholders
|-- releases/              Release notes and manifests
|-- docs/                  MkDocs site source generated from repository Markdown
|-- tooling/               Local validation and publishing helpers
|-- .github/               GitHub issue templates, PR template, CI, and Pages workflow
|-- mkdocs.yml             Documentation site configuration
`-- requirements-docs.txt  Documentation build dependencies
```

## Core Principles

- Understanding over tracking: data is useful only when it leads to understanding.
- Action over observation: insights should point to practical next steps.
- Clarity over complexity: health information should become easier to interpret.
- Evidence over assumption: recommendations should expose reasoning and confidence.
- Consistency over novelty: reuse approved patterns unless a change is justified.
- Accessibility by default: inclusive behavior is part of the baseline.
- Implementation-first: every standard should map cleanly to production artifacts.

## Local Documentation Build

```bash
python -m venv .venv
source .venv/bin/activate
pip install -r requirements-docs.txt
mkdocs serve
```

## First Commit Steps

```bash
unzip LIQ-OS-github-ready-v1.0.0.zip
cd LIQ-OS
git init
git add .
git commit -m "docs(core): bootstrap LIQ OS v1.0.0"
git branch -M main
git remote add origin https://github.com/driley63/LIQ-OS.git
git push -u origin main
```

If the remote repository already has files, unzip into a fresh branch instead, review the diff, then merge through a pull request.
