# Motion

Status: Draft refinement
Owner: Design System Working Group
Version: 1.2.0-draft
Last updated: 2026-08-04

## Purpose

Defines motion principles, duration, easing, transition scope, and reduced-motion behavior.

## Scope

- Product UI transitions, loading feedback, chart updates, onboarding movement, and AI insight reveal behavior
- Mobile, web, and documentation examples
- Accessibility and reduced-motion review

## Requirements

- Motion must clarify state, continuity, or feedback.
- Motion must not obscure health information or delay task completion.
- Reduced-motion alternatives must exist for non-essential animation.
- Loading motion must avoid implying progress when progress is unknown.
- AI insight reveal motion must not make model output feel more certain than it is.

## Duration Scale

| Token | Duration | Use |
| --- | --- | --- |
| `motion.instant` | 0 ms | Reduced motion and direct state updates |
| `motion.fast` | 120 ms | Hover, press, focus, small controls |
| `motion.default` | 180 ms | Menus, cards, inline state transitions |
| `motion.slow` | 240 ms | Sheets, modals, page-level transitions |
| `motion.long` | 320 ms | Onboarding or rare expressive moments |

## Easing

- Use ease-out for entering elements.
- Use ease-in for exiting elements.
- Use ease-in-out for position changes.
- Avoid spring motion unless platform-native and subtle.
- Avoid bounce, wobble, confetti, and ornamental loops in health workflows.

## Motion Patterns

| Pattern | Requirement |
| --- | --- |
| Loading | Use skeletons or progress indicators that preserve layout |
| Navigation | Preserve orientation and avoid disorienting direction changes |
| Chart update | Animate only when it helps compare previous and new values |
| Error | Make the affected field or region obvious without shaking or alarming motion |
| AI reveal | Keep the reveal calm and pair it with source/confidence context |

## Implementation Guidance

- Respect platform reduced-motion settings.
- Keep repeated daily workflow transitions at `motion.fast` or `motion.default`.
- Use animation tokens instead of one-off durations.
- Test loading and empty states with slow networks and partial data.

## Acceptance Criteria

- Motion has a user-facing purpose.
- Reduced-motion behavior is documented.
- Animation does not shift layout unexpectedly.
- Health and AI interpretation remain calm and clear.

## References

- core/SPEC.md
- specs/02-design/accessibility.md
- specs/05-ai/ai-visual-language.md

## Version History

- v1.2.0-draft: Adds duration scale, easing rules, motion patterns, and reduced-motion requirements.
- v1.0.0: Initial repository baseline.
