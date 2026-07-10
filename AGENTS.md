# AGENTS.md

## Scope

Common local project templates for language/tooling starter packs. Treat this repo as a source-of-truth library to copy from, not as generated runtime state.

## Entry Points

- Catalog: `README.md`
- Python template: `python/`
- Node template: `node/`
- Lua template: `lua/`
- Rust template: `rust/`
- LaTeX template: `latex/`
- Codex skills/bootstrap template: `codex/`
- Git hygiene reference: `git/commit.md`
- Markdown helper: `markdown/markdown.md`
- tmux plugin starter: `tmux/plugin.tmux`

## Commands

No global build/test suite yet. For edits, run targeted syntax checks for the template type and always run:

```sh
git diff --check
```

## Rules

- Keep templates generic; remove personal project-specific paths, secrets, and machine-local assumptions before adding them here.
- Do not edit consumer projects through this repo; copy/update templates intentionally.
- Keep README's catalog aligned when template folders or setup instructions change.
- Preserve hidden template files such as `.gitignore`, `.editorconfig`, and tool config files.

## Memory

- Use `docs/known-issues.md` for recurring template/bootstrap issues.
- Use `docs/agent-memory.md` for durable facts about how these templates are used locally.
