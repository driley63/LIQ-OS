# Release Notes - v1.6.0

Date: 2026-08-04
Status: Released minor

## Summary

This release expands the AI Principles baseline into implementation-ready standards. It defines how LifestyleIQ should label AI involvement, expose evidence and confidence, govern recommendations, minimize prompt context, evaluate behavior, enforce safety boundaries, handle failure states, protect privacy, and review high-impact AI changes before backend implementation continues.

## Added

- AI Principles overview with milestone status, principles, document map, and acceptance criteria.
- AI Principles specification with system boundaries, dependencies, AI behavior definition of done, and review requirements.
- AI Principles alignment review against Brand Identity v1.1.0, Design Language v1.5.0, Product Experience v1.3.0, and Engineering Standards v1.4.0.
- AI product principles covering model involvement, user agency, product limits, and bounded assistance.
- AI-assisted insight taxonomy with eligibility rules, required fields, display rules, and review guidance.
- Confidence and evidence standards covering labels, evidence model, limitation language, and withholding rules.
- Recommendation policy covering allowed, restricted, and prohibited recommendation behavior.
- Prompt and context standards covering prompt contracts, context classes, retrieval, output validation, and change control.
- Evaluation standards covering dimensions, test sets, release gates, human evaluation, and monitoring inputs.
- Safety boundary standards covering restricted categories, refusals, escalation, causation language, and safety states.
- Failure-state standards covering loading, learning, low-confidence, stale, unavailable, safety-blocked, privacy-blocked, unsupported, and partial output.
- Human-review standards covering triggers, roles, checklists, records, and override rules.
- Privacy standards covering AI data use, consent, retention, logging, deletion, and review triggers.
- AI visual-language standards covering AI labels, AI Purple usage, confidence display, accessibility, and hierarchy.
- v1.6.0 release manifest, checklist, and release notes.

## Changed

- MkDocs navigation now exposes the full AI Principles volume.
- v1.6.0 checklist now records the completed cross-volume alignment review and release promotion.
- Release index now marks v1.6.0 as a released minor version.

## Deprecated

- None.

## Removed

- None.

## Known Limitations

- AI standards are textual only; production prompts, evaluation datasets, model/provider decisions, service architecture, runtime monitoring, and incident-response tooling remain future implementation artifacts.
