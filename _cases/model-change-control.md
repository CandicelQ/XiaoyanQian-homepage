---
title: "Model Change Control and Predetermined Change Control Plan (PCCP)"
evidence_type: "Project-derived governance case · sanitized"
evidence_class: project
decision_state: "Conditional approval"
summary: "A model update improves aggregate accuracy, so it ships. But 'better on average' is not 'safe for this population': the update silently shifts calibration or subgroup performance and reaches patients with no clinical re-sign-off and no record of what changed. The governance question is which changes are pre-authorized, which require re-validation, and which require full clinical re-approval — before any of them go live."
---

## Problem

A patient-facing medical digital twin depends on a model that is periodically retrained or updated, in-house or by a vendor. A new version improves aggregate accuracy, so it is deployed. But "better on average" is not the same as "safe for this population": the update silently shifts calibration, changes subgroup performance, or alters the explanation style patients rely on. Because the change was treated as a routine software update rather than a governed clinical change, it went live without clinical re-sign-off, without re-validation on the local population, and without a record of what changed and why. When a problem surfaces weeks later, no one can reconstruct which version was in use when.

The governance gap is the absence of change control: the discipline of deciding, in advance, which changes are pre-authorized, which require re-validation, and which require full clinical re-approval.

## Key risks

- **Patient safety**: an update degrades performance for a subgroup while improving the average.
- **Accountability**: no record of which version produced a given output undermines incident investigation.
- **Regulatory and audit**: for AI-SaMD, unmanaged changes can fall outside the terms of authorization; a PCCP defines the envelope of pre-authorized change.
- **Trust**: silent behaviour changes erode clinician confidence.

## Governance mechanism

A predetermined change control plan classifies changes in advance and ties each class to a required action. Every deployed version carries a version identifier, a change log, and a validation record. No version reaches patients without passing its class-appropriate gate.

| Change class | Review owner | Trigger threshold | Required action | User notification |
| --- | --- | --- | --- | --- |
| Minor (within pre-authorized envelope) | AI Product Owner | Within PCCP-defined bounds | Log, monitor, no re-approval | None required |
| Moderate (calibration / subgroup impact) | Clinical Safety Lead | Any predicted subgroup or calibration shift | Local re-validation before deployment | Clinician notified via release note; patient notice only if disclosed limitations change |
| Major (intended use, scope, or architecture) | Medical Director + Regulatory | Any change to scope or intended use | Full clinical re-approval; regulatory review | Clinician and patient disclosure updated and re-acknowledged before the change reaches patients |

### No-deployable-version alarm (when rollback is not safe)

Standard change control assumes a safe version always exists to roll back to. Adaptive medical AI has a harder failure state: **the live version is degrading, and the candidate version has not met the deployment bar** — so neither forward nor backward is safe. This state must be detected and named on its own, not left as an implicit gap between "deploy" and "rollback".

The system therefore predefines, in advance, how it falls back to a **pure human workflow** when no model version is deployable — a distinct alarm status monitored continuously, separate from the Approve / Conditional approval / Clinical review / Reject decision states.

| Field | What it records |
| --- | --- |
| Current version safe? | Is the live version still within its validated performance and calibration envelope? (Yes / Degrading / No) |
| Candidate version deployable? | Has the proposed successor met the deployment bar (local re-validation, subgroup, calibration, sign-off)? (Yes / Not yet / No) |
| Fallback workflow | The predefined pure-human clinical pathway used when neither version is safe (who does the task manually, with what support, at what capacity) |
| Clinical owner | The named clinician accountable for invoking and running the fallback (not IT by default) |
| Alarm status | Normal / Watch / **No-deployable-version** — the last state triggers the fallback workflow and a mandatory clinical review |

Governance rule: if **Current version safe? = No** and **Candidate version deployable? = No**, the system does not "fail open" on a degrading model; it moves to the predefined fallback workflow under the named clinical owner, and the AI-assisted feature is suspended until a version passes its gate.

### Retirement (a distinct terminal state, not an extended suspension)

Change control governs *replacing* one version with another. It does not by itself decide when a component should be **retired** — permanently withdrawn from the patient-facing path, not merely suspended pending a fix. Retirement must be triggered explicitly, not left to accumulate as an indefinite "Watch" or "No-deployable-version" state.

| Retirement trigger | What it means | Required action |
| --- | --- | --- |
| Persistent drift | Drift recurs across multiple recalibration cycles without holding within the validated envelope | Retire the component; do not re-approve on a repeat cycle without a redesign, not just a recalibration |
| Unsupported dependency | The model, library, or vendor component it depends on is deprecated, unpatched, or out of support | Retire on the end-of-support date; do not run unsupported components in a patient-facing path |
| Use-case change | The validated intended use no longer matches how the component is actually used in practice | Retire from the changed use; a scope-expansion decision is required before any successor covers the new use |
| Safer replacement available | A validated alternative demonstrably reduces risk for the same intended use | Retire the incumbent once the replacement has passed its deployment gate; do not run both versions in parallel beyond a defined transition window |

A retired component's control entries move to **Retired** status in the master control register, not simply deleted, with the triggering condition, retirement date, and the fallback or replacement that took its place recorded.

## RACI

**Responsible**: AI Product Owner. **Accountable**: Clinical Safety Lead (Medical Director for major changes). **Consulted**: regulatory, vendor, AI/data science team. **Informed**: treating clinicians.

## Audit evidence

PCCP document; version identifiers and change logs; local re-validation reports; sign-off records by change class; vendor change notifications.

## Decision state

**Conditional approval.** Ongoing use is approved only under an enforced PCCP. Updates that fall outside the pre-authorized envelope require re-validation or re-approval before reaching patients. Silent deployment of unclassified changes is a reject condition.

## Lesson

Change control is the difference between a governed clinical change and a silent software update. It is only real when each change carries a class, a named review owner, a re-validation trigger, and a retained version trail — and when the system has a predefined answer for the hardest state of all: what happens to the patient when no version is safe to run.
