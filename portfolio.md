---
layout: default
title: Governance Portfolio
permalink: /portfolio/
---

# Governance Portfolio

<p class="section-intro">
Most medical AI governance arrives too late: as documentation produced after the model works, once the decisions that actually matter have been made by default. I work the other way. Governance here is treated as a design constraint built alongside the system, and every item is held to one test: does each claim a system makes have an owner, a check, and an audit trail, or is it only a promise? A control without those is an opinion, not governance.
</p>

<p class="section-intro">
A curated, sanitized selection follows, each item labelled by evidence type:
<span class="badge badge-project">Project-derived</span>
<span class="badge badge-scenario">Scenario-based</span>
<span class="badge badge-published">Research</span>.
Full internal materials remain private; what appears here focuses on governance structure, risk ownership, and deployment-readiness reasoning rather than confidential technical detail.
</p>

<p class="section-intro">
Credibility in governance work starts with honest claims about one's own evidence, so every item carries one of three labels. <strong>Project-derived</strong>: work produced inside a real medical AI project, sanitized for public sharing; it reflects pre-deployment governance design, not post-market experience. <strong>Scenario-based</strong>: governance exercises built on realistic deployment patterns and public regulatory material; they demonstrate judgement, not deployment history. <strong>Research</strong>: manuscripts and public writing, with their actual publication status stated.
</p>

<h2 id="who-for">Who this is for</h2>

<p class="section-intro">
Different readers come to the same governance work looking for different proof. This section maps four common problems to the specific evidence here that answers them &mdash; and is honest about what each item does and does not demonstrate. The controls repeat across all four rows on purpose: the skill is transferable even where the sector is not.
</p>

<div class="who-for" markdown="1">

| If your problem is&hellip; | The question you are really asking | Where to look here | What it demonstrates &mdash; and its limit |
| --- | --- | --- | --- |
| **Independent AI / model risk** &mdash; a second line challenging the first | Can this person judge, independently, whether an AI risk is *actually* managed rather than only documented? | The [governance-at-a-glance](#at-a-glance) map, the [risk register]({{ '/artifacts/risk-register/' | relative_url }}), the [agent risk-control matrix]({{ '/artifacts/agent-risk-control-matrix/' | relative_url }}) | Build-vs-sign-off separation and a claim &rarr; test &rarr; evidence &rarr; owner discipline that lets any control be challenged. It is pre-deployment design, not a second-line track record inside a bank. |
| **Enterprise AI governance** &mdash; running the full lifecycle | Can this person govern an AI system across its whole life, not just at launch? | The [pre-deployment charter]({{ '/artifacts/pre-deployment-charter/' | relative_url }}), [change control log]({{ '/artifacts/change-control-log/' | relative_url }}), [standards register]({{ '/artifacts/standards-register/' | relative_url }}), [monitoring table]({{ '/artifacts/monitoring-table/' | relative_url }}) | Registration &rarr; risk &rarr; approval &rarr; monitoring &rarr; change, each stage with an owner, a trigger, and evidence &mdash; shown on one system, generalised into reusable instruments. |
| **Clinical / medical AI** &mdash; deploying patient-facing AI safely | Can this person tell a promising prototype from a deployment-ready system? | The [flagship project](#projects), the [public disclosure summary]({{ '/artifacts/public-disclosure-summary/' | relative_url }}), and the drift, override, and escalation [cases](#casebook) | Deployment-readiness reasoning from someone who builds the system they govern. The twin is pre-deployment; this is not post-market experience. |
| **Regulator / public-policy** &mdash; turning technical risk into decisions | Can this person turn technical evidence into decision-ready controls and a route for the affected person to challenge a decision? | The rights/remedy tables in the [casebook](#casebook), the [public disclosure summary]({{ '/artifacts/public-disclosure-summary/' | relative_url }}), the [standards register]({{ '/artifacts/standards-register/' | relative_url }}) | Technical risk rendered as policy-grade controls, transparency, and named challenge routes &mdash; not a claim to regulatory authority. |

</div>

<p class="section-intro">
None of these rows claims a decision right I do not hold &mdash; final residual-risk acceptance, a bank second-line mandate, clinical risk acceptance, or regulatory power. Each item is labelled by evidence type below, and full internal materials stay private. If one row is your problem, pick it and <a href="{{ '/about/' | relative_url }}">let us walk through</a> how it maps to your system.
</p>

<h2 id="projects">Flagship project</h2>

### Patient-facing Medical Digital Twin: Building the System and Its Governance
<p class="badge badge-project">Project-derived · system building + pre-deployment governance design</p>

This is my main project. At the HKU-Avnet Joint AI Laboratory, I lead both the engineering of a patient-facing medical digital twin and the governance framing that must precede its deployment. The system is in incubation, which is exactly when governance work matters most. Holding both roles on the same system is the point: I govern what I build.

**What I build**

- **Deep-learning foundations (peer-reviewed, first author)**: 3D perception and automatic annotation, published at AAAI (2023) and in the International Journal of Computer Vision (2026). This is the publicly citable core of "I build," and it underpins the twin's representation and visualization layers.
- **System architecture** across the twin's layers: sensing and data ingestion, patient representation, prediction, and governed explanation, aligned with the accountability map from my research.
- **3D visualization component**: I led the design, integration, testing, and delivery of the twin's 3D generation and rendering pipeline, including model selection, generation quality evaluation, client-server integration, and cost constraints. The pipeline was demonstrated publicly on a large-scale LED wall at the laboratory opening.
- **Delivery under real constraints**: model development, intern supervision, stakeholder reporting, and shipping working demonstrations on hard deadlines.

**Current status.** The twin's model and framework are under active development. The system today is an internal research demonstration, not a deployment-ready product, and I describe it as exactly that. A public demonstration (architecture overview and a short system demo) will be released once the underlying research is published and the demonstration has been reviewed for accuracy and confidentiality. I would rather show it when the evidence behind it is stable than stage a preview that overstates the system.

<!-- DEMO PLACEHOLDER: when ready, replace the last sentence above (or add here) with the embedded demo video + five-layer architecture figure. Gate: (1) Lancet DH Viewpoint accepted/published, (2) demo polished, (3) reviewed for confidentiality. -->

**How I govern it** (Governance Pack v0.2, actively maintained — current revision v0.2.2, July 2026; sanitized)

- **Intended use and boundary definition**: what the current system is (an internal research demonstration), what it is not (a clinically validated or deployment-ready system), and what evidence would be required before any external pilot.
- **Project charter, role-and-scope clarification, and decision-rights mapping**: who recommends, who approves, and who is consulted at each stage gate across the university, the industry partner, and future clinical partners.
- **Risk ownership design**: an early-stage risk register separating risk identification, control ownership, risk ownership, and risk acceptance authority, so that residual risk is accepted by people with the authority and resources to manage it.
- **Operating instruments**: stakeholder map, RACI matrix, decision memo template, data-readiness checklist, contribution and artifact registers, phase-transition and commercialisation-trigger clauses, and authorship and acknowledgement principles.
- **Deployment-readiness criteria**: validation evidence, subgroup performance, human oversight design, monitoring plans, and escalation pathways required before patient-facing use.
- **Operational handoff**: transition and handover planning so the system can be run by an operating team rather than its builder, covering ownership of monitoring, incident response, change control, and the human-in-the-loop controls that must survive after handoff.

*This is a project-derived pre-deployment governance case. It is not presented as a live deployment or post-market case, and the public version is sanitized.*

<h2 id="at-a-glance">Governance at a glance</h2>

<p class="section-intro">
The fastest way to see how this fits together: seven risk domains, each with the control I designed for it and the audit evidence that control is built to produce once the system is operating. This is the map; the cases and artifacts below are the territory. <span class="badge badge-project">Project-derived</span> · pre-deployment · sanitized.
</p>

| Risk domain | The risk in one line | Control I designed | Evidence it is designed to produce |
| --- | --- | --- | --- |
| Intended use &amp; boundary | Scope creep from monitoring into diagnosis or off-label use | [Pre-deployment charter]({{ '/artifacts/pre-deployment-charter/' | relative_url }}) | Non-use list, decision-rights record |
| Data | Untrustworthy, unlawful, or untraceable data; missingness read as "no risk" | Data readiness gate + provenance/lineage register | Readiness status, lineage entries, lawful-basis record |
| Agents | Agent sprawl, over-scoped access, privilege creep, unauditable actions | [Agent decision rights]({{ '/cases/agent-decision-rights/' | relative_url }}) · [Agent risk-control matrix]({{ '/artifacts/agent-risk-control-matrix/' | relative_url }}) | Registry, access-review logs, control tests |
| Change control | Silent model updates; no safe version left to run | [Change control & PCCP case]({{ '/cases/model-change-control/' | relative_url }}) · [Model change control log]({{ '/artifacts/change-control-log/' | relative_url }}) | Version logs, revalidation records, fallback trigger |
| Assurance | The builder self-certifies; delivery pressure overrides safety | Separation of delivery from sign-off, with independent review specified as a release condition | Independent sign-off record, audit confirmation |
| Post-market signals | Behavioural harm invisible to a green dashboard | [Model-drift case]({{ '/cases/model-drift/' | relative_url }}) · [Monitoring table]({{ '/artifacts/monitoring-table/' | relative_url }}) · [Risk register]({{ '/artifacts/risk-register/' | relative_url }}) | Signal log, escalation records, drift analyses |
| Dependencies | A hard-to-replace input (model, cloud, sensor, specialist, consumable) fails | [Dependency register]({{ '/artifacts/dependency-register/' | relative_url }}) | Owner, fallback, and review-trigger per dependency |

<p class="section-intro">
Two principles run through every row: each control names an <strong>owner, a trigger, and an audit trail</strong> (not "we are careful"); and the person accountable for <strong>delivering</strong> a component is never the person who signs it <strong>safe</strong>. If you are building or overseeing patient-facing medical AI, the single ask this map supports is simple — pick one row, and let us walk through how it would apply to your system.
</p>

<h2 id="casebook">Governance casebook</h2>

<p class="section-intro">
Scenario-based governance cases built on realistic deployment patterns and public regulatory material
(FDA AI-enabled device guidance and PCCP, WHO guidance on AI for health, NIST AI RMF, ISO/IEC 42001, Hong Kong TR-008).
Each case works through problem, stakeholders, key risks, governance mechanism, RACI, audit evidence, and an explicit
post-market decision state: Approve, Conditional approval, Clinical review, or Reject.
The common structure is deliberate: it is designed to be teachable, so each case doubles as a training exercise for building governance judgement in others.
</p>

<p class="section-intro">
These cases are not literature reviews of the frameworks. Each one is the reasoning I apply to my own patient-facing system, generalised into a teachable pattern; the frameworks are the shared vocabulary, not the source. The same controls appear, named and owned, in the project-derived pack above.
</p>

<p class="section-intro">
The casebook spans the full AI-SaMD deployment lifecycle — <strong>nine readiness areas, from intended-use boundaries to post-market monitoring, each producing a concrete, adaptable governance tool</strong> rather than a generic template:
</p>

<ul class="readiness-list">
  <li><strong>Intended use &amp; scope</strong> — boundary enforcement, off-label use creep</li>
  <li><strong>Clinical validation &amp; change control</strong> — predetermined change control (PCCP), version governance</li>
  <li><strong>Patient safety &amp; incident support</strong> — false-negative incident response, worked risk register and SOP</li>
  <li><strong>Consent &amp; patient-facing safety</strong> — disclosure, scope, and uncertainty surfacing</li>
  <li><strong>Agent &amp; human oversight</strong> — agent decision rights, human override and audit log</li>
  <li><strong>Data governance</strong> — multi-hospital data readiness</li>
  <li><strong>Fairness &amp; equity</strong> — subgroup monitoring</li>
  <li><strong>Vendor &amp; supply governance</strong> — vendor due diligence, model and cloud dependency</li>
  <li><strong>Post-market monitoring</strong> — continuous drift monitoring and escalation</li>
</ul>

<p class="section-intro">If you are running a clinical AI or AI-SaMD deployment, several of these modules can be adapted directly to your system. <a href="{{ '/about/' | relative_url }}">Get in touch</a> if a governance perspective grounded in real system-building would be useful.</p>

<p class="section-intro"><strong>Start here:</strong> <a href="{{ '/cases/model-drift/' | relative_url }}">Medical AI Model Drift in Clinical Deployment</a> is the flagship case. It pairs directly with the two published artifacts below (monitoring table and risk register), showing one governance problem end to end: detect the drift, own it, decide what to do.</p>

<ul class="case-list">
{% for case in site.cases %}
  <li>
    <p class="badge badge-{{ case.evidence_class }}">{{ case.evidence_type }}</p>
    <div class="case-title"><a href="{{ case.url | relative_url }}">{{ case.title }}</a></div>
    <p>{{ case.summary }}</p>
  </li>
{% endfor %}
</ul>

<h2 id="artifacts">Governance artifacts</h2>

<p class="section-intro">
Standalone governance instruments, written so that each one answers: what to look at, how often, who is responsible,
what counts as abnormal, and what happens next. Every artifact carries fixed metadata: data provenance, model version,
approval owner, effective date, and known limitations.
</p>

<p class="section-intro">
Eight of these are published in full. Six span the deployment lifecycle; one is the public-facing accountability document any non-user can read; and one governs the external frameworks themselves — the difference between citing a standard once and keeping it live after it is revised. Five are drawn from the governance pack I developed for my medical digital twin (project-derived, sanitized): the pre-deployment charter, the risk register, the dependency register, the agent risk-control matrix, and the model change control log. The monitoring table is a scenario-based instrument. Because the twin is pre-deployment, the operational examples shown are illustrative worked cases used to exercise the structure, not data from a live system.
</p>

| Artifact | Lifecycle stage | Evidence | Core design principle |
| --- | --- | --- | --- |
| [Pre-deployment governance charter]({{ '/artifacts/pre-deployment-charter/' | relative_url }}) | Before deployment | <span class="badge badge-project">Project-derived</span> | Governance is built in parallel with the system, before deployment, not added afterward |
| [Risk register]({{ '/artifacts/risk-register/' | relative_url }}) | Risk governance | <span class="badge badge-project">Project-derived</span> | No owner means nobody manages it; no review date means it gets forgotten |
| [Dependency register]({{ '/artifacts/dependency-register/' | relative_url }}) | Infrastructure / continuity | <span class="badge badge-project">Project-derived</span> | The risk is not only a wrong model, but an unavailable one; every external dependency needs an owner, a fallback, and a review trigger |
| [Agent risk-control matrix]({{ '/artifacts/agent-risk-control-matrix/' | relative_url }}) | Agent governance / assurance | <span class="badge badge-project">Project-derived</span> | Each agent risk needs a control, a test that proves it works, a monitored signal, and an audit-evidence record: from promise to evidence |
| [Post-deployment monitoring table]({{ '/artifacts/monitoring-table/' | relative_url }}) | In-life monitoring | <span class="badge badge-scenario">Scenario-based</span> | Every metric needs a review owner, a trigger threshold, and a required action |
| [Public disclosure summary]({{ '/artifacts/public-disclosure-summary/' | relative_url }}) | Public accountability | <span class="badge badge-project">Project-derived</span> | Voluntarily held to a public-sector transparency standard; if a non-user cannot understand what the system does, does not do, who is responsible, and how to challenge it, it is not publicly accountable |
| [Standards & frameworks register]({{ '/artifacts/standards-register/' | relative_url }}) | Standards governance | <span class="badge badge-project">Project-derived</span> | Adopting a framework is not a one-time act; each standard is a tracked object with a version, mapped controls, an owner, and a change-impact plan — governing under a framework, not just citing one |
| [Model change control log]({{ '/artifacts/change-control-log/' | relative_url }}) | Change governance | <span class="badge badge-project">Project-derived</span> | No silent updates: every change carries a risk class, a revalidation trigger, a named approval owner, and a retained evidence trail, with a safe prior version always available to fall back to |

**Further instruments** (available, sanitized, on request):

| Artifact | What it does | Core design principle |
| --- | --- | --- |
| Incident response SOP | Time-boxed response to drift and safety events (T+1h to T+30d) | Timeline, trigger, owner, action, and output at every step; severity classification and closure updates included |
| RACI matrix for AI incidents | Allocates responsibility across governance lead, clinicians, data team, vendor, safety committee, legal, and management | Vendors do not decide continued use; data teams do not judge patient safety alone |
| Human override log template | Records every accept, modify, or reject decision with reason codes | Oversight is only real when the human has enough information and recorded responsibility to challenge the AI |
| Vendor due diligence checklist | Screens validation, calibration, subgroup fairness, update policy, audit rights, and rollback clauses | Without audit rights the hospital can only trust the vendor; without liability clauses risk flows to patients |
| Medical AI audit checklist | Eight-item audit with evidence to check, owner, and frequency | An audit item without evidence to check is an opinion |
