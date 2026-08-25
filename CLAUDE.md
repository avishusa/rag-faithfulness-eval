# CLAUDE.md

Project thesis: a validated LLM-as-judge for RAG faithfulness — answers are
decomposed into atomic claims, each labeled against a retrieved source
passage and validated against human labels.

## Invariants

- Labels are three-way: SUPPORTED / NOT_SUPPORTED / CONTRADICTED. Never
  collapse to binary.
- Source documents must be CC-BY or CC0 only. CC-BY-SA is excluded — its
  copyleft would propagate into the dataset.

## Workflow

- Development is issue-driven: every change traces back to a GitHub issue.
- Branch naming: `<type>/<issue>-<slug>`.
- Commits follow Conventional Commits.
- Never commit directly to `main`.

## Secrets

- API keys live in `.env`, never committed.
