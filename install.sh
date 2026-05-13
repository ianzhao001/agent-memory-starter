#!/usr/bin/env bash
set -euo pipefail

repo_zip_url="${AGENT_MEMORY_STARTER_URL:-https://github.com/ianzhao001/agent-memory-starter/archive/refs/heads/main.zip}"
target_dir="${1:-$(pwd)}"
force="${AGENT_MEMORY_STARTER_FORCE:-0}"

need() {
  if ! command -v "$1" >/dev/null 2>&1; then
    echo "Missing required command: $1" >&2
    exit 1
  fi
}

need curl
need unzip

mkdir -p "$target_dir"

for item in AGENTS.md .memory .gitignore; do
  if [ -e "$target_dir/$item" ] && [ "$force" != "1" ]; then
    echo "$item already exists in $target_dir." >&2
    echo "Review and merge manually, or rerun with AGENT_MEMORY_STARTER_FORCE=1 to overwrite." >&2
    exit 1
  fi
  if [ -e "$target_dir/$item" ] && [ "$force" = "1" ]; then
    rm -rf "$target_dir/$item"
  fi
done

tmp_dir="$(mktemp -d)"
cleanup() {
  rm -rf "$tmp_dir"
}
trap cleanup EXIT

curl -fsSL "$repo_zip_url" -o "$tmp_dir/agent-memory-starter.zip"
unzip -q "$tmp_dir/agent-memory-starter.zip" -d "$tmp_dir"

src_dir="$(find "$tmp_dir" -maxdepth 1 -type d -name 'agent-memory-starter*' | head -n 1)"
if [ -z "$src_dir" ]; then
  echo "Could not find extracted Agent Memory Starter directory." >&2
  exit 1
fi

cp -R "$src_dir/AGENTS.md" "$src_dir/.memory" "$src_dir/.gitignore" "$target_dir/"

echo "Agent Memory Starter installed in $target_dir"
echo "Start a new agent session and ask it to initialize .memory for this workspace."
