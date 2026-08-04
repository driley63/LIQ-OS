# Experience Principles

Status: Released
Owner: Product Working Group
Version: 1.3.0
Last updated: 2026-08-04

## Purpose

Defines product experience principles for LifestyleIQ workflows, guidance, feedback, and user control.

## Scope

- Daily logging, onboarding, reports, settings, notifications, and insights
- Mobile and web product behavior
- Product, design, engineering, AI, and research review

## Requirements

- Every workflow must state the user goal before specifying UI behavior.
- Repeated daily actions must be optimized for low effort and fast correction.
- Health interpretation must be explainable from visible user data, evidence, or documented model behavior.
- Product copy must avoid shame, blame, diagnosis, and unsupported certainty.
- Users must retain control over reminders, permissions, sensitive data, and AI-assisted experiences.
- Product surfaces must identify when information is missing, delayed, estimated, or AI-generated.

## Principle Set

| Principle | Product rule |
| --- | --- |
| Understanding over tracking | Logging is valuable only when it helps the user understand patterns or next steps |
| Action over observation | Insights should point to practical options, not passive dashboards |
| Calm repetition | Daily workflows should stay predictable, compact, and forgiving |
| Evidence-first guidance | Interpretations must expose source, timeframe, and limitations |
| Consent in context | Ask for permission when the user understands why it matters |
| User agency | Let users edit, dismiss, pause, export, or delete where appropriate |

## Product Review Questions

- What user decision or action does this experience support?
- What evidence does the product show before offering interpretation?
- What could be misunderstood as medical advice?
- What happens when data is missing, stale, wrong, or revoked?
- How does the experience behave for repeat use after the first week?
- What control does the user have over reminders, privacy, or AI involvement?

## Implementation Guidance

- Define primary and secondary user outcomes before writing screen requirements.
- Prefer progressive disclosure over long upfront explanation.
- Keep high-frequency flows stable unless research shows a clear need to change them.
- Pair positive feedback with useful context, not empty celebration.
- Treat unexpected friction in daily logging as a product quality issue.

## Acceptance Criteria

- Product requirements connect to an explicit user goal.
- Health-sensitive interpretation is evidence-backed and appropriately cautious.
- Users can recover from errors without losing work.
- Privacy, consent, and AI involvement are visible at relevant decision points.
- Repeat workflows remain useful after novelty fades.

## References

- core/SPEC.md
- specs/02-design/SPEC.md
- specs/03-product/health-language.md

## Version History

- v1.3.0: Adds product experience principles, review questions, and acceptance criteria.
- v1.0.0: Initial repository baseline.
