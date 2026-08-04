# Volume 02 - Design Language

Volume 02 defines the visual and interaction system that LifestyleIQ product screens inherit.

## Status

- Current milestone: v1.2.0 draft
- Owner: Design System Working Group
- Dependency: Volume 01 Brand Identity v1.1.0
- Release target: minor release because this work adds implementable UI standards without changing brand identity decisions

## Purpose

The Design Language translates Brand Identity into product UI rules. It establishes how screens should be spaced, structured, layered, controlled, visualized, animated, and reviewed before implementation in Flutter, web, design files, and documentation examples.

## Principles

- Calm density: screens should be efficient without feeling cramped.
- Clear hierarchy: primary actions, insight states, and health context must be easy to scan.
- Evidence-friendly UI: charts, cards, and states should make data interpretation clear.
- Accessible by default: color, motion, focus, and touch targets must work for diverse users.
- Brand-subordinate interface: product UI uses Brand Identity tokens without turning every surface into a brand moment.

## Document Map

- `SPEC.md`: volume scope, system boundaries, requirements, and definition of done
- `spacing-system.md`: spacing scale, gutters, section rhythm, and density rules
- `layout-grid.md`: responsive structure, content widths, and page organization
- `radius-and-elevation.md`: surface shape, depth, and layering rules
- `component-taxonomy.md`: component classes, owners, required records, and governance
- `buttons.md`: action hierarchy, variants, sizing, labels, and states
- `inputs.md`: field types, anatomy, validation, and health-entry ergonomics
- `cards.md`: card roles, anatomy, visual rules, and interaction states
- `charts.md`: chart selection, visual encoding, evidence context, and accessibility
- `motion.md`: duration, easing, reduced-motion behavior, and state transitions
- `accessibility.md`: product accessibility checks and health UX requirements
- `empty-error-loading-states.md`: async, unavailable, and recovery state rules
- `iconography.md`: product icon style, usage, labels, and AI icon behavior

## Acceptance Criteria

- A designer can produce consistent LifestyleIQ screens without private context.
- An engineer can map UI decisions to tokens, components, and reviewable behavior.
- Reviewers can identify when a UI change needs an exception, RFC, ADR, or release note.
- Screens remain usable for daily, repeated health workflows across mobile and web.
