---
layout: default
title: Home
lang: zh-Hant
en_url: /
permalink: /zh-hant/
description: "Xiaoyan (Candice) Qian：高風險 AI 治理與 AI 系統構建。面向病人的醫療數字孿生，以及它上線之前必須到位的治理。"
---
{% comment %}
2026-10-23 簡體中文版 v0.1，譯自英文首頁（HEAD 5110246）。改英文頁時同步改這裏與 zh-hant；措辭源頭仍是 對外話術卡 v0.2。
2026-10-24：站內連結改到中文版；聯繫標籤按用戶要求寫 Email。
{% endcomment %}

<div class="hero">
  <img class="portrait" src="{{ '/assets/img/portrait.png' | relative_url }}" alt="Xiaoyan (Candice) Qian 的照片">
  <h1>Xiaoyan (Candice) Qian</h1>
  <p class="tagline"><span class="role">高風險 AI 治理</span><span class="sep">&times;</span><span class="role">AI 系統構建</span></p>
  <p class="contact-row">
    <a href="mailto:qianxy10@connect.hku.hk">Email</a>
    <a href="https://scholar.google.com/citations?user=XNdT5EMAAAAJ">Google Scholar</a>
    <a href="https://www.linkedin.com/in/xiaoyan-qian-b2256b88/">LinkedIn</a>
    <a href="https://orcid.org/0000-0003-4426-0667">ORCID</a>
  </p>
  <p class="credential">香港大學 AI 博士 &middot; HKU-Avnet Joint AI Laboratory（港大與安富利的聯合 AI 實驗室）研發經理兼功能實驗室負責人</p>
  <!-- <p class="proof-row"><span>AI PhD (HKU)</span><span>R&amp;D Manager, HKU-Avnet Joint AI Lab</span><span>Medical Digital Twin</span></p> -->
  <p class="lede">
    任何高風險的 AI 系統，真正起決定作用的問題都出現在模型跑通之後：誰來負責，受影響的人應當得到甚麼，誰有權推翻它。我在這些問題最尖銳的地方工作，也就是醫療 AI；在這裏，一個沒有治理的輸出會直接到達病人。我構建這樣的系統，也在它們到達病人之前構建它們需要的治理：一個人做通常要兩個人做的事。我構建的，是臨床、倫理和法務團隊共同治理時需要的連接組織，也就是多數項目投入不足的那層共用支架。具體來說，就是醫院、監管機構或法務團隊能據以行動的可執行治理框架、審計證據、問責結構和監管風險語言；我也把治理目標翻譯回團隊可以照着構建的需求。
  </p>
</div>

<div class="role-wording">
  <p class="role-wording-title">當前重點：醫療數字孿生項目（Medical Digital Twin Initiative），AI 原型與治理框架</p>
  <p class="role-wording-desc">把一個面向病人的系統從研究原型推向負責任的部署，並先把部署之前必須到位的治理建好。它服務的是在兩次覆診之間自我管理 2 型糖尿病的人。</p>
</div>

<div class="feature">
  <a class="zoom-link" href="{{ '/assets/press/day-eleven-still-01-crop.jpg' | relative_url }}" title="點擊放大"><img src="{{ '/assets/img/day-eleven-hero.jpg' | relative_url }}" width="1920" height="716" alt="短片 Day Eleven 劇照：同一個病人問題，分別由通用 AI 助手和有治理的醫療數字孿生回答。"></a>
  <p class="feature-kicker">一部短片看懂醫療數字孿生</p>
  <p class="feature-title"><a href="{{ '/zh-hant/twin/' | relative_url }}">Day Eleven：一個知道自己回答邊界在哪裏的醫療數字孿生</a></p>
  <p class="feature-desc">一位病人，一個醫療 AI 應當拒絕回答的問題，分別在有治理和沒有治理時呈現。孿生是甚麼、為甚麼重要、為甚麼是現在。</p>
  <p class="feature-link"><a href="{{ '/zh-hant/twin/' | relative_url }}">看短片，讀論證 →</a></p>
</div>

## 我是誰 {#who-i-am}

我是從構建者這一側走進治理的：在 HKU-Avnet Joint AI Laboratory，我構建一個面向病人的醫療數字孿生，同時治理它可以對外聲稱甚麼、出了問題由誰負責。我為它構建的證據，我稱之為 behavioural assurance（行為保證）：證明系統是否守在聲明的邊界之內、是否正確地拒答和升級，以及事後能否重放。<a href="{{ '/zh-hant/about/' | relative_url }}">更多關於我的路徑 →</a>

## 從這裏開始 {#start-here}

<p class="muted">一個面向病人的系統，從原型走到負責任的部署，要依次經過這些關口。</p>

<ul class="caps">
  <li><a href="{{ '/zh-hant/artifacts/risk-register/' | relative_url }}">風險評估</a></li>
  <li><a href="{{ '/zh-hant/artifacts/claims-evidence-register/' | relative_url }}">證據與對外主張</a></li>
  <li><a href="{{ '/zh-hant/cases/human-override-audit/' | relative_url }}">人工監督</a></li>
  <li><a href="{{ '/zh-hant/artifacts/pre-deployment-charter/' | relative_url }}">部署就緒</a></li>
  <li><a href="{{ '/zh-hant/artifacts/monitoring-table/' | relative_url }}">監測</a></li>
  <li><a href="{{ '/zh-hant/cases/model-drift/' | relative_url }}">事件響應</a></li>
  <li><a href="{{ '/zh-hant/cases/model-change-control/' | relative_url }}">變更控制</a></li>
</ul>

<ul class="cards">
  <li class="card">
    <p class="badge badge-project">項目衍生</p>
    <h3>醫療數字孿生：構建與治理</h3>
    <p>同一個系統上的兩層工作。我構建面向病人的醫療數字孿生，包括它的 3D 可視化流程；也把它轉化為可治理的系統：預期用途、決策權、風險歸屬、部署就緒。已脫敏。</p>
    <a href="{{ '/zh-hant/portfolio/' | relative_url }}#projects">查看項目 →</a>
  </li>
  <li class="card">
    <p class="badge badge-scenario">情景推演</p>
    <h3>醫療 AI 治理案例集</h3>
    <p>覆蓋 AI 醫療器械軟件（AI-SaMD）全生命週期的結構化治理案例：模型漂移、變更控制、AI 病歷書寫助手、大型語言模型分診、面向病人的聊天機器人、智能體的決策權、人工推翻。每個案例都分析風險、RACI、審計證據，並寫明決策狀態。</p>
    <a href="{{ '/zh-hant/portfolio/' | relative_url }}#casebook">閱讀案例 →</a>
  </li>
  <li class="card">
    <p class="badge badge-published">研究</p>
    <h3>面向病人的可問責解讀</h3>
    <p>當醫療 AI 對病人談論他自己的身體時，甚麼讓這個聲音可以被問責？以我在 AAAI 和 IJCV 的第一作者工作為基礎，我的研究用三樣東西回答這個問題：五層問責圖、0 到 4 級的成熟度框架，以及一種被命名的知情同意傷害：未加標記的跨域（unmarked domain-crossing）。</p>
    <a href="{{ '/zh-hant/writing/' | relative_url }}">閱讀更多 →</a>
  </li>
</ul>

## 聯絡 {#contact}

Email：<a href="mailto:qianxy10@connect.hku.hk">qianxy10@connect.hku.hk</a> · <a href="mailto:xyqian@eee.hku.hk">xyqian@eee.hku.hk</a>

主頁：<a href="https://scholar.google.com/citations?user=XNdT5EMAAAAJ">Google Scholar</a> · <a href="https://www.linkedin.com/in/xiaoyan-qian-b2256b88/">LinkedIn</a> · <a href="https://orcid.org/0000-0003-4426-0667">ORCID</a>

<p class="muted">如果我們還沒見過，電郵是最容易的第一步。我在書面上想得最清楚；一旦對話有了具體可談的內容，我很樂意當面繼續。</p>
