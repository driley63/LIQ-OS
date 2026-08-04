# LIQ OS v1.4.1

Status: Draft patch
Date: 2026-08-04

v1.4.1 applies the released LifestyleIQ Brand Identity and Design Language standards to the LIQ OS documentation site. It updates the MkDocs header logo, favicon, typography stack, color tokens, button styling, focus states, and site theming without changing documentation structure or specification content.

## Included Areas

- MkDocs header logo and favicon using source-controlled LifestyleIQ SVG assets
- LIQ OS documentation-site lockup for the MkDocs header
- Documentation site CSS tokens mapped to released Brand Identity color values
- Inter-first typography stack with documented platform fallbacks
- Button, link, navigation, table, admonition, focus, and footer styling aligned to released Design Language rules
- Asset inventory updates for documentation-site logo exports

## Release Decision

This is a patch release candidate because it applies existing released Brand Identity and Design Language rules to the documentation site without changing approved standards.

## Known Limitations

- The served logo files are placeholder-derived copies until final vector artwork is approved.
- The site does not bundle or fetch Inter webfont files; it uses Inter when locally available and otherwise falls back to SF Pro, Roboto, and system UI fonts.
- The MkDocs header uses the full-color LIQ OS lockup on a light approved surface because no reversed LIQ OS lockup asset exists yet.
