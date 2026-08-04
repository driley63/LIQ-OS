# Performance

Status: Released
Owner: Engineering Working Group
Version: 1.4.0
Last updated: 2026-08-04

## Purpose

Defines performance standards for startup, navigation, rendering, data loading, sync, battery, network, memory, and release readiness.

## Scope

- Mobile and web product surfaces
- Daily logging, timelines, reports, charts, onboarding, settings, notifications, and AI-assisted experiences
- Performance budgets, measurement, regression review, and release gates

## Requirements

- Core daily workflows must remain responsive under realistic device, network, and data-volume conditions.
- Performance budgets must be defined for startup, navigation, data loading, rendering, and background work.
- Health data interpretation must not block critical UI unnecessarily.
- Background sync and notification work must respect battery, network, and privacy expectations.
- Performance regressions in core workflows require owner and remediation plan before release.
- Measurements must use representative data and devices.

## Performance Areas

| Area | Requirement |
| --- | --- |
| Startup | Show usable first screen without waiting for non-critical work |
| Navigation | Route transitions should not block on unrelated data |
| Logging | Common save/edit actions should feel immediate and recoverable |
| Timeline | Long histories should paginate, virtualize, or group data |
| Reports | Heavy summaries should show progress or async completion |
| Charts | Dense visualizations should remain legible and efficient |
| Sync | Background work should be bounded and observable |
| Memory | Large data sets and assets should avoid unbounded retention |

## Measurement Rules

- Measure cold start, warm start, and first useful interaction.
- Test low-end devices and slow or intermittent networks where relevant.
- Use production-like synthetic data volumes.
- Separate local rendering time from network and service latency.
- Track performance against release version and commit.

## Implementation Guidance

- Prefer incremental loading over blocking full-page waits.
- Avoid recomputing expensive summaries on every rebuild.
- Cache only when freshness, invalidation, and privacy are documented.
- Use placeholders that preserve layout without implying false progress.
- Route performance issues to the owning feature or platform package.

## Acceptance Criteria

- Core workflows have defined performance expectations.
- Regressions are detected before release or documented with owner and mitigation.
- Heavy reports, charts, and timelines remain usable at realistic scale.
- Background work is bounded, observable, and privacy-safe.
- Performance tradeoffs do not break accessibility or product clarity.

## References

- core/SPEC.md
- specs/02-design/motion.md
- specs/03-product/daily-logging.md
- specs/04-engineering/observability.md

## Version History

- v1.4.0: Adds performance areas, measurement rules, budgets, and regression criteria.
- v1.0.0: Initial repository baseline.
