#!/usr/bin/env bash

key_binding_option='@tmux-navi-key-binding'
key_binding_option_default='C-f'
width_option='@tmux-navi-width'
width_option_default='90%'
height_option='@tmux-navi-height'
height_option_default='90%'

get_tmux_option() {
	local option="${1}"
	local default_value="${2}"

	option_value=$(tmux show-option -gqv "$option")

	if [ -z "${option_value}" ]; then
		echo "${default_value}"
	else
		echo "${option_value}"
	fi
}

key_binding=$(get_tmux_option "${key_binding_option}" "${key_binding_option_default}")
width=$(get_tmux_option "${width_option}" "${width_option_default}")
height=$(get_tmux_option "${height_option}" "${height_option_default}")

tmux bind-key "${key_binding}" \
  popup -w "${width}" -h "${height}" -E \
  "navi --print | head -c -1 | tmux load-buffer -b tmp - ; tmux paste-buffer -p -b tmp -d"
