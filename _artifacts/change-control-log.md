---
title: "Model Change Control Log (sanitized)"
evidence_type: "Project-derived · sanitized"
evidence_class: project
summary: "Turns 'we updated the model' into a governed decision. Every change carries a risk level, the metrics it touches, whether revalidation is required, a named approval owner, and the evidence to keep — so no silent update reaches a patient without someone accountable signing for it."
author: "Xiaoyan Qian"
version: "v0.1"
publication_date: "2026-08-10"
stable_url: "https://xiaoyanqian.com/artifacts/change-control-log/"
license: "All rights reserved"
suggested_citation: "Qian, X. (2026). Model Change Control Log (sanitized), v0.1. https://xiaoyanqian.com/artifacts/change-control-log/"
---

## What this artifact is for

A change control log exists to stop the most common failure mode of a deployed medical AI: a silent update that shifts behaviour with no record of who approved it, what it affected, or how to roll back. It makes every change a governed decision. Each row answers five questions at once: what changed, how risky it is, which metrics it touches, whether revalidation is required, and who has the authority to approve it — plus the evidence that must survive the change.

This is the change-control structure I apply in pre-deployment governance design for my patient-facing cardiometabolic twin. It maps to FDA Predetermined Change Control Plan (PCCP) thinking: classify the change, pre-define the revalidation and approval envelope, and keep the evidence trail. It is the fillable log that pairs with the [Change control and PCCP case]({{ '/cases/model-change-control/' | relative_url }}), which sets out the change-class gates, the no-deployable-version fallback, and the retirement state this log records against. Because the system I build has not yet deployed, the worked rows are an illustrative change-control plan used to exercise the structure, not entries from a live system. It carries no confidential project or patient detail.

## Fixed metadata

| Field | Value |
| --- | --- |
| Data provenance | Version records, change requests, validation reports, test records, UI screenshots, workflow assessments |
| Model version | Applies across pre- and post-change versions (version pinned at each validation point) |
| Approval owner | Defined per change in the table below |
| Effective date | Not yet in force (pre-deployment) |
| Version | v0.1 |
| Last updated | August 2026 |
| Known limitation | Different changes affect risk differently; risk level and approval owner must be judged against the clinical use context, not applied mechanically |

## Change control log

| Change ID | Change Description | Risk Level | Metrics Affected | Revalidation Required? | Approval Owner | Evidence to Keep |
| --- | --- | --- | --- | --- | --- | --- |
| C-001 | Update model from v1.2 to v1.3 | High | Sensitivity, false negatives, subgroup gap | Yes | Clinical Director / Change Control Board | Validation report, version log |
| C-002 | Adjust high-risk threshold from 0.70 to 0.65 | High | Sensitivity, specificity, PPV | Yes | Clinical Safety Lead or Clinical Director | Threshold analysis, decision memo |
| C-003 | Add new hospital data to training set | Medium/High | Calibration, subgroup performance | Yes | Governance Lead + Clinical Safety Lead | Data provenance, validation report |
| C-004 | Change image preprocessing pipeline | Medium | AUC, sensitivity, false negatives | Yes | ML Lead (escalates to Clinical Safety Lead if clinical metrics move) | Technical change note, test result |
| C-005 | Change alert wording in clinician UI | Medium | Override rate, clinician reliance | Maybe | Clinical Safety Lead (Product Owner cannot approve alone) | UI screenshots, user-testing notes |
| C-006 | Integrate AI alert into emergency workflow | High | Time-to-review, false negatives, workflow risk | Yes | Clinical Director / Change Control Board | Workflow risk assessment |

## Who approves what — the four-question test

When it is not obvious who signs for a change, four questions decide the approval owner:

1. **Does it affect patient safety?** → Clinical Director / Clinical Safety Lead.
2. **Does it affect technical performance but not yet clinical impact?** → ML Lead, with the Governance Lead keeping the evidence; escalate if clinical metrics move.
3. **Does it change how clinicians read or use the AI?** → Clinical Safety Lead; the Product Owner cannot approve alone.
4. **Does it affect legal duties, patient consent, data use, or regulatory notification?** → Legal / Compliance.

## The design principle

Change control is only real when each change is tied to **a risk classification, a revalidation trigger, a named approval owner, and a retained evidence trail.** The point of the Governance Lead is not to approve everything: it is to make sure the right people approve on the basis of the right evidence, and that a safe prior version always remains to fall back to.

<details markdown="1">
<summary>Citation metadata</summary>

| Field | Value |
| --- | --- |
| Title | Model Change Control Log (sanitized) |
| Author | Xiaoyan Qian |
| Public page version | v0.1 |
| Publication date | 2026-08-10 |
| Stable URL | https://xiaoyanqian.com/artifacts/change-control-log/ |
| Licence | All rights reserved |
| Suggested citation | Qian, X. (2026). *Model Change Control Log (sanitized)* (v0.1). https://xiaoyanqian.com/artifacts/change-control-log/ |

</details>
