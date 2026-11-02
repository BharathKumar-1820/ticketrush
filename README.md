# TicketRush

One-line description of what TicketRush does.

## Tech stack
Python 3.12 · uv · PostgreSQL 16 · Docker Compose

## Setup
1. Install: git, uv, just, Docker Desktop
2. `uv sync`
3. `cp .env.example .env` and edit values
4. `uv run pre-commit install`
5. `just db-up`

## Common commands
| Command | What it does |
|---|---|
| `just check` | lint + format check + types + tests |
| `just fmt` | auto-fix formatting |
| `just db-up` / `just db-down` | start / stop Postgres |

## Architecture decisions
See [docs/adr](docs/adr).
