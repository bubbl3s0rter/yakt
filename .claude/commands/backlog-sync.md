---
description: Sync #gh-tagged backlog items to GitHub issues
---

When this command is invoked, do the following steps in order:

1. **Read `docs/backlog.md`**

2. **Find syncable items**: unchecked lines that meet ALL of these:
   - Tagged with `#gh`
   - Priority is P1, P2, or P3 (never P0)
   - Do NOT already have an issue link like `(#123)`
   - Pattern to match: `- [ ] P[1-3]: <description> #gh`

3. **Check GitHub auth**: run `gh auth status`. If not authenticated, stop and tell the user to run `gh auth login`.

4. **Ensure the `backlog` label exists**:
   ```bash
   gh label create backlog --color 0075ca --description "Tracked from backlog.md"
   ```
   If it already exists, ignore the error and continue.

5. **For each syncable item**, run:
   ```bash
   gh issue create --title "<description>" --label "backlog" --body "Created from backlog.md"
   ```
   - Strip `#gh` from the title
   - Strip the priority prefix (e.g. `P1: `) from the title
   - Capture the issue number from the output URL

6. **Update `docs/backlog.md`**: rewrite each synced line to append the issue link before `#gh`:
   - Before: `- [ ] P1: add login flow #gh`
   - After:  `- [ ] P1: add login flow (#123) #gh`

7. **Print a summary**:
   - How many issues were created
   - List each: issue number, title, URL
   - If no syncable items were found, say so clearly

### Exclusion rules
- `P0` items are always skipped, even if tagged `#gh`
- Checked items `- [x]` are skipped
- Items already containing `(#<number>)` are skipped (already synced)
