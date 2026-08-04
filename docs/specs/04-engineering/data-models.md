# Data Models

Status: Draft refinement
Owner: Engineering Working Group
Version: 1.4.0-draft
Last updated: 2026-08-04

## Purpose

Defines data model ownership, validation, serialization, migrations, schema changes, and health-data safeguards.

## Scope

- Client models, API contracts, local persistence, imports, exports, analytics events, and future shared schemas
- Daily logs, health timeline entries, reports, insights, consent records, notifications, and user research metadata
- Product, engineering, data, security, privacy, and release review

## Requirements

- Data models must have an owner, purpose, source, version, and privacy classification.
- Models representing health or consent data must define retention, deletion, export, and audit expectations.
- Serialization must be explicit and tested.
- Required fields must be justified by product behavior.
- Schema changes must identify backward compatibility, migration, and rollback impact.
- User-visible interpretation must distinguish missing, null, zero, estimated, and unavailable values.

## Model Record

Each model should define:

- Name and owner
- Product purpose
- Source of truth
- Field definitions and validation rules
- Privacy classification and retention expectations
- Serialization format and version
- Migration, compatibility, and deletion behavior
- Test coverage expectations

## Change Classes

| Change | Requirement |
| --- | --- |
| Add optional field | Document default and consumer behavior |
| Add required field | Requires migration and compatibility review |
| Rename field | Requires migration and release notes |
| Delete field | Requires retention, export, and downstream impact review |
| Change meaning | Requires Product, Data, and Privacy review |
| Add sensitive field | Requires Security and Privacy review |

## Implementation Guidance

- Prefer explicit DTO/domain model mapping over leaking transport schemas into product code.
- Keep validation close to domain meaning, not only UI forms.
- Use generated serializers only with reviewed source definitions.
- Add contract tests for API or export schema changes.
- Do not overload one field with multiple meanings across product surfaces.

## Acceptance Criteria

- Data model ownership and purpose are clear.
- Sensitive health and consent fields are classified and protected.
- Schema changes are migratable and testable.
- Missing data semantics are explicit.
- Product, analytics, export, and AI consumers can interpret fields consistently.

## References

- core/SPEC.md
- specs/03-product/daily-logging.md
- specs/03-product/settings-and-consent.md
- specs/04-engineering/security-and-privacy.md

## Version History

- v1.4.0-draft: Adds data model records, change classes, migration, and privacy rules.
- v1.0.0: Initial repository baseline.
