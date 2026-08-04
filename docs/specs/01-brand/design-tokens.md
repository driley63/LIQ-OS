# Design Tokens

Status: Released
Owner: Brand Working Group
Version: 1.1.0
Last updated: 2026-08-04

## Purpose

Defines token naming, ownership, usage, platform mappings, and change controls for the LifestyleIQ brand system.

## Scope

- LifestyleIQ brand identity
- Digital product implementation
- Marketing and platform assets
- CSS, Flutter, iOS, Android, Figma, and documentation examples

## Requirements

- Primitive tokens describe raw values.
- Semantic tokens describe meaning.
- Component aliases describe usage.
- Tokens must generate or map to Flutter, CSS, Android, iOS, and Figma values.
- Production code must not introduce raw brand values when a token exists.
- Token changes must include migration notes when they alter visual output.

## Token Layers

| Layer | Naming pattern | Example | Owner |
| --- | --- | --- | --- |
| Primitive | `color.primitive.{name}.{step}` | `color.primitive.evergreen.600` | Brand Working Group |
| Semantic | `color.{domain}.{role}` | `color.brand.primary` | Brand Working Group |
| State | `color.state.{intent}` | `color.state.critical` | Brand and Product |
| Component alias | `component.{name}.{slot}` | `component.button.primary.background` | Design System |
| Platform export | Platform-native casing | `liqColorBrandPrimary` | Engineering |

Primitive tokens may expose raw values. Semantic tokens must describe intent. Component aliases must never point directly to raw values; they must resolve through primitives or semantic tokens.

## Required Color Tokens

| Token | Value |
| --- | --- |
| `color.primitive.evergreen.600` | `#16AA8D` |
| `color.primitive.fresh-lime.400` | `#A6E21E` |
| `color.primitive.growth-green.500` | `#62CF62` |
| `color.primitive.wellness-teal.500` | `#2AB39A` |
| `color.primitive.deep-navy.900` | `#0C1F33` |
| `color.primitive.slate-blue.700` | `#24566A` |
| `color.primitive.wellness-blue.500` | `#3CB8D9` |
| `color.primitive.energy-yellow.500` | `#F5C542` |
| `color.primitive.coral.500` | `#F46F61` |
| `color.primitive.ai-purple.500` | `#7B61FF` |
| `color.brand.primary` | `color.primitive.evergreen.600` |
| `color.brand.highlight` | `color.primitive.fresh-lime.400` |
| `color.ai.primary` | `color.primitive.ai-purple.500` |

## Platform Mapping Rules

- CSS custom properties use kebab case with the `--liq-` prefix.
- Flutter constants use lower camel case inside a namespaced class.
- iOS exports use Swift lower camel case and asset catalog names without spaces.
- Android resources use snake case.
- Figma variables use slash-delimited groups that mirror the token layers.

## Change Control

- Adding a semantic alias is a minor change.
- Clarifying token usage without changing values is a patch change.
- Renaming or deleting a token requires migration notes and may be breaking.
- Changing `color.ai.primary` requires review against ADR-0003.
- Changing the signature gradient requires review against ADR-0004.

## Implementation Guidance

- Keep generated token files out of hand-edited source unless they are intentionally checked in as implementation examples.
- Review examples when token names change.
- Prefer semantic roles in product code and primitive roles in brand asset source.
- Record consumer impact in release notes before merging token changes.

## Acceptance Criteria

- Token names are stable enough for product and design-system consumers.
- Every token has an owner and an intended layer.
- The same token can be mapped to CSS and Flutter without changing meaning.
- Reviewers can reject raw values that bypass approved tokens.

## References

- adr/0001-adopt-lifestyleiq-name.md
- adr/0002-establish-brand-philosophy.md
- adr/0003-reserve-purple-for-ai.md
- adr/0004-adopt-green-teal-gradient.md

## Version History

- v1.1.0: Adds token layers, required color tokens, platform mapping rules, and change control.
- v1.0.0: Initial repository baseline.
