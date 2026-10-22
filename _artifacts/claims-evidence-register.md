---
title: "Claims and Evidence Register (project-derived, sanitized)"
evidence_type: "Project-derived · pre-deployment · sanitized"
evidence_class: project
summary: "A register of every claim a patient-facing system intends to make, set against the evidence that would actually support it. Each row records the claim as it would be worded, the evidence held, what that evidence supports rather than what it is cited for, the gap between the two, and the specific study or check that must exist before the claim may be made at all. Since v0.2 it also records the context claims the project makes in public about the problem it addresses."
author: "Xiaoyan Qian"
version: "v0.2.1"
publication_date: "2026-08-30"
stable_url: "https://xiaoyanqian.com/artifacts/claims-evidence-register/"
license: "All rights reserved"
suggested_citation: "Qian, X. (2026). Claims and Evidence Register (project-derived, sanitized), v0.2.1. https://xiaoyanqian.com/artifacts/claims-evidence-register/"
---

## What this artifact is for

The rest of my governance pack answers organisational questions: who owns a risk, who may override the system, what is monitored, who approves a change. This register answers the question that comes before all of them, and that a governance structure cannot fix once it has been skipped: **does the evidence support what the system says about itself?**

It is a different instrument from a validation report. A validation report states what was measured. This register starts from the other end, from the sentence a patient, a clinician, a sponsor, or a regulator will actually read, and works backwards to whether anything in the evidence base entitles the project to say it. The two do not automatically match. A model can be validated and still be described in language its validation does not license.

Every row therefore separates two things that are usually collapsed: the evidence a claim **cites**, and what that evidence **supports**. The gap between them is the governed object.

This artifact is drawn from the governance pack of the patient-facing cardiometabolic digital twin I am building at the HKU-Avnet Joint AI Laboratory. It is sanitized, and it is pre-deployment in a specific sense worth stating plainly: **the claims below are the claims the project intends to make, not claims it currently makes.** Several rows record that the evidence required does not yet exist. That is the register working, not the register failing.

## Why I built this (builder's perspective)

Two things led here. The first is eight years of peer review for machine-learning venues, where the single most common defect is not a wrong method but a claim that has quietly outgrown the experiment underneath it: a result generalised past the setting it was measured in, a gain that no ablation attributes, a comparison run on a protocol the authors also designed. Nothing about that pattern is specific to machine learning. It is what happens whenever the party making a claim is also the party that chose how to test it.

The second is closer to home. Earlier this month I audited my own governance pack and found that documents registered as evidence for other claims did not contain what they were registered as, and that two claims resting on them were therefore false. That audit worked on documents. It left the harder layer untouched, because a document can exist, be correctly named, and still describe a performance the data does not support.

So this register turns the same instrument on my own system's performance and clinical claims, before there is any external pressure to make them. Writing it while the honest answer to several rows is *no evidence yet* is the entire point. A claims register drafted after a launch deadline arrives is a marketing review.

## Fixed metadata

| Field | Value |
| --- | --- |
| Project stage | Incubation / pre-deployment |
| Scope | Performance, clinical, and patient-facing claims about one cardiometabolic digital twin; since v0.2, also the context claims the project makes in public about the problem it addresses |
| Source | The internal claims-and-evidence review of the medical digital twin governance pack |
| Inputs in scope | Wearable signals (heart rate, heart-rate variability, sleep), EHR laboratory values (HbA1c, lipids, blood pressure), and patient self-reports |
| Last updated | 22 October 2026 |
| Known limitation | Pre-deployment worked example. The claims are prospective wordings under review, not published statements; owners are role-level placeholders to be fixed to named individuals before any external pilot; no row below is certified as cleared |

## Claims and evidence register

| Claim, as it would be worded | Where it would appear | Evidence cited for it | What that evidence actually supports | Gap type | Owner | Required before the claim may be made |
| --- | --- | --- | --- | --- | --- | --- |
| "Estimates your cardiometabolic risk" | Patient interface, public summary | Retrospective development cohort, internal split | Discrimination on one retrospective population, under that population's case mix | Overstated: internal-only generalisation | Clinical Safety Lead | External validation on a site and period not used in development, reported with calibration, not discrimination alone |
| "Personalised to you" | Patient interface, sponsor materials | The model ingests individual wearable and laboratory inputs | That the inputs are individual, not that the output is meaningfully individual or stable | Unsupported: personalisation never measured | Model Owner | Individual-level sensitivity analysis and test-retest stability across repeated windows for the same person |
| "Clinically validated" | Sponsor materials, any pilot proposal | Laboratory values sourced from clinical records | That clinical data was used as input; nothing about clinical performance | Vague term: unfalsifiable as written | Clinical Safety Lead | Replace with a specific sentence naming endpoint, population, comparator, and metric with a confidence interval, or drop the phrase |
| "Accuracy of 0.8x on the validation set" | Technical summary, conference abstract | One split, one seed, headline discrimination metric | A point estimate whose sampling variability is unknown | Statistically unsupported | Model Owner | Confidence intervals, repeated splits and seeds, calibration curve, and decision-curve analysis at the operating threshold actually used |
| "Works for our patient population" | Pilot proposal, deployment discussion | Aggregate performance across the whole cohort | Average performance, which can hold while a subgroup fails | Subgroup untested | Fairness / Clinical Safety Lead | Pre-specified subgroup reporting with a minimum sample per subgroup, including device type and data completeness, not only demographics |
| "Explains why you were flagged" | Patient interface | Feature-attribution output shipped with each estimate | That an attribution method ran, not that its output reflects the model's actual reasoning | Attribution unverified | Model Owner | A faithfulness check of the explanation method against model behaviour; until then the wording is "factors associated with this estimate", not "why" |
| "Helps you act earlier" | Patient interface, public summary | None. Reasoning from the clinical plausibility of earlier detection | Nothing about outcomes. No interventional or comparative study exists | Unsupported: outcome claim without an outcome study | Governance Lead | A prospective comparative study with a pre-registered outcome. Until it exists this claim is not weakened, it is removed |
| "Continuously updated with your latest data" | Patient interface | The ingestion pipeline runs on a defined schedule | That data arrives, not that validated behaviour holds as inputs shift | Scope mismatch: process cited as performance | Eng Lead | Drift monitoring with a defined revalidation trigger, per the [monitoring table]({{ '/artifacts/monitoring-table/' | relative_url }}), and a stated rule for what happens to the estimate when a trigger fires |
| "Reviewed by clinicians" | Sponsor materials, website | One external clinician reviewed the Phase 1 scope in August 2026 | A scope review that narrowed the use case to a single condition. It was not a review of model performance | Overstated: review of scope reported as review of the system | Governance Lead | State what the review covered and what it did not, as the [pre-deployment charter]({{ '/artifacts/pre-deployment-charter/' | relative_url }}) does, or obtain independent clinical validation and cite that instead |

## Context claims: what the project says about the problem

The rows above govern what the system will say about itself. A project also makes claims about the problem it addresses, and those fail in the same ways in a different form: an expected effect reported as a result, a figure from one population quoted for another, an estimate written as a measurement. Since v0.2 this register holds those too. Every sentence on the Day Eleven page that uses a number or a trend to describe the problem, or the moment the project responds to, has a row here, with its source and the date it was last checked against that source.

| Claim, as worded | Where it appears | Source | What the source supports | Status | Last checked |
| --- | --- | --- | --- | --- | --- |
| "in February 2025 the Hospital Authority announced that generative AI would draft medical reports in six public hospitals from the following month, with every report checked and authorized by a doctor" | [Day Eleven]({{ '/twin/' | relative_url }}#why-now) | *The Standard*, 20 February 2025 (press conference by the Hospital Authority's Chief Executive) | The announcement, the six pilot hospitals, the start in the following month, and sign-off of every report by a doctor | Supported (press report of an official announcement). The use is drafting medical reports, not clinical decision-making | 22 Oct 2026 |
| "the Government announced that the Chronic Disease Co-Care Pilot Scheme, which had passed 200,000 participants, would be regularised" | Day Eleven | HKSAR Government press release, 13 March 2026 | Enrolment exceeded 200,000 by the end of January 2026; regularisation was announced on 13 March 2026 | Supported (official figure) | 22 Oct 2026 |
| "launched a Primary Healthcare Co-care Network that aims to reach about 700,000 people in its first five years. It also said it would gradually invite suitable patients from Hospital Authority Family Medicine Clinics to join the network's services" | Day Eleven | Same press release | A five-year participation target and a stated policy intention | Supported as a target and an intention; must not be restated as achieved | 22 Oct 2026 |
| "the Hospital Authority cared for more than 658,000 people with diabetes in 2024, and ... giving all of them continuous glucose monitors would overload healthcare staff with readings and add several billion dollars a year" | Day Eleven | Legislative Council reply (LCQ6), 16 July 2025 | The official patient count, and the Government's stated reasons in its own words | Supported (official statement) | 22 Oct 2026 |
| "A person with diabetes might spend an hour or two a year in front of a clinician. For the more than eight thousand hours in between, they are alone with their questions" | Day Eleven, "Why it matters" | No single source. Basis: a planning parameter of eight minutes per Hospital Authority general out-patient consultation (LegCo LCQ7, 2017), routine follow-up a few times a year for stable patients (clinician input), and nurse and allied-health contacts | An order of magnitude. The second figure follows from the first by arithmetic (a year has 8,760 hours) | Estimate, not a measured figure. No published Hong Kong figure for total clinician contact time per patient-year was found | 22 Oct 2026 |
| "more of those questions now go to general-purpose AI assistants" | Day Eleven, "Why it matters" | KFF polls of US adults: 17% used AI chatbots at least monthly for health information and advice (2024); 29% used AI tools or chatbots at least monthly for health information and advice (June 2026) | A rising share among adults in the United States; question wording differs slightly between the two polls | Supported for the United States only; no Hong Kong data found | 22 Oct 2026 |
| "In most clinics no one would see it overnight" | Day Eleven, film description | Hospital Authority directory of Family Medicine Clinics (consulted 22 October 2026); Legislative Council reply (LCQ4), 25 April 2018 | None of the 77 Hospital Authority family medicine clinics listed offers consultation after 10 pm, and 24 hold evening sessions that end at 10 pm. In 2018 the Government told the Legislative Council that the Hospital Authority had no plans to provide general out-patient services at late hours or overnight | Supported for public family medicine clinics. For private clinics there is only a legislator's statement, in the 2018 question, that the vast majority do not provide consultation in late hours; no measured figure was found | 22 Oct 2026 |

These rows are verified by reading the source, not by recomputation. Before any of these sentences is reused in a funding application, a manuscript, or a press statement, its source is checked again on the day.

## The gap taxonomy

The middle columns are the reusable part. Across domains, claims fail against their evidence in a small number of recurring ways, and naming the type is what makes the required fix specific rather than a general instruction to be careful.

| Gap type | What it looks like | What closes it |
| --- | --- | --- |
| **Unsupported** | The evidence base contains nothing bearing on the claim, often an outcome or benefit claim | The study that would bear on it, or deletion of the claim |
| **Overstated** | Real evidence, stretched past the population, period, setting, or endpoint it was collected in | Narrow the wording to the evidence, or widen the evidence |
| **Circular** | The claim is validated by a procedure the claimant designed, on a comparator the claimant implemented | An externally defined protocol, a published comparator, or an evaluator with no stake in the result |
| **Attribution unclear** | Something improved, but nothing establishes which component caused it | An ablation or a controlled comparison that isolates the component |
| **Subgroup untested** | An aggregate figure is offered as evidence about everyone in it | Pre-specified subgroup reporting with minimum sample sizes |
| **Scope mismatch** | A process fact is cited as evidence of a performance fact | Evidence about the performance, not the process |
| **Stale** | The evidence was true of a version, cohort, or period that no longer applies | Revalidation, or a version-bound restatement of the claim |

## The one that is hardest to catch

Six of the seven types can be found by reading carefully. **Circularity cannot**, because every individual document is internally consistent. It appears when the same party defines the claim, designs the evaluation, selects the comparator, and reports the result, and the failure is invisible at document level precisely because nothing is wrong at document level.

In medical AI this arrives in familiar clothing: an evaluation protocol written by the developer, a comparator built by the developer rather than an accepted standard of care, a retrospective cohort selected after the results were seen, a threshold chosen on the same data it is reported on. Each step is defensible alone. Together they produce a number that measures the design of the test more than the performance of the system.

The structural control is not sharper reading. It is the same separation this pack applies everywhere else: **the party that delivers a component does not certify it.** For claims, that means the evaluation protocol and the comparator are fixed before results are seen, by someone who does not answer for the result. Where that separation cannot be arranged, the honest move is not to claim less confidently. It is to record, in this register, that the evidence is developer-controlled, so that a later reader can weigh it accordingly.

## Reading is not verification

A register can be filled in accurately by someone who only ever read the evidence. Some rows require recomputation, and I keep these separate because they are the ones that catch defects reading does not reach:

- **Recompute the headline metric** from the reported confusion matrix or raw counts, and check it against the number in the text.
- **Recompute calibration**, not only discrimination, since a well-ranked model can be systematically wrong about absolute risk at the threshold where it is acted on.
- **Re-split by subgroup** rather than accepting the subgroups the report chose to show, and record which subgroups fall below a usable sample size.
- **Check the operating threshold** is the one the metric was reported at, and that it was not selected on the same data.

Where I cannot recompute, the register says so. A row verified by reading and a row verified by recomputation are different strengths of evidence, and collapsing them is the same error this artifact exists to prevent.

## The design principle

A claim is governed when the project can answer, for each sentence it intends to say about the system: where the sentence will appear, what evidence is cited for it, what that evidence supports as distinct from what it is cited for, which gap type separates the two, who owns closing it, and what specific study or check must exist before the sentence may be used.

**No claim reaches a patient, a sponsor, a regulator, or a manuscript before it has a row here.** A claim without a row is not a small documentation gap. It is a statement nobody has been made responsible for supporting.

## What changed, and why

This section is permanent; each revision adds to it rather than replacing it, so that the page can be checked rather than merely read.

**v0.1 (30 August 2026).** First publication. Three rows are recorded with no supporting evidence at all, and one row downgrades a claim the project could plausibly have made in good faith, that clinicians had reviewed the system, to what the review actually covered. Both are deliberate. A claims register whose first version shows every claim already supported would be evidence that the register was written to be shown rather than used.

**v0.2 (22 October 2026).** Added the context-claims table, so that what this project says in public about the problem carries the same discipline as what it intends to say about the system. Two sentences that had been on the Day Eleven page since September without a source are now recorded with their actual status: one is an estimate, and one is supported only for adults in the United States. A third, about overnight clinic cover, has no source and is recorded as such. The Hospital Authority's 2025 announcement on generative AI, already on the page, is now recorded with its source.

**v0.2.1 (22 October 2026, later the same day).** The row on overnight clinic cover, published hours earlier as unsourced, now has sources: the Hospital Authority's directory of its 77 family medicine clinics, none of which consults after 10 pm, and a 2018 Legislative Council reply. The evidence covers public clinics; for private clinics the row records that only a legislator's statement exists. The v0.2 entry above is left as it was published.

<p class="muted">Related note: <a href="{{ '/notes/2026-08-28-existence-is-not-content-auditing-my-own-governance-pack/' | relative_url }}">An index that lists a file is not evidence the file contains anything</a> applies the same instrument one layer down, to the documents a governance pack claims to hold.</p>

<details markdown="1">
<summary>Citation metadata</summary>

| Field | Value |
| --- | --- |
| Title | Claims and Evidence Register (project-derived, sanitized) |
| Author | Xiaoyan Qian |
| Public page version | v0.2.1 |
| Publication date | 2026-08-30 |
| Stable URL | https://xiaoyanqian.com/artifacts/claims-evidence-register/ |
| Licence | All rights reserved |
| Suggested citation | Qian, X. (2026). *Claims and Evidence Register (project-derived, sanitized)* (v0.2.1). https://xiaoyanqian.com/artifacts/claims-evidence-register/ |

</details>
