# Common Project Templates

Drop-in starter packs for common tooling and language setups live in the sibling folders of this README. Copy the directory that matches your stack into a new project and tweak as needed.

## Getting Started
- Pick the template folder that matches the project you are bootstrapping.
- Copy its contents into your new repository root (`cp -R python/ my-new-service/`).
- Update names, licenses, and settings to match your team before you commit.

## Template Catalog

### Python (`python/`)
- `.editorconfig` enforces four-space indentation while relaxing Markdown whitespace rules.
- `.gitignore` filters Python build artifacts, caches, virtual environments, and common editor clutter.
- `.ruff.toml` favors single quotes and a 150-character line length out of the box.

### Node (`node/`)
- `.eslintrc.json` sets up an ES2022-ready ESLint configuration with the recommended rules.
- `.gitignore` ignores dependency directories, build outputs, logs, and environment files.

### Lua (`lua/`)
- `.editorconfig` standardizes two-space indentation for Lua code.
- `stylua.toml` mirrors the editor defaults with StyLua-specific preferences and sorted `require` statements.

### Git Hygiene (`git/`)
- `commit.md` is a Conventional Commits reference you can drop into your project docs or CONTRIBUTING guide.

### Documentation (`docs/`)
- `LICENSE` provides an MIT license template—replace the copyright holder.

### Markdown Helpers (`markdown/`)
- `markdown.md` is a Markdown feature sampler you can adapt into READMEs or style guides.

### Tmux (`tmux/`)
- `plugin.tmux` bootstraps tmux plugin manager bindings and auto-detects an XDG-friendly plugin path.

## Repo Extras
- `.gitignore` at the root keeps template-only helpers (sessions, archives, logs) out of version control.
- `Session.vim` restores an editor session for quickly browsing every template file (handy when crafting new stacks).
