#!/usr/bin/env bash
# SessionStart hook: inject the org impact brief into the session context.
# See hooks/session-start.md for wiring and rationale.
set -euo pipefail

# Resolve shared-kb relative to the plugin root when installed, else the cwd.
KB_DIR="${CLAUDE_PLUGIN_ROOT:-$PWD}/../../shared-kb"
[ -d "$KB_DIR" ] || KB_DIR="$PWD/shared-kb"
BRIEF="$KB_DIR/impact-brief.md"

if [ -f "$BRIEF" ]; then
  echo "## Loaded org impact brief (shared-kb/impact-brief.md)"
  echo
  echo "The following is the canonical org brief for this nonprofit. Treat every"
  echo "<VERIFY: ...> marker as an unverified data gap, never as a fact, and any"
  echo "remaining <FILL IN: ...> slot as a section still to be completed."
  echo
  cat "$BRIEF"
else
  echo "## No org impact brief found"
  echo
  echo "shared-kb/impact-brief.md does not exist yet. Copy"
  echo "shared-kb/impact-brief.template.md to shared-kb/impact-brief.md and fill"
  echo "in every <FILL IN: ...> placeholder before using the Triangle Dev skills."
fi
exit 0
