# State Management

Status: Released
Owner: Engineering Working Group
Version: 1.4.0
Last updated: 2026-08-04

## Purpose

Defines standards for client state, async state, caching, invalidation, persistence, error handling, and recovery.

## Scope

- Mobile and web product state
- User session, permissions, daily logging, timelines, reports, insights, settings, and AI-assisted flows
- State ownership, persistence, and synchronization boundaries

## Requirements

- Every state owner must document what data it owns, how it is initialized, and when it is invalidated.
- Async state must distinguish loading, refreshing, stale, empty, unavailable, error, and success where relevant.
- Sensitive health state must not be persisted without a documented purpose and storage protection.
- User-entered values must be preserved across recoverable validation, save, and network failures.
- Cross-screen state must be explicit and testable.
- Cache invalidation rules must be documented for any data shown as current or evidence-bearing.

## State Classes

| Class | Owner | Requirement |
| --- | --- | --- |
| UI state | Presentation layer | Ephemeral and resettable without data loss |
| Workflow state | Feature module | Preserves user progress and async status |
| Domain state | Domain service or repository | Represents product meaning independent of UI |
| Cached data | Repository or data layer | Has source, timestamp, freshness, and invalidation rules |
| Session state | Auth/session owner | Handles expiration, revocation, and privacy impact |
| Platform state | Platform adapter | Exposes permission, sync, and notification status safely |

## Error and Recovery

- State errors must expose product-safe failure types, not raw infrastructure detail.
- Recoverable failures must preserve user input.
- Unrecoverable failures must explain impact and route to support or fallback where appropriate.
- Permission and consent failures must link to settings or explanation.
- AI or data-unavailable states must explain dependency without blaming the user.

## Implementation Guidance

- Prefer immutable state snapshots for reviewable transitions.
- Keep state transitions testable with deterministic inputs.
- Avoid global mutable state unless a documented application owner exists.
- Track loading and refreshing separately when stale data can remain visible.
- Use domain events carefully and document consumers.

## Acceptance Criteria

- State ownership and invalidation are clear.
- Async states map to Product Experience and Design Language state standards.
- Sensitive data persistence is justified and protected.
- Recoverable errors do not discard user work.
- State transitions can be unit or integration tested.

## References

- core/SPEC.md
- specs/02-design/empty-error-loading-states.md
- specs/03-product/SPEC.md
- specs/04-engineering/security-and-privacy.md

## Version History

- v1.4.0: Adds state classes, ownership, async states, and recovery rules.
- v1.0.0: Initial repository baseline.
