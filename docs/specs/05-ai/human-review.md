# Human Review

Status: Released
Owner: AI Working Group
Version: 1.6.0
Last updated: 2026-08-04

## Purpose

Defines when AI-assisted behavior requires human review, what reviewers must inspect, and what records must be kept.

## Scope

- New or changed AI behaviors, prompts, output contracts, recommendations, safety boundaries, evaluation gates, and production incidents
- Product, AI, design, engineering, safety, privacy, accessibility, and release review
- Review artifacts used for PRs, release promotion, auditability, and future governance

## Requirements

- Human review is required for new high-impact AI behavior before release.
- Review must include product intent, evidence, confidence, safety, privacy, evaluation, accessibility, and implementation impact.
- Reviewers must reject output that diagnoses, prescribes, overstates certainty, hides AI involvement, or uses unconsented sensitive data.
- Material review findings must be reflected in docs, prompts, tests, release notes, or follow-up issues.
- Review records must identify owner, scope, decision, conditions, and expiry when approval is conditional.

## Required Review Triggers

Human review is required when a change:

- Adds a new AI-assisted product surface.
- Changes recommendation behavior.
- Changes safety-block, refusal, or escalation behavior.
- Adds medication, symptom, diagnosis-like, treatment-like, mental-health, pregnancy, pediatric, or urgent-care context.
- Adds a new prompt context class or sensitive data source.
- Changes confidence criteria, evidence requirements, evaluation gates, or output schemas.
- Changes AI visual labeling or user controls.
- Responds to a production safety, privacy, or trust issue.

## Reviewer Roles

| Role | Focus |
| --- | --- |
| Product | Workflow intent, user agency, value, and health-language fit |
| AI | Prompt behavior, confidence, evidence, model boundaries, and evaluation |
| Engineering | Architecture, data flow, tests, observability, rollback, and release impact |
| Privacy/Security | Consent, minimization, retention, deletion, logs, and sensitive data handling |
| Design | AI labeling, accessibility, interaction states, and user comprehension |
| Safety/Clinical advisor when needed | Restricted health categories, escalation, and professional-care boundaries |

One person may cover multiple roles for low-risk changes, but restricted health categories require explicit safety review.

## Review Checklist

Reviewers should verify:

- The user-facing behavior has a documented goal and boundary.
- Required evidence, confidence, and limitations are visible.
- The output contract can be validated before display.
- Sensitive context is minimized and consent-aware.
- Safety, refusal, and failure states are tested.
- The user has appropriate controls.
- AI visual treatment follows Brand and Design standards.
- Release notes and migration guidance describe material behavior changes.

## Review Records

Review records should include:

- Behavior or prompt id
- Pull request or release reference
- Reviewed scope
- Reviewers and roles
- Decision
- Required follow-up
- Expiry or re-review trigger if conditional
- Evaluation suite and version

## Override Rules

Overrides are allowed only when:

- The owner, scope, user impact, safety/privacy impact, expiry, and remediation path are documented.
- The override does not permit prohibited recommendation or clinical-authority behavior.
- A release note or follow-up issue records the exception.
- Re-review is scheduled before expanding the behavior.

## Implementation Guidance

- Keep review artifacts close to the PR or release that introduced the behavior.
- Use screenshots, fixtures, generated examples, and failure cases in review where possible.
- Treat unresolved reviewer disagreement as a blocker for high-impact AI behavior.
- Re-review AI behavior when model, prompt, policy, data source, or product context changes materially.

## Acceptance Criteria

- Review triggers are clear.
- Review decisions are traceable.
- Restricted behavior receives explicit review.
- Overrides are bounded and documented.
- Review findings translate into docs, prompts, tests, release notes, or follow-up work.

## References

- core/SPEC.md
- specs/04-engineering/release-engineering.md
- specs/05-ai/evaluation.md
- specs/05-ai/prompt-and-context.md
- specs/05-ai/safety-boundaries.md

## Version History

- v1.6.0: Adds AI human-review triggers, reviewer roles, checklist, records, and override rules.
- v1.0.0: Initial repository baseline.
