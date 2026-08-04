# Logo Usage

Status: Draft refinement
Owner: Brand Working Group
Version: 1.1.0-draft
Last updated: 2026-08-04

## Purpose

Defines clear space, minimum sizes, backgrounds, and misuse rules.

## Scope

- LifestyleIQ brand identity
- Digital product implementation
- Marketing and platform assets
- App icons, favicons, social avatars, and documentation headers

## Requirements

- Icon minimum digital size: 24 px preferred, 16 px absolute minimum for symbol recognition.
- Horizontal logo minimum: 140 px digital, 35 mm print.
- Do not recolor, stretch, rotate, crop, shadow, outline, or recreate the wordmark manually.
- Use source-controlled SVG masters for all production exports.
- Preserve the rounded-square icon silhouette unless a platform mask requires a separate generated output.
- Keep the icon, wordmark, and horizontal lockup visually distinct in asset inventories.

## Asset Roles

| Asset | Required use |
| --- | --- |
| Icon | App icon source, launcher icon source, favicon source, avatar, wearable mark |
| Horizontal lockup | Website header, app store creative, presentations, press kit |
| Monochrome icon | Single-color contexts, embossed/debossed use, constrained vendor placements |
| Reversed mark | Dark backgrounds where full-color mark lacks contrast |

## Clear Space

Use the icon leaf height as the minimum clear-space unit around the full mark. When the leaf height is unavailable, use 25 percent of the icon square width.

Do not place the logo inside dense UI panels, badge clusters, busy photography, charts, screenshots, or backgrounds that reduce edge clarity.

## Minimum Sizes

| Context | Minimum |
| --- | --- |
| App icon source | 1024 px square |
| Launcher or home-screen output | Platform-required size, never manually downscaled from screenshots |
| Favicon | 16 px absolute minimum, 32 px preferred |
| Inline UI icon | 24 px preferred, 16 px absolute minimum |
| Horizontal digital logo | 140 px width |
| Horizontal print logo | 35 mm width |

## Backgrounds

- Use the full-color mark on white, near-white, Deep Navy, or approved brand surfaces.
- Use the reversed mark on dark or photographic backgrounds.
- Use monochrome only when color reproduction is unavailable or when the placement demands one color.
- Do not place the Fresh Lime to Evergreen gradient mark on another green or teal gradient.

## Misuse Rules

Do not:

- Recolor the icon or wordmark outside approved variants.
- Add drop shadows, glows, bevels, outlines, or texture.
- Rotate, skew, crop, squeeze, or stretch the mark.
- Recreate the logo in live text or a different typeface.
- Use AI Purple as a generic logo color.
- Combine the mark with unapproved taglines, badges, or partner marks.

## Implementation Guidance

- Reference files from `assets/brand/logos/source/` for source review.
- Generate exports from the approved source, not from prior raster exports.
- Include before/after images or rendered asset previews in PRs that change source artwork.
- Update `assets/brand/logos/README.md` when export requirements change.

## Acceptance Criteria

- Designers can choose the correct logo asset for common placements.
- Engineers can identify source files and generated outputs.
- Reviewers can detect non-compliant usage without subjective interpretation.
- Production surfaces preserve contrast, clear space, and source traceability.

## References

- adr/0001-adopt-lifestyleiq-name.md
- adr/0002-establish-brand-philosophy.md
- adr/0003-reserve-purple-for-ai.md
- adr/0004-adopt-green-teal-gradient.md

## Version History

- v1.1.0-draft: Adds asset roles, clear-space rules, background rules, misuse rules, and export guidance.
- v1.0.0: Initial repository baseline.
