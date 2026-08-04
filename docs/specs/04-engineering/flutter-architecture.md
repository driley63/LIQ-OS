# Flutter Architecture

Status: Released
Owner: Engineering Working Group
Version: 1.4.0
Last updated: 2026-08-04

## Purpose

Defines Flutter app architecture, module boundaries, dependency direction, platform integration, and review criteria.

## Scope

- Flutter mobile application and future shared Flutter packages
- Presentation, domain, data, platform, and design-system layers
- Mobile-specific privacy, accessibility, performance, and release behavior

## Requirements

- Flutter code must separate UI, product state, domain behavior, data access, and platform integration.
- Feature modules must expose small public APIs and avoid cross-feature imports that bypass domain contracts.
- Product UI must consume released design-system tokens and components before one-off styling.
- Platform channels must isolate platform-specific behavior behind reviewed interfaces.
- Async behavior must define loading, empty, error, stale, and unavailable states where relevant.
- Health data access must be explicit, permission-aware, and testable.

## Layer Model

| Layer | Responsibility | Must not |
| --- | --- | --- |
| Presentation | Widgets, layout, local UI state, accessibility labels | Call raw network, database, or platform APIs directly |
| Feature state | Screen and workflow state, commands, async status | Own unrelated feature state |
| Domain | Use cases, validation, product rules, entity behavior | Depend on Flutter widgets |
| Data | Repositories, DTOs, serializers, sync adapters | Leak transport-specific errors into UI |
| Platform | Permissions, sensors, notifications, secure storage | Expose platform APIs without test seams |
| Design system | Tokens, themes, components, accessibility defaults | Encode product-specific business logic |

## Module Boundaries

- Shared packages must be depended on by features, not the reverse.
- Feature modules may depend on domain and design-system packages.
- Domain code should remain testable without Flutter bindings.
- Data adapters must map external errors to product-safe domain failures.
- Cross-feature communication must use explicit domain events or shared contracts.

## Implementation Guidance

- Prefer composition over inheritance for widgets and feature services.
- Keep generated files separated from hand-authored source.
- Use dependency injection where it improves test seams and platform substitution.
- Use feature flags only with documented ownership, expiry, and removal plan.
- Review any architecture exception that introduces cyclic dependencies or global mutable state.

## Acceptance Criteria

- Feature behavior can be tested without full app startup.
- UI uses released design-system foundations.
- Platform-specific behavior has mocks or fakes for tests.
- Health data access is permission-aware and auditable.
- Module dependencies are understandable from repository structure.

## References

- core/SPEC.md
- specs/02-design/SPEC.md
- specs/03-product/SPEC.md
- specs/04-engineering/state-management.md

## Version History

- v1.4.0: Adds Flutter architecture layers, module boundaries, and review criteria.
- v1.0.0: Initial repository baseline.
