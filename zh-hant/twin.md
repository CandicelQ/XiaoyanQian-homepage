---
layout: default
title: "Day Eleven：一個知道自己回答邊界在哪裏的醫療數字孿生"
description: "一個面向病人的醫療數字孿生：它解釋、拒答、升級（轉交醫生處理）、留下記錄，但從不做決定。短片講的是一個它絕不能回答的問題。"
image: /assets/img/day-eleven-social.jpg
lang: zh-Hant
en_url: /twin/
permalink: /zh-hant/twin/
---
{% comment %}
2026-10-22：社會問題句、"Care is moving too"一段與 For press 的背景句取自 對外話術卡 v0.2 §0 / §3b；
頁面上的數字已登記在 /artifacts/claims-evidence-register/ 的 Context claims。改句子先改話術卡，再改這裏。
繁體中文譯本（由簡體版經 OpenCC s2hk 與港式用詞表轉換），譯自英文版（HEAD 5110246）；改英文頁時同步改本頁與 zh-hant。
{% endcomment %}

<p class="kicker">醫療數字孿生項目 · Day Eleven</p>

# 一個知道自己回答邊界在哪裏的醫療數字孿生 {#a-medical-digital-twin-that-knows-where-its-answers-end}

<p class="deck">通用 AI 助手熱心的一句話。第十一天，急診入院。他的診所始終不知道他問過。</p>

<p class="badge badge-scenario">示意性交互研究 · 合成情景 · 不是已部署的系統</p>

<p class="byline">作者：<a href="{{ '/zh-hant/about/' | relative_url }}">Xiaoyan (Candice) Qian</a>，HKU-Avnet Joint AI Laboratory（港大與安富利的聯合 AI 實驗室） · 首次發佈於 2026 年 9 月 16 日，更新於 2026 年 10 月 22 日</p>

<p class="cta-row">
  <a href="#film">看短片</a> <span class="muted">（9 分 40 秒）</span> ·
  <a href="#why-now">為甚麼是現在</a> ·
  <a href="#talk">來反駁它</a>
</p>

<figure class="hero-figure">
  <a class="zoom-link" href="{{ '/assets/press/day-eleven-still-01-crop.jpg' | relative_url }}" title="點擊放大">
  <img src="{{ '/assets/img/day-eleven-hero.jpg' | relative_url }}" width="1920" height="716"
       alt="同一個病人問題，由兩個系統回答。左邊，通用助手建議病人把二甲雙胍減半，時間線一路走到第十一天的急診入院。右邊，有治理的數字孿生拒答，把問題標記給他的醫護團隊，並說明它判斷不了甚麼、甚麼能讓問題有定論、他這一週可以留意甚麼。">
  </a>
  <figcaption>同一位病人的問題，分別問兩個系統。<strong>左：</strong>通用助手給出一個熱心而錯誤的回答，時間線以急診入院告終。<strong>右：</strong>有治理的數字孿生說明這個問題該由給他開藥的臨床醫生回答，當天把它標記給他的醫護團隊，並回給他三樣東西。畫面頂部，<em>decides</em>（決定）一詞被劃掉，始終沒有亮起。</figcaption>
</figure>

## 甚麼是醫療數字孿生 {#what-a-medical-digital-twin-is}

醫療數字孿生是一個人健康狀況的持續更新模型，很像天氣預報背後的大氣模型。如今醫學裏的數字孿生大多是為專科醫生建的：一顆心臟或一個腫瘤的模型，供治療它的臨床醫生使用。這一個是為病人建的。它的設計是在兩次覆診之間陪着一個人，幫他弄明白自己的血糖、睡眠和飲食，以及他拿來問它的那些問題。

它不做任何決定。它解釋自己看得到的東西，拒答該由臨床醫生回答的問題，把不該等的事升級（轉交醫生處理），並留下事後可以核查的記錄。對診所來說，目標是讓覆診準備得更充分，而不是再多一個收件箱。它的第一個使用場景是基層醫療中的 2 型糖尿病。第一階段原型處於部署前階段：仍在構建中，只使用合成數據和公開數據。

## 短片 {#film}

<video id="day-eleven-film" controls preload="metadata" playsinline
       poster="{{ '/assets/video/day-eleven-poster.jpg' | relative_url }}"
       style="width:100%;max-width:900px;border-radius:8px;background:#0b1220">
  <source src="{{ '/assets/video/day-eleven.mp4' | relative_url }}" type="video/mp4">
  你的瀏覽器不支援內嵌影片。
  <a href="{{ '/assets/video/day-eleven.mp4' | relative_url }}">下載短片（MP4）</a>。
</video>

<p class="muted" style="max-width:900px">
片長 9 分 40 秒，有聲，配中英文字幕。（譯註：短片對白為英文。）2026 年 9 月 17 日在該聯合實驗室的開幕式上放映。選一個章節，就從那裏開始播放。
</p>

<ol class="chapters">
  <li><button type="button" class="chapter" data-t="0" data-goatcounter-click="twin-chapter-1" aria-label="從 0:00 開始播放：第十一天">
    <span class="chapter-thumb"><img src="{{ '/assets/img/day-eleven-ch1.jpg' | relative_url }}" width="640" height="272" alt="" loading="lazy"><span class="chapter-time">0:00</span></span>
    <span class="chapter-title">第十一天</span>
    <span class="chapter-desc">一個普通的回答會把人帶到哪裏。然後是陳先生，以及數字孿生被允許做的三件事。</span>
  </button></li>
  <li><button type="button" class="chapter" data-t="56" data-goatcounter-click="twin-chapter-2" aria-label="從 0:56 開始播放：大多數日子">
    <span class="chapter-thumb"><img src="{{ '/assets/img/day-eleven-ch2.jpg' | relative_url }}" width="640" height="272" alt="" loading="lazy"><span class="chapter-time">0:56</span></span>
    <span class="chapter-title">大多數日子</span>
    <span class="chapter-desc">兩次覆診之間，甚麼事也沒有。到第九周，他能讀懂自己的數字了。</span>
  </button></li>
  <li><button type="button" class="chapter" data-t="213" data-goatcounter-click="twin-chapter-3" aria-label="從 3:33 開始播放：凌晨 2:40">
    <span class="chapter-thumb"><img src="{{ '/assets/img/day-eleven-ch3.jpg' | relative_url }}" width="640" height="272" alt="" loading="lazy"><span class="chapter-time">3:33</span></span>
    <span class="chapter-title">凌晨 2:40</span>
    <span class="chapter-desc">一條緊急低血糖提醒，同時送到他和他的醫護團隊。一位醫生關閉了這條標記。</span>
  </button></li>
  <li><button type="button" class="chapter" data-t="332" data-goatcounter-click="twin-chapter-4" aria-label="從 5:32 開始播放：一個星期二">
    <span class="chapter-thumb"><img src="{{ '/assets/img/day-eleven-ch4.jpg' | relative_url }}" width="640" height="272" alt="" loading="lazy"><span class="chapter-time">5:32</span></span>
    <span class="chapter-title">一個星期二</span>
    <span class="chapter-desc">他問要不要停用二甲雙胍。一個通用助手回答了。</span>
  </button></li>
  <li><button type="button" class="chapter" data-t="398" data-goatcounter-click="twin-chapter-5" aria-label="從 6:38 開始播放：那次拒答">
    <span class="chapter-thumb"><img src="{{ '/assets/img/day-eleven-ch5.jpg' | relative_url }}" width="640" height="272" alt="" loading="lazy"><span class="chapter-time">6:38</span></span>
    <span class="chapter-title">那次拒答</span>
    <span class="chapter-desc">數字孿生拒答，標記了這個問題，並回給他三樣東西。</span>
  </button></li>
  <li><button type="button" class="chapter" data-t="474" data-goatcounter-click="twin-chapter-6" aria-label="從 7:54 開始播放：九天後">
    <span class="chapter-thumb"><img src="{{ '/assets/img/day-eleven-ch6.jpg' | relative_url }}" width="640" height="272" alt="" loading="lazy"><span class="chapter-time">7:54</span></span>
    <span class="chapter-title">九天後</span>
    <span class="chapter-desc">他的醫生已經看過這個問題。幾個月後，日誌裏仍然留着它。</span>
  </button></li>
</ol>

陳先生 58 歲，患有 2 型糖尿病。短片陪他和他的數字孿生走過三個月。大多數日子甚麼事也沒有；到第九周，數字孿生還沒開口，他已經從自己的數字裏看出了規律：按設計，他應該越來越不需要它，而不是越來越需要它。一天夜裏，他的血糖降了下來，提醒同時送到他和他的醫護團隊。在片中，他的診所會收到這類提醒和標記。在目前的第一階段設計裏，它們發給病人，並寫進他下次覆診的摘要；只有在診所同意接收的情況下，才會更早送到診所。多數診所夜裏不會有人看到，一個知道這一點的系統必須把這一點說出來。然後，他問要不要停用二甲雙胍，短片把這一刻呈現了兩次。

在片尾一段，病種從糖尿病換成高血壓、心力衰竭和慢性腎病，治理層保持不變。這正是設計意圖：治理層只建一次，再針對每種疾病分別配置。

## 為甚麼重要 {#why-it-matters}

糖尿病病人一年裏坐在臨床醫生面前的時間，可能只有一兩個小時。其間八千多個小時，他們都是一個人面對自己的問題；而這些問題，現在越來越多地被拿去問通用 AI 助手。這些助手在構建時，沒有經過驗證的臨床範圍，沒有何時拒答的規程，也沒有一份病人自己的臨床醫生能查閱的記錄。這不是誰在疏忽：對多數病人來說，並沒有一個有治理的選項可選。

危險很少來自一個聽起來就不對的回答。通用助手大多數時候是對的，所以到了它出錯的那一天，人們照樣信它。聊天視窗裏沒有任何東西會標出這樣一個時刻：一個問題從詢問某種規律意味着甚麼，轉成了要求一個臨床判斷，比如該不該停藥，腎臟有沒有受累。

所以，光看準確率，判斷不了一個面向病人的醫療 AI 是否安全。在這裏，安全更適合理解為範圍、拒答、升級和記錄：四項可以檢查、也可以讓某個人為之負責的屬性。拒答也必須回給對方一些東西，否則就是把人關在門外。用了一年之後，一個好的系統應當讓人即使不用它，也更能讀懂自己的數字。

我把這四項屬性的證據稱為 *behavioural assurance*（行為保證）：關於一個已部署的系統實際做了甚麼的證據，而不是它的模型在發佈前被證明能做甚麼。它表明系統是否守在經過驗證的範圍之內，是否在該拒答、該升級的地方拒答和升級，以及事後能否重放。

## 為甚麼是現在，為甚麼是香港 {#why-now}

香港已經從原則走到了實踐。政府已經發布關於 AI 道德和生成式 AI 的指引；2025 年 2 月，醫院管理局（醫管局）宣佈，從次月起，六家公立醫院將用生成式 AI 起草醫療報告，每一份報告都由醫生核對並批准。

照護也在轉移。2026 年 3 月，政府宣佈，參加人數已逾 20 萬的慢性疾病共同治理先導計劃將常規化，並推出基層醫療共治網絡，目標是在前五年覆蓋約 70 萬人。政府還表示，會逐步邀請醫管局家庭醫學診所的合適病人加入該網絡的服務（[政府新聞公報，2026 年 3 月 13 日](https://www.info.gov.hk/gia/general/202603/13/P2026031300680.htm)）。糖尿病和高血壓的照護正轉由家庭醫生和社區跟進，但在兩次覆診之間的大部分時間裏，病人仍要自己讀懂數據，自己判斷甚麼時候該回去找醫生。光有更多數據，補不上這個缺口。政府 2025 年答覆立法會時指出，醫管局 2024 年照顧的糖尿病病人超過 658,000 人；如果給所有人都配連續血糖監測儀，醫護人員會面對讀數的資訊過載，每年還要多花數十億元（[立法會答覆，2025 年 7 月 16 日](https://www.info.gov.hk/gia/general/202507/16/P2025071600591.htm)）。

下一步是直接和病人對話的 AI；而對這一步，不論在香港還是其他地方，我都沒有找到一種標準的證據形式。一個對話式醫療 AI，要怎樣證明自己滿足了上面這四項屬性，並留下能讓審查者重放過往回答的記錄？2026 年 *npj Digital Medicine* 上的一篇文章，題為「[Innovating global regulatory frameworks for generative AI in medical devices is an urgent priority](https://doi.org/10.1038/s41746-026-02552-2)」（為醫療器械中的生成式 AI 革新全球監管框架，是當務之急）。人們將對這些系統提出甚麼要求，現在正在定下來；在系統到達病人之前去塑造這些要求，遠比之後便宜。

## 一項設計研究 {#a-design-study}

按建築師對這個詞的用法，「研究」（study）是在一樣東西建成之前，對它的形式所做的推敲；這部短片就是這個意義上的研究。它展示的，是第一階段原型在構建時要滿足的交互，不是原型本身，也不是它的架構。這樣，臨床醫生和審查者現在就能質疑這項要求，趁系統還不存在、各項決定還沒有定死。

原型的邊界規則和升級規則，已由一位獨立的基層醫療臨床醫生做過書面審查，那次審查改變了設計；具體改動寫在[項目頁面]({{ '/zh-hant/portfolio/' | relative_url }}#clinical-review)上。目前沒有臨床結果可以報告，我也不聲稱系統的任何部分已在病人身上得到驗證。

## 它在整體中的位置 {#where-it-fits}

<table>
<tr>
  <td><strong>1 · 立場</strong></td>
  <td><a href="{{ '/zh-hant/writing/' | relative_url }}">錨定論文：面向病人的可問責解讀</a><br>
      <span class="muted">觀點文章，已投稿，尚未發表。五層問責圖，以及 0 到 4 級的成熟度框架。</span></td>
</tr>
<tr>
  <td><strong>2 · 本研究</strong></td>
  <td><em>Day Eleven</em>：把這一立場所要求的交互，做成具體的、公開的東西。</td>
</tr>
<tr>
  <td><strong>3 · 第一階段原型</strong></td>
  <td><a href="{{ '/zh-hant/portfolio/' | relative_url }}">面向病人的醫療數字孿生</a><br>
      <span class="muted">構建中。章程、風險歸屬和外部臨床審查已經公開；架構尚未公開。</span></td>
</tr>
<tr>
  <td><strong>4 · 下一步</strong></td>
  <td>一篇倫理論文和一篇技術論文，然後是在一個範圍明確的心血管代謝使用場景中，一個經過前瞻性評估、在臨床監督下運行的數字孿生。需要多年時間，並取決於臨床合作伙伴和倫理審批。</td>
</tr>
</table>

## 背後的論證 {#the-argument-behind-it}

完整的論證在筆記[**它大多數時候是對的，這正是問題所在**]({{ '/zh-hant/notes/2026-09-02-most-of-the-time-it-is-right-that-is-the-problem/' | relative_url }})裏。它解釋了：為甚麼評判一個面向病人的醫療 AI，要看它拒答了甚麼；為甚麼一項要花臨床醫生時間的升級，不出一個季度就會被關掉；以及為甚麼一次無法還原的拒答，和從沒發生過的拒答沒有區別。

## 是誰做的 {#who-made-this}

<div class="author-card">
  <img src="{{ '/assets/img/portrait-144.jpg' | relative_url }}" width="139" height="144" alt="Xiaoyan (Candice) Qian 的照片">
  <div>
    <p>我是 Xiaoyan (Candice) Qian。我在同一個系統上，既構建面向病人的醫療 AI，也構建它需要的治理。我構思了 <em>Day Eleven</em>，寫了它的臨床情景；我設計了這個數字孿生的治理架構，現在正在構建它的第一階段原型。我是香港大學 AI 博士，在 <em>International Journal of Computer Vision</em> 和 AAAI 發表過三維感知方向的第一作者論文；現任該聯合實驗室研發經理兼功能實驗室負責人。</p>
    <p class="author-links"><a href="{{ '/zh-hant/about/' | relative_url }}">關於我</a> · <a href="{{ '/zh-hant/writing/' | relative_url }}">研究與寫作</a> · <a href="https://www.linkedin.com/in/xiaoyan-qian-b2256b88/">LinkedIn</a> · <a href="https://scholar.google.com/citations?user=XNdT5EMAAAAJ">Google Scholar</a></p>
  </div>
</div>

## 來反駁它，或幫它成形 {#talk}

這部短片，就是為了讓人趁設計還能改的時候來反駁而做的。聯絡我最好用 Email：[qianxy10@connect.hku.hk](mailto:qianxy10@connect.hku.hk)。

- **如果你在香港診治成年糖尿病病人**，可以<a href="mailto:qianxy10@connect.hku.hk?subject=Day%20Eleven%3A%20the%20one-page%20list" data-goatcounter-click="twin-ask-list">向我索取那份一頁清單</a>，上面列着數字孿生可以回答甚麼、必須拒答甚麼。在清單上做標註大約需要半小時；每一處標註都會改變配置，並連同你的名字和日期一起記錄下來。不涉及任何病人。
- **如果你研究醫療 AI 或它的治理**，請把你的反對意見發給我。站得住的反對意見會改變設計；如果你願意，我會註明出自你。
- **如果你資助或開發健康科技**，[項目章程]({{ '/zh-hant/artifacts/pre-deployment-charter/' | relative_url }})寫明瞭項目所處的階段、邊界，以及目前尚未主張的內容。
- **如果你是記者**，下面的劇照註明出處即可免費轉載，我也樂意書面回答技術問題。

<p class="muted">
<strong>供媒體使用。</strong>兩張 3840 × 1632 像素的劇照可免費轉載，請註明出處
<em>Day Eleven, Xiaoyan (Candice) Qian, Medical Digital Twin Initiative, HKU-Avnet Joint AI Laboratory</em>。劇照：<a href="{{ '/assets/press/day-eleven-still-01-governed-vs-ungoverned.jpg' | relative_url }}">1 · 有治理與無治理，並排對照</a> ·
<a href="{{ '/assets/press/day-eleven-still-02-permission-strip.jpg' | relative_url }}">2 · 權限條</a>。兩張劇照的畫面內都帶有合成情景和原型的說明，請讓它們保持可見。請把這部短片描述為：出自一個部署前研究原型的示意性交互研究，使用虛構病人和合成數據。它不是診斷系統，也沒有在臨床使用。請不要把它描述為監測服務：在目前的設計裏，提醒發給病人，只有在診所同意接收的情況下，才會送到診所。如果需要一句背景：香港正把糖尿病和高血壓轉由家庭醫生和社區跟進，但在兩次覆診之間的大部分時間裏，病人仍要自己讀懂數據，自己判斷甚麼時候該回去找醫生。
</p>

<p class="muted">
示意性的合成情景。它描繪的是由無治理的 AI 健康建議造成的一類傷害，不指向任何具體產品或真實個案。它展示的是一個有治理的系統做甚麼，而不是它怎樣運作：這裏不公開任何規則、閾值、提示詞、評估方法或數據來源。
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
