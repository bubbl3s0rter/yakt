# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with this project.

## Project

**Name**: YAKT — Yet Another Kickstart Template
**What it does**: <!-- one sentence -->
**Stack**: <!-- e.g. Python 3.11 + uv | Node 20 + TypeScript | Rust -->

## Commands

```bash
make dev        # start dev server / REPL
make test       # run tests
make lint       # lint + format (auto-fix)
make build      # build for production
make check      # lint without auto-fix (CI)
```

## Architecture

<!-- 5–10 bullets describing the key components and how they connect.
     Update this when the structure changes. -->
- `src/` — source code
- `docs/spec.md` — what we are building right now
- `docs/backlog.md` — prioritized queue of upcoming work
- `docs/architecture.md` — system context, components, data flows, sequences
- `docs/decisions.md` — why architectural choices were made
- `docs/progress.md` — current state, what works, what's next

## Rules

- Read a file before editing it.
- Keep files under 300 lines; split when larger.
- After 3 failed attempts on the same problem: stop, update `docs/spec.md`, then ask.
- Do not update dependencies without explicit approval.
- Never switch branches unless explicitly asked.

## Language Conventions

<!-- Uncomment the block that matches your stack -->

<!-- Python:
- Use `uv run` for scripts and tests. Never `python` or `python3` directly.
- Use `uv pip` for packages, `uv sync` to install from lock file.
-->

<!-- Node.js / TypeScript:
- Use the package manager in use: check for pnpm-lock.yaml / package-lock.json / bun.lockb
- Run tests with the project's test script, not by calling jest/vitest directly.
-->

<!-- Rust:
- `cargo build --release` for production, `cargo test` for tests.
- Run `cargo clippy -- -D warnings` before committing.
-->

## Session Start Checklist

Before writing any code, read:
1. `docs/spec.md` — the current task and success criteria
2. `docs/progress.md` — what already exists and works
3. `docs/architecture.md` — how the system is structured
4. `docs/decisions.md` — why things are the way they are
