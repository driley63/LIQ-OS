# Notification Guidance

Status: Released
Owner: Product Working Group
Version: 1.3.0
Last updated: 2026-08-04

## Purpose

Defines notification standards for reminders, insight alerts, report availability, consent-sensitive notices, and user-controlled communication.

## Scope

- Push, email, in-app, badge, and future notification channels
- Reminders, logging prompts, reports, insights, warnings, and product education
- Product, design, privacy, safety, and lifecycle review

## Requirements

- Notifications must be opt-in or clearly user-controlled where platform and policy require it.
- Each notification type must have a user value, trigger, frequency limit, and dismissal behavior.
- Health-sensitive notifications must avoid alarmist, diagnostic, or shame-based language.
- Notifications must not reveal sensitive health details on locked screens unless the user explicitly allows it.
- Users must be able to pause, reduce, or disable non-essential notifications.
- AI-generated insight notifications must identify AI involvement when the user opens the notification destination.

## Notification Types

| Type | Use | Requirement |
| --- | --- | --- |
| Logging reminder | Help users complete intended tracking | User-configurable timing and frequency |
| Report ready | Let users know a requested summary is available | Link to report with privacy-safe preview |
| Insight available | Surface potentially useful pattern | Avoid sensitive detail in notification body |
| Consent or permission | Explain required user action | Plain language and direct settings path |
| System status | Communicate sync or account issue | State impact and recovery path |

## Frequency and Timing

- Default reminder frequency must be conservative.
- Repeated ignored notifications should trigger reduction or pause logic.
- Time-sensitive notifications must be justified by user value, not engagement goals.
- Quiet hours and timezone changes must be respected.
- Notification experiments must measure opt-outs and negative feedback, not only opens.

## Copy Rules

- Lead with useful context, not urgency.
- Keep locked-screen copy privacy-safe.
- Avoid streak pressure, guilt, or health judgment.
- Use specific recovery language for sync, permission, or save failures.
- Do not imply that an insight is clinically urgent unless an approved escalation policy exists.

## Implementation Guidance

- Define notification templates before implementation.
- Connect each notification to an in-product destination where the user can act or learn more.
- Use notification analytics to evaluate usefulness, opt-outs, dismissals, and repeated ignores.
- Review new notification categories with privacy and product safety owners.

## Acceptance Criteria

- Notifications have clear user value and control.
- Frequency limits and pause behavior are documented.
- Locked-screen copy is privacy-safe.
- Health and AI notification language is cautious and non-alarming.
- Users can change preferences without support intervention.

## References

- core/SPEC.md
- specs/03-product/health-language.md
- specs/03-product/settings-and-consent.md

## Version History

- v1.3.0: Adds notification types, timing rules, copy rules, and acceptance criteria.
- v1.0.0: Initial repository baseline.
