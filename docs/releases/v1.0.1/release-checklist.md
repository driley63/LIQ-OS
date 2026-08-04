# Release Checklist

- [x] `docs/` is the canonical documentation source.
- [x] Root-level duplicate docs folders are removed.
- [x] MkDocs `docs_dir` points to `docs`.
- [x] MkDocs nav targets resolve.
- [x] Validation workflow builds the site with `mkdocs build --strict`.
- [x] Amplify build spec deploys the generated `site/` folder.
- [ ] Confirm the Amplify production build in the AWS console after pushing to `main`.
