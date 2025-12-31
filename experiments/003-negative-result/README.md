# Experiment 003: Negative Result — Git Workflow Misuse

## Background
During early practice of Git-based research workflows, I attempted to organize
experiment outputs and scripts without a clear separation between source code,
generated data, and experiment logs.

This experiment documents a deliberately *failed / suboptimal* workflow design,
in order to make the reasoning process explicit and reproducible.

## Initial Hypothesis
A minimal repository structure without strict conventions would be sufficient
for managing small-scale research experiments.

## What Was Tried
- Created experiment directories without a fixed naming or indexing rule
- Mixed exploratory scripts and experiment outputs
- Did not enforce reproducibility constraints (no fixed entry script)

## Observed Problems
- Hard to identify which scripts produced which results
- Difficult to reproduce outputs after directory changes
- Git status became noisy due to uncontrolled file generation

## Conclusion (Negative Result)
The initial hypothesis was **rejected**.

Even for small experiments, a clear and disciplined structure is necessary:
- Explicit experiment IDs
- Separation of `src/`, `experiments/`, and outputs
- Deterministic entry scripts

## Lessons Learned
Negative results are valuable:
- They clarify *why* certain conventions exist
- They prevent repeating structural mistakes in future research
- They improve long-term reproducibility

This experiment will not be extended further and is archived for reference.

