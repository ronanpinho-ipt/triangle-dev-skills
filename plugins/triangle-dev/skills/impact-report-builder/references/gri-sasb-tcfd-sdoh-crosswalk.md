# Crosswalk — Nonprofit Program Metrics → GRI / SASB / TCFD + the 5 SDOH Buckets

**Purpose.** A working reference for Step 2 (Normalize) of the impact-report-builder
skill. It maps common nonprofit/social-impact program metrics to the disclosure
families a corporate partner's ESG/CSR team recognizes, plus the five Social
Determinants of Health (SDOH) buckets used as the impact taxonomy.

**This is generic framework knowledge** (how the standards are structured), not
data about any specific organization. Use it to *categorize* verified metrics —
never to invent metric values. A mapping adds framework tags to a number; it must
never detach the number from its source row.

---

## The four frameworks at a glance

| Framework | What it is | Who asks for it | Granularity you'll map to |
|---|---|---|---|
| **GRI** (Global Reporting Initiative) | The most widely used global sustainability-reporting standard. Topic-specific "GRI 200 Economic / 300 Environmental / 400 Social" series. | Most corporate ESG reports; the default "we report to GRI" ask. | A GRI series + topic family (e.g. GRI 413 Local Communities, GRI 404 Training & Education). |
| **SASB** (now under the ISSB / IFRS) | *Financially material* sustainability topics, organized by industry (SICS). Investor-facing. | A corporate partner whose investors use SASB; CSR teams citing materiality. | The relevant SASB topic for the partner's industry (Human Capital, Community Relations, etc.). |
| **TCFD** (Task Force on Climate-related Financial Disclosures) | Climate-risk disclosure across four pillars: Governance, Strategy, Risk Management, Metrics & Targets. (Recommendations now carried forward in IFRS S2.) | Partners reporting climate exposure. | A TCFD pillar — **only** for climate/environment-relevant metrics. Most social-program metrics do NOT map to TCFD; leave blank. |
| **SDOH** (Social Determinants of Health) | Five conditions-of-life domains (Healthy People 2030 framing) used as the program-impact taxonomy. | The hub's own impact taxonomy; health-aligned funders. | One of the five buckets below. |

> **CSRD note.** The EU Corporate Sustainability Reporting Directive (CSRD) drives
> reporting under the **ESRS** standards. A nonprofit does not file CSRD itself,
> but corporate partners increasingly do — which is why they now demand
> *verifiable, source-traceable* outcomes data from the nonprofits they fund.
> GRI is broadly interoperable with ESRS, so GRI-mapped, source-traced metrics are
> the most reusable currency for a CSRD-era partner. That interoperability is the
> selling point of an audit-ready data layer.

---

## The 5 SDOH buckets (the primary impact taxonomy)

Per the U.S. Healthy People 2030 framework, the five Social Determinants of Health
domains are:

1. **Economic Stability** — employment, income, expenses, debt, financial security,
   food security, housing affordability.
2. **Education Access & Quality** — early childhood education, enrollment,
   high-school completion, higher-education access, language/literacy.
3. **Health Care Access & Quality** — health-coverage access, primary-care access,
   health literacy, preventive services.
4. **Neighborhood & Built Environment** — housing quality, transportation, safety,
   access to healthy food, environmental conditions (water, air).
5. **Social & Community Context** — social cohesion, civic participation,
   discrimination, incarceration/reentry, community support networks.

Every program metric should land in exactly one **primary** SDOH bucket. A metric
may carry a secondary bucket if genuinely cross-cutting (e.g. a reentry job program
is primarily *Social & Community Context* and secondarily *Economic Stability*) —
note the secondary, but report under the primary to avoid double-counting.

---

## Master crosswalk — common program metrics

Map each metric type to its framework tags. The **SDOH** column is the primary
bucket; **GRI** is the topic family; **SASB** applies when the partner's industry
makes it material; **TCFD** is blank unless the metric is climate/environmental.

| Common program metric | Primary SDOH bucket | GRI topic family | SASB topic (if material) | TCFD pillar |
|---|---|---|---|---|
| People placed in jobs / employed | Economic Stability | GRI 413 Local Communities; GRI 203 Indirect Economic Impacts | Human Capital / Community Relations | — |
| Wages earned / income increase | Economic Stability | GRI 201 Economic Performance; GRI 203 | Human Capital | — |
| People trained / hours of training | Education Access & Quality | GRI 404 Training & Education | Human Capital — workforce development | — |
| Job-readiness / certifications earned | Education Access & Quality | GRI 404 | Human Capital | — |
| Meals served / food distributed | Economic Stability *(food security)* | GRI 413 Local Communities | Community Relations | — |
| People housed / housing stabilized | Neighborhood & Built Environment | GRI 413 Local Communities | Community Relations | — |
| Students enrolled / retained / graduated | Education Access & Quality | GRI 404; GRI 413 | Human Capital | — |
| Early-childhood / literacy program participants | Education Access & Quality | GRI 404; GRI 413 | — | — |
| People connected to health coverage / care | Health Care Access & Quality | GRI 403 Occupational Health & Safety *(adapt)*; GRI 413 | Customer/Community Health | — |
| Preventive-care / screening events | Health Care Access & Quality | GRI 413 | — | — |
| Mental-health / counseling sessions | Health Care Access & Quality | GRI 413 | — | — |
| Reentry / second-chance participants | Social & Community Context | GRI 413; GRI 406 Non-discrimination | Community Relations | — |
| Volunteers engaged / volunteer hours | Social & Community Context | GRI 413 Local Communities | Community Relations | — |
| Civic-participation / leadership events | Social & Community Context | GRI 413 | — | — |
| Member orgs supported / incubated | Social & Community Context | GRI 203 Indirect Economic Impacts; GRI 413 | Community Relations | — |
| People served (unique beneficiaries) | *(map to the dominant program's bucket)* | GRI 413 | Community Relations | — |
| Demographic equity breakdown (race/gender/income) | *(cross-cuts; tag program's bucket)* | GRI 405 Diversity & Equal Opportunity; GRI 406 | Human Capital — diversity | — |
| Affordable housing units created | Neighborhood & Built Environment | GRI 413; GRI 203 | Community Relations | — |
| Transportation access provided | Neighborhood & Built Environment | GRI 413 | — | — |
| Healthy-food access points / gardens | Neighborhood & Built Environment | GRI 413; GRI 304 Biodiversity *(if land)* | — | — |
| Energy retrofits / weatherization | Neighborhood & Built Environment | GRI 302 Energy; GRI 305 Emissions | Energy Management | **Metrics & Targets** |
| Emissions avoided / reduced (program) | Neighborhood & Built Environment | GRI 305 Emissions | GHG Emissions | **Metrics & Targets** |
| Water/waste-reduction program outcomes | Neighborhood & Built Environment | GRI 303 Water; GRI 306 Waste | Water/Waste Management | **Risk Management** *(if climate-driven)* |
| Climate-resilience / disaster-prep outcomes | Neighborhood & Built Environment | GRI 201-2 *(climate financial implications)* | — | **Strategy / Risk Management** |
| Grants distributed / dollars regranted | Economic Stability | GRI 201 Economic Performance; GRI 203 | — | — |

> If a metric does not cleanly fit any row, **do not force it**. Tag it
> `<VERIFY: framework mapping unclear — confirm with program lead>` and carry it
> to the Data Gaps section. Honest "unmapped" beats a wrong category.

---

## Normalization rules (apply during Step 2)

1. **One metric per row, one unit.** Split blended metrics ("50 trained & placed")
   into two rows so each maps cleanly and traces to its own evidence.
2. **State the denominator.** Any percentage needs an explicit numerator and
   denominator from the source rows. A bare "%" without a denominator is a gap.
3. **Pin the period.** Tag every figure with its reporting period. Never mix
   periods inside one figure. Cumulative ("since inception") and period figures
   are separate rows.
4. **Avoid double-counting across member orgs.** A unique-beneficiary total that
   sums per-org counts may double-count people served by multiple orgs. If you
   cannot confirm de-duplication, flag `<VERIFY: possible duplicate beneficiary
   count across orgs>` rather than presenting an inflated total.
5. **Keep the source row ID.** Normalization adds framework tags; it must never
   strip the link back to the original intake row.
6. **Label estimates.** A derived figure (annualized, extrapolated) is tagged
   `[ESTIMATE]` with the derivation shown, and also listed in Data Gaps.

---

## Source frameworks (for the partner-facing footnote)

- **GRI Standards** — Global Reporting Initiative, Universal + Topic Standards (GRI 200/300/400 series).
- **SASB Standards** — now maintained under the IFRS Foundation / ISSB; industry-specific (SICS) topics.
- **TCFD** — Task Force on Climate-related Financial Disclosures; four-pillar structure, carried forward in IFRS S2.
- **SDOH** — Social Determinants of Health, five-domain framing per U.S. Healthy People 2030.
- **CSRD / ESRS** — EU Corporate Sustainability Reporting Directive and its European Sustainability Reporting Standards (context for why partners demand source-traceable data; GRI is broadly interoperable with ESRS).

> Always cite frameworks by name in partner outputs so the CSR/ESG reader
> recognizes the rigor. Cite the *framework*, not a specific clause number, unless
> the underlying standard text has been verified — otherwise tag
> `<VERIFY: confirm exact GRI/SASB disclosure number against current standard>`.
