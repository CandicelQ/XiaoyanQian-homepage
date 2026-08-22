---
title: "Pre-deployment Governance Charter (project-derived, sanitized)"
evidence_type: "Project-derived · pre-deployment · sanitized"
evidence_class: project
summary: "The real governance charter I developed for the medical digital twin I am building. It defines the system as a non-diagnostic prototype and builds its governance in parallel, before any deployment."
author: "Xiaoyan Qian"
version: "v0.1"
publication_date: "2026-08-03"
stable_url: "https://xiaoyanqian.com/artifacts/pre-deployment-charter/"
license: "All rights reserved"
suggested_citation: "Qian, X. (2026). Pre-deployment Governance Charter (project-derived, sanitized), v0.1. https://xiaoyanqian.com/artifacts/pre-deployment-charter/"
---

## What this artifact is for

Most governance failures start before a line of monitoring code is written: the intended use is vague, the boundaries are undefined, and nobody has decided what evidence is required before patients are involved. A pre-deployment governance charter fixes those things at the start. It states what the system is, what it is not, where its boundaries are, and which artifacts must exist before it can move toward a pilot.

This is drawn from the actual governance pack (v0.2) of the medical digital twin I am building at the HKU-Avnet Joint AI Laboratory. The system has not been deployed; that is precisely why this charter exists now. It is sanitized: partner names, individuals, and confidential detail are removed, and the structure and governance logic are the real ones.

## Fixed metadata

| Field | Value |
| --- | --- |
| Project stage | Incubation / pre-deployment |
| Prepared by | Developed and drafted as the project's governance workstream |
| Prepared for | Executive sponsor and relevant PI review (named internally) |
| Review status | The underlying project definition and boundaries were circulated to the project's industry sponsor in August 2026 and acknowledged. The Phase 1 scope and boundaries were also reviewed in August 2026 by an external clinician holding no role in the project at the time; that review narrowed the Phase 1 scope to a single condition and reframed the use case around a specific clinical question. Independent clinical validation has not taken place |
| Source governance pack version | v0.2 |
| Last updated | August 2026 |
| Known limitation | Pre-deployment: no clinical validation or post-market evidence yet exists; this charter defines what must be produced before any external pilot |

## Project definition and intended use

The initiative develops a **non-diagnostic** medical digital twin prototype with a **parallel pre-deployment governance framework**. The current system is an internal research demonstration. It is not a clinically validated or deployment-ready system, and it is not a diagnostic device. Its patient-facing purpose, when reached, is longitudinal explanation and escalation within a bounded scope, not autonomous diagnosis.

## Scope of the governance workstream

1. Use-case and intended-use definition
2. Model boundary statement (what the system may and may not claim)
3. Data-readiness assessment
4. Clinical review workflow
5. Risk register and RACI
6. Incident escalation pathway
7. Post-market monitoring concept
8. Deployment-readiness criteria

## Boundaries

- **Clinical validation and patient-safety decisions** require clinical reviewer / clinical PI approval, not the AI team alone.
- **IP, licensing, spinout, and commercialisation** require the relevant institutional, legal, and technology-transfer process.
- **Any hospital deployment** requires formal clinical, legal, and data-governance review before it proceeds.

## Pre-deployment artifact set

Before the system can move toward an external pilot, this charter requires the following to exist and be reviewed: use-case definition, data-readiness checklist, model boundary statement, clinical review workflow, risk register, RACI matrix, incident escalation pathway, and a post-market monitoring concept.

## The design principle

Governance is not a compliance layer added after the model works. It is built **in parallel with the system, before deployment**, so that intended use, boundaries, and accountability are decided while they can still shape the build, rather than reconstructed after something goes wrong. This charter is the instrument that makes "we will govern it later" into "here is what must be true before it reaches a patient."

<details markdown="1">
<summary>Citation metadata</summary>

| Field | Value |
| --- | --- |
| Title | Pre-deployment Governance Charter (project-derived, sanitized) |
| Author | Xiaoyan Qian |
| Public page version | v0.1 |
| Publication date | 2026-08-03 |
| Stable URL | https://xiaoyanqian.com/artifacts/pre-deployment-charter/ |
| Licence | All rights reserved |
| Suggested citation | Qian, X. (2026). *Pre-deployment Governance Charter (project-derived, sanitized)* (v0.1). https://xiaoyanqian.com/artifacts/pre-deployment-charter/ |

</details>
