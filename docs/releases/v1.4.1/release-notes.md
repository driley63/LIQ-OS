# Release Notes - v1.4.1

Date: 2026-08-04
Status: Draft patch

## Summary

This release candidate applies released LifestyleIQ branding and design-language rules to the LIQ OS MkDocs site without rearranging documentation content.

## Added

- Documentation-site LIQ OS horizontal lockup for MkDocs header use.
- Documentation-site copy of the LifestyleIQ icon for favicon use.
- `stylesheets/lifestyleiq.css` with Brand Identity color tokens, Inter-first typography, focus styling, button styling, link styling, table styling, admonition styling, and footer theming.
- v1.4.1 draft release manifest, checklist, and release notes.

## Changed

- MkDocs now references the LIQ OS documentation-site logo and LifestyleIQ favicon.
- The plain MkDocs header title is hidden because the LIQ OS logo asset carries the wordmark.
- MkDocs default and slate palettes no longer use AI Purple as a generic accent.
- Release index now includes the v1.4.1 draft patch release candidate.
- Asset inventory now records the documentation-site logo exports.

## Deprecated

- None.

## Removed

- None.

## Known Limitations

- The documentation site uses placeholder-derived SVG assets until final production logo artwork is approved.
- The site does not bundle or fetch Inter webfont files; it relies on the documented platform fallback stack.
- A reversed LIQ OS horizontal lockup is not yet available, so the MkDocs header keeps the full-color logo on a light approved surface.
