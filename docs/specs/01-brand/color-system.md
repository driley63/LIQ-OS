# Color System

Status: Draft refinement
Owner: Brand Working Group
Version: 1.1.0-draft
Last updated: 2026-08-04

## Purpose

Defines primitive, semantic, state, chart, and category colors for LifestyleIQ.

## Scope

- LifestyleIQ brand identity
- Digital product implementation
- Marketing and platform assets
- Data visualization, app store assets, and documentation examples

## Requirements

- Evergreen `#16AA8D` is the primary brand color.
- Fresh Lime `#A6E21E` is the highlight and gradient start.
- Deep Navy `#0C1F33` anchors text and navigation.
- Purple `#7B61FF` is reserved for AI and machine-learning behavior.
- Product UI must use semantic tokens before raw primitive values.
- Marketing assets may use the signature gradient when the asset clearly represents LifestyleIQ as a product or brand.
- Health, warning, success, and error colors must not rely on hue alone.

## Primitive Palette

| Token | Value | Role |
| --- | --- | --- |
| `color.primitive.evergreen.600` | `#16AA8D` | Primary brand anchor, active states, brand surfaces |
| `color.primitive.fresh-lime.400` | `#A6E21E` | Highlight, gradient start, positive emphasis |
| `color.primitive.growth-green.500` | `#62CF62` | Gradient midpoint and positive brand accents |
| `color.primitive.wellness-teal.500` | `#2AB39A` | Gradient midpoint and wellness visualization support |
| `color.primitive.deep-navy.900` | `#0C1F33` | Primary text, navigation, dark surfaces |
| `color.primitive.slate-blue.700` | `#24566A` | Secondary text, chart support, quiet controls |
| `color.primitive.wellness-blue.500` | `#3CB8D9` | Informational states and product analytics |
| `color.primitive.energy-yellow.500` | `#F5C542` | Attention states that are not warnings |
| `color.primitive.coral.500` | `#F46F61` | Critical or exception states |
| `color.primitive.ai-purple.500` | `#7B61FF` | AI insights, machine-learning behavior, model confidence |
| `color.primitive.white` | `#FFFFFF` | Light surfaces and reversed marks |

## Signature Gradient

The canonical brand gradient is:

```text
Fresh Lime #A6E21E -> Growth Green #62CF62 -> Wellness Teal #2AB39A -> Evergreen #16AA8D
Angle: 135 degrees for digital UI, 45 degrees only when vertical formats require it
```

Use the gradient for brand moments, launch surfaces, app store graphics, and large identity assets. Do not use the gradient for routine buttons, dense tables, body text, or chart series.

## Semantic Roles

| Semantic token | Preferred primitive | Usage |
| --- | --- | --- |
| `color.brand.primary` | Evergreen | Primary actions and brand identity |
| `color.brand.highlight` | Fresh Lime | Emphasis, positive accents, progress highlights |
| `color.text.primary` | Deep Navy | Main copy and headings on light surfaces |
| `color.text.secondary` | Slate Blue | Supporting copy and metadata |
| `color.ai.primary` | AI Purple | AI-authored insights and model-generated explanations |
| `color.state.info` | Wellness Blue | Neutral information and system guidance |
| `color.state.warning` | Energy Yellow | Non-critical attention states |
| `color.state.critical` | Coral | Errors, destructive actions, and high-risk alerts |

## AI Color Reservation

Purple is reserved for AI-generated insights, machine-learning behavior, model confidence, and AI-specific controls. Purple must not be used for decorative marketing gradients, generic premium styling, standard navigation, or non-AI charts.

When an AI insight appears inside a broader product surface, pair purple with labels, iconography, or copy that makes the AI source clear. Color alone is not enough.

## Accessibility Rules

- Body text must meet WCAG AA contrast against its background.
- Critical, warning, success, and AI states must include text, iconography, or layout cues in addition to color.
- Fresh Lime must not be used for small text on white.
- Gradient backgrounds require reviewed text contrast at each edge and midpoint.

## Implementation Guidance

- Add new colors first as primitives, then map them to semantic roles.
- Use component aliases only after semantic roles exist.
- Treat one-off hex values in product or marketing code as review blockers.
- Update examples when token names or values change.

## Acceptance Criteria

- A reviewer can identify every production color by token name.
- AI surfaces use purple only for AI-specific meaning.
- Product states remain understandable without color.
- Figma, CSS, Flutter, iOS, and Android mappings can share the same primitive names.

## References

- adr/0001-adopt-lifestyleiq-name.md
- adr/0002-establish-brand-philosophy.md
- adr/0003-reserve-purple-for-ai.md
- adr/0004-adopt-green-teal-gradient.md

## Version History

- v1.1.0-draft: Adds primitive palette, semantic roles, gradient usage, AI reservation, and accessibility rules.
- v1.0.0: Initial repository baseline.
