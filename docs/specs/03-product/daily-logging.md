# Daily Logging

Status: Draft refinement
Owner: Product Working Group
Version: 1.3.0-draft
Last updated: 2026-08-04

## Purpose

Defines daily logging behavior for recurring health, habit, symptom, lifestyle, and context entries.

## Scope

- Daily mobile and web logging flows
- Quick entry, structured entry, edits, skipped days, review, and history
- Health-sensitive copy, privacy, accessibility, and analytics review

## Requirements

- Logging must be fast enough for repeated daily use.
- Users must be able to edit entries and understand when data was last updated.
- Required fields must be minimal and justified by product value.
- Free-text fields must be optional unless the workflow specifically depends on user narrative.
- The product must support partial completion, skipped days, and late entries without shame language.
- Logging must not imply clinical evaluation unless a reviewed product policy supports it.
- Sensitive fields must explain why the data is collected and how it affects product behavior.

## Entry Patterns

| Pattern | Use | Requirement |
| --- | --- | --- |
| Quick log | Frequent binary or single-value entry | One screen or one focused interaction |
| Structured log | Multiple related health or habit fields | Group fields by meaning and preserve progress |
| Reflection | Optional qualitative context | Make it skippable and private by default |
| Correction | Editing past entries | Show changed timestamp and affected summaries |
| Backfill | Logging a missed day | Allow context without penalizing the user |

## Required States

| State | Product behavior |
| --- | --- |
| Empty | Explain what can be logged and why it matters |
| Partial | Preserve progress and show what remains optional or required |
| Saved | Confirm briefly and return to the user’s next useful context |
| Edited | Make updated data visible without over-alerting |
| Skipped | Respect the user’s choice and avoid guilt language |
| Error | Preserve entered values and explain recovery |

## Streaks and Progress

- Streaks must not punish illness, travel, disability, caregiving, or intentional rest.
- Progress language should emphasize consistency, awareness, or learning rather than perfection.
- Missed entries may be shown as missing data, not failure.
- Weekly and monthly summaries should distinguish logged data from inferred gaps.

## Implementation Guidance

- Prefer structured controls for repeated values and optional notes for context.
- Use platform-native inputs for dates, times, and numeric entry where possible.
- Keep common actions reachable on mobile with one hand where practical.
- Use analytics to detect abandonment, repeated edits, and confusing field labels.
- Review new logging categories for privacy sensitivity before release.

## Acceptance Criteria

- A user can complete core logging without private instruction.
- Entries can be corrected without losing trust in summaries.
- Missed or partial logs do not create shame, alarm, or unsupported interpretation.
- Logging states are accessible and recoverable.
- Product and data reviewers can identify what each field is used for.

## References

- core/SPEC.md
- specs/02-design/inputs.md
- specs/03-product/health-language.md
- specs/03-product/settings-and-consent.md

## Version History

- v1.3.0-draft: Adds daily logging entry patterns, states, streak rules, and review criteria.
- v1.0.0: Initial repository baseline.
