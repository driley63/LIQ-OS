# Typography

Status: Released baseline
Owner: Brand Working Group
Version: 1.0.0
Last updated: 2026-08-02

## Purpose

Defines the approved Inter-based type scale and fallback strategy.

## Scope

- LifestyleIQ brand identity
- Digital product implementation
- Marketing and platform assets

## Requirements

- Use Inter as primary UI typeface.
- Use SF Pro on iOS, Roboto on Android, and system-ui on web as fallbacks.
- Avoid thin and extra-heavy weights in product UI.
- Map styles to Flutter TextTheme whenever possible.

## Implementation Guidance

- Use approved tokens and assets.
- Do not introduce one-off styling without an RFC.
- Update asset inventories and release notes when changing source assets.

## Acceptance Criteria

- The rule can be implemented in design and code.
- A reviewer can detect compliant and non-compliant usage.
- The standard maps to LIQ OS Core.

## References

- adr/0001-adopt-lifestyleiq-name.md
- adr/0002-establish-brand-philosophy.md
- adr/0003-reserve-purple-for-ai.md
- adr/0004-adopt-green-teal-gradient.md

## Version History

- v1.0.0: Initial repository baseline.
