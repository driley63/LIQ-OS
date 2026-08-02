# ADR-0006: Use Markdown as the Authoritative Source

    Status: Accepted
    Date: 2026-08-02
    Owner: LIQ OS Maintainers

    ## Context

    Word and PDF documents are useful for sharing, but they are hard to diff, review, merge, and automate.

    ## Decision

    Markdown in this repository is the authoritative source. Word, PDF, and web outputs are generated artifacts.

    ## Alternatives Considered

    - Word-first source
- PDF-first source
- Mixed source formats

    ## Consequences

    - Git diffs stay meaningful.
- Pull requests become reviewable.
- Generated deliverables can be rebuilt from source.

    ## Traceability

    - Core principle: implementation-first standards
    - Release: v1.0.0
