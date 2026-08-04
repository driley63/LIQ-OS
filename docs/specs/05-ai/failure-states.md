# Failure States

Status: Draft refinement
Owner: AI Working Group
Version: 1.6.0-draft
Last updated: 2026-08-04

## Purpose

Defines recoverable AI failure states for unavailable, stale, low-confidence, blocked, incomplete, and degraded behavior.

## Scope

- AI-assisted insights, recommendations, summaries, reports, assistant responses, notifications, and background processing
- UI states, copy, fallback behavior, retry behavior, logging, observability, and user controls
- Product, design, AI, engineering, accessibility, safety, and privacy review

## Requirements

- AI failure states must be explicit, non-blaming, recoverable where possible, and accessible.
- AI must not silently substitute guesses when required context, confidence, consent, or safety criteria are missing.
- Failure states must distinguish service failure, missing data, stale data, low confidence, safety block, privacy block, and unsupported request.
- Users must know what happened, what can be done next, and whether their data was saved or used.
- Production-impacting failure modes must have observability, ownership, and rollback or disable paths.

## Failure State Taxonomy

| State | Trigger | User-facing behavior |
| --- | --- | --- |
| Loading | AI output is being generated or fetched | Show progress without implying result quality |
| Learning | Not enough data exists yet | Explain what data would improve future insight |
| Low confidence | Evidence is sparse, noisy, stale, or outside coverage | Show exploratory framing or withhold recommendation |
| Stale context | Output may no longer reflect current data | Show timestamp and refresh path |
| Unavailable | Model, network, retrieval, or service dependency failed | Explain temporary failure and offer retry or non-AI path |
| Safety blocked | Output crosses a safety boundary | Explain boundary and offer safe alternative |
| Privacy blocked | Consent, deletion, retention, or context rules prevent output | Explain control state and provide settings path |
| Unsupported | User asks for behavior outside product scope | Redirect to supported product action or professional care boundary |
| Partial | Some fields are valid but required evidence or action is missing | Show valid factual content only and omit unsupported interpretation |

## Copy Rules

- Lead with the state, then the next useful action.
- Avoid blaming the user for missing or inconsistent data.
- Avoid implying that tracking more is always required.
- Avoid claiming the AI knows why it failed unless that reason is observable.
- Keep safety and privacy blocks specific without exposing unnecessary sensitive details.

## Retry and Recovery

AI failure states should define:

- Whether retry is allowed.
- Whether retry is automatic or user-initiated.
- Whether a non-AI fallback exists.
- Whether generated content should be cached, invalidated, hidden, or marked stale.
- Whether user feedback or correction is available.
- Whether the state should suppress notifications or recurring AI output.

## Observability

Production AI failure events should capture privacy-safe fields such as:

- Failure state
- Behavior id
- Prompt or evaluation version
- Model or capability class
- Safety or privacy decision code
- Retry outcome
- User-facing fallback shown

Logs must not capture unnecessary health details, raw prompt content, or unredacted sensitive free text.

## Implementation Guidance

- Map every AI behavior to at least one non-success state before implementation.
- Use released Design Language state, feedback, progress, and disclosure patterns.
- Test failures with screen readers, reduced motion, offline states, and stale data.
- Make failure states easy to trigger in development and test environments.
- Treat repeated failure loops as product defects.

## Acceptance Criteria

- AI failure states are distinguishable and actionable.
- Users are not shown unsupported guesses.
- Safety and privacy blocks are clear and respectful.
- Engineers can observe failures without leaking sensitive data.
- Recovery behavior is tested before release.

## References

- specs/02-design/empty-error-loading-states.md
- specs/02-design/progress-and-disclosure.md
- specs/04-engineering/state-management.md
- specs/04-engineering/observability.md
- specs/05-ai/confidence-and-evidence.md
- specs/05-ai/safety-boundaries.md

## Version History

- v1.6.0-draft: Adds AI failure-state taxonomy, recovery rules, copy rules, and observability standards.
- v1.0.0: Initial repository baseline.
