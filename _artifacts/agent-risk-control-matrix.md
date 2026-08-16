---
title: "Agent Risk-Control Matrix (project-derived, sanitized)"
evidence_type: "Project-derived · pre-deployment · sanitized"
evidence_class: project
summary: "Turns each way an AI agent can cause harm into a named control, a test that proves the control works, a monitored signal, and an audit-evidence record. It is the difference between promising an agent is safe and being able to evidence it."
author: "Xiaoyan Qian"
version: "v0.2"
publication_date: "2026-08-03"
stable_url: "https://xiaoyanqian.com/artifacts/agent-risk-control-matrix/"
license: "All rights reserved"
suggested_citation: "Qian, X. (2026). Agent Risk-Control Matrix (project-derived, sanitized), v0.2. https://xiaoyanqian.com/artifacts/agent-risk-control-matrix/"
---

## What this artifact is for

An agent registry answers *what agents exist* and *who owns them*. This matrix answers the next question: for each way an agent can cause harm, what control prevents it, how is that control tested, and where is the evidence that it held.

It exists because agentic AI governance is moving from voluntary pledges ("we will use agents responsibly") toward institutionalized controls: named risks, defined controls, pre-deployment and ongoing tests, monitored signals, and an audit trail a reviewer can inspect. This artifact is the project-level version of that shift. Each row is one risk, not one agent, because the same risk (for example, acting without human approval) applies across several agents.

This is drawn from the governance pack (v0.2) of the patient-facing medical digital twin I am building at the HKU-Avnet Joint AI Laboratory. It pairs with the agent registry in the same pack: the registry defines each agent's permission tier; this matrix defines how the boundaries implied by that tier are enforced and evidenced. It is sanitized, and the rows are an illustrative pre-deployment worked example used to exercise the structure.

## Fixed metadata

| Field | Value |
| --- | --- |
| Project stage | Incubation / pre-deployment |
| Scope | Per-risk controls across the patient-facing agent pipeline: control, control type, test, monitored signal, audit evidence, owner |
| Approval owner | AI Governance Lead |
| Source governance pack version | v0.2 |
| Last updated | August 2026 |
| Known limitation | Pre-deployment worked example: controls and tests exercise the structure; owners are role-level and tests are pre-deployment, to be run and fixed to named individuals before any external pilot |

## How to read each row

For each agent risk, the matrix records a **control** (the mechanism that limits it), a **control type** (*preventive*, *detective*, or *corrective*), a **test** (how we check the control actually works, before deployment and on change), a **monitored signal** (what a dashboard would show if the control were failing), an **audit-evidence** record (what a reviewer can inspect), and a named **owner**.

## Risk-control matrix

| Agent risk | Control | Type | Test / assurance | Monitored signal | Audit evidence | Owner |
|---|---|---|---|---|---|---|
| Acts without required human approval | Hard approval gate: action cannot execute until a named human approves that instance | Preventive | Attempt action without approval and confirm block; re-test on every prompt/model change | Actions executed without a logged approval (target: zero) | Approval logs with approver, timestamp, action reference | Governance Lead |
| Accesses PHI beyond minimum-necessary scope | Scoped, read-only, field- and purpose-limited credentials | Preventive | Request out-of-scope fields and confirm denial; quarterly access review | Out-of-scope access attempts; PHI fields read vs. baseline | Access logs, credential scope, quarterly review record | Data Governance Lead |
| Retains patient memory outside approved systems | Session-only memory; enforced retention limits; no training reuse without approval | Preventive + Detective | Inspect memory store for out-of-policy retention; verify retention timers expire records | Records exceeding retention window | Retention config, memory-store audit export | Data Governance Lead |
| Operates above its declared permission tier | Tier enforced in configuration; escalation requires registry update and re-review | Preventive | Attempt tier-exceeding action and confirm block; diff running config against registry | Any action mapped above the declared tier ceiling | Config-vs-registry diff, change-control record | Governance + Eng Lead |
| Continues operating after a serious safety trigger | Auto-suspend on defined trigger; manual kill switch held by named roles | Corrective | Fire a test trigger in staging; confirm suspension within target time; periodic drill | Time from trigger to suspension; failed suspensions | Incident log, kill-switch drill record with timings | Clinical Safety Lead + IT Security |
| Produces patient-facing output while uncertainty is high | Uncertainty threshold blocks output and routes to human review | Preventive | Feed high-uncertainty cases and confirm block/route; calibrate threshold | High-uncertainty outputs released vs. blocked | Threshold config, blocked-output log, review handoff | Medical Director |
| Crosses from consented purpose into unrelated inference | Task-specific guardrails restrict scope to validated domain | Preventive + Detective | Red-team with off-purpose prompts; confirm refusal; sample outputs for scope drift | Off-scope request rate; flagged domain-crossing outputs | Guardrail policy, red-team report, sampled review | Governance Lead |
| Action cannot be reconstructed afterward (no audit trail) | Mandatory logging of inputs, decisions, approvals, and outputs for every action | Detective | Verify every action type produces a complete, tamper-evident log entry | Proportion of actions with complete logs (target: 100%) | Log completeness report, one end-to-end action trace | IT Security |

## Sizing the gate: why some actions are stopped and others are sampled

The matrix above shows what each control is. This section answers the question a reviewer asks next: if every agent action needed a human signature, the system would be worthless, and if none did, the cost of every mistake would land on the patient. So where does the line go?

The deciding factor is not whether the actor is an AI. It is **how easily the action can be taken back**.

| Action class | Can it be taken back? | What the gate looks like |
|---|---|---|
| Internal read, or a draft that is never sent | Yes, it changes nothing outside the system | Sampled and reviewed afterwards, no approval in advance |
| Scheduling draft or non-clinical notice | Briefly, it can be corrected before anyone acts on it | Approved before release, with standing approval allowed for a defined low-risk class |
| Patient-facing clinical content | No, not once the patient has read it | Approved instance by instance, with the input, version, uncertainty, and approver all logged |
| Payment, data leaving the system, permission change, writing to the medical record | No | Approved instance by instance by a named accountable person, or prohibited outright |

Two rules follow. An action is gated because it cannot be cheaply undone, so the reason for each gate is recordable and can be challenged. And where reversibility is unclear, the action is treated as irreversible until shown otherwise, which fails closed rather than open.

## The design principle

A control that is written down but never tested is not a control; it is a hope. This matrix is only meaningful if every control has a **test** run before deployment and repeated on material change, a **monitored signal** so failure is visible on a dashboard rather than discovered during an incident, and an **audit-evidence** record a reviewer can inspect without taking the team's word for it.

That is the shift this artifact reflects: from *promising* good agent behaviour to *evidencing* it. Voluntary assurance says "we are careful." Institutionalized control says "here is the gate, here is the test that proves the gate holds, here is the dashboard that watches it, and here is the log that proves it held on this date."

<p class="muted">Related note: <a href="{{ '/notes/2026-07-22-from-promise-to-evidence-agent-governance/' | relative_url }}">From promise to evidence: what institutionalized agent governance actually asks for</a>.</p>

<details markdown="1">
<summary>Citation metadata</summary>

| Field | Value |
| --- | --- |
| Title | Agent Risk-Control Matrix (project-derived, sanitized) |
| Author | Xiaoyan Qian |
| Public page version | v0.1 |
| Publication date | 2026-08-03 |
| Stable URL | https://xiaoyanqian.com/artifacts/agent-risk-control-matrix/ |
| Licence | All rights reserved |
| Suggested citation | Qian, X. (2026). *Agent Risk-Control Matrix (project-derived, sanitized)* (v0.1). https://xiaoyanqian.com/artifacts/agent-risk-control-matrix/ |

</details>
