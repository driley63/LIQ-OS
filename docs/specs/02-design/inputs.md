# Inputs

Status: Released
Owner: Design System Working Group
Version: 1.2.0
Last updated: 2026-08-04

## Purpose

Defines input fields, selectors, validation, data-entry ergonomics, and consent-sensitive entry patterns.

## Scope

- Text fields, text areas, selects, segmented controls, toggles, checkboxes, radio groups, steppers, sliders, date controls, and health log inputs
- Mobile, web, and future design-system implementations
- Validation, error handling, privacy, and accessibility behavior

## Requirements

- Inputs must include visible labels unless a platform-native control provides an equivalent accessible label.
- Required fields must be indicated without relying on color alone.
- Health data entry must favor low-friction controls over long free-text forms where structured data is possible.
- Validation must explain what changed and how to fix it.
- Sensitive health or consent inputs must avoid casual or playful language.

## Input Types

| Type | Use |
| --- | --- |
| Text field | Names, short notes, search, single-value entry |
| Text area | Longer notes where free text is necessary |
| Select or menu | Option sets with more than five stable choices |
| Segmented control | Two to five mutually exclusive common options |
| Toggle | Immediate binary setting |
| Checkbox | Multi-select or confirmable non-immediate option |
| Slider or stepper | Numeric ranges where approximate input is acceptable |
| Date or time picker | Logs, reminders, timeline filters |

## Anatomy

Inputs should define label, field body, value, placeholder when useful, helper text, validation message, optional prefix/suffix, and state indicators.

## States

Inputs must define default, hover, focus-visible, filled, disabled, read-only, loading, valid, warning, and error states when applicable.

## Validation Rules

- Validate as early as useful, but do not interrupt typing with noisy errors.
- Preserve user-entered values after errors.
- Put validation messages near the affected input.
- Use plain language and avoid blame.
- Use warnings for unusual but allowed values and errors for blocked values.

## Implementation Guidance

- Use platform-native keyboard types for mobile entry.
- Keep recurring daily logging inputs reachable with one hand where possible.
- Use autocomplete only when suggestions are trustworthy and privacy-safe.
- Confirm destructive or privacy-sensitive setting changes when impact is not obvious.

## Acceptance Criteria

- Labels, helper text, and validation are clear and accessible.
- Entry controls match the data type and expected frequency.
- Error states preserve user work and provide remediation.
- Sensitive inputs respect privacy and consent context.

## References

- core/SPEC.md
- specs/02-design/accessibility.md
- specs/03-product/settings-and-consent.md

## Version History

- v1.2.0: Adds input types, anatomy, states, validation, and health-entry rules.
- v1.0.0: Initial repository baseline.
