# Observability

Status: Draft refinement
Owner: Engineering Working Group
Version: 1.4.0-draft
Last updated: 2026-08-04

## Purpose

Defines observability standards for logs, metrics, traces, crash reporting, user-impact diagnostics, privacy-safe analytics, alerting, and ownership.

## Scope

- Mobile, web, backend-facing clients, documentation hosting, CI/CD, and future services
- Product workflows involving daily logging, reports, insights, notifications, settings, and AI-assisted behavior
- Operational dashboards, alerts, incident review, and privacy-safe debugging

## Requirements

- Critical product workflows must emit enough privacy-safe diagnostics to identify failures and user impact.
- Observability signals must avoid raw sensitive health content.
- Errors must include owner, severity, affected surface, and remediation path where applicable.
- Crash and error reports must redact personal and sensitive data.
- Alerts must be actionable and routed to an owner.
- New production systems must define baseline health indicators before release.

## Signal Types

| Signal | Use | Requirement |
| --- | --- | --- |
| Logs | Debug operational behavior | Structured, redacted, sampled where appropriate |
| Metrics | Track system and workflow health | Aggregated and privacy-safe |
| Traces | Follow cross-boundary operations | No sensitive payloads |
| Crashes | Detect application failures | Include version, device context, and safe breadcrumbs |
| Analytics | Understand product usage quality | Avoid sensitive values and preserve consent state |
| Alerts | Trigger response | Actionable, owned, and severity-based |

## Required Coverage

- App startup and session restoration
- Daily logging save, edit, and sync failures
- Report generation and export failures
- Consent, permission, deletion, and integration changes
- Notification delivery and destination failures
- AI insight unavailable, low-confidence, or failed states
- CI/CD build and deployment failures

## Implementation Guidance

- Use event names that describe product or system behavior consistently.
- Keep PII and health values out of names, labels, breadcrumbs, and custom properties.
- Include app version, release channel, platform, and build metadata in diagnostics.
- Define dashboards for release verification before production rollout.
- Review new analytics events with Product and Privacy when they involve health behavior.

## Acceptance Criteria

- Critical failures can be detected and triaged.
- Sensitive health content is redacted from diagnostics.
- Owners and severity levels are defined.
- Release verification has observable signals.
- Analytics and logs respect consent and privacy controls.

## References

- core/SPEC.md
- specs/03-product/settings-and-consent.md
- specs/04-engineering/security-and-privacy.md
- specs/04-engineering/release-engineering.md

## Version History

- v1.4.0-draft: Adds observability signal types, required coverage, and privacy-safe diagnostics.
- v1.0.0: Initial repository baseline.
