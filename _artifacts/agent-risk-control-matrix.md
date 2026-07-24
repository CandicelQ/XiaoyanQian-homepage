---
title: "Agent Risk-Control Matrix (project-derived, sanitized)"
evidence_type: "Project-derived · pre-deployment · sanitized"
evidence_class: project
summary: "Turns each way an AI agent can cause harm into a named control, a test that proves the control works, a monitored signal, and an audit-evidence record. It is the difference between promising an agent is safe and being able to evidence it."
---

## What this artifact is for

An agent registry answers *what agents exist* and *who owns them*. This matrix answers the next question: for each way an agent can cause harm, what control prevents it, how is that control tested, and where is the evidence that it held.

It exists because agentic AI governance is moving from voluntary pledges ("we will use agents responsibly") toward institutionalized controls: named risks, defined controls, pre-deployment and ongoing tests, monitored signals, and an audit trail a reviewer can inspect. This artifact is the project-level version of that shift. Each row is one risk, not one agent, because the same risk (for example, acting without human approval) applies across several agents.

This is drawn from the governance pack (v0.1) of the patient-facing medical digital twin I am building at a joint university-industry AI laboratory at HKU. It pairs with the agent registry in the same pack: the registry defines each agent's permission tier; this matrix defines how the boundaries implied by that tier are enforced and evidenced. It is sanitized, and the rows are an illustrative pre-deployment worked example used to exercise the structure.

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

## The design principle

A control that is written down but never tested is not a control; it is a hope. This matrix is only meaningful if every control has a **test** run before deployment and repeated on material change, a **monitored signal** so failure is visible on a dashboard rather than discovered during an incident, and an **audit-evidence** record a reviewer can inspect without taking the team's word for it.

That is the shift this artifact reflects: from *promising* good agent behaviour to *evidencing* it. Voluntary assurance says "we are careful." Institutionalized control says "here is the gate, here is the test that proves the gate holds, here is the dashboard that watches it, and here is the log that proves it held on this date."

<p class="muted">Related note: <a href="{{ '/notes/2026-07-22-from-promise-to-evidence-agent-governance/' | relative_url }}">From promise to evidence: what institutionalized agent governance actually asks for</a>.</p>
