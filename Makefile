.DEFAULT_GOAL := help
.PHONY: help dev test lint check build clean

help: ## Show available targets
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
		| awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-12s\033[0m %s\n", $$1, $$2}'

# ── Customize these targets for your stack ─────────────────────────────────

dev: ## Start dev server / REPL
	@echo "TODO: add your dev command (e.g. uv run python -m myapp)"

test: ## Run tests
	@echo "TODO: add your test command (e.g. uv run pytest / npm test)"

lint: ## Lint and auto-fix
	@echo "TODO: add your lint command (e.g. uv run ruff check --fix && uv run ruff format)"

check: ## Lint without modifying (CI)
	@echo "TODO: add your check command (e.g. uv run ruff check / npm run lint)"

build: ## Build for production
	@echo "TODO: add your build command"

clean: ## Remove build artifacts
	@echo "TODO: add your clean command"

# ── Python template (uncomment) ────────────────────────────────────────────
# dev:
# 	uv run python -m src
#
# test:
# 	uv run pytest tests/ -v
#
# test-one: ## Run a single test: make test-one T=test_name
# 	uv run pytest tests/ -v -k "$(T)"
#
# lint:
# 	uv run ruff check --fix . && uv run ruff format .
#
# check:
# 	uv run ruff check . && uv run ruff format --check .

# ── Node / TypeScript template (uncomment) ─────────────────────────────────
# dev:
# 	npm run dev
#
# test:
# 	npm test
#
# lint:
# 	npm run lint -- --fix
#
# check:
# 	npm run lint
#
# build:
# 	npm run build

# ── Rust template (uncomment) ──────────────────────────────────────────────
# dev:
# 	cargo run
#
# test:
# 	cargo test
#
# lint:
# 	cargo fmt && cargo clippy --fix --allow-dirty
#
# check:
# 	cargo fmt --check && cargo clippy -- -D warnings
#
# build:
# 	cargo build --release
