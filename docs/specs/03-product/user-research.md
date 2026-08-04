# User Research

Status: Draft refinement
Owner: Product Working Group
Version: 1.3.0-draft
Last updated: 2026-08-04

## Purpose

Defines user research standards for product discovery, usability, health-sensitive studies, synthesis, and evidence-backed product decisions.

## Scope

- Discovery interviews, usability tests, diary studies, surveys, prototype tests, and feedback analysis
- Research involving health behavior, sensitive data, AI explanations, consent, and repeated daily workflows
- Product, design, research, privacy, and governance review

## Requirements

- Research must define the decision it is intended to inform.
- Participant handling must respect privacy, consent, accessibility, and health sensitivity.
- Research prompts must avoid leading users toward desired product conclusions.
- Findings must distinguish observed behavior, self-report, interpretation, and recommendation.
- Sensitive health details must be minimized, protected, and summarized responsibly.
- Product standards may cite research only when the evidence is traceable and current enough for the decision.

## Research Plan Requirements

| Area | Requirement |
| --- | --- |
| Objective | State what decision the research informs |
| Participants | Define target users, exclusions, and accessibility needs |
| Method | Choose the lowest-risk method that can answer the question |
| Consent | Explain recording, data use, retention, and withdrawal |
| Materials | Use neutral scripts and reviewed prototypes |
| Synthesis | Separate evidence from interpretation |
| Follow-up | Identify product changes, open questions, and owners |

## Health-Sensitive Research Rules

- Do not request diagnoses, medication details, or clinical history unless explicitly approved for the study.
- Avoid asking participants to disclose information not needed for the research objective.
- Provide skip options for sensitive questions.
- Do not evaluate users as compliant or non-compliant.
- Escalate any safety, distress, or privacy concern through the defined owner before continuing.

## Evidence Quality

| Evidence type | Use | Limitation |
| --- | --- | --- |
| Usability observation | Identify friction and comprehension issues | Does not prove broad preference |
| Interview quote | Explain motivation or concern | Not a standalone product requirement |
| Survey response | Quantify directional feedback | Sensitive to question design |
| Behavioral analytics | Identify aggregate usage patterns | Does not explain user intent alone |
| Support feedback | Surface recurring problems | May overrepresent frustrated users |

## Implementation Guidance

- Store raw research only in approved systems.
- Summarize findings in product-safe language.
- Link product changes to research insights when the evidence materially influenced the decision.
- Retest health-sensitive copy, AI explanations, and consent flows before broad release.
- Treat lack of research as a visible risk, not a reason to invent certainty.

## Acceptance Criteria

- Research can be traced to a product decision or open question.
- Participant consent and privacy handling are documented.
- Findings distinguish evidence from interpretation.
- Health-sensitive research minimizes unnecessary disclosure.
- Product changes based on research include owner, rationale, and limitations.

## References

- core/SPEC.md
- specs/03-product/health-language.md
- specs/03-product/settings-and-consent.md
- specs/08-governance/audit-trail.md

## Version History

- v1.3.0-draft: Adds research planning, health-sensitive research rules, evidence quality, and acceptance criteria.
- v1.0.0: Initial repository baseline.
