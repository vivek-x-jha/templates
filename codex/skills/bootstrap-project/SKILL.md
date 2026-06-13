---
name: bootstrap-project
description: Initialize or scaffold a new project using the local templates repository at /Users/mubuntu/.local/share/templates. Use when starting a project, creating a repository, adding baseline project configuration, or setting up Python, Node, Lua, or LaTeX tooling. Inspect and reuse the matching local template before creating configuration files from scratch.
---

# Bootstrap Project

Use `/Users/mubuntu/.local/share/templates` as the source of truth for reusable project configuration.

## Workflow

1. Inspect the target repository before changing files:
   - Read `AGENTS.md` and relevant manifests if present.
   - Check `git status --short --branch` when the target is a Git repository.
   - Identify the stack from the request, manifests, and source files.
2. Inspect the matching template directory:
   - Python: `python/`
   - Node: `node/`
   - Lua: `lua/`
   - LaTeX: `latex/`
3. Compare template files with existing project files before applying them.
4. Copy files that do not exist. Merge relevant settings into existing files instead of replacing them.
5. Keep project-specific values, dependencies, scripts, and ignore rules intact.
6. Show the resulting diff and run `git diff --check` when Git is available.

## Merge Rules

- Do not overwrite an existing file without reviewing both versions.
- Merge `.gitignore` patterns by section and avoid duplicate entries.
- Treat template manifests as partial configuration. For example, merge the template's `tool.commitizen` section into an existing Python `pyproject.toml`; do not replace the project's metadata.
- Apply only files relevant to the detected stack. For mixed-stack projects, inspect each matching template independently.
- Do not copy repository-only files such as the templates repo's root `Session.vim`.
- Preserve unrelated user changes in a dirty worktree.
- Ask before replacing a deliberate project convention that conflicts with a template.

## Completion

Report which template files were added or merged, which existing files were left unchanged, and which checks ran.
