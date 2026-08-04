# Testing

Status: Draft refinement
Owner: Engineering Working Group
Version: 1.4.0-draft
Last updated: 2026-08-04

## Purpose

Defines testing standards for product behavior, architecture, data contracts, accessibility, security-sensitive flows, and release readiness.

## Scope

- Unit, widget, integration, contract, accessibility, regression, performance, and release tests
- Mobile, web, shared packages, documentation examples, and future platform implementations
- Product workflows involving health data, consent, AI assistance, notifications, and reports

## Requirements

- Tests must cover product-critical behavior before implementation is considered complete.
- Domain and data logic must be testable without full application startup.
- Health data, consent, export, deletion, and AI-assisted behavior must include negative and unavailable-state tests.
- UI tests must cover accessible labels, focus behavior, and state messaging where relevant.
- Contract tests must protect API, export, and generated token schemas.
- Flaky tests must be owned, quarantined only with expiry, and fixed before release when they cover critical behavior.

## Test Types

| Type | Purpose | Required for |
| --- | --- | --- |
| Unit | Deterministic logic and validation | Domain rules, parsing, mapping, state transitions |
| Widget/component | UI states and accessibility semantics | Design-system and product components |
| Integration | Cross-layer workflows | Logging, onboarding, reports, settings, routing |
| Contract | API, schema, package, and export compatibility | Data models, shared packages, generated artifacts |
| Regression | Previously fixed failures | Incidents, production bugs, release blockers |
| Manual exploratory | Human judgment and device-specific behavior | Health-sensitive UX, accessibility, release candidates |

## Required Coverage Areas

- Empty, loading, error, stale, unavailable, and success states
- Permission denied, consent revoked, and signed-out states
- Data migration and schema compatibility
- Deep link and notification entry points
- Export and deletion flows
- AI evidence, confidence, fallback, and labeling behavior

## Implementation Guidance

- Prefer deterministic tests with controlled clocks, IDs, and network responses.
- Keep fixtures privacy-safe and synthetic.
- Add tests at the lowest level that can prove the behavior.
- Use integration tests for user journeys, not every visual variant.
- Track skipped tests with owner, reason, and removal date.

## Acceptance Criteria

- Changed behavior has appropriate test coverage.
- Critical health, privacy, consent, and AI flows include failure-state tests.
- Tests are deterministic enough for CI gating.
- Synthetic test data does not contain real health information.
- Reviewers can identify which tests validate the changed behavior.

## References

- core/SPEC.md
- specs/03-product/SPEC.md
- specs/04-engineering/data-models.md
- specs/04-engineering/accessibility-testing.md

## Version History

- v1.4.0-draft: Adds test types, required coverage areas, and release-quality expectations.
- v1.0.0: Initial repository baseline.
