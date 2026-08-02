#!/usr/bin/env bash
set -euo pipefail

test -f CHANGELOG.md
test -f core/SPEC.md
test -f releases/v1.0.0/manifest.json
test -f releases/v1.0.0/release-notes.md
