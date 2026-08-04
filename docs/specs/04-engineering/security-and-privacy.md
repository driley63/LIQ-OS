# Security and Privacy

Status: Draft refinement
Owner: Engineering Working Group
Version: 1.4.0-draft
Last updated: 2026-08-04

## Purpose

Defines engineering requirements for securing health data, consent records, credentials, local storage, integrations, logs, exports, and privacy-impacting behavior.

## Scope

- Mobile, web, backend-facing clients, documentation workflows, and future shared services
- Authentication, authorization, secrets, storage, transport, logging, analytics, exports, deletion, and third-party integrations
- Product flows involving sensitive health information, AI assistance, reports, and user research

## Requirements

- Sensitive health data must be classified, minimized, protected in storage and transit, and excluded from unnecessary logs.
- Secrets must never be checked into source, included in client bundles, or printed in CI logs.
- Consent and permission state must be enforced before restricted data access.
- Exports, deletion, integration disconnects, and account closure must have reviewed security and privacy behavior.
- Debug tooling must not expose real user health data outside approved environments.
- Security and privacy review is required for new sensitive data fields, integrations, authentication changes, and AI data-use changes.

## Data Handling Classes

| Class | Examples | Engineering requirement |
| --- | --- | --- |
| Public | Documentation and marketing-safe metadata | Standard integrity controls |
| Internal | Non-user operational configuration | Access limited to maintainers |
| Personal | Account and contact data | Access control and retention rules |
| Sensitive health | Logs, symptoms, reports, insights, imported health data | Strongest protection, minimization, audit, and deletion paths |
| Secret | API keys, tokens, signing material | Secret store only, rotation, no client exposure |

## Secure Implementation Rules

- Use HTTPS for network transport.
- Store tokens and sensitive local data in platform-appropriate secure storage.
- Validate and sanitize external input before storage or display.
- Apply authorization checks on server-trusted boundaries, not only client UI.
- Redact sensitive values from logs, analytics, crash reports, screenshots, and support exports.
- Use short-lived credentials where feasible.

## Privacy Review Triggers

- New health, biometric, symptom, medication, consent, or imported data fields
- New export, sharing, deletion, or integration behavior
- New AI processing or model context using user data
- New notification category that could reveal sensitive information
- New analytics event involving product health behavior
- New third-party service handling user or operational data

## Implementation Guidance

- Document threat assumptions for sensitive features.
- Prefer privacy-safe aggregate signals over raw user-event detail.
- Keep consent enforcement close to data access boundaries.
- Use synthetic data in tests, demos, docs, and CI.
- Record security exceptions with owner, expiry, and mitigation.

## Acceptance Criteria

- Sensitive data flows are documented and minimized.
- Consent and permissions are enforced in code paths, not only UI.
- Secrets are managed through approved stores.
- Logs and analytics avoid sensitive health content.
- Security and privacy review triggers are visible in PRs.

## References

- core/SPEC.md
- specs/03-product/settings-and-consent.md
- specs/04-engineering/data-models.md
- specs/05-ai/privacy.md

## Version History

- v1.4.0-draft: Adds data classes, secure implementation rules, privacy triggers, and acceptance criteria.
- v1.0.0: Initial repository baseline.
