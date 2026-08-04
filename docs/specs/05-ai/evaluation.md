# Evaluation

Status: Draft refinement
Owner: AI Working Group
Version: 1.6.0-draft
Last updated: 2026-08-04

## Purpose

Defines evaluation standards for AI-assisted behavior before release and during ongoing operation.

## Scope

- Prompt, model, retrieval, rule, ranking, summary, insight, recommendation, refusal, and failure-state evaluation
- Offline test sets, human review, regression checks, red-team scenarios, user feedback, and production monitoring inputs
- Product, AI, engineering, safety, privacy, and release review

## Requirements

- AI behavior must have evaluation coverage before release.
- Evaluation must include expected behavior, missing-data behavior, unsafe-input behavior, privacy behavior, and failure behavior.
- Evaluation criteria must map to product requirements, safety boundaries, confidence rules, and output contracts.
- High-impact AI behavior must include human-reviewed examples before release.
- Evaluation changes that lower standards or expand output scope must receive review.
- Release notes must describe material changes to AI behavior, evaluation gates, or known limitations.

## Evaluation Dimensions

| Dimension | Checks |
| --- | --- |
| Factual grounding | Output matches supplied evidence and does not invent unsupported facts |
| Evidence display | Source, timeframe, confidence, and limitations are present where required |
| Safety | Diagnosis, prescription, unsafe urgency, and restricted recommendations are blocked |
| Privacy | Context is minimized, consent-aware, and does not leak sensitive details unnecessarily |
| Product fit | Output supports the intended workflow and user control model |
| Tone | Copy is calm, non-blaming, plain, and aligned with health-language rules |
| Accessibility | AI labels, confidence, and failure states do not depend on color alone |
| Reliability | Missing, stale, conflicting, or malformed data triggers expected fallback behavior |

## Test Set Requirements

AI evaluation sets should include:

- Golden examples for expected output.
- Sparse-data and missing-data cases.
- Stale-context and conflicting-context cases.
- Unsafe or out-of-scope health questions.
- Restricted recommendation categories.
- Prompt-injection and sensitive free-text cases.
- Accessibility and plain-language review examples.
- Regression examples from user feedback, bug reports, and review findings.

## Release Gates

AI behavior may move forward only when:

- Required output fields validate.
- Safety-block and refusal cases pass.
- Confidence labels match documented criteria.
- Evidence summaries remain faithful to supplied context.
- Restricted scenarios receive required human review.
- Known limitations are documented in release notes.
- Monitoring, rollback, or disable paths exist for production-impacting behavior.

## Human Evaluation

Human reviewers should evaluate:

- Whether the output overstates certainty.
- Whether the evidence actually supports the claim.
- Whether the recommendation is optional, safe, and reversible.
- Whether the output preserves product intent and health-language rules.
- Whether a reasonable user could misunderstand AI authority or clinical scope.

## Monitoring Inputs

Production monitoring should track, where applicable:

- Low-confidence and unavailable rates
- Safety-block rates
- User dismissals, corrections, and "not accurate" feedback
- Repeated insight fatigue
- Prompt or model version changes
- Evaluation drift and regression failures

## Implementation Guidance

- Keep evaluation fixtures synthetic or minimized unless real data is explicitly consented and governed.
- Separate model-quality evaluation from product-safety evaluation.
- Treat a passing model score as insufficient without product, privacy, and safety review.
- Add regression tests for every material safety or user-trust issue.
- Do not expand AI behavior solely because a model appears capable in ad hoc testing.

## Acceptance Criteria

- Every AI behavior has defined evaluation coverage.
- Evaluation covers normal, uncertain, unsafe, privacy-sensitive, and failure cases.
- Human-review criteria are clear for high-impact behavior.
- Release gates are explicit and traceable.
- Monitoring can detect material degradation after release.

## References

- specs/04-engineering/testing.md
- specs/04-engineering/observability.md
- specs/05-ai/prompt-and-context.md
- specs/05-ai/confidence-and-evidence.md
- specs/05-ai/safety-boundaries.md
- specs/05-ai/human-review.md

## Version History

- v1.6.0-draft: Adds AI evaluation dimensions, test set requirements, release gates, and monitoring inputs.
- v1.0.0: Initial repository baseline.
