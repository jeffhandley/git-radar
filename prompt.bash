#! /usr/bin/env bash

dot="$(cd "$(dirname "$0")"; pwd)"
args=$@
source "$dot/radar-base.sh"

if is_repo; then
  prepare_bash_colors
  printf " \x01\033[0m\x02"
  if show_remote_status $args; then
    bash_color_remote_commits
  fi
  bash_readable_branch_name
  bash_color_local_commits
  bash_color_changes_status
  printf " "
fi
