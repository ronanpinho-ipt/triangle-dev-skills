# Template — Quarterly Founding-Partner Impact Briefing

**Used in:** Step 4 (Draft) and Step 5 (Output) of the impact-report-builder skill.

**What this is.** The fill-in structure for the quarterly impact briefing delivered
to a corporate partner under a tiered partnership program. It is built to satisfy
a CSRD-era partner's ESG/CSR team: every headline figure is traceable to a source
row (Data Appendix) and every missing figure is named (Data Gaps).

**How to use.** Copy this structure, replace each `<VERIFY: ...>` and
`{{placeholder}}` with verified values from the intake data. **Do not delete a
`<VERIFY>` placeholder by inventing a value** — if the data isn't there, the
placeholder stays and the item is listed in Data Gaps. Match the included sections
to the partner's tier promise using the table below.

---

## Tier-promise map (what each tier was sold — match the briefing to it)

> The tier names and deliverables below are **structural placeholders** reflecting a
> typical $5K–$50K corporate-partnership ladder. **Confirm the actual tier names,
> dollar bands, and promised deliverables against the org's own sponsor page /
> partnership agreement before sending** — replace each `<VERIFY: ...>`. Never
> assert a dollar amount or a promised benefit that hasn't been verified.

| Tier (placeholder) | Ask band | What the briefing MUST include for this tier |
|---|---|---|
| Community Partner | `<VERIFY: ~$5K band>` | Headline impact summary + SDOH snapshot + recognition confirmation. |
| Impact Partner | `<VERIFY: ~$10K band>` | Above + program-level metrics for sponsored area + 1 verified story. |
| Strategic Partner | `<VERIFY: ~$25K band>` | Above + full framework-mapped Data Appendix (GRI/SASB/SDOH) + YoY/prior-period comparison. |
| **Founding Partner** | `<VERIFY: $50K+ band>` | Above + **quarterly impact briefing** (this doc) + **first access to impact-intelligence data** (the full Data Appendix grid) + forward-looking next-quarter focus. |

If the tier or its promised deliverables are unknown, ask before drafting — do not
guess which benefits the partner was sold.

---

## BRIEFING DOCUMENT (fill in)

---

### {{Organization Name}} — Quarterly Impact Briefing
**Prepared for:** {{Partner / Company Name}} — {{Tier}} Partner
**Reporting period:** {{e.g. Q2-2026}}
**Prepared by:** {{Org development/impact lead}}
**Date:** {{date}}
**Tier promise this briefing fulfills:** <VERIFY: state the exact promised deliverables for this tier from the partnership agreement>

---

#### 1. Executive summary
A 4–6 sentence summary of the quarter's verified impact, written **only** on figures
that survived Step 3 (Verify). Lead with the partner's sponsored area if their
support is earmarked.
- This quarter, {{Org}} supported {{<VERIFY: # member orgs / # people served>}}
  across the five Social Determinants of Health.
- Your partnership directly enabled: {{<VERIFY: specific sponsored outcome + source row ID>}}.
- *(Every number in this paragraph must carry a source row ID in the Data Appendix.)*

#### 2. Impact by SDOH bucket
A short subsection per Social Determinant where there is verified data. Omit buckets
with no data this period (and note their absence in Data Gaps rather than padding).

- **Economic Stability** — {{verified metric + value, source row ID}}
- **Education Access & Quality** — {{verified metric + value, source row ID}}
- **Health Care Access & Quality** — {{verified metric + value, source row ID}}
- **Neighborhood & Built Environment** — {{verified metric + value, source row ID}}
- **Social & Community Context** — {{verified metric + value, source row ID}}

#### 3. Your sponsored impact (tier-specific)
What the partner's specific dollars enabled this quarter, tied to the tier promise.
- Sponsored program/area: {{name}}
- Outcomes attributable to this partnership: {{<VERIFY: outcome + source row ID>}}
- *(If attribution to this partner's funds cannot be isolated from the source data,
  say so here and flag it in Data Gaps — do not imply attribution you can't trace.)*

#### 4. Verified story (qualitative, evidence-linked)
One short narrative that illustrates a metric above. The story must correspond to a
real, consented, source-backed case — `<VERIFY: confirm story is real, consented,
and tied to a source row; otherwise omit>`. Never fabricate a beneficiary anecdote.

#### 5. Period-over-period comparison *(Strategic / Founding tiers)*
| Metric | Prior period {{e.g. Q1-2026}} | This period {{Q2-2026}} | Change | Source row IDs |
|---|---|---|---|---|
| {{metric}} | <VERIFY: prior value> | {{value}} | {{Δ}} | {{IDs}} |

Only include comparisons where **both** periods have verified source data. A
one-sided comparison is a gap, not a trend.

#### 6. Framework alignment (for the partner's ESG/CSR team)
State which standards the figures map to, so the partner can fold them into their
own disclosure: "Metrics in this briefing are mapped to **GRI** topic families,
**SASB** topics where industry-material, **TCFD** (climate metrics only), and the
five **SDOH** domains. Full mapping in the Data Appendix." Note GRI–ESRS
interoperability for CSRD-reporting partners.

#### 7. Next-quarter focus
2–4 forward-looking bullets. Plans/intentions, clearly framed as such (not as
results). No projected numbers unless tagged `[ESTIMATE]` with derivation.

---

## DATA APPENDIX (the audit-ready grid — always included)

The verification ledger from Step 3, rendered as a table. This is what lets a
partner's ESG officer trace any headline number back to its source row. Every
figure used anywhere above must appear here with a Source row ID and Status.

| # | Metric | Raw value | Normalized value | GRI | SASB | TCFD | SDOH bucket | Source row ID | Status |
|---|---|---|---|---|---|---|---|---|---|
| 1 | {{metric}} | {{raw}} | {{normalized}} | {{GRI fam}} | {{SASB/—}} | {{pillar/—}} | {{bucket}} | {{row ID}} | verified |
| 2 | {{metric}} | {{raw}} | {{normalized}} | {{GRI fam}} | {{—}} | {{—}} | {{bucket}} | {{row ID}} | verified |
| 3 | {{metric}} | {{raw}} | {{derived}} | {{GRI fam}} | {{—}} | {{—}} | {{bucket}} | {{row ID}} | [ESTIMATE] |

**Status legend:** `verified` = traces to a source row · `[ESTIMATE]` = derived,
derivation shown, also in Data Gaps · `gap` = not available, see Data Gaps.

---

## DATA GAPS (always included — never omitted)

Every missing, estimated, or unverified item. This section is the credibility
feature: surfacing gaps is what makes the rest trustworthy. Itemize each as:

- **What's missing:** {{the metric/figure}}
- **Where it should come from:** {{which member org / source / system}}
- **Why it's a gap:** {{not reported this period / no denominator / possible
  double-count / attribution unclear / awaiting verification}}
- **Action to close it:** `<VERIFY: who provides it + by when>`

Examples of the *kinds* of gaps to list (replace with the run's actual gaps):
- `<VERIFY: # unique beneficiaries de-duplicated across orgs X and Y — confirm no double-count>`
- `<VERIFY: prior-period baseline for {{metric}} to enable the Section 5 comparison>`
- `<VERIFY: confirm the exact promised deliverables for this partner's tier from the signed agreement>`
- `<VERIFY: consent + source for the Section 4 story before it ships>`

> If there are genuinely no gaps this period, state: "No data gaps identified for
> this period; all figures trace to source rows in the Data Appendix." — but only
> after the Step 3 self-audit actually confirms it.
