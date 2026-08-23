---
title: "Model and Infrastructure Dependency Register (project-derived, sanitized)"
evidence_type: "Project-derived · pre-deployment · sanitized"
evidence_class: project
summary: "A register of the external models, cloud services, and hardware a patient-facing system depends on, each with an owner, a fallback, and a review trigger. It governs a failure mode most risk registers miss: not the model being wrong, but the model becoming unavailable."
author: "Xiaoyan Qian"
version: "v0.2"
publication_date: "2026-08-03"
stable_url: "https://xiaoyanqian.com/artifacts/dependency-register/"
license: "All rights reserved"
suggested_citation: "Qian, X. (2026). Model and Infrastructure Dependency Register (project-derived, sanitized), v0.2. https://xiaoyanqian.com/artifacts/dependency-register/"
---

## What this artifact is for

Most medical AI risk work is built around clinical failure: false negatives, subgroup performance, accuracy drift. This register covers a different failure mechanism that can produce the same patient harm through a completely different path: a model, cloud region, or chip supply the system depends on becoming unavailable, restricted, or withdrawn for reasons outside the project's control, such as a vendor outage, an export-control action, a licensing change, a price change, or a version deprecation.

The design point is the same as a risk register: no dependency exists without an owner, a fallback, and a review trigger. A dependency that exists only as a working credential, with no owner and no fallback, is an unmanaged risk, not an implementation detail.

This artifact is drawn from the governance pack (v0.2) of the patient-facing medical digital twin I am building at the HKU-Avnet Joint AI Laboratory. It is sanitized: no vendor names, contract terms, or confidential architecture detail are included. The dependencies are described at the level of function and category, and the register rows are an illustrative pre-deployment worked example used to exercise the structure, not a live production inventory.

## Why I built this (builder's perspective)

While building the twin's 3D generation and patient-facing explanation components, I repeatedly faced a concrete choice: use a stronger third-party hosted model I do not control, or a weaker component I can run and own inside our own environment. On a deadline, the pull is always toward the hosted model, because it makes the demonstration better today.

The question that does not show up in a demonstration is the one this register captures: if that hosted model changed its terms, raised its price, deprecated the version I validated against, or became unavailable for a policy reason, what exactly happens to the patient-facing feature, and who is responsible for that outcome? A dependency I chose for convenience becomes a governed decision only once it has an owner and a fallback, not just an API key that happens to work today. This is the builder's version of governance: I am naming the shortcuts I was tempted to take while building, and turning them into decisions someone can review.

## Fixed metadata

| Field | Value |
| --- | --- |
| Project stage | Incubation / pre-deployment |
| Scope | External models, cloud services, and hardware on a patient-facing path |
| Source | The internal dependency-readiness register of the medical digital twin governance pack |
| Last updated | 23 August 2026 |
| Known limitation | Pre-deployment worked example: owners and fallbacks are role-level placeholders to exercise the structure, to be fixed to named individuals before any external pilot |

## Dependency register

| Dependency (function) | Layer | What breaks if unavailable | Single point of failure? | Owner | Fallback / degraded mode | Review trigger |
| --- | --- | --- | --- | --- | --- | --- |
| Third-party hosted model for patient-facing explanation drafting | Model / inference | Explanation drafts cannot be generated; patient-facing text feature stops | Yes, if no second provider | Governance Lead + Eng Lead | Switch to smaller self-hosted model in reduced-scope mode; block feature rather than fail open | Vendor terms, price, or version change; export-control or access-policy change |
| Third-party 3D generation model or service | Model / rendering | 3D visualization pipeline cannot generate new assets | Yes | Eng Lead | Fall back to pre-generated or cached assets; disable live generation | Vendor deprecation; license change; cost threshold breach |
| Cloud region hosting inference and storage | Cloud infrastructure | Inference and data access interrupted for that region | Depends on multi-region setup | IT Security + Eng Lead | Documented failover region or safe shutdown of patient-facing features | Provider outage; jurisdictional or data-residency change |
| Accelerator (GPU) supply for on-prem fallback components | Hardware | Self-hosted fallback models cannot run at required capacity | Yes, during shortage | IT Security | Capacity reservation; degraded-throughput mode; queue non-urgent tasks | Export control on accelerators; supply shortage; procurement delay |
| Foundation model version pinned for validation | Model / versioning | Validated behaviour changes silently if the version is deprecated | Yes | Clinical Safety Lead | Pin version; hold a re-validation plan for the successor version | Vendor deprecation notice; forced version migration |

## Who patches it, and how long it is supported

The register above records whether a dependency has an owner and a fallback. It does not answer two questions that decide whether a component may stay on a patient-facing path at all: **who applies security patches**, and **how long the supplier will keep supporting it**. Both are procurement-time facts, and both expire. "Unpatched or out of support" is a retirement trigger elsewhere in the pack, so the end-of-support date has to be recorded somewhere before that trigger can fire.

| Dependency | Patch owner (who applies fixes) | Support commitment / end-of-support | Security assurance held (type, date, expiry) | Action on lapse |
| --- | --- | --- | --- | --- |
| Hosted model for patient-facing drafting | Vendor (hosted service); the hospital cannot patch | Per contract term; confirm renewal and deprecation notice period | Vendor attestation, date and expiry to be pinned | Suspend the patient-facing text feature; switch to self-hosted fallback |
| Hosted 3D generation service | Vendor (hosted service) | Per contract term | To be pinned | Disable live generation; use cached assets |
| Cloud region | Shared: the provider patches the platform, internal IT patches the configuration | Provider lifecycle policy; region deprecation notice | Provider certification, scope and expiry to be pinned | Failover region or safe shutdown of patient-facing features |
| On-prem accelerators | Internal IT | Hardware and firmware vendor support window | Firmware support statement, to be pinned | Degraded-throughput mode; plan replacement before support ends |
| Pinned foundation-model version | The vendor sets the version lifecycle; the clinical safety owner owns re-validation | Vendor deprecation date for the pinned version | Validation is version-specific and expires with the pinned version | Do not auto-migrate; hold the successor at its re-validation gate |

Two rules follow. A component whose support has ended does not stay on a patient-facing path while a replacement is being discussed. And **a patch owner recorded as "the vendor" is only meaningful if a contract obliges them to act within a stated time; otherwise the real patch owner is nobody.**

## The hard-to-replace input scan

The register above starts from software and compute. But capability is often limited not by the most visible component but by a low-profile, hard-to-substitute, single-source input. Helium is the standard example: unremarkable until you notice that MRI superconducting magnets cannot run without it, that its production is geographically concentrated, and that it has no easy substitute, so a distant supply shock can idle imaging capacity far downstream.

The scan asks one question across five categories rather than one: **which device, cloud, sensor, specialist, or data source is difficult to replace?** The test is not "is it important" but "if it disappeared, could we substitute it, and how fast". A dependency is high risk when it is concentrated in source, meaning one region, one vendor, or one person, **and** has no ready substitute.

| Category | Example in this ecosystem | Why hard to replace | Concentration / substitutability risk |
| --- | --- | --- | --- |
| Physical consumable | Cryogens for imaging; specialised assay reagents | No functional substitute; production geographically concentrated | High: single-region source, no substitute |
| Sensor or wearable supply | The specific device the system is validated against | The data pipeline and the validation are tied to that device's signal characteristics | Medium to high: single vendor; discontinuation risk |
| Cloud or region | Inference and storage in one region | Data-residency and latency constraints prevent easy migration | Medium: provider and region lock-in |
| Specialist (a person) | A key clinical annotator, safety reviewer, or model owner | Tacit knowledge; validation and sign-off depend on them | High: a single point of failure that happens to be a person |
| Data source or registry | A unique external dataset governed by one agreement | No equivalent dataset; access is not portable | High: sole source |

The point is coverage across all five. A system can be perfectly governed at the software layer and still be one discontinued sensor, one departing specialist, or one supply shock away from losing a patient-facing function.

## Every fallback moves a risk; it does not delete one

This is where most dependency registers stop short. A fallback rarely removes a risk outright. More often it moves the risk somewhere new, and the new place then needs its own control. Switching a patient-facing feature to a self-hosted model when a vendor fails removes vendor-outage exposure but relocates risk onto self-hosted capacity and output quality. Caching generated assets removes live-generation dependence but relocates risk onto staleness.

| Old risk | Reduced by | New dependency it creates | New control that dependency needs |
| --- | --- | --- | --- |
| Hosted-model outage or terms change | Failover to a smaller self-hosted model | Self-hosted capacity, and lower output quality | Capacity reservation; reduced-scope review of output before it reaches a patient |
| 3D service deprecation | Cached or pre-generated assets | Asset staleness; no fresh generation | Freshness and expiry trigger on cached assets; a notice that live generation is off |
| Cloud region outage | Failover region or safe shutdown | The second region's residency and latency profile | Data-residency check on the failover region before cutover |
| Foundation-model version deprecation | Pin the validated version | Running a frozen and eventually unsupported version | A held re-validation plan for the successor version |

**A mitigation is not complete until the risk it moves, not merely the risk it removes, has a named owner and a control.** "We have a fallback" becomes true governance only once the fallback's own failure mode is on this table. The same lesson appears in finance, where removing settlement mismatch through atomic settlement relocates the risk onto smart-contract logic that then needs its own review and its own kill control.

## The design principle

A dependency chosen for convenience is not automatically a governed decision. It becomes one only when the project can answer, for each external model, cloud service, or hardware line: what patient-facing function breaks if it becomes unavailable; whether it is a single point of failure; who owns the response, by name, rather than leaving it to IT by default; whether there is a documented fallback, degraded mode, or safe-shutdown path, and whether the feature should fail open or fail closed; and what event triggers re-review, including vendor, licensing, pricing, deprecation, and export-control changes, not just a fixed calendar date.

Before any patient-facing feature is treated as deployment-ready, every external dependency it relies on must appear in this register with an owner, a fallback, and a review trigger.

## What changed, and why

This section is permanent; each revision adds to it rather than replacing it, so that the page can be checked rather than merely read.

**v0.2 (23 August 2026).** Version 0.1 published the register and its design principle, and stopped there. Three things have since been added internally and were missing here, each closing a way the original could be satisfied on paper while leaving the real exposure in place. **Who patches it and how long it is supported**, because a dependency can have an owner and a fallback and still be running unpatched software that nobody is contractually obliged to fix. **The hard-to-replace input scan**, because a register that starts and ends at software misses the sensor, the dataset, and the person. And **every fallback moves a risk**, because the original invited the most comfortable error in this whole area: writing a fallback into a column and treating the risk as closed.

<p class="muted">Related note: <a href="{{ '/notes/2026-07-22-ai-governance-is-also-infrastructure-governance/' | relative_url }}">AI governance is also infrastructure governance</a> works through the same idea using a real 2026 export-control episode.</p>

<details markdown="1">
<summary>Citation metadata</summary>

| Field | Value |
| --- | --- |
| Title | Model and Infrastructure Dependency Register (project-derived, sanitized) |
| Author | Xiaoyan Qian |
| Public page version | v0.2 |
| Publication date | 2026-08-03 |
| Stable URL | https://xiaoyanqian.com/artifacts/dependency-register/ |
| Licence | All rights reserved |
| Suggested citation | Qian, X. (2026). *Model and Infrastructure Dependency Register (project-derived, sanitized)* (v0.2). https://xiaoyanqian.com/artifacts/dependency-register/ |

</details>
