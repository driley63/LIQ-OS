# Logo Construction

Status: Draft refinement
Owner: Brand Working Group
Version: 1.1.0-draft
Last updated: 2026-08-04

## Purpose

Defines proportional construction and optical refinement rules for the logo.

## Scope

- LifestyleIQ brand identity
- Digital product implementation
- Marketing and platform assets
- Final vector logo masters and generated exports

## Requirements

- Rounded-square corner radius should remain approximately 22 to 24 percent of icon size.
- The symbol should occupy approximately 68 to 72 percent of the app icon canvas.
- Clear space is X, where X equals the leaf width in the final mark.
- The leaf and human figure must remain visually balanced at 16, 24, 32, 48, 64, 180, 512, and 1024 px.
- Monochrome variants must use one foreground color and one transparent or solid background. Accent strokes, gradients, and semi-transparent overlays are not allowed in true monochrome assets.
- Horizontal lockups must use approved vector wordmark outlines for production exports, not live text.

## Optical Refinement Gates

- Check whether the leaf visually overpowers the human figure in the full-color icon.
- Check whether internal strokes remain intentional at favicon sizes.
- Confirm the figure reads as a positive lifestyle gesture rather than a generic abstract curve.
- Confirm safe area against rounded iOS masks, Android adaptive icon masks, favicons, social avatars, and wearable icons.
- Confirm the icon remains recognizable without the wordmark.

## Placeholder Review

The current placeholder assets were reviewed on 2026-08-04. The review found that the concept is directionally aligned, but the current SVGs are not production masters.

Primary blockers:

- The monochrome icon still contains a teal accent stroke.
- The horizontal lockup uses live text.
- The leaf and vein detail need small-size refinement.
- A production asset inventory does not exist yet.

## Implementation Guidance

- Use `assets/brand/logos/optical-refinement-review.md` as the source review until final vector masters are approved.
- Generate production exports only after the source SVGs pass the optical refinement gates.
- Record any final geometry or wordmark changes in release notes.

## Acceptance Criteria

- Reviewers can distinguish placeholder assets from production masters.
- Final logo assets pass small-size, safe-area, monochrome, and lockup checks.
- Engineers can generate platform outputs from approved source files.
- The standard maps to LIQ OS Core.

## References

- adr/0001-adopt-lifestyleiq-name.md
- adr/0002-establish-brand-philosophy.md
- adr/0003-reserve-purple-for-ai.md
- adr/0004-adopt-green-teal-gradient.md

## Version History

- v1.1.0-draft: Adds optical refinement gates and placeholder review findings.
- v1.0.0: Initial repository baseline.
