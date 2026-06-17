# Shared Knowledge Base (`shared-kb/`)

This is the **spine** of the Triangle Dev plugin. All three skills
(`impact-report-builder`, `triangle-funder-intel`, `bilingual-appeal-engine`)
read from and write to this folder, so a fact captured once — a verified funder,
a normalized impact metric, a tier promise — is reused everywhere instead of
re-entered. The pattern is adapted from msg2ai's `nonprofit-team-skills`
shared-KB layout, trimmed to what these three wedge skills actually touch.

> **Zero-fabrication rule.** Every figure, funder, deadline, and donor name in
> this KB must be sourced. Where a real value is not yet verified, the skills
> write a `<VERIFY: ...>` placeholder rather than inventing one. Never overwrite
> a `<VERIFY>` placeholder with a guessed value.

## Canonical folder schema

Create these folders inside `shared-kb/` for each organization you serve. The
numbering is fixed so paths are deterministic across skills and sessions.

```
shared-kb/
├── README.md                      # this file
├── impact-brief.md                # the org's master brief (copy from impact-brief.template.md, then FILL IN)
├── impact-brief.template.md       # canonical template the SessionStart hook expects
├── 03-prior-years/                # last-year reports, prior appeals, historical financials
├── 04-donors-funders/             # donor + funder records, segments, stewardship history
├── 05-grants/                     # grant pipeline, proposals, awards, reporting deadlines
├── 06-impact-data/                # normalized outcome metrics + raw member-metric intakes
└── 10-meeting-notes/              # board minutes, funder calls, partner check-ins
```

`impact-brief.md` is the single most important file: the `SessionStart` hook
(see `../hooks/session-start.md`) loads it into every session so all three
skills start with the org's mission, programs, outcomes, funder landscape, and
tier promises already in context. Copy `impact-brief.template.md` to
`impact-brief.md` and replace every `<FILL IN>` placeholder before first use.

### `03-prior-years/`
Historical material the skills cite for continuity and trend lines.
- **Reads:** `impact-report-builder` (prior-period comparisons, "vs. last year"
  deltas); `bilingual-appeal-engine` (matching voice/asks to past appeals).
- **Writes:** nothing automatically — you archive finished reports/appeals here
  when a cycle closes.
- **Suggested files:** `annual-report-FY<YEAR>.md`, `appeal-<campaign>-<year>.md`,
  `financials-FY<YEAR>.md`.

### `04-donors-funders/`
The relationship layer: who gives, at what level, and what they care about.
- **Reads:** `triangle-funder-intel` (dedupe against existing relationships,
  warm-path hints); `bilingual-appeal-engine` (segment + giving level for tone
  and ask sizing); `impact-report-builder` (which funders are owed a report).
- **Writes:** `triangle-funder-intel` appends **verified** funder records here
  with a source URL; never writes unverified prospects as facts.
- **Suggested files:** `funders/<funder-slug>.md`, `segments.md`,
  `stewardship-log.md`.

### `05-grants/`
The grant lifecycle: pipeline, proposals, awards, and reporting obligations.
- **Reads:** `triangle-funder-intel` (open deadlines, fit against current
  pipeline); `impact-report-builder` (which tier/grant promise a report fulfills
  and its due date).
- **Writes:** `triangle-funder-intel` adds matched opportunities with deadlines
  (each marked verified or `<VERIFY>`); `impact-report-builder` files generated
  funder/grant reports.
- **Suggested files:** `pipeline.md`, `proposals/<funder>-<year>/`,
  `reports/<funder>-<period>.md`, `deadlines.md`.

### `06-impact-data/`
The measurement layer — the moat for `impact-report-builder`.
- **Reads:** `impact-report-builder` (every figure in an audit-ready report must
  trace to a source row here); `bilingual-appeal-engine` (pulls a verified
  headline outcome for the appeal, never an invented one).
- **Writes:** `impact-report-builder` saves the normalized metric table
  (raw metric → GRI/SASB/TCFD/SDOH category → source row) and the explicit
  **Data Gaps** list it produces.
- **Suggested files:** `intake/member-metric-intake-<period>.csv`,
  `normalized/metrics-<period>.md`, `data-gaps-<period>.md`.

### `10-meeting-notes/`
The running record of conversations that produce commitments and context.
- **Reads:** all three skills, for the latest qualitative context (what a funder
  asked for, what the board approved, what a partner promised).
- **Writes:** you (or a notes skill) drop minutes here; the three skills cite
  but do not auto-write here.
- **Suggested files:** `board/board-minutes-<date>.md`,
  `funder-calls/<funder>-<date>.md`, `partner/<partner>-<date>.md`.

## How a fact flows across the three skills

```
triangle-funder-intel
  → verifies a Triangle funder + deadline
  → writes 04-donors-funders/funders/<slug>.md and 05-grants/deadlines.md
                                   │
impact-report-builder              ▼
  → normalizes member metrics into 06-impact-data/
  → builds the audit-ready report fulfilling that funder's tier promise
  → every number traces to a 06-impact-data source row
                                   │
bilingual-appeal-engine            ▼
  → pulls one VERIFIED headline outcome from 06-impact-data
  → matches segment/giving level from 04-donors-funders
  → produces the paired EN/ES appeal
```

The `impact-brief.md` master file sits above all three and is auto-loaded every
session, so none of them have to re-ask for mission, programs, or tier promises.
