---
title: "Post-deployment Monitoring Table (sanitized)"
evidence_type: "Scenario-based · sanitized"
evidence_class: scenario
summary: "Turns 'keep an eye on the model' into executable action. Every row answers five questions: what to watch, how often, who is responsible, what counts as abnormal, and what to do next."
author: "Xiaoyan Qian"
version: "v0.2"
publication_date: "2026-08-03"
stable_url: "https://xiaoyanqian.com/artifacts/monitoring-table/"
license: "All rights reserved"
suggested_citation: "Qian, X. (2026). Post-deployment Monitoring Table (sanitized), v0.2. https://xiaoyanqian.com/artifacts/monitoring-table/"
---

## Citation metadata

| Field | Value |
| --- | --- |
| Title | Post-deployment Monitoring Table (sanitized) |
| Author | Xiaoyan Qian |
| Version | v0.2 |
| Publication date | 2026-08-03 |
| Stable URL | https://xiaoyanqian.com/artifacts/monitoring-table/ |
| Licence | All rights reserved |
| Suggested citation | Qian, X. (2026). *Post-deployment Monitoring Table (sanitized)* (v0.2). https://xiaoyanqian.com/artifacts/monitoring-table/ |

## What this artifact is for

A monitoring table is not decoration. It exists to make continuous oversight executable. Each row answers five questions at once: what to watch, how often, who is responsible, what counts as abnormal, and what happens when it does. A metric without a review owner, a trigger threshold, and a required action is not being governed.

The structure and monitoring logic here are the ones I apply in pre-deployment governance design, shown in the domain of my patient-facing cardiometabolic twin to match the bounded cardiometabolic use case in my Viewpoint. Because the system I build has not yet deployed, the worked example is an illustrative post-deployment monitoring plan used to exercise the structure, not figures from a live system. It carries no confidential project or patient detail.

## Fixed metadata

| Field | Value |
| --- | --- |
| Data provenance | Wearable and EHR streams, model output logs, human review records |
| Model version | Cardiometabolic Risk Twin — pre-deployment build (version pinned at validation before any pilot) |
| Approval owner | AI Governance Lead |
| Effective date | Not yet in force (pre-deployment) |
| Version | v0.2 |
| Last updated | July 2026 |
| Known limitation | Some performance metrics have label delay; monthly review may lag real clinical change |

## Monitoring table

| What to monitor | Metric | Frequency | Owner | Alert threshold | Trigger action |
| --- | --- | --- | --- | --- | --- |
| Input drift | Age, condition mix, missingness, wearable and lab distributions (HR, HRV, sleep, blood pressure, HbA1c) | Monthly | Data team | Significant shift in any key variable | Start drift analysis |
| Output drift | High-risk trajectory flags per week | Weekly | Governance Lead | More than 50% above baseline | Notify clinical lead for review |
| Performance drift | AUC, sensitivity, calibration for cardiovascular risk | Monthly | Vendor + data team | AUC down > 0.05 or sensitivity down > 15% | Submit performance report |
| Calibration drift | Observed vs predicted cardiovascular events in the high-risk group | Monthly | Patient safety team | Predicted high-risk but observed rate keeps falling | Recalibrate or restrict use |
| Fairness drift | Performance for women, older, and low-income or LMIC patients | Quarterly | Ethics / equity committee | Miss rate rises notably in any group | Subgroup audit |
| Clinical burden | Clinician time handling flags | Monthly | Clinical unit lead | Rising alert-fatigue complaints | Adjust thresholds or workflow |

## The design principle

Monitoring is only real when each metric is tied to **an owner, a trigger threshold, and a required action.** The table answers the questions that matter after deployment: what do we look at, how often, who is accountable, what counts as abnormal, and what do we do about it. That is the difference between an accuracy report and continuous governance.
