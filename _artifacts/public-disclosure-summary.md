---
title: "Public Disclosure Summary (ATRS-style, voluntary)"
evidence_type: "Public transparency record · sanitized"
evidence_class: scenario
summary: "A plain-language public summary of the medical digital twin, held to a public-sector algorithmic transparency standard. It answers four questions any citizen, reviewer, or journalist can read without being a user: what it does, what it does not do, who is responsible, and how to raise a concern."
author: "Xiaoyan Qian"
version: "v0.2"
publication_date: "2026-08-05"
stable_url: "https://xiaoyanqian.com/artifacts/public-disclosure-summary/"
license: "All rights reserved"
suggested_citation: "Qian, X. (2026). Public Disclosure Summary (ATRS-style, voluntary), v0.2. https://xiaoyanqian.com/artifacts/public-disclosure-summary/"
---

## Why this exists

Most AI transparency is written for people who already use the system, or is kept in an internal inventory that only the organisation sees. Public-sector transparency standards — such as the UK's Algorithmic Transparency Recording Standard — ask a harder question: can someone who is *affected by* the system, but does not use it, and who may be a member of the public, a reviewer, or a journalist, understand what it is and how to challenge it?

The medical digital twin I build is a pre-deployment research prototype, so it is **not legally required** to publish such a record. I publish this one **voluntarily**, held to that public-sector standard, because a governance discipline is worth establishing before deployment makes it obligatory — and because the ability to explain a system in plain language to a non-user is itself a test of whether it is well governed.

## The summary

**1. What it does.** It is a supportive tool that monitors health signals, explains what they may mean in plain language, is explicit about what remains uncertain, and flags when a person should seek clinical attention.

**2. What it does not do.** It does not diagnose. It does not replace a doctor or nurse. It does not decide or change treatment. It is not an emergency service. When information is missing or a question falls outside what it can safely address, it does not give a confident-sounding answer. It also does not simply stop: it says what it could not determine, what would settle it, and what the person can usefully do in the meantime. Declining is easy for any system; being left with nothing to act on is what sends a person somewhere less safe.

**3. Who is responsible.** Accountability sits with named roles, not with the software: an AI governance lead is accountable for how the system is allowed to behave; a clinical safety owner is accountable for patient safety; the project sponsor is accountable at the institutional level. No part of that responsibility is transferred to the system or to the patient.

**4. How to raise a concern.** If an output looks wrong, or something about the system is concerning, there is a defined route to reach a responsible human — not only an in-app button, but a monitored channel with a named owner and a response commitment. A concern raised this way is treated as a potential safety signal, not a satisfaction complaint.

## What changed, and why

A transparency record that only ever shows its current state is a weak one. It cannot be checked, and it quietly conceals that an earlier version said something different. This section is permanent; every future revision adds to it rather than replacing it.

**v0.2 (22 August 2026).** Version 0.1 said that when information is missing or a question falls outside what the system can safely address, it "says so plainly rather than giving a confident-sounding answer." That wording was challenged, and it did not survive the challenge. Declining is a property of any system that stops: a system that ends the exchange and a system that hands something back both satisfy it, and for the person asking they are not the same system at all. Describing the stop as a safety feature, without describing what the person is left holding, overstates it.

Version 0.2 therefore states what a refusal has to hand back: what could not be determined, what would settle it, and what the person can usefully do in the meantime. The internal record is held to a stricter version of this than the page describes — the completeness of that handover is now a monitored indicator rather than a design intention, and the further question of whether sustained use leaves a person less able to manage without the system is recorded as a measure that **does not yet exist**, rather than one that is passing. The criterion is developed further in forthcoming work, where the person who identified the weakness is credited.

## What this demonstrates

This is the public-facing counterpart to the internal governance record. Internally, the same system is documented through a patient consent-and-safety case, a full disclosure inventory across every touchpoint, and a scope-and-authority statement. This summary is deliberately the one document that requires no technical background and no prior use to read — because transparency that only a user can understand is not, by itself, public accountability.
