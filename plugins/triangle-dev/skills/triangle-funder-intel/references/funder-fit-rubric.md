# Funder Fit Rubric — Triangle Funder Intelligence

A transparent, weighted scoring model for qualifying a funder against a specific
organization and ask. Used by the `triangle-funder-intel` skill in its **Match**
and **Research** steps so seed-list funders and freshly-researched funders rank
on the same scale.

**ZERO FABRICATION applies.** Every input to a score must trace to a real source
(the verified seed list, a funder's own site, a 990, or a foundation directory).
Where a value is unknown, score it as unknown (see each dimension) — never invent
a value to fill a cell.

---

## The six dimensions and weights

| # | Dimension | Weight | What it measures |
|---|-----------|--------|------------------|
| 1 | Mission fit | 30% | How closely the funder's stated giving priorities match the org's cause/program |
| 2 | Geography / Triangle proximity | 20% | Whether the funder documents giving in Durham / Raleigh / Chapel Hill / RTP / NC |
| 3 | Ask-size band | 15% | Whether the org's ask falls inside the funder's documented grant range |
| 4 | Giving history | 15% | Recency and relevance of the funder's actual prior grants (esp. to peer orgs) |
| 5 | Warm path | 20% | Strength of a real, documented relationship route to the funder |
| — | Disqualifiers | gate / penalty | Hard rule-outs and soft penalties applied AFTER the weighted sum |

Weights sum to 100%. Each dimension is scored **0–5**, multiplied by its weight,
and summed to a weighted score on a **0–5** scale (then optionally expressed as a
0–100 fit score by multiplying by 20).

---

## Scoring scales

### 1. Mission fit (weight 30%)

| Score | Criterion |
|-------|-----------|
| 5 | Funder explicitly names this cause/population as a priority (quote the line + source) |
| 4 | Cause sits squarely inside a broader stated priority area |
| 3 | Adjacent / plausibly eligible; not named but not excluded |
| 2 | Tangential; would require reframing the program |
| 1 | Funder gives in this sector only rarely / opportunistically |
| 0 | Cause is outside the funder's stated scope, or unknown with no evidence |

### 2. Geography / Triangle proximity (weight 20%)

| Score | Criterion |
|-------|-----------|
| 5 | Funder is Triangle-based AND documents grants in the org's specific county/city |
| 4 | Funder documents Triangle/NC giving (not the exact city) |
| 3 | Statewide NC funder with no Triangle-specific evidence yet |
| 2 | National funder with at least one documented NC grant |
| 1 | National funder, no documented NC footprint |
| 0 | Funder's geography explicitly excludes the org's area |

### 3. Ask-size band (weight 15%)

| Score | Criterion |
|-------|-----------|
| 5 | Org's ask sits in the middle of the funder's documented grant range |
| 4 | Ask is within range but near an edge |
| 3 | Ask is modestly above/below the typical range (would need adjustment) |
| 2 | Ask is far outside the range in either direction |
| 1 | Range is published but clearly incompatible with the ask |
| 0 | No grant-range evidence (score 0 and add a `<VERIFY: ask range>` note) |

### 4. Giving history (weight 15%)

| Score | Criterion |
|-------|-----------|
| 5 | Documented recent (≤2 yr) grant to a peer org in the same cause + geography |
| 4 | Documented recent grant in the same cause OR same geography |
| 3 | Older (>2 yr) relevant grants on record |
| 2 | Active grantmaker, but no relevant prior grants found |
| 1 | Sparse or declining grant activity in 990s |
| 0 | No grant history found (score 0; add `<VERIFY: giving history>`) |

### 5. Warm path (weight 20%)

| Score | Criterion |
|-------|-----------|
| 5 | Current board member / staff has a direct, confirmable relationship to the funder |
| 4 | A current funder or close partner can make a documented introduction |
| 3 | Indirect but real connection (shared board service, named program officer who funds peers) |
| 2 | No personal connection; clear public application process |
| 1 | No connection AND no open application process (invitation-only) |
| 0 | No connection found; unknown access path (`<VERIFY: warm path>`) |

> Warm-path scores above 2 MUST cite the real connection (person, org, or record).
> Never invent a contact, program officer, or relationship to lift this score.

### 6. Disqualifiers (applied after the weighted sum)

**Hard gates → bucket the funder as "Ruled out" regardless of score:**

- Funder's geography explicitly excludes the org's area.
- Funder does not fund the org's tax status (e.g., requires a fiscal sponsor the
  org lacks; funds only 501(c)(3) and the org is not one).
- Funder is not currently making grants (sunset / spent-down / dissolved per 990).
- Known conflict of interest or an explicit "do not approach" from the org.
- Funder declined this org within its stated re-application waiting period.

**Soft penalties → subtract from the weighted score (note the reason):**

- −1.0 invitation-only with no warm path (access risk).
- −0.5 deadline already passed for the current cycle (timing risk; still worth
  cultivating for next cycle).
- −0.5 application burden disproportionate to the ask (e.g., heavy LOI + full
  proposal for a small grant).

---

## Bucketing

After weighting, gates, and penalties:

| Weighted score (0–5) | Bucket |
|----------------------|--------|
| 4.0 – 5.0 | **Strong fit** — prioritize; move to qualification/cultivation |
| 3.0 – 3.9 | **Possible fit** — pursue after the strong-fit set |
| 2.0 – 2.9 | **Weak fit** — park unless capacity allows |
| < 2.0, or any hard gate | **Ruled out** — list with the reason |

---

## Worked scoring example (illustrative — placeholder funders only)

The funders below are **placeholders**, not real organizations. They exist only
to demonstrate the math. Never substitute a real name into this example without a
verified source.

**Scenario:** Org seeking **$25,000** for a **youth workforce-development** program
serving **Durham**, with one **current board member who knows a program officer**
at the first prospect.

### `<VERIFY: Funder A — a Durham-area community foundation>`

| Dimension | Raw (0–5) | Weight | Weighted | Basis (would cite a source if real) |
|-----------|-----------|--------|----------|-------------------------------------|
| Mission fit | 5 | 0.30 | 1.50 | `<VERIFY: priorities — youth/workforce named>` |
| Geography | 5 | 0.20 | 1.00 | `<VERIFY: documents Durham grants>` |
| Ask-size band | 4 | 0.15 | 0.60 | `<VERIFY: ask range incl. $25K>` |
| Giving history | 4 | 0.15 | 0.60 | `<VERIFY: recent peer-org grant>` |
| Warm path | 5 | 0.20 | 1.00 | `<VERIFY: board member ↔ program officer>` |
| **Subtotal** | | | **4.70** | |
| Disqualifiers | none | | 0.00 | |
| **Final** | | | **4.70 → Strong fit (94/100)** | |

### `<VERIFY: Funder B — a national family foundation>`

| Dimension | Raw (0–5) | Weight | Weighted | Basis (would cite a source if real) |
|-----------|-----------|--------|----------|-------------------------------------|
| Mission fit | 4 | 0.30 | 1.20 | `<VERIFY: workforce inside broader priority>` |
| Geography | 1 | 0.20 | 0.20 | `<VERIFY: no documented NC footprint>` |
| Ask-size band | 3 | 0.15 | 0.45 | `<VERIFY: ask below typical range>` |
| Giving history | 2 | 0.15 | 0.30 | `<VERIFY: no relevant prior grants>` |
| Warm path | 1 | 0.20 | 0.20 | `<VERIFY: invitation-only, no connection>` |
| **Subtotal** | | | **2.35** | |
| Soft penalty | −1.0 | | −1.00 | invitation-only, no warm path |
| **Final** | | | **1.35 → Ruled out (access gate + weak geography)** | |

**Reading the example:** Funder A ranks first because mission, geography, and a
real warm path all stack up. Funder B is ruled out — strong-ish mission fit can't
rescue a national funder with no NC footprint, no relevant history, and no way in.
Geography and warm path are the dimensions that most often decide Triangle
shortlists, which is why they carry 20% each.
