# Reports

Status: Released
Owner: Product Working Group
Version: 1.3.0
Last updated: 2026-08-04

## Purpose

Defines report behavior for summaries, trends, insight evidence, exports, sharing, and longer-form user review.

## Scope

- Daily, weekly, monthly, and custom-period reports
- User-facing summaries, exported reports, provider-ready summaries, and product review artifacts
- Mobile, web, PDF-ready, and shareable report experiences

## Requirements

- Reports must state the covered period, data sources, generated time, and known missing data.
- Reports must distinguish logged facts, calculated summaries, AI-assisted interpretation, and user notes.
- Reports must not imply clinical diagnosis or treatment guidance unless explicitly approved.
- Export and sharing actions must explain privacy impact before completion.
- Reports must include empty, partial, loading, unavailable, and stale-data states.
- Report summaries must be understandable without charts alone.

## Report Sections

| Section | Requirement |
| --- | --- |
| Overview | Period, scope, generated date, and high-level summary |
| Data coverage | What was logged, imported, missing, or excluded |
| Key patterns | Evidence-backed observations and trends |
| Insight details | Source, confidence, limitations, and AI involvement |
| User notes | Optional context written by the user |
| Actions | Save, export, share, compare, or inspect evidence |

## Export and Sharing

- Export actions must identify file type, included data, and recipient risk.
- Shared reports must avoid hidden data that the user cannot preview.
- Users must be able to cancel before a report leaves the product.
- Sensitive identifiers should be minimized by default.
- Exported reports must include generated timestamp and version context.

## Implementation Guidance

- Use report cards and charts from Design Language when summaries are visual.
- Prefer plain-language summaries before detailed tables.
- Provide print/export layouts only after on-screen content is reviewable.
- Use report-specific analytics for export starts, cancellations, and completed shares.
- Route provider-facing or clinical-use reports through policy review before release.

## Acceptance Criteria

- Users can understand what a report includes and excludes.
- Export and sharing behavior is explicit and consent-aware.
- AI and correlation content expose evidence and limitations.
- Reports remain useful when data is partial or unavailable.
- Report content can be reviewed without private product context.

## References

- core/SPEC.md
- specs/02-design/charts.md
- specs/03-product/health-language.md
- specs/03-product/insights-and-correlations.md

## Version History

- v1.3.0: Adds report structure, export rules, sharing boundaries, and review criteria.
- v1.0.0: Initial repository baseline.
