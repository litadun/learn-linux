# Git Basic Commands Learning Log

## Date
2025-01-01

## Background

Today I started learning the basic Git workflow in a Linux (WSL) environment.
Before this, my understanding of Git was fragmented and mostly limited to
high-level concepts without a clear mental model of how Git manages file states.

## What I Learned

I learned the core idea that Git manages files through different stages:

- Working Directory
- Staging Area
- Repository (commit history)

Based on this model, I practiced several fundamental Git commands:

- `git status`  
  Used to inspect the current state of the repository and understand which files
  are modified, staged, or untracked.

- `git add <file>`  
  Used to explicitly select which changes should be included in the next commit.

- `git commit -m "<message>"`  
  Used to create a snapshot of the staged changes with a clear semantic message.

- `git push`  
  Used to synchronize the local commit history with the remote GitHub repository.

## Key Insight

One important realization is that Git never guesses the user's intention.
All meaningful actions (such as staging or discarding changes) must be made
explicitly by the user. This design encourages deliberate and traceable research
and development workflows.

## Reflection

This logging practice helps convert daily learning into a reproducible
research habit. Instead of relying on memory, decisions and understanding
are preserved in written form, which will be valuable for future projects
and collaborations.
