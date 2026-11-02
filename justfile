set windows-shell := ["powershell.exe", "-NoLogo", "-Command"]

# list all commands
default:
    just --list

# run every quality check (same as CI)
check:
    uv run ruff check .
    uv run ruff format --check .
    uv run mypy src
    uv run pytest

# auto-fix formatting and lint
fmt:
    uv run ruff format .
    uv run ruff check . --fix

# start / stop local Postgres
db-up:
    docker compose up -d

db-down:
    docker compose down
