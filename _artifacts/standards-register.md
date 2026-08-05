---
title: "Standards and Frameworks Register (project-derived, sanitized)"
evidence_type: "Project-derived · pre-deployment · sanitized"
evidence_class: project
summary: "A register that treats every external framework we adopt — NIST, WHO, EU AI Act, ISO — as a tracked object with a version, mapped internal controls, an owner, and a change-impact plan. It governs the framework itself, so that 'we adopted NIST' is never mistaken for a finished, permanent fact."
author: "Xiaoyan Qian"
version: "v0.1"
publication_date: "2026-08-05"
stable_url: "https://xiaoyanqian.com/artifacts/standards-register/"
license: "All rights reserved"
suggested_citation: "Qian, X. (2026). Standards and Frameworks Register (project-derived, sanitized), v0.1. https://xiaoyanqian.com/artifacts/standards-register/"
---

## What this artifact is for

Adopting a governance framework is easy to claim and easy to leave stale. "We follow NIST," "we align with WHO guidance," "we map to the EU AI Act" — each of these is only true against a **specific version**. When the framework is revised, the controls, evidence, and risk classifications mapped to it may quietly stop being sufficient, while the adoption claim keeps being repeated.

This register closes that gap. It makes each external standard a tracked object rather than a settled decision, with six fixed columns: **Framework, Version, Internal controls mapped, Owner, Last review, Change impact if revised.** It is the single upstream anchor for the framework-facing claims spread across the rest of my governance pack — the change-control plan that maps to FDA PCCP thinking, the disclosure work that maps to EU AI Act transparency, the liability map that maps to WHO's findings.

## Why this is the difference between *reading* a framework and *governing under* one

Most portfolios can name the frameworks they have read. Far fewer can show the mechanism that keeps those frameworks live after adoption. That mechanism is the actual signal of governance maturity:

- **Reading a framework** produces a one-time statement: "our system aligns with X."
- **Governing under a framework** produces a maintained object: a named owner who tracks version X, a mapping from X to the specific internal controls it touches, and a pre-written answer to "if X is revised, what must we re-check?"

Concretely: NIST has said its AI Risk Management Framework 1.0 is under revision and has issued a critical-infrastructure profile concept. Under a one-time-claim model, that news changes nothing until an audit catches the drift. Under this register, that news is a **review trigger**: the mapped internal controls are treated as provisionally unverified until the change-impact column has been worked through and the mapping re-confirmed.

## Why I built this (builder's perspective)

Building the twin, I kept citing external frameworks to justify design choices — a change-control envelope here, a transparency obligation there. Each citation was true on the day I wrote it. What I did not have, until this register, was any structure that would tell me when one of those citations had gone out of date because the framework moved underneath it. A framework reference with no owner and no version is the governance equivalent of a hard-coded credential: it works today, and nobody is responsible for the day it stops.

## Fixed metadata

| Field | Value |
| --- | --- |
| Project stage | Incubation / pre-deployment |
| Scope | External standards, frameworks, and regulations the project claims alignment with |
| Source governance pack version | v0.2 |
| Last updated | August 2026 |
| Known limitation | Version strings are illustrative pre-deployment placeholders; a concrete version is pinned before any external-facing alignment claim is made |

## The register (sanitized structure)

| Framework | Version (as adopted) | Internal controls mapped | Owner | Last review | Change impact if revised |
| --- | --- | --- | --- | --- | --- |
| FDA Predetermined Change Control Plan (PCCP) thinking | Version as cited in change-control case | Change-class table and pre-authorized envelope | Governance Lead | 2026-08-05 | Re-check change-class thresholds and re-validation triggers |
| EU AI Act — transparency (Art. 50) | In force 2026-08-02 | Disclosure inventory; public disclosure summary | Governance Lead | 2026-08-05 | Re-check touchpoint disclosure list and machine-readable-marking obligations |
| WHO guidance on AI for health | 2024 assessment | Liability allocation map | Governance Lead | 2026-08-05 | Re-check liability allocation assumptions |
| NIST AI Risk Management Framework | 1.0 (revision pending; critical-infrastructure profile concept issued) | Risk register; KPI / monitoring register | Governance Lead | 2026-08-05 | On revision, re-map risk categories and monitoring controls; check whether a sector profile applies |
| ISO/IEC 42001 (AI management system) | Not yet adopted — candidate | To be mapped on adoption | Governance Lead | 2026-08-05 | If adopted, map management-system clauses to existing registers before claiming alignment |

## The rule that makes it real

No external-framework alignment is claimed except against a named version recorded here, with a named owner responsible for tracking that version. When a tracked framework is revised, the mapped internal controls are treated as provisionally unverified until the change-impact has been worked through and the mapping re-confirmed. "We adopted framework X" is never treated as a completed, permanent fact.
