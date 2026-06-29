#!/bin/sh

set -eu

script_dir=$(CDPATH='' cd -- "$(dirname -- "$0")" && pwd)
codex_home=${CODEX_HOME:-"$HOME/.codex"}
skills_dir="$codex_home/skills"
local_skills_dir="$script_dir/skills"
personal_skills_dir=${CODEX_PERSONAL_SKILLS_HOME:-"$HOME/.dotfiles/ai/codex/skills"}
agents_file="$codex_home/AGENTS.md"
guidance_file="$script_dir/global-AGENTS.md"
marker='# Project Template Guidance'

link_skill_dir() {
  skill_source=$1
  skill_name=$(basename "$skill_source")
  skill_target="$skills_dir/$skill_name"

  if [ -L "$skill_target" ]; then
    current_target=$(readlink "$skill_target")
    if [ "$current_target" = "$skill_source" ]; then
      printf 'Already linked skill: %s\n' "$skill_target"
      return
    fi

    printf 'Refusing to replace skill symlink: %s -> %s\n' "$skill_target" "$current_target" >&2
    exit 1
  fi

  if [ -e "$skill_target" ]; then
    printf 'Preserving existing skill path: %s\n' "$skill_target"
    return
  fi

  ln -s "$skill_source" "$skill_target"
  printf 'Linked skill: %s\n' "$skill_target"
}

link_skills_from() {
  source_dir=$1

  [ -d "$source_dir" ] || return

  for skill_file in "$source_dir"/*/SKILL.md; do
    [ -e "$skill_file" ] || continue
    link_skill_dir "$(dirname "$skill_file")"
  done
}

mkdir -p "$skills_dir"

link_skills_from "$local_skills_dir"
link_skills_from "$personal_skills_dir"

touch "$agents_file"
if ! grep -Fq "$marker" "$agents_file"; then
  if [ -s "$agents_file" ]; then
    printf '\n' >> "$agents_file"
  fi
  cat "$guidance_file" >> "$agents_file"
fi

printf 'Updated guidance: %s\n' "$agents_file"
