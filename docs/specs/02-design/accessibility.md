# Accessibility

Status: Draft refinement
Owner: Design System Working Group
Version: 1.2.0-draft
Last updated: 2026-08-04

## Purpose

Defines accessibility requirements for Design Language patterns and component review.

## Scope

- Product UI, charts, forms, navigation, states, motion, and AI insight surfaces
- Mobile and web accessibility behavior
- Design review and implementation validation

## Requirements

- Product UI must target WCAG AA for text and meaningful non-text contrast.
- Color cannot be the only signal for state, priority, category, or AI source.
- Interactive controls must have visible focus states.
- Mobile touch targets must be at least 44 by 44 px.
- Motion must respect reduced-motion settings.
- Charts and insight surfaces must provide accessible text alternatives.

## Required Checks

| Area | Requirement |
| --- | --- |
| Text contrast | Body and UI text meet AA contrast |
| Focus | Keyboard-visible focus is present and not clipped |
| Hit targets | Mobile controls meet minimum target size |
| Labels | Inputs and icon-only controls have accessible names |
| State | Error, warning, success, AI, and loading states have text or icon cues |
| Motion | Reduced-motion alternative exists |
| Charts | Data meaning is available outside color or hover-only interaction |

## Health UX Requirements

- Error copy must be specific and non-blaming.
- Consent and privacy controls must use plain language.
- Critical warnings must not be hidden behind color-only badges.
- AI-generated health insights must identify evidence, confidence, and limitations where applicable.

## Implementation Guidance

- Include accessibility acceptance criteria in component specs.
- Test designs at mobile width, zoomed text, and reduced motion.
- Use semantic HTML or platform-native accessibility primitives before custom behavior.
- Treat inaccessible chart-only interpretation as a review blocker.

## Acceptance Criteria

- Users can complete core workflows with keyboard or assistive technology.
- Health data and AI insight meaning is not lost without color, animation, or hover.
- Components document labels, roles, focus, and state behavior.
- Accessibility exceptions are documented with owner and remediation plan.

## References

- core/SPEC.md
- specs/01-brand/accessibility.md
- specs/02-design/charts.md
- specs/05-ai/confidence-and-evidence.md

## Version History

- v1.2.0-draft: Adds accessibility checks, health UX requirements, and component review criteria.
- v1.0.0: Initial repository baseline.
