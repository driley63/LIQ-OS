# Cards

Status: Draft refinement
Owner: Design System Working Group
Version: 1.2.0-draft
Last updated: 2026-08-04

## Purpose

Defines card purpose, anatomy, hierarchy, spacing, and usage limits for product surfaces.

## Scope

- Insight cards, metric cards, log cards, report cards, settings panels, and repeated collection items
- Mobile and web product screens
- Documentation examples and future component libraries

## Requirements

- Use cards for individual repeated items, framed tools, and grouped decision content.
- Do not use cards as decorative page sections.
- Do not place UI cards inside other UI cards.
- Cards must have stable padding, radius, and content hierarchy.
- Health interpretation cards must identify data source, timeframe, confidence, or evidence when relevant.

## Card Types

| Type | Use |
| --- | --- |
| Metric card | One primary value with label, trend, and timeframe |
| Insight card | AI or rule-derived observation with evidence and next action |
| Log card | A daily or historical entry with metadata and edit affordance |
| Report card | Summary block that links to deeper analysis |
| Settings card | Bounded group of related settings |
| Tool card | Framed interactive mini-workflow |

## Anatomy

A card may include eyebrow, title, value, supporting copy, metadata, status indicator, chart preview, action row, and overflow menu. Repeated card sets should use the same anatomy within a view.

## Visual Rules

- Default radius: `radius.2` or 8 px.
- Default padding: `space.5` mobile, `space.6` desktop.
- Use borders or low elevation for separation.
- Avoid heavy shadows, glows, ornamental gradients, and stacked card frames.
- Keep card headings compact; reserve hero-scale text for real hero contexts.

## States

Cards may define default, hover, active, selected, focused, disabled, loading, empty, warning, and error states depending on interactivity.

## Implementation Guidance

- Make the whole card clickable only when there is one clear destination.
- Put destructive or secondary actions in explicit controls, not hidden full-card gestures.
- Keep card content order stable across loading and filled states.
- Use AI Purple only when the card communicates AI-generated insight.

## Acceptance Criteria

- Cards group meaningful content rather than decorating the page.
- Repeated cards remain scannable across mobile and desktop.
- Interactive affordances are explicit and accessible.
- AI, warning, loading, and error states are distinguishable without color alone.

## References

- core/SPEC.md
- specs/02-design/radius-and-elevation.md
- specs/05-ai/insight-types.md

## Version History

- v1.2.0-draft: Adds card types, anatomy, visual rules, states, and usage limits.
- v1.0.0: Initial repository baseline.
