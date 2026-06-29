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
- `eslint.config.mjs` sets up a modern ESLint flat configuration with the recommended JavaScript rules.
- Install its dependencies with `npm install --save-dev eslint @eslint/js globals`.
- `.gitignore` ignores dependency directories, build outputs, logs, and environment files.

### Lua (`lua/`)
- `.editorconfig` standardizes two-space indentation for Lua code.
- `stylua.toml` mirrors the editor defaults with StyLua-specific preferences and sorted `require` statements.

### Rust (`rust/`)
- `.gitignore` ignores Cargo's repository-root `/target/` build output plus common local/editor artifacts.

### LaTeX (`latex/`)
- `.gitignore` filters latexmk and common LaTeX build artifacts while retaining generated PDFs.

### Codex (`codex/`)
- `skills/bootstrap-project/` teaches Codex to inspect and merge the matching local template when starting a project.
- `install.sh` links repo-managed Codex skills plus personal dotfiles skills into `$CODEX_HOME/skills` and adds global guidance to `$CODEX_HOME/AGENTS.md`.
- Activate it with `./codex/install.sh` after cloning or updating this repository.

### Git Hygiene (`git/`)
- `commit.md` is a Conventional Commits reference you can drop into your project docs or CONTRIBUTING guide.

### Documentation (`docs/`)
- `LICENSE` provides an MIT license template—replace the copyright holder.

### Markdown Helpers (`markdown/`)
- `markdown.md` is a Markdown feature sampler you can adapt into READMEs or style guides.

### Tmux (`tmux/`)
- `plugin.tmux` launches tmux plugin manager from an XDG-friendly plugin path and reports when TPM is not installed.

## Repo Extras
- `.gitignore` at the root keeps template-only helpers (sessions, archives, logs) out of version control.
