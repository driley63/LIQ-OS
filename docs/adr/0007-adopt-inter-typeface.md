# ADR-0007: Adopt Inter as the Primary Typeface

Status: Accepted
Date: 2026-08-03
Owner: LIQ OS Maintainers

## Context

LifestyleIQ needs a readable, modern, open typeface that works across Flutter, web, iOS, and Android.

## Decision

Inter is the primary typeface, with SF Pro, Roboto, and system-ui as platform fallbacks.

## Alternatives Considered

- SF Pro only
- Roboto only
- A high-contrast editorial face
- A proprietary typeface before product validation

## Consequences

- Typography maps cleanly to Material 3 and Flutter TextTheme.
- The brand remains modern and readable at small sizes.
- Custom wordmark work can still evolve independently.

## Traceability

- Core principle: implementation-first standards
- Release: v1.0.1
