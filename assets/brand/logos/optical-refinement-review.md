# Logo Optical Refinement Review

Status: Completed placeholder review
Owner: Brand Working Group
Date: 2026-08-04

## Purpose

This review evaluates the current placeholder logo SVGs for final optical refinement readiness. It does not approve the placeholders as production masters.

## Files Reviewed

| File | Role | Review Status |
| --- | --- | --- |
| `source/lifestyleiq-icon.svg` | Full-color icon placeholder | Needs optical refinement |
| `source/lifestyleiq-icon-monochrome.svg` | Monochrome icon placeholder | Needs correction |
| `source/lifestyleiq-logo-horizontal.svg` | Horizontal lockup placeholder | Needs wordmark refinement |

## Review Method

- Rendered each SVG to a 1024 px preview.
- Checked source SVG structure, titles, descriptions, view boxes, gradient stops, and core shapes.
- Compared the rendered previews against current Logo System, Logo Construction, Logo Usage, Color System, and Asset Production requirements.

## Findings

### Full-Color Icon

- The Fresh Lime to Evergreen gradient matches the approved direction.
- The rounded-square radius is approximately within the required 22 to 24 percent range.
- The white figure and leaf concept is recognizable at large size.
- The leaf is visually dominant relative to the human figure and may overpower the lifestyle signal.
- The teal vein overlay reads as a semi-transparent artifact at small sizes rather than an intentional detail.
- The symbol needs small-size testing at 16, 24, 32, 48, and 64 px before favicon or launcher export.

### Monochrome Icon

- The file is not a true monochrome asset because it retains a teal vein overlay.
- The background uses Deep Navy and the symbol uses white, so it is better classified as a dark icon variant.
- A production monochrome set must include one-color black and one-color white versions without gradients or accent strokes.

### Horizontal Lockup

- The icon and wordmark relationship is readable at large size.
- The wordmark is live text, so it is not a production vector master.
- The `IQ` color treatment follows the Evergreen brand color direction, but needs confirmation for accessibility and small-size rendering.
- The lockup spacing and vertical optical alignment need refinement after the final icon shape is approved.

## Production Blockers

- Replace live text in the horizontal lockup with outlined vector paths after final wordmark approval.
- Create true monochrome black and white icon variants.
- Remove or revise the semi-transparent vein so it remains intentional at small sizes.
- Confirm icon safe area against iOS, Android adaptive icon, favicon, and social avatar masks.
- Add a production `inventory.md` after final exports exist.

## Refinement Requirements

- Preserve the approved rounded-square icon, green-to-teal gradient, white lifestyle figure, and leaf concept.
- Maintain purple reservation by avoiding AI Purple in logo assets.
- Keep source SVGs accessible with `title`, `desc`, and `role="img"`.
- Test final candidates on light, dark, and brand-gradient-adjacent backgrounds.
- Review at both 1024 px source size and the smallest supported output sizes.

## Decision

The placeholder assets are acceptable for documentation direction and internal review. They are not approved as production logo masters or export sources.

Next step: produce final vector masters or a refined candidate set, then update the asset inventory and generated export structure.
