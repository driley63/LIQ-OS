# ADR-0010: Hybrid Local Findings with Optional LLM Narrative

Status: Accepted
Date: 2026-08-12
Owner: LIQ OS Maintainers

## Context

LifestyleIQ already ships on-device heuristic insights (`InsightsService`) and collects a full diary and profile. Product and trust goals require offline usefulness, consent before cloud processing, auditable care urgency, and alignment with LIQ OS non-negotiables (no diagnosis; AI does not replace medical advice; users control health data).

Three architectures were considered for “AI insights”:

1. **Device-only** — all interpretation stays on device.
2. **Cloud-only** — a model (or remote service) owns analysis end to end.
3. **Hybrid** — local analysis owns facts and urgency; an optional consented LLM narrates and suggests habits from that structured output.

Volume 05 AI standards already require evidence-first output, context minimization, labeled AI involvement, and structured output contracts. This ADR records the architecture choice that implements those standards for LifestyleIQ insights.

## Decision

LifestyleIQ adopts a **hybrid** insights architecture:

1. **Local findings** (on device) compute structured, machine-readable facts from diary and profile data: counts, trends, co-occurrences, adherence, and related metrics. Local rules alone set **care urgency** (`none` / `monitor` / `considerCare` / `seekCare` or successors).
2. **Optional LLM narrative** (cloud, behind a LifestyleIQ-owned backend/proxy) may generate user-facing explanation and habit suggestions **only from those structured findings**, and only after explicit consent. The model must not invent findings, change urgency, diagnose, or prescribe.
3. **Offline / no-consent** users continue to receive the local engine. Cloud failure degrades to local insights without blocking the product.
4. **Purple AI visual language** (ADR-0003) applies to AI-assisted narrative surfaces. Rule-derived findings and correlations remain distinguishable per insights product standards.
5. **Provider choice is deferred**; the app stays model-agnostic via the backend/proxy. Raw diary dumps must not leave the device when derived findings suffice.

Implementation phasing:

- **Phase 1:** Complete the local finding builder across collected measures (symptoms, meals, activities, sleep, vitals, weight, bowel, medication adherence, profile goals/conditions/indicators).
- **Phase 2+:** Consent gate, minimal payload contract, narrative service, and Insights UI labeling for AI-assisted copy.

## Alternatives Considered

- **Device-only** — Strong privacy and offline story, but weaker natural-language explanation and habit coaching without maintaining large on-device models.
- **Cloud-only** — Richer prose and ranking, but weak offline story, higher privacy surface, harder-to-audit urgency, and conflict with consent-before-cloud expectations.
- **On-device LLM only** — Keeps data local, but adds size, performance, evaluation, and safety-review cost before the local finding layer is complete.

## Consequences

- Facts and urgency remain deterministic and testable on device.
- LLM involvement is opt-in, labeled, and constrained to narrating structured findings.
- Two systems must stay aligned: local finders and prompt/output contracts.
- Context sent to cloud should prefer derived findings over raw logs (privacy minimum).
- Product backlog for AI starts with local findings completeness (e.g. LIQ-34), then consent and narrative.

## Traceability

- Core non-negotiables: medical claims, AI behavior, user data, privacy
- ADR-0003: Reserve purple for AI-generated insights
- specs/03-product/insights-and-correlations.md
- specs/05-ai/ai-product-principles.md
- specs/05-ai/prompt-and-context.md
- specs/05-ai/privacy.md
- specs/05-ai/safety-boundaries.md
- Product epic: LIQ-34 Artificial Intelligence Functionality
