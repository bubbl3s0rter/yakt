# YAKT — Yet Another Kickstart Template

A minimal solo-dev project starter with structured docs, a decision log, and Claude Code integration.

## Quick Start

```bash
# Install just (one-time)
brew install just       # macOS
# or: cargo install just / https://github.com/casey/just#installation

# Enter dev environment (requires nix + direnv)
direnv allow    # first time only
# or: nix develop

just            # list available recipes
```

## Development

```bash
just dev        # start dev server
just test       # run tests
just lint       # fix linting
```

## Structure

- `src/` — source code
- `docs/spec.md` — current task definition
- `docs/backlog.md` — prioritized queue of upcoming work
- `docs/architecture.md` — system context, components, data flows, sequences
- `docs/decisions.md` — architectural decisions
- `docs/progress.md` — project state
- `CLAUDE.md` — instructions for Claude Code
