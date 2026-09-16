---
layout: default
title: "Day Eleven — an interaction study"
permalink: /twin/
---

# Day Eleven

<p class="badge badge-scenario">Interaction study · synthetic scenario · not a deployed system</p>

<p class="section-intro">
A three-minute film about a single question a medical AI should have refused to answer.
It belongs to the research line below as its first working artefact: the Viewpoint states the position,
this shows what the position looks like when a patient is in front of it, and the Phase 1 prototype is
being built to satisfy it.
</p>

<!-- Recording not yet posted. Swap this block back to the <video> element
     (assets/video/day-eleven.mp4 + day-eleven-poster.jpg) once the film is
     recorded. Until then a broken player would say more than the page does. -->
<div style="max-width:900px;padding:28px 32px;border:1px solid #26405f;border-radius:8px;background:#0b1220;color:#a9bdd8">
  <p style="margin:0 0 6px;font-weight:600;color:#dbe8ff">Day Eleven — an interaction study</p>
  <p style="margin:0">The film is shown at the joint-lab opening on 17 September 2026.
  The recording is posted here after that date. The written position below
  is what the film is built to satisfy, and it is already complete.</p>
</div>

<p class="muted">
Illustrative synthetic scenario. It depicts a documented <em>category</em> of harm from ungoverned AI health
advice, not a specific product and not a real case. It shows what a governed system does, not how it decides:
no rules, thresholds, prompts, evaluation methods, or data sources are disclosed.
</p>

## What it shows

Mr. Chan is fifty-eight and has diabetes. Between two clinic visits he is alone with his questions for
roughly eight thousand hours a year, and increasingly he puts them to an AI. He asks one question that is
inside scope and gets a good answer. In the same breath he asks one that is not — should I halve my
metformin, do I have kidney damage — and nothing in the interface marks that a boundary was crossed,
because the boundary is not in the interface. It is in the clinical standing of the answer.

The film shows that moment twice. Once with no governance, and the eleven days that follow it. Once with
governance: what a refusal sounds like when it is a clinical act rather than an error state, what the
escalation gives the clinician nine days later, and what the audit log still contains three months after that.

## Why it is called a study, not a demo

A study, in the sense architects use the word, is work done on the form of a thing before the thing is built.
That is what this is. **It is not a demonstration of the Phase 1 prototype, and it is not the prototype's
architecture.** It is a demonstration of the interaction the prototype is being built to satisfy, made so that
the requirement can be argued about now, by clinicians and reviewers, rather than after the system exists and
the decisions have hardened.

The prototype itself is pre-deployment and works on synthetic scenarios. There are no clinical results to
report and no claim that any part of it has been validated on patients.

## Where it sits in the line

<table>
<tr>
  <td><strong>1 · The position</strong></td>
  <td><a href="{{ '/writing/' | relative_url }}">Anchor: accountable patient-facing interpretation</a><br>
      <span class="muted">Viewpoint, in preparation. The five-layer accountability map and the Grade 0–4 maturity framework.</span></td>
</tr>
<tr>
  <td><strong>2 · This study</strong></td>
  <td><em>Day Eleven</em> — the interaction that framework requires, made concrete and public.</td>
</tr>
<tr>
  <td><strong>3 · Phase 1 prototype</strong></td>
  <td><a href="{{ '/portfolio/' | relative_url }}">Patient-facing medical digital twin</a><br>
      <span class="muted">In build. Charter, risk ownership and external clinical review are published; the architecture is not yet.</span></td>
</tr>
<tr>
  <td><strong>4 · Next</strong></td>
  <td>The ethics line and the technical line, then a prospectively evaluated, clinically supervised twin in a bounded cardiometabolic use case. Multi-year, and dependent on clinical partners and ethics approval.</td>
</tr>
</table>

## The written position

[**Most of the time it is right, and that is the problem**]({{ '/notes/2026-09-02-most-of-the-time-it-is-right-that-is-the-problem/' | relative_url }})
— why a patient-facing medical AI should be judged by what it refuses, why an escalation that costs a clinician
time will be switched off within a quarter, and why a refusal that is not reconstructible is indistinguishable
from a refusal that never happened.

<p class="muted">
Concept, governance architecture, clinical scenario and prototype: Xiaoyan Qian (Candice Qian),
Medical Digital Twin Initiative.
</p>
