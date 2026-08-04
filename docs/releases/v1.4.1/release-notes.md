# Release Notes - v1.4.1

Date: 2026-08-04
Status: Draft patch

## Summary

This release candidate applies released LifestyleIQ branding and design-language rules to the LIQ OS MkDocs site without rearranging documentation content.

## Added

- Documentation-site copies of the LifestyleIQ horizontal logo and icon for MkDocs header and favicon use.
- `stylesheets/lifestyleiq.css` with Brand Identity color tokens, Inter-first typography, focus styling, button styling, link styling, table styling, admonition styling, and footer theming.
- v1.4.1 draft release manifest, checklist, and release notes.

## Changed

- MkDocs now references the LifestyleIQ logo and favicon.
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
- A reversed horizontal logo is not yet available, so the MkDocs header keeps the full-color logo on a light approved surface.
