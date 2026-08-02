# ADR-0008: Adopt MkDocs for Documentation Publishing

    Status: Accepted
    Date: 2026-08-02
    Owner: LIQ OS Maintainers

    ## Context

    LIQ OS needs a documentation site that can be built from Markdown with low operational overhead.

    ## Decision

    MkDocs with Material for MkDocs is the initial documentation publishing stack.

    ## Alternatives Considered

    - Docusaurus
- VitePress
- Static Markdown only
- Custom Flutter documentation app first

    ## Consequences

    - GitHub Pages publishing is straightforward.
- Markdown remains the source.
- The stack can be replaced later through a new ADR if requirements change.

    ## Traceability

    - Core principle: implementation-first standards
    - Release: v1.0.0
