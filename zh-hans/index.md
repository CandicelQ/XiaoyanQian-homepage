---
layout: default
title: Home
lang: zh-Hans
en_url: /
permalink: /zh-hans/
description: "Xiaoyan (Candice) Qian：高风险 AI 治理与 AI 系统构建。面向病人的医疗数字孪生，以及它上线之前必须到位的治理。"
---
{% comment %}
2026-10-23 简体中文版 v0.1，译自英文首页（HEAD 5110246）。改英文页时同步改这里与 zh-hant；措辞源头仍是 对外话术卡 v0.2。
2026-10-24：站内链接改到中文版；联系标签按用户要求写 Email。
{% endcomment %}

<div class="hero">
  <img class="portrait" src="{{ '/assets/img/portrait.png' | relative_url }}" alt="Xiaoyan (Candice) Qian 的照片">
  <h1>Xiaoyan (Candice) Qian</h1>
  <p class="tagline"><span class="role">高风险 AI 治理</span><span class="sep">&times;</span><span class="role">AI 系统构建</span></p>
  <p class="contact-row">
    <a href="mailto:qianxy10@connect.hku.hk">Email</a>
    <a href="https://scholar.google.com/citations?user=XNdT5EMAAAAJ">Google Scholar</a>
    <a href="https://www.linkedin.com/in/xiaoyan-qian-b2256b88/">LinkedIn</a>
    <a href="https://orcid.org/0000-0003-4426-0667">ORCID</a>
  </p>
  <p class="credential">香港大学 AI 博士 &middot; HKU-Avnet Joint AI Laboratory（港大与安富利的联合 AI 实验室）研发经理兼功能实验室负责人</p>
  <!-- <p class="proof-row"><span>AI PhD (HKU)</span><span>R&amp;D Manager, HKU-Avnet Joint AI Lab</span><span>Medical Digital Twin</span></p> -->
  <p class="lede">
    任何高风险的 AI 系统，真正起决定作用的问题都出现在模型跑通之后：谁来负责，受影响的人应当得到什么，谁有权推翻它。我在这些问题最尖锐的地方工作，也就是医疗 AI；在这里，一个没有治理的输出会直接到达病人。我构建这样的系统，也在它们到达病人之前构建它们需要的治理：一个人做通常要两个人做的事。我构建的，是临床、伦理和法务团队共同治理时需要的连接组织，也就是多数项目投入不足的那层共用支架。具体来说，就是医院、监管机构或法务团队能据以行动的可执行治理框架、审计证据、问责结构和监管风险语言；我也把治理目标翻译回团队可以照着构建的需求。
  </p>
</div>

<div class="role-wording">
  <p class="role-wording-title">当前重点：医疗数字孪生项目（Medical Digital Twin Initiative），AI 原型与治理框架</p>
  <p class="role-wording-desc">把一个面向病人的系统从研究原型推向负责任的部署，并先把部署之前必须到位的治理建好。它服务的是在两次复诊之间自我管理 2 型糖尿病的人。</p>
</div>

<div class="feature">
  <a class="zoom-link" href="{{ '/assets/press/day-eleven-still-01-crop.jpg' | relative_url }}" title="点击放大"><img src="{{ '/assets/img/day-eleven-hero.jpg' | relative_url }}" width="1920" height="716" alt="短片 Day Eleven 剧照：同一个病人问题，分别由通用 AI 助手和有治理的医疗数字孪生回答。"></a>
  <p class="feature-kicker">一部短片看懂医疗数字孪生</p>
  <p class="feature-title"><a href="{{ '/zh-hans/twin/' | relative_url }}">Day Eleven：一个知道自己回答边界在哪里的医疗数字孪生</a></p>
  <p class="feature-desc">一位病人，一个医疗 AI 应当拒绝回答的问题，分别在有治理和没有治理时呈现。孪生是什么、为什么重要、为什么是现在。</p>
  <p class="feature-link"><a href="{{ '/zh-hans/twin/' | relative_url }}">看短片，读论证 →</a></p>
</div>

## 我是谁 {#who-i-am}

我是从构建者这一侧走进治理的：在 HKU-Avnet Joint AI Laboratory，我构建一个面向病人的医疗数字孪生，同时治理它可以对外声称什么、出了问题由谁负责。我为它构建的证据，我称之为 behavioural assurance（行为保证）：证明系统是否守在声明的边界之内、是否正确地拒答和升级，以及事后能否重放。<a href="{{ '/zh-hans/about/' | relative_url }}">更多关于我的路径 →</a>

## 从这里开始 {#start-here}

<p class="muted">一个面向病人的系统，从原型走到负责任的部署，要依次经过这些关口。</p>

<ul class="caps">
  <li><a href="{{ '/zh-hans/artifacts/risk-register/' | relative_url }}">风险评估</a></li>
  <li><a href="{{ '/zh-hans/artifacts/claims-evidence-register/' | relative_url }}">证据与对外主张</a></li>
  <li><a href="{{ '/zh-hans/cases/human-override-audit/' | relative_url }}">人工监督</a></li>
  <li><a href="{{ '/zh-hans/artifacts/pre-deployment-charter/' | relative_url }}">部署就绪</a></li>
  <li><a href="{{ '/zh-hans/artifacts/monitoring-table/' | relative_url }}">监测</a></li>
  <li><a href="{{ '/zh-hans/cases/model-drift/' | relative_url }}">事件响应</a></li>
  <li><a href="{{ '/zh-hans/cases/model-change-control/' | relative_url }}">变更控制</a></li>
</ul>

<ul class="cards">
  <li class="card">
    <p class="badge badge-project">项目衍生</p>
    <h3>医疗数字孪生：构建与治理</h3>
    <p>同一个系统上的两层工作。我构建面向病人的医疗数字孪生，包括它的 3D 可视化流程；也把它转化为可治理的系统：预期用途、决策权、风险归属、部署就绪。已脱敏。</p>
    <a href="{{ '/zh-hans/portfolio/' | relative_url }}#projects">查看项目 →</a>
  </li>
  <li class="card">
    <p class="badge badge-scenario">情景推演</p>
    <h3>医疗 AI 治理案例集</h3>
    <p>覆盖 AI 医疗器械软件（AI-SaMD）全生命周期的结构化治理案例：模型漂移、变更控制、AI 病历书写助手、大语言模型分诊、面向病人的聊天机器人、智能体的决策权、人工推翻。每个案例都分析风险、RACI、审计证据，并写明决策状态。</p>
    <a href="{{ '/zh-hans/portfolio/' | relative_url }}#casebook">阅读案例 →</a>
  </li>
  <li class="card">
    <p class="badge badge-published">研究</p>
    <h3>面向病人的可问责解读</h3>
    <p>当医疗 AI 对病人谈论他自己的身体时，什么让这个声音可以被问责？以我在 AAAI 和 IJCV 的第一作者工作为基础，我的研究用三样东西回答这个问题：五层问责图、0 到 4 级的成熟度框架，以及一种被命名的知情同意伤害：未加标记的跨域（unmarked domain-crossing）。</p>
    <a href="{{ '/zh-hans/writing/' | relative_url }}">阅读更多 →</a>
  </li>
</ul>

## 联系 {#contact}

Email：<a href="mailto:qianxy10@connect.hku.hk">qianxy10@connect.hku.hk</a> · <a href="mailto:xyqian@eee.hku.hk">xyqian@eee.hku.hk</a>

主页：<a href="https://scholar.google.com/citations?user=XNdT5EMAAAAJ">Google Scholar</a> · <a href="https://www.linkedin.com/in/xiaoyan-qian-b2256b88/">LinkedIn</a> · <a href="https://orcid.org/0000-0003-4426-0667">ORCID</a>

<p class="muted">如果我们还没见过，邮件是最容易的第一步。我在书面上想得最清楚；一旦对话有了具体可谈的内容，我很乐意当面继续。</p>
