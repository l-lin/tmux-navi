#!/usr/bin/env bash

tmux bind-key "C-f" \
  popup -w "90%" -h "90%" -E \
  "navi --print | head -c -1 | tmux load-buffer -b tmp - ; tmux paste-buffer -p -b tmp -d"
