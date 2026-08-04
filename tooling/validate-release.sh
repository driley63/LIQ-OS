#!/usr/bin/env bash
set -euo pipefail

test -f CHANGELOG.md
test -f docs/core/SPEC.md
test -f docs/releases/v1.0.0/manifest.json
test -f docs/releases/v1.0.1/release-notes.md
