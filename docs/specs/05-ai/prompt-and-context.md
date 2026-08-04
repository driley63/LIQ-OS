# Prompt and Context

Status: Draft refinement
Owner: AI Working Group
Version: 1.6.0-draft
Last updated: 2026-08-04

## Purpose

Defines prompt ownership, context minimization, retrieval boundaries, output contracts, and prompt-change review for AI-assisted behavior.

## Scope

- System prompts, developer prompts, retrieval instructions, tool contracts, response schemas, model context, and prompt examples
- Health logs, user goals, consent state, reports, feedback, and product context sent to AI systems
- Engineering, privacy, safety, product, and evaluation review

## Requirements

- Prompted behavior must have an owner, purpose, allowed inputs, prohibited inputs, output contract, and evaluation coverage.
- AI context must use the least sensitive data needed for the user-facing behavior.
- Prompt and retrieval behavior must respect consent, deletion, export, and retention requirements.
- Prompts must instruct models to preserve evidence, confidence, limitations, and safety boundaries.
- Output must be structured enough for product UI to validate required fields before display.
- Prompt changes that affect user-facing meaning, safety, privacy, or evaluation behavior must update release notes.

## Context Classes

| Class | Examples | Use rule |
| --- | --- | --- |
| Product state | Current route, selected timeframe, active filters | Allowed when needed to answer the user’s current task |
| User-entered health data | Logs, symptoms, habits, notes, biometrics | Use only with consent and explicit behavior need |
| Derived evidence | Aggregates, trends, confidence features | Prefer over raw details when sufficient |
| User preferences | Units, goals, notification settings, opt-outs | Use only for relevant personalization |
| Sensitive free text | Notes, journal entries, imported records | Minimize, redact where possible, and require stronger review |
| System metadata | Model version, prompt version, trace ids | Allowed for audit and debugging when privacy-safe |

## Prompt Contract

Every production prompt or prompt family should define:

- `prompt_id`
- `owner`
- `purpose`
- `model_or_capability_class`
- `allowed_context`
- `excluded_context`
- `consent_requirements`
- `output_schema`
- `safety_boundaries`
- `confidence_rules`
- `failure_behavior`
- `evaluation_suite`
- `change_history`

## Retrieval Rules

- Prefer narrow retrieval scoped to the current user task.
- Prefer derived or summarized data over raw health logs when equivalent.
- Exclude deleted, revoked, expired, or unconsented data.
- Mark stale context so the model and UI can avoid fresh-sounding claims.
- Do not retrieve data solely because it is available.
- Do not mix users, households, environments, or test fixtures without explicit safeguards.

## Output Contract Rules

AI output should be parsed into typed fields before display when it affects health interpretation:

- insight type
- generated text
- evidence summary
- source references
- timeframe
- confidence label
- limitations
- safety decision
- refusal or failure reason
- recommended user control

The UI should not display interpretive free text when required fields are absent or invalid.

## Prompt Change Control

Prompt changes require review when they:

- Change user-facing tone, confidence, evidence, or recommendation behavior.
- Add or remove sensitive context.
- Alter refusal, safety, or escalation behavior.
- Change output schemas or field meanings.
- Affect evaluation thresholds or monitored quality gates.

## Implementation Guidance

- Keep prompt templates versioned and reviewable.
- Test prompts against missing data, conflicting data, adversarial user text, sensitive categories, and refusal cases.
- Separate product copy templates from model reasoning instructions where possible.
- Treat prompt injection and unintended context disclosure as security and privacy risks.
- Record prompt and evaluation versions with generated output when feasible.

## Acceptance Criteria

- Prompt behavior has a documented contract.
- Sensitive context is minimized and consent-aware.
- Output fields can be validated before display.
- Prompt changes have evaluation and review coverage.
- Reviewers can identify what context was allowed and why.

## References

- specs/04-engineering/security-and-privacy.md
- specs/04-engineering/testing.md
- specs/05-ai/privacy.md
- specs/05-ai/evaluation.md
- specs/05-ai/safety-boundaries.md

## Version History

- v1.6.0-draft: Adds prompt ownership, context minimization, retrieval, output contract, and change-control standards.
- v1.0.0: Initial repository baseline.
