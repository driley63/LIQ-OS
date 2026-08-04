# Volume 03 - Product Experience

Volume 03 defines how LifestyleIQ turns user health context into daily workflows, timelines, insights, reports, settings, consent, and research-informed product behavior.

## Status

- Current milestone: v1.3.0 draft
- Owner: Product Working Group
- Dependencies: Volume 01 Brand Identity v1.1.0 and Volume 02 Design Language v1.2.0
- Release target: minor release because this work adds implementation-ready product behavior standards without changing released brand or design-system decisions

## Purpose

Product Experience translates the LIQ OS philosophy into user-facing behavior. It defines how the product should help people log daily context, understand patterns, review evidence, manage consent, and receive guidance without overstating certainty or increasing health anxiety.

## Principles

- Understanding over tracking: every workflow should help the user learn something useful.
- Low-friction daily use: repeated logging must be fast, forgiving, and privacy-aware.
- Evidence before advice: insights must expose source, timeframe, confidence, and limitations.
- Calm health language: product copy should be specific, non-blaming, and cautious.
- Consent as product experience: privacy, permissions, and data use must be understandable before they are accepted.

## Document Map

- `SPEC.md`: volume scope, boundaries, requirements, dependencies, and definition of done
- `experience-principles.md`: product experience rules for trust, effort, feedback, and user control
- `daily-logging.md`: recurring health log entry, editing, review, and streak behavior
- `health-timeline.md`: longitudinal events, summaries, filters, and evidence context
- `insights-and-correlations.md`: insight criteria, correlation language, confidence, and review gates
- `reports.md`: report structure, export behavior, summaries, and sharing boundaries
- `onboarding.md`: first-run experience, permission sequencing, and expectation setting
- `settings-and-consent.md`: user control, privacy settings, consent records, and revocation behavior
- `health-language.md`: approved product copy rules for health-sensitive experiences
- `notification-guidance.md`: notification timing, consent, copy, frequency, and escalation limits
- `user-research.md`: research ethics, participant handling, evidence capture, and synthesis requirements

## Acceptance Criteria

- A product manager can define a workflow without private context.
- A designer can connect each product pattern to released Design Language standards.
- An engineer can identify expected states, data dependencies, and privacy constraints.
- Reviewers can distinguish helpful guidance from unsupported medical or AI claims.
- Product decisions remain traceable to user research, evidence, policy, or documented exceptions.
