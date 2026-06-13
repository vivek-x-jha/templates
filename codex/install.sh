#!/bin/sh

set -eu

script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
codex_home=${CODEX_HOME:-"$HOME/.codex"}
skills_dir="$codex_home/skills"
skill_source="$script_dir/skills/bootstrap-project"
skill_target="$skills_dir/bootstrap-project"
agents_file="$codex_home/AGENTS.md"
guidance_file="$script_dir/global-AGENTS.md"
marker='# Project Template Guidance'

mkdir -p "$skills_dir"

if [ -L "$skill_target" ]; then
  current_target=$(readlink "$skill_target")
  if [ "$current_target" != "$skill_source" ]; then
    printf 'Refusing to replace skill symlink: %s -> %s\n' "$skill_target" "$current_target" >&2
    exit 1
  fi
elif [ -e "$skill_target" ]; then
  printf 'Refusing to replace existing skill path: %s\n' "$skill_target" >&2
  exit 1
else
  ln -s "$skill_source" "$skill_target"
fi

touch "$agents_file"
if ! grep -Fq "$marker" "$agents_file"; then
  if [ -s "$agents_file" ]; then
    printf '\n' >> "$agents_file"
  fi
  cat "$guidance_file" >> "$agents_file"
fi

printf 'Installed skill: %s\n' "$skill_target"
printf 'Updated guidance: %s\n' "$agents_file"
