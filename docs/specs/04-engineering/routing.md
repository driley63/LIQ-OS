# Routing

Status: Released
Owner: Engineering Working Group
Version: 1.4.0
Last updated: 2026-08-04

## Purpose

Defines navigation, route ownership, deep links, guards, restoration, and privacy-aware routing behavior.

## Scope

- Mobile and web navigation
- Authenticated routes, onboarding, daily logging, reports, settings, consent, and notification destinations
- Deep links, app links, browser URLs, route guards, and state restoration

## Requirements

- Routes must have stable ownership, names, parameters, and access requirements.
- Sensitive routes must enforce authentication, consent, and permission guards before data is displayed.
- Deep links must fail safely when content is missing, revoked, expired, or unauthorized.
- Navigation must preserve user-entered work during recoverable interruptions.
- Notification destinations must land on useful product context, not generic home screens, when safe.
- Route changes that alter product behavior must update release notes.

## Route Record

Each route should define:

- Owner and feature area
- Path or route name
- Required parameters and validation
- Auth, permission, and consent requirements
- Empty/error/unavailable behavior
- Deep link and notification behavior
- Analytics and observability signals

## Guard Types

| Guard | Use |
| --- | --- |
| Authentication | User identity and session validity |
| Consent | Data use, AI, export, or notification permission |
| Feature access | Rollout, entitlement, or platform availability |
| Data availability | Missing, deleted, stale, or inaccessible content |
| Safety | Health-sensitive or unsupported escalation boundaries |

## Implementation Guidance

- Keep route parameters serializable and validated.
- Prefer explicit route builders over stringly typed navigation where feasible.
- Avoid placing sensitive content in URLs or notification payloads.
- Restore navigation state only when it does not expose stale sensitive data.
- Test deep links with signed-out, revoked, missing-data, and permission-denied states.

## Acceptance Criteria

- Route ownership and guard behavior are documented.
- Deep links fail safely and recoverably.
- Navigation does not leak sensitive health details.
- Users can return to interrupted workflows where appropriate.
- Route behavior is covered by integration or navigation tests.

## References

- core/SPEC.md
- specs/03-product/onboarding.md
- specs/03-product/settings-and-consent.md
- specs/04-engineering/security-and-privacy.md

## Version History

- v1.4.0: Adds route records, guards, deep-link behavior, and privacy requirements.
- v1.0.0: Initial repository baseline.
