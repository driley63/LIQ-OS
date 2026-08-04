# Safety Boundaries

Status: Draft refinement
Owner: AI Working Group
Version: 1.6.0-draft
Last updated: 2026-08-04

## Purpose

Defines safety boundaries for AI-assisted health interpretation, recommendations, refusals, escalation, and review triggers.

## Scope

- AI-assisted insights, assistant responses, recommendations, reports, notifications, and educational content
- Health-sensitive output involving symptoms, medication, diagnosis, treatment, urgency, mental health, pregnancy, pediatrics, nutrition, exercise, sleep, and biometric data
- Product, AI, safety, privacy, clinical, engineering, and release review

## Requirements

- AI must not diagnose, prescribe, treat, or replace professional medical advice.
- AI must not claim causation without reviewed evidence and policy support.
- AI must not create unsupported urgency or tell users to ignore urgent symptoms.
- AI must refuse, redirect, or downgrade output when a user request is outside product boundaries.
- Safety-blocked behavior must explain the boundary in calm, useful language.
- New or changed high-risk AI behavior must receive human review before release.

## Boundary Classes

| Class | Examples | Required behavior |
| --- | --- | --- |
| Allowed wellness support | Low-risk habit reflection, logging guidance, general education | Provide evidence, confidence, limitations, and optional next steps |
| Cautious interpretation | Correlations, symptoms mentioned in logs, health-condition context | Use uncertainty, limitation language, and professional-care boundary |
| Restricted health guidance | Medication, treatment, pregnancy, pediatrics, severe mental-health content, eating disorders | Require explicit policy and human review before release |
| Prohibited clinical authority | Diagnosis, prescription, triage, emergency judgment, treatment changes | Refuse or redirect to appropriate professional care |
| Unsafe manipulation | Shame, fear, coercive nudges, hidden personalization, unsupported urgency | Block and review |

## Refusal and Redirection

When refusing or redirecting, AI copy should:

- State the boundary plainly.
- Avoid repeating sensitive details unnecessarily.
- Offer a safe product action when available.
- Suggest professional care for clinical questions.
- Avoid sounding punitive or alarmist.
- Avoid pretending the model has assessed risk beyond its authority.

## Escalation Rules

AI behavior requires additional safety review when it:

- Mentions medication, dosage, treatment, diagnosis, urgent symptoms, self-harm, pregnancy, pediatrics, eating disorders, severe pain, or acute deterioration.
- Interprets lab results, device readings, imported clinical records, or clinician notes.
- Could change user behavior in a way that creates physical, emotional, privacy, financial, or access risk.
- Is delivered through notifications or recurring automated prompts.
- Changes refusal, safety-block, or professional-care boundary behavior.

## Causation Rules

- Use "associated with," "appeared alongside," or "may be related" for unproven relationships.
- Do not use "caused," "because of," or "led to" without reviewed causal evidence.
- Explain plausible alternative explanations when a correlation could be overinterpreted.
- Withhold recommendations when causation is necessary but not established.

## Safety State Requirements

Safety-blocked output must define:

- The blocked category
- The user-facing explanation
- The allowed alternative, if any
- Whether professional care should be suggested
- Whether human review, audit, or incident handling is required
- Whether recurrence should be suppressed

## Implementation Guidance

- Treat safety policies as product requirements, not prompt suggestions only.
- Use deterministic policy checks before and after generation where feasible.
- Include safety scenarios in evaluation suites.
- Require review before weakening a refusal or expanding restricted categories.
- Keep emergency, legal, regulatory, and clinical policy outside ad hoc model behavior.

## Acceptance Criteria

- AI output stays inside documented safety boundaries.
- Refusals and redirects are useful, calm, and non-blaming.
- Restricted categories trigger review.
- Causation language is controlled.
- Safety blocks are auditable and testable.

## References

- core/SPEC.md
- specs/03-product/health-language.md
- specs/05-ai/recommendation-policy.md
- specs/05-ai/evaluation.md
- specs/05-ai/human-review.md

## Version History

- v1.6.0-draft: Adds safety boundary classes, refusal rules, escalation triggers, and causation standards.
- v1.0.0: Initial repository baseline.
