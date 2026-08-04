# Accessibility Testing

Status: Draft refinement
Owner: Engineering Working Group
Version: 1.4.0-draft
Last updated: 2026-08-04

## Purpose

Defines engineering validation for accessibility across product workflows, components, charts, forms, navigation, and health-sensitive states.

## Scope

- Mobile and web accessibility testing
- Product components, design-system components, charts, reports, notifications, onboarding, settings, and daily logging
- Automated checks, manual checks, assistive technology checks, and release gates

## Requirements

- Accessibility regressions in core workflows are release blockers.
- Interactive controls must have accessible names, roles, focus behavior, and touch targets.
- Health data and AI insight meaning must not depend on color, hover, animation, or chart-only interpretation.
- Text must remain readable with platform scaling, zoom, and contrast requirements.
- Motion-sensitive experiences must honor reduced-motion settings.
- Accessibility exceptions must document owner, scope, expiry, and remediation plan.

## Required Checks

| Area | Engineering validation |
| --- | --- |
| Semantics | Labels, roles, headings, regions, and descriptions are present |
| Focus | Keyboard or platform focus order is logical and visible |
| Touch targets | Mobile controls meet minimum target size |
| Text scaling | Layout remains usable at supported large-text settings |
| Contrast | Text and meaningful non-text cues meet Design Language requirements |
| Motion | Reduced-motion behavior is implemented and tested |
| Charts | Equivalent data meaning is available outside visual encoding |

## Manual Review Scenarios

- First-run onboarding
- Daily logging completion and correction
- Error recovery after save failure
- Report review and export
- Notification destination
- Consent revocation and deletion
- AI insight inspection

## Implementation Guidance

- Add component-level accessibility tests for reusable components.
- Include accessibility checks in design-system package acceptance criteria.
- Use synthetic health data in accessibility fixtures.
- Validate platform-native controls before replacing them with custom behavior.
- Track accessibility defects with severity and affected workflow.

## Acceptance Criteria

- Core workflows can be completed with assistive technology.
- Controls are discoverable and operable.
- Health interpretation remains understandable without color or animation.
- Accessibility checks are included in release readiness.
- Exceptions are documented and time-bound.

## References

- core/SPEC.md
- specs/02-design/accessibility.md
- specs/03-product/health-language.md
- specs/04-engineering/testing.md

## Version History

- v1.4.0-draft: Adds accessibility validation requirements, scenarios, and release gates.
- v1.0.0: Initial repository baseline.
