# Customize recipes for your stack — see commented sections below

# List available recipes
default:
    @just --list

# Start dev server / REPL
dev:
    echo "TODO: add your dev command (e.g. uv run python -m myapp)"

# Run tests
test:
    echo "TODO: add your test command (e.g. uv run pytest / npm test)"

# Lint and auto-fix
lint:
    echo "TODO: add your lint command"

# Lint without modifying (CI)
check:
    echo "TODO: add your check command"

# Build for production
build:
    echo "TODO: add your build command"

# Remove build artifacts
clean:
    echo "TODO: add your clean command"


# ── Python (uncomment) ────────────────────────────────────────────────────────

# dev:
#     uv run python -m src
#
# test:
#     uv run pytest tests/ -v
#
# # Run a single test: just test-one test_name
# test-one name:
#     uv run pytest tests/ -v -k "{{name}}"
#
# lint:
#     uv run ruff check --fix . && uv run ruff format .
#
# check:
#     uv run ruff check . && uv run ruff format --check .


# ── Node / TypeScript (uncomment) ─────────────────────────────────────────────

# dev:
#     npm run dev
#
# test:
#     npm test
#
# lint:
#     npm run lint -- --fix
#
# check:
#     npm run lint
#
# build:
#     npm run build


# ── Rust (uncomment) ──────────────────────────────────────────────────────────

# dev:
#     cargo run
#
# test:
#     cargo test
#
# lint:
#     cargo fmt && cargo clippy --fix --allow-dirty
#
# check:
#     cargo fmt --check && cargo clippy -- -D warnings
#
# build:
#     cargo build --release
