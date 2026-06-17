# SessionStart Hook — load the org impact brief into every session

This hook implements the "context loaded in every future session" pattern: at
the start of every Claude Code session, it reads `shared-kb/impact-brief.md` and
injects it as additional context. All three Triangle Dev skills then begin with
the org's mission, programs, outcomes, funder landscape, and tier promises
already in context — no re-asking, no re-pasting.

## What it does

1. Fires on `SessionStart` (every new session, plus resume/clear/compact).
2. Locates `shared-kb/impact-brief.md` relative to the plugin root.
3. If the brief exists, prints it to stdout — Claude Code adds stdout to the
   session as context automatically.
4. If the brief does **not** exist yet, prints a short instruction telling the
   user to copy `impact-brief.template.md` to `impact-brief.md` and fill it in.

Keep it fast: it is a single file read, no network calls.

## Wiring

Two equivalent ways to register the hook.

### A. As a plugin hook (shipped with this plugin — recommended)

`plugin.json` already points at the bundled hooks file:

```json
{
  "name": "triangle-dev",
  "hooks": "./hooks/hooks.json"
}
```

and `hooks/hooks.json` (bundled alongside this spec) contains:

```json
{
  "hooks": {
    "SessionStart": [
      {
        "matcher": "startup|resume|clear|compact",
        "hooks": [
          {
            "type": "command",
            "command": "\"${CLAUDE_PLUGIN_ROOT}\"/hooks/load-impact-brief.sh"
          }
        ]
      }
    ]
  }
}
```

`${CLAUDE_PLUGIN_ROOT}` resolves to the installed plugin directory, so the hook
works regardless of where the plugin is cached.

### B. As a user/project hook in `settings.json`

If you are running the skills directly from a clone (not installed via the
marketplace), add this to `.claude/settings.json` in the project that holds your
`shared-kb/`:

```json
{
  "hooks": {
    "SessionStart": [
      {
        "matcher": "startup|resume|clear|compact",
        "hooks": [
          {
            "type": "command",
            "command": "\"${CLAUDE_PROJECT_DIR}\"/shared-kb/../hooks/load-impact-brief.sh"
          }
        ]
      }
    ]
  }
}
```

(Point the path at wherever your copy of `load-impact-brief.sh` lives.)

## Example hook command

`hooks/load-impact-brief.sh`:

```bash
#!/usr/bin/env bash
# SessionStart hook: inject the org impact brief into the session context.
set -euo pipefail

# Resolve shared-kb relative to the plugin root when installed, else the cwd.
KB_DIR="${CLAUDE_PLUGIN_ROOT:-$PWD}/../../shared-kb"
[ -d "$KB_DIR" ] || KB_DIR="$PWD/shared-kb"
BRIEF="$KB_DIR/impact-brief.md"

if [ -f "$BRIEF" ]; then
  echo "## Loaded org impact brief (shared-kb/impact-brief.md)"
  echo
  echo "The following is the canonical org brief for this nonprofit. Treat every"
  echo "<VERIFY: ...> marker as an unverified data gap, never as a fact."
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
```

### Alternative: structured JSON output

Plain stdout is added to context directly. If you want to also set the session
title or re-scan skills, emit JSON instead of plain text:

```json
{
  "hookSpecificOutput": {
    "hookEventName": "SessionStart",
    "additionalContext": "<contents of impact-brief.md>",
    "sessionTitle": "Triangle Dev — <org name>"
  }
}
```

## Notes

- The hook reads the brief; it never writes to the KB. Writes are done by the
  skills (see `shared-kb/README.md`).
- Because `SessionStart` runs on every session, keep the brief focused — it is a
  brief, not the whole archive. Detailed records live in the numbered KB folders
  and are read on demand by the skills.
- After editing `hooks/hooks.json` or the script while a session is open, run
  `/reload-plugins` (or restart) to pick up the change.
