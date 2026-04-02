# YAKT — Yet Another Kickstart Template

A minimal solo-dev project starter with structured docs, a decision log, and Claude Code integration.

## Quick Start

```bash
# Enter dev environment (requires nix + direnv)
direnv allow    # first time only
# or: nix develop

make help       # see all tasks
```

## Development

```bash
make dev        # start dev server
make test       # run tests
make lint       # fix linting
```

## Structure

- `src/` — source code
- `docs/spec.md` — current task definition
- `docs/backlog.md` — prioritized queue of upcoming work
- `docs/architecture.md` — system context, components, data flows, sequences
- `docs/decisions.md` — architectural decisions
- `docs/progress.md` — project state
- `CLAUDE.md` — instructions for Claude Code
