---
layout: default
title: "Day Eleven: a medical digital twin that knows where its answers end"
description: "A patient-facing medical digital twin that explains, refuses, escalates, and keeps a record, but never decides. A film about one question it must not answer."
image: /assets/img/day-eleven-social.jpg
permalink: /twin/
---

<p class="kicker">Medical Digital Twin Initiative · Day Eleven</p>

# A medical digital twin that knows where its answers end

<p class="deck">One helpful sentence from a general-purpose AI assistant. On day eleven, an emergency admission. His clinic never knew he had asked.</p>

<p class="badge badge-scenario">Illustrative interaction study · synthetic scenario · not a deployed system</p>

<p class="byline">By <a href="{{ '/about/' | relative_url }}">Xiaoyan (Candice) Qian</a>, HKU-Avnet Joint AI Laboratory · first published 16 September 2026, updated 30 September 2026</p>

<p class="cta-row">
  <a href="#film">Watch the film</a> <span class="muted">(9 min 40 s)</span> ·
  <a href="#why-now">Why now</a> ·
  <a href="#talk">Argue with it</a>
</p>

<figure class="hero-figure">
  <a class="zoom-link" href="{{ '/assets/press/day-eleven-still-01-crop.jpg' | relative_url }}" title="Click to enlarge">
  <img src="{{ '/assets/img/day-eleven-hero.jpg' | relative_url }}" width="1920" height="716"
       alt="The same patient question answered by two systems. On the left, a general-purpose assistant advises the patient to halve his metformin, and a timeline runs to an emergency admission on day eleven. On the right, the governed digital twin declines, flags the question to his care team, and sets out what it could not determine, what would settle it, and what he can watch for this week.">
  </a>
  <figcaption>One patient's question, asked of two systems. <strong>Left:</strong> a general-purpose assistant gives a helpful, wrong answer, and the timeline ends in an emergency admission. <strong>Right:</strong> the governed twin says the question belongs to his prescribing clinician, flags it to his care team that day, and hands back three things. Across the top, <em>decides</em> is struck through and never lights.</figcaption>
</figure>

## What a medical digital twin is

A medical digital twin is a continuously updated model of one person's health, much like the model of the atmosphere behind a weather forecast. Most twins in medicine today are built for specialists: a model of a heart or a tumour, used by the clinician who treats it. This one is built for the patient. It is designed to stay with a person between clinic visits and help them make sense of their own glucose, sleep, and meals, and of the questions they bring to it.

It does not decide anything. It explains what it can see, refuses what belongs to a clinician, escalates what should not wait, and keeps a record that can be checked afterwards. For the clinic, the aim is better-prepared visits, not one more inbox. Its first use case is type 2 diabetes in primary care. The Phase 1 prototype is pre-deployment: it is still being built, and it uses only synthetic and public data.

## The film {#film}

<video id="day-eleven-film" controls preload="metadata" playsinline
       poster="{{ '/assets/video/day-eleven-poster.jpg' | relative_url }}"
       style="width:100%;max-width:900px;border-radius:8px;background:#0b1220">
  <source src="{{ '/assets/video/day-eleven.mp4' | relative_url }}" type="video/mp4">
  Your browser does not support embedded video.
  <a href="{{ '/assets/video/day-eleven.mp4' | relative_url }}">Download the film (MP4)</a>.
</video>

<p class="muted" style="max-width:900px">
9 min 40 s, with sound and with subtitles in English and Chinese. Shown at the opening of the HKU-Avnet Joint AI Laboratory on 17 September 2026. Select a chapter to play from that point.
</p>

<ol class="chapters">
  <li><button type="button" class="chapter" data-t="0" data-goatcounter-click="twin-chapter-1" aria-label="Play from 0:00, Day eleven">
    <span class="chapter-thumb"><img src="{{ '/assets/img/day-eleven-ch1.jpg' | relative_url }}" width="640" height="272" alt="" loading="lazy"><span class="chapter-time">0:00</span></span>
    <span class="chapter-title">Day eleven</span>
    <span class="chapter-desc">Where an ordinary answer leads. Then Mr Chan, and the three things the twin may do.</span>
  </button></li>
  <li><button type="button" class="chapter" data-t="56" data-goatcounter-click="twin-chapter-2" aria-label="Play from 0:56, Most days">
    <span class="chapter-thumb"><img src="{{ '/assets/img/day-eleven-ch2.jpg' | relative_url }}" width="640" height="272" alt="" loading="lazy"><span class="chapter-time">0:56</span></span>
    <span class="chapter-title">Most days</span>
    <span class="chapter-desc">Between visits, nothing happens. By week nine he reads his own numbers.</span>
  </button></li>
  <li><button type="button" class="chapter" data-t="213" data-goatcounter-click="twin-chapter-3" aria-label="Play from 3:33, 2:40 a.m.">
    <span class="chapter-thumb"><img src="{{ '/assets/img/day-eleven-ch3.jpg' | relative_url }}" width="640" height="272" alt="" loading="lazy"><span class="chapter-time">3:33</span></span>
    <span class="chapter-title">2:40 a.m.</span>
    <span class="chapter-desc">An urgent low reaches him and his care team together. A doctor closes the flag.</span>
  </button></li>
  <li><button type="button" class="chapter" data-t="332" data-goatcounter-click="twin-chapter-4" aria-label="Play from 5:32, One Tuesday">
    <span class="chapter-thumb"><img src="{{ '/assets/img/day-eleven-ch4.jpg' | relative_url }}" width="640" height="272" alt="" loading="lazy"><span class="chapter-time">5:32</span></span>
    <span class="chapter-title">One Tuesday</span>
    <span class="chapter-desc">He asks whether to stop his metformin. A general-purpose assistant answers.</span>
  </button></li>
  <li><button type="button" class="chapter" data-t="398" data-goatcounter-click="twin-chapter-5" aria-label="Play from 6:38, The refusal">
    <span class="chapter-thumb"><img src="{{ '/assets/img/day-eleven-ch5.jpg' | relative_url }}" width="640" height="272" alt="" loading="lazy"><span class="chapter-time">6:38</span></span>
    <span class="chapter-title">The refusal</span>
    <span class="chapter-desc">The twin declines, flags the question, and hands back three things.</span>
  </button></li>
  <li><button type="button" class="chapter" data-t="474" data-goatcounter-click="twin-chapter-6" aria-label="Play from 7:54, Nine days later">
    <span class="chapter-thumb"><img src="{{ '/assets/img/day-eleven-ch6.jpg' | relative_url }}" width="640" height="272" alt="" loading="lazy"><span class="chapter-time">7:54</span></span>
    <span class="chapter-title">Nine days later</span>
    <span class="chapter-desc">His doctor has read the question. Months later, the log still holds it.</span>
  </button></li>
</ol>

Mr Chan is fifty-eight and has type 2 diabetes. The film spends three months with him and his twin. Most days nothing happens, and by the ninth week he reads the pattern in his own numbers before the twin says anything: he is meant to need it less, not more. One night his glucose falls, and the alert reaches him and his care team at the same moment. In most clinics no one would see it overnight, and a system that knows this has to say so. Then he asks whether to stop his metformin, and the film shows that moment twice.

In the closing sequence the condition changes from diabetes to hypertension, heart failure, and chronic kidney disease, and the governance layer stays fixed. That is the design intent: the layer is built once and configured for each condition.

## Why it matters

A person with diabetes might spend an hour or two a year in front of a clinician. For the more than eight thousand hours in between, they are alone with their questions, and more of those questions now go to general-purpose AI assistants. Those assistants were not built with a validated clinical scope, a protocol for when to refuse, or a record the person's own clinician can review. Nobody is being careless: for most patients, there is no governed alternative to choose.

The danger is rarely an answer that sounds wrong. A general-purpose assistant is right most of the time, which is why people trust it on the day it is not. Nothing in a chat window marks the moment a question shifts from asking what a pattern means to asking for a clinical judgement, such as whether to stop a medicine or whether the kidneys are involved.

That is why accuracy alone cannot tell you whether a patient-facing medical AI is safe. Safety here is better understood as scope, refusal, escalation, and record: four properties that can be inspected and that someone can be held accountable for. A refusal also has to hand something back, or it closes a door on someone. After a year of use, a good system should leave a person better able to read their own numbers without it.

## Why now, and why Hong Kong {#why-now}

Hong Kong has moved from principle to practice. The Government has published guidance on ethical AI and on generative AI, and in February 2025 the Hospital Authority announced that generative AI would draft medical reports in six public hospitals from the following month, with every report checked and authorized by a doctor.

The next step is AI that talks to patients directly, and for that I have found no standard form of evidence, here or elsewhere. How would a conversational medical AI show that it met the four properties above, with a record that lets a reviewer replay a past answer? A 2026 article in *npj Digital Medicine* is titled "[Innovating global regulatory frameworks for generative AI in medical devices is an urgent priority](https://doi.org/10.1038/s41746-026-02552-2)". The expectations these systems will be held to are being set now, and it is far cheaper to shape them before the systems reach patients than after.

## A design study

In the architect's sense of the word, a study is work on the form of a thing before it is built, and this film is a study in that sense. It shows the interaction the Phase 1 prototype is being built to satisfy, not the prototype itself or its architecture. That lets clinicians and reviewers challenge the requirement now, before the system exists and the decisions harden.

The prototype's boundary and escalation rules have been reviewed in writing by an independent primary-care clinician, and that review changed the design; the changes are described on the [project page]({{ '/portfolio/' | relative_url }}#clinical-review). There are no clinical results to report, and I make no claim that any part of the system has been validated in patients.

## Where it fits

<table>
<tr>
  <td><strong>1 · The position</strong></td>
  <td><a href="{{ '/writing/' | relative_url }}">Anchor: accountable patient-facing interpretation</a><br>
      <span class="muted">Viewpoint, not yet published. The five-layer accountability map and the Grade 0 to 4 maturity framework.</span></td>
</tr>
<tr>
  <td><strong>2 · This study</strong></td>
  <td><em>Day Eleven</em>: the interaction the position requires, made concrete and public.</td>
</tr>
<tr>
  <td><strong>3 · The Phase 1 prototype</strong></td>
  <td><a href="{{ '/portfolio/' | relative_url }}">Patient-facing medical digital twin</a><br>
      <span class="muted">In build. Charter, risk ownership, and external clinical review are public; the architecture is not yet.</span></td>
</tr>
<tr>
  <td><strong>4 · Next</strong></td>
  <td>An ethics paper and a technical paper, then a prospectively evaluated, clinically supervised twin in a bounded cardiometabolic use case. Multi-year, and dependent on clinical partners and ethics approval.</td>
</tr>
</table>

## The argument behind it

The full argument is in the note [**Most of the time it is right, and that is the problem**]({{ '/notes/2026-09-02-most-of-the-time-it-is-right-that-is-the-problem/' | relative_url }}). It explains why a patient-facing medical AI should be judged by what it refuses, why an escalation that costs a clinician time will be switched off within a quarter, and why a refusal that cannot be reconstructed is indistinguishable from one that never happened.

## Who made this

<div class="author-card">
  <img src="{{ '/assets/img/portrait-144.jpg' | relative_url }}" width="139" height="144" alt="Portrait of Xiaoyan (Candice) Qian">
  <div>
    <p>I am Xiaoyan (Candice) Qian. I build patient-facing medical AI and the governance it needs, on the same system. I conceived <em>Day Eleven</em>, wrote its clinical scenario, designed the twin's governance architecture, and am building its Phase 1 prototype. I hold an AI PhD from HKU, with first-author papers on 3D perception in the <em>International Journal of Computer Vision</em> and at AAAI, and I am R&amp;D Manager and Functional Lab Lead at the HKU-Avnet Joint AI Laboratory.</p>
    <p class="author-links"><a href="{{ '/about/' | relative_url }}">About me</a> · <a href="{{ '/writing/' | relative_url }}">Research &amp; Writing</a> · <a href="https://www.linkedin.com/in/xiaoyan-qian-b2256b88/">LinkedIn</a> · <a href="https://scholar.google.com/citations?user=XNdT5EMAAAAJ">Google Scholar</a></p>
  </div>
</div>

## Argue with it, or help shape it {#talk}

This was made to be argued with while the design can still change. Email is the best way to reach me: [qianxy10@connect.hku.hk](mailto:qianxy10@connect.hku.hk).

- **If you treat adults with diabetes in Hong Kong,** <a href="mailto:qianxy10@connect.hku.hk?subject=Day%20Eleven%3A%20the%20one-page%20list" data-goatcounter-click="twin-ask-list">ask for the one-page list</a> of what the twin may answer and what it must refuse. Marking it up takes about half an hour; each mark changes the configuration and is recorded with your name and the date. No patients are involved.
- **If you research medical AI or its governance,** send me the objection. One that holds changes the design, and I credit it to you if you wish.
- **If you fund or build health technology,** the [project charter]({{ '/artifacts/pre-deployment-charter/' | relative_url }}) sets out the stage, the boundaries, and what is not yet claimed.
- **If you are a journalist,** the stills below are free to reproduce with credit, and I am glad to answer technical questions in writing.

<p class="muted">
<strong>For press.</strong> Two stills at 3840 × 1632 pixels are free to reproduce with the credit
<em>Day Eleven, Xiaoyan (Candice) Qian, Medical Digital Twin Initiative, HKU-Avnet Joint AI Laboratory</em>:
<a href="{{ '/assets/press/day-eleven-still-01-governed-vs-ungoverned.jpg' | relative_url }}">1 · governed and ungoverned, side by side</a> ·
<a href="{{ '/assets/press/day-eleven-still-02-permission-strip.jpg' | relative_url }}">2 · the permission strip</a>.
Both stills carry the synthetic-scenario and prototype notices within the image; please keep them visible.
Please describe the film as an illustrative interaction study from a pre-deployment research prototype, using a fictional patient and synthetic data. It is not a diagnostic system and is not in clinical use.
</p>

<p class="muted">
Illustrative synthetic scenario. It depicts a category of harm from ungoverned AI health advice, not any specific product or real case. It shows what a governed system does, not how it works: no rules, thresholds, prompts, evaluation methods, or data sources are published here.
</p>

<script>
(function () {
  var film = document.getElementById('day-eleven-film');
  if (!film) return;
  var counted = false;
  film.addEventListener('play', function () {
    if (counted) return;
    counted = true;
    if (window.goatcounter && window.goatcounter.count) {
      window.goatcounter.count({ path: 'twin-film-play', title: 'Day Eleven film played', event: true });
    }
  });
  var buttons = document.querySelectorAll('.chapter[data-t]');
  for (var i = 0; i < buttons.length; i++) {
    buttons[i].addEventListener('click', function () {
      var t = parseFloat(this.getAttribute('data-t')) || 0;
      var seek = function () {
        film.currentTime = t;
        var p = film.play();
        if (p && p.catch) p.catch(function () {});
      };
      if (film.readyState >= 1) { seek(); } else { film.addEventListener('loadedmetadata', seek, { once: true }); film.load(); }
      film.scrollIntoView({ behavior: 'smooth', block: 'center' });
    });
  }
})();
</script>
