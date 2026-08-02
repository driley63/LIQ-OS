# Governance

LIQ OS is governed through a release model.

## Statuses

- Draft: exploratory work with no implementation commitment.
- Review: ready for structured critique.
- Approved: accepted as the intended standard.
- Released: included in a numbered LIQ OS release.
- Deprecated: superseded but retained for history.

## Change Types

- Patch: clarification, typo, formatting, or non-behavioral correction.
- Minor: additive standard that does not break existing implementation guidance.
- Major: breaking change that changes approved behavior, token names, component contracts, or governance.

## Decision Flow

```mermaid
flowchart LR
  Idea[Idea] --> RFC[RFC]
  RFC --> Review[Review]
  Review --> ADR[ADR]
  ADR --> Spec[Specification]
  Spec --> Release[Release]
```

No significant standard should bypass this flow unless maintainers explicitly document the exception.
