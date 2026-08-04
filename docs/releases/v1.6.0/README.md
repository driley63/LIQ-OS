# LIQ OS v1.6.0

Status: Released minor
Date: 2026-08-04

v1.6.0 releases the Volume 05 AI Principles implementation milestone. It turns the baseline AI topic list into implementation-ready standards for model-assisted insights, recommendations, prompts, context, evaluation, safety boundaries, human review, privacy, failure states, and visual language.

## Included Areas

- Volume 05 AI Principles specification refinement
- AI product principles, model involvement labeling, and user agency requirements
- Insight type taxonomy, eligibility rules, confidence labels, evidence requirements, and limitation language
- Recommendation policy covering allowed, restricted, and prohibited AI behavior
- Prompt and context standards for minimization, retrieval, output contracts, and prompt change control
- Evaluation standards for test sets, release gates, human evaluation, and monitoring inputs
- Safety boundary, refusal, escalation, causation, and safety-state requirements
- AI failure states for loading, learning, low-confidence, stale, unavailable, safety-blocked, privacy-blocked, unsupported, and partial output
- Human-review triggers, reviewer roles, review records, and bounded override rules
- AI privacy standards for consent, minimization, retention, logging, deletion, and review triggers
- AI visual-language standards for labels, AI Purple usage, confidence display, accessibility, and generated-output hierarchy
- Cross-volume review against Brand Identity v1.1.0, Design Language v1.5.0, Product Experience v1.3.0, and Engineering Standards v1.4.0
- MkDocs navigation expansion for the AI Principles documents

## Release Decision

This is a minor release because it adds implementation-ready AI behavior standards without changing released Brand Identity, Design Language, Product Experience, Engineering Standards, LIQ OS Core, or documentation-site brand decisions.

## Known Limitations

- Standards are textual; production prompts, evaluation datasets, model/provider selection, AI service architecture, and monitoring dashboards are not yet included.
