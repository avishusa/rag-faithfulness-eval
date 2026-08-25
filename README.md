# rag-faithfulness-eval

A validated LLM-as-judge for RAG faithfulness. Answers are decomposed into
atomic claims, and each claim is labeled SUPPORTED, NOT_SUPPORTED, or
CONTRADICTED against a retrieved source passage; the judge itself is
validated against hand-written human labels using Cohen's kappa, with an
intra-rater agreement ceiling computed for comparison. A secondary output
of the project is a leaderboard ranking free-tier models as faithfulness
judges.

## Planned structure

- `data/` — source passages, human claim labels, and judge outputs
  (dataset content; not source code)
- `judge/` — claim decomposition and judgment logic
- `eval/` — agreement metrics (Cohen's kappa, intra-rater ceiling) and
  the model leaderboard

This structure is a plan, not yet scaffolded — see the repo's issue
tracker for sequencing.

## Data sources

Source documents are arXiv papers used only under their original
CC-BY or CC0 licenses.

## License

This repository ships both code and a dataset, under separate licenses:

- **Code** is licensed under [Apache-2.0](LICENSE).
- **Dataset** (human claim labels, judge outputs, and associated
  annotations) is licensed under [CC-BY-4.0](LICENSE-DATA).

See the respective license files for full terms.
