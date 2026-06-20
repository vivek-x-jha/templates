#!/usr/bin/env bash

set -u

xdg_tmux_dir="${XDG_CONFIG_HOME:-$HOME/.config}/tmux"
default_tpm_path="$HOME/.tmux/plugins"

if [[ -f "$xdg_tmux_dir/tmux.conf" ]]; then
	default_tpm_path="$xdg_tmux_dir/plugins"
fi

tpm_path="${TMUX_PLUGIN_MANAGER_PATH:-$default_tpm_path}"
tpm_entrypoint="$tpm_path/tpm/tpm"

tmux set-environment -g TMUX_PLUGIN_MANAGER_PATH "$tpm_path"

if [[ -x "$tpm_entrypoint" ]]; then
	"$tpm_entrypoint"
else
	tmux display-message "TPM not found at $tpm_entrypoint"
fi
