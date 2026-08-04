# Privacy

Status: Released
Owner: AI Working Group
Version: 1.6.0
Last updated: 2026-08-04

## Purpose

Defines privacy standards for AI prompts, context, generated output, logs, feedback, evaluation data, retention, consent, deletion, and user controls.

## Scope

- AI-assisted insights, recommendations, assistant responses, reports, notifications, evaluations, logs, and monitoring
- Health logs, derived evidence, user goals, consent state, free text, imported records, generated content, feedback, and prompt traces
- Product, AI, engineering, privacy, security, governance, and release review

## Requirements

- AI must use the least sensitive context needed for the documented behavior.
- AI data use must respect user consent, revocation, deletion, export, and retention controls.
- Prompt, context, generated output, logs, traces, evaluations, and feedback records must avoid unnecessary sensitive data.
- Users must be able to understand when AI uses their data for personalized output.
- Sensitive free text and imported health records require stronger minimization and review.
- AI behavior that changes data use, retention, sharing, logging, or evaluation storage must receive privacy review before release.

## Data Use Rules

| Data category | AI use rule |
| --- | --- |
| Current product state | Allowed when needed to complete the active user task |
| Derived evidence | Preferred over raw data when it supports the same output |
| Raw health logs | Use only when necessary and consented |
| Sensitive free text | Minimize, redact, summarize, or exclude unless explicitly required and reviewed |
| Imported clinical records | Restricted; require explicit review and clear user value |
| User feedback | Store separately from raw prompt context where possible |
| Evaluation examples | Prefer synthetic or minimized data |
| Logs and traces | Use privacy-safe metadata and avoid raw health details |

## Consent and Control

AI-assisted behavior must define:

- What user data is used.
- Whether the behavior is personalized.
- Whether AI output can be disabled, dismissed, corrected, or regenerated.
- How consent revocation affects future output.
- How deletion affects generated artifacts, cached summaries, logs, and evaluations.
- Whether output can be exported or shared.

## Retention Rules

- Retain raw prompt context only when there is a documented product, safety, debugging, or audit need.
- Prefer storing derived metadata over raw prompts.
- Expire stale generated summaries when source data changes materially.
- Respect deletion and consent revocation for future AI behavior.
- Keep evaluation fixtures synthetic unless a governed exception exists.
- Document retention exceptions with owner, purpose, duration, and deletion path.

## Logging Rules

AI logs may include privacy-safe operational metadata:

- behavior id
- prompt version
- model or capability class
- output state
- confidence label
- safety/privacy decision code
- latency and failure state
- evaluation suite version

AI logs must not include unnecessary:

- raw health notes
- full prompts
- unredacted user free text
- imported clinical record content
- sensitive attributes that are not needed for debugging or audit

## Privacy Review Triggers

Privacy review is required when AI behavior:

- Adds a new sensitive data source.
- Uses free text, imported health records, or third-party integrations.
- Changes prompt retention, generated output retention, logging, analytics, or evaluation storage.
- Adds personalization based on sensitive or inferred attributes.
- Sends context to a new service, model, vendor, or execution environment.
- Changes deletion, export, or consent behavior.

## Implementation Guidance

- Design AI context contracts before prompt templates.
- Prefer feature flags and kill switches for new AI data flows.
- Keep privacy-safe traces sufficient for debugging without copying sensitive content.
- Test deletion and consent revocation against generated summaries and cached output.
- Treat prompt injection that exposes hidden or unrelated context as a privacy issue.

## Acceptance Criteria

- AI context is minimized and consent-aware.
- Users can understand relevant AI data use.
- Logs and evaluations avoid unnecessary sensitive data.
- Deletion and revocation behavior is defined.
- Privacy review triggers are clear and testable.

## References

- specs/03-product/settings-and-consent.md
- specs/04-engineering/security-and-privacy.md
- specs/04-engineering/observability.md
- specs/05-ai/prompt-and-context.md
- specs/05-ai/evaluation.md

## Version History

- v1.6.0: Adds AI privacy standards for consent, data minimization, retention, logging, and review triggers.
- v1.0.0: Initial repository baseline.
