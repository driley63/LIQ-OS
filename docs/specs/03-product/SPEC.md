# Volume 03 - Product Experience Specification v1.3.0-draft

Status: Draft refinement
Owner: Product Working Group
Version: 1.3.0-draft
Last updated: 2026-08-04

## Purpose

Defines the user experience model for daily tracking, analysis, recommendations, reports, consent, and health-sensitive product communication.

## Scope

- LifestyleIQ product ecosystem
- Daily logging, health timelines, insights, reports, onboarding, settings, consent, notifications, and research
- Mobile app, web app, documentation examples, and future product design artifacts
- Product surfaces that interpret health behavior, summarize patterns, or ask for sensitive user input

## System Boundaries

Volume 03 covers:

- User goals, workflow intent, and product behavior
- Health-sensitive language and evidence requirements
- Logging, timeline, report, onboarding, notification, and settings patterns
- Consent-aware product controls and user research governance
- Review criteria for product claims, recommendations, and AI-assisted experiences

Volume 03 does not define brand identity, component styling, AI model policy, data architecture, engineering implementation, or marketing claims. Those decisions live in Brand Identity, Design Language, AI Principles, Product Architecture, Engineering Standards, and Marketing volumes.

## Experience Principles

- Reduce effort before adding instruction.
- Show evidence before interpretation.
- Keep health guidance cautious, plain, and user-controlled.
- Design for repeated daily use, not only first-run success.
- Make data use, permissions, and AI involvement visible at the point of relevance.

## Requirements

- Standards must map to implementation or reviewable behavior.
- Changes must remain consistent with LIQ OS Core.
- Product UI must use released Brand Identity and Design Language standards.
- Product claims must identify evidence, source, timeframe, confidence, and limitations when relevant.
- Health-sensitive experiences must avoid blame, shame, diagnosis, or unsupported certainty.
- Consent, privacy, and data-deletion behavior must be understandable before the user commits.
- AI-assisted product behavior must follow AI Principles and identify AI involvement clearly.
- New product patterns must document mobile and web behavior, empty/error/loading states, and accessibility impact.
- Changes that alter released product behavior must update release notes.

## Core Dependencies

| Area | Depends on |
| --- | --- |
| Brand identity | `docs/specs/01-brand/SPEC.md` |
| Design system | `docs/specs/02-design/SPEC.md` |
| Health-sensitive AI behavior | `docs/specs/05-ai/SPEC.md` |
| Product architecture | `docs/specs/06-architecture/SPEC.md` |
| Security and privacy implementation | `docs/specs/04-engineering/security-and-privacy.md` |

## Product Pattern Definition of Done

A Product Experience pattern is complete when it defines:

- User goal and success outcome
- Entry points and exit points
- Required data, permissions, and consent context
- Default, loading, empty, error, warning, success, and unavailable states where applicable
- Evidence, confidence, and limitation language where interpretation is present
- Accessibility, privacy, and safety review criteria
- Mobile and web behavior
- Analytics or research signals needed to evaluate quality

## Implementation Guidance

- Use RFCs for uncertain additions.
- Create ADRs for accepted decisions with durable consequences.
- Update release notes when standards change.
- Prefer product patterns over one-off screen decisions.
- Keep examples close to the workflow they describe.
- Treat unsupported health interpretation as a release blocker.

## Acceptance Criteria

- A contributor can locate the relevant product standard.
- A designer or engineer can apply the guidance consistently.
- Reviewers can identify when a product change needs an exception, RFC, ADR, release note, or safety review.
- Product surfaces can be checked against workflow, evidence, consent, language, notification, and research standards.
- The product experience can evolve without breaking released Brand Identity or Design Language constraints.

## References

- core/SPEC.md
- specs/01-brand/SPEC.md
- specs/02-design/SPEC.md
- specs/05-ai/SPEC.md

## Version History

- v1.3.0-draft: Adds implementable Product Experience standards and release checklist.
- v1.0.0: Initial repository baseline.
