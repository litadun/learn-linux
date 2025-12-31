# Experiment 004: Structured Positive Control

## Goal
Demonstrate a clean, reproducible, and low-noise experiment workflow.

## Design Principles
- Single entry script in `src/`
- Clear separation of code, outputs, and logs
- Deterministic and traceable execution
- Minimal Git noise

## How to Run
From repository root:

    bash src/run_structured_experiment.sh

## Observed Outcomes
- Outputs are isolated under `out/`
- Execution metadata is logged
- Git status remains readable

## Conclusion
A disciplined directory structure and fixed entry point significantly improve
reproducibility and maintainability, even for small experiments.
