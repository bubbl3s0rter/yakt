---
description: End session — update progress, log decisions, suggest commit
---

When this command is invoked, do the following steps in order:

1. **Update `docs/progress.md`**:
   - Move completed items to the "Done" section
   - Update "In Progress" to reflect the current state
   - Revise "Next" based on what remains from the spec

2. **Update `docs/decisions.md`**:
   - If any architectural choices were made this session, append them using the ADR format:
     ```
     ## YYYY-MM-DD: <short title>
     **Context**: why the decision was needed
     **Choice**: what was chosen
     **Reason**: why this option over alternatives
     ```
   - Only add entries for non-obvious choices; skip trivial ones

3. **Suggest a commit message** following conventional commits:
   - `feat:` for new functionality
   - `fix:` for bug fixes
   - `refactor:` for structure changes without behavior change
   - `docs:` for documentation only
   - One line, imperative mood, under 72 characters

4. Print a brief summary of what was accomplished.
