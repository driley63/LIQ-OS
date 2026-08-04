# Empty, Error, and Loading States

Status: Draft refinement
Owner: Design System Working Group
Version: 1.2.0-draft
Last updated: 2026-08-04

## Purpose

Defines empty, error, loading, warning, success, and unavailable states for product UI.

## Scope

- Pages, cards, forms, charts, reports, logs, AI insights, and settings
- Mobile, web, and documentation examples
- Content, accessibility, and recovery behavior

## Requirements

- Every user-facing async region must define loading, empty, error, and populated states.
- State copy must be useful, calm, and specific.
- Error states must explain whether the user can recover.
- Loading states must preserve layout and avoid unnecessary motion.
- AI unavailable states must explain the dependency without blaming the user.

## State Types

| State | Requirement |
| --- | --- |
| Loading | Preserve layout; communicate activity without false progress |
| Empty | Explain why content is missing and what the user can do next |
| Error | State what failed, likely scope, and recovery action |
| Warning | Explain risk without blocking when action is still allowed |
| Success | Confirm completion briefly and keep the workflow moving |
| Unavailable | Explain unavailable data, service, permission, or integration |

## Content Rules

- Lead with the current state, then the next action.
- Avoid vague phrases such as `Something went wrong` when a specific reason is known.
- Avoid celebratory language for health-sensitive states.
- Do not imply medical certainty in error, warning, or insight language.
- Use AI labels when a state relates to model generation or confidence.

## Visual Rules

- Use iconography and text with color.
- Keep empty states useful but not decorative.
- Use skeletons for known layout and spinners only for short unknown waits.
- Keep error actions close to the affected content.
- Do not cover unrelated content with blocking errors unless the whole workflow is blocked.

## Implementation Guidance

- Define states in component stories or documentation before implementation.
- Test partial data and slow network scenarios.
- Preserve user-entered values after validation or save failures.
- Log recoverable errors without exposing private health details in UI copy.

## Acceptance Criteria

- Each async UI region has all required states.
- State copy is specific, accessible, and recoverable where possible.
- Loading and error states do not cause layout instability.
- AI and health-sensitive states remain clear and appropriately cautious.

## References

- core/SPEC.md
- specs/02-design/accessibility.md
- specs/05-ai/failure-states.md

## Version History

- v1.2.0-draft: Adds state taxonomy, content rules, visual rules, and recovery requirements.
- v1.0.0: Initial repository baseline.
