---
layout: default
title: "Day Eleven：一个知道自己回答边界在哪里的医疗数字孪生"
description: "一个面向病人的医疗数字孪生：它解释、拒答、升级（转交医生处理）、留下记录，但从不做决定。短片讲的是一个它绝不能回答的问题。"
image: /assets/img/day-eleven-social.jpg
lang: zh-Hans
en_url: /twin/
permalink: /zh-hans/twin/
---
{% comment %}
2026-10-22：社会问题句、"Care is moving too"一段与 For press 的背景句取自 对外话术卡 v0.2 §0 / §3b；
页面上的数字已登记在 /artifacts/claims-evidence-register/ 的 Context claims。改句子先改话术卡，再改这里。
简体中文译本，译自英文版（HEAD 5110246）；改英文页时同步改本页与 zh-hant。
{% endcomment %}

<p class="kicker">医疗数字孪生项目 · Day Eleven</p>

# 一个知道自己回答边界在哪里的医疗数字孪生 {#a-medical-digital-twin-that-knows-where-its-answers-end}

<p class="deck">通用 AI 助手热心的一句话。第十一天，急诊入院。他的诊所始终不知道他问过。</p>

<p class="badge badge-scenario">示意性交互研究 · 合成情景 · 不是已部署的系统</p>

<p class="byline">作者：<a href="{{ '/zh-hans/about/' | relative_url }}">Xiaoyan (Candice) Qian</a>，HKU-Avnet Joint AI Laboratory（港大与安富利的联合 AI 实验室） · 首次发布于 2026 年 9 月 16 日，更新于 2026 年 10 月 22 日</p>

<p class="cta-row">
  <a href="#film">看短片</a> <span class="muted">（9 分 40 秒）</span> ·
  <a href="#why-now">为什么是现在</a> ·
  <a href="#talk">来反驳它</a>
</p>

<figure class="hero-figure">
  <a class="zoom-link" href="{{ '/assets/press/day-eleven-still-01-crop.jpg' | relative_url }}" title="点击放大">
  <img src="{{ '/assets/img/day-eleven-hero.jpg' | relative_url }}" width="1920" height="716"
       alt="同一个病人问题，由两个系统回答。左边，通用助手建议病人把二甲双胍减半，时间线一路走到第十一天的急诊入院。右边，有治理的数字孪生拒答，把问题标记给他的医护团队，并说明它判断不了什么、什么能让问题有定论、他这一周可以留意什么。">
  </a>
  <figcaption>同一位病人的问题，分别问两个系统。<strong>左：</strong>通用助手给出一个热心而错误的回答，时间线以急诊入院告终。<strong>右：</strong>有治理的数字孪生说明这个问题该由给他开药的临床医生回答，当天把它标记给他的医护团队，并回给他三样东西。画面顶部，<em>decides</em>（决定）一词被划掉，始终没有亮起。</figcaption>
</figure>

## 什么是医疗数字孪生 {#what-a-medical-digital-twin-is}

医疗数字孪生是一个人健康状况的持续更新模型，很像天气预报背后的大气模型。如今医学里的数字孪生大多是为专科医生建的：一颗心脏或一个肿瘤的模型，供治疗它的临床医生使用。这一个是为病人建的。它的设计是在两次复诊之间陪着一个人，帮他弄明白自己的血糖、睡眠和饮食，以及他拿来问它的那些问题。

它不做任何决定。它解释自己看得到的东西，拒答该由临床医生回答的问题，把不该等的事升级（转交医生处理），并留下事后可以核查的记录。对诊所来说，目标是让复诊准备得更充分，而不是再多一个收件箱。它的第一个使用场景是基层医疗中的 2 型糖尿病。第一阶段原型处于部署前阶段：仍在构建中，只使用合成数据和公开数据。

## 短片 {#film}

<video id="day-eleven-film" controls preload="metadata" playsinline
       poster="{{ '/assets/video/day-eleven-poster.jpg' | relative_url }}"
       style="width:100%;max-width:900px;border-radius:8px;background:#0b1220">
  <source src="{{ '/assets/video/day-eleven.mp4' | relative_url }}" type="video/mp4">
  你的浏览器不支持内嵌视频。
  <a href="{{ '/assets/video/day-eleven.mp4' | relative_url }}">下载短片（MP4）</a>。
</video>

<p class="muted" style="max-width:900px">
片长 9 分 40 秒，有声，配中英文字幕。（译注：短片对白为英文。）2026 年 9 月 17 日在该联合实验室的开幕式上放映。选一个章节，就从那里开始播放。
</p>

<ol class="chapters">
  <li><button type="button" class="chapter" data-t="0" data-goatcounter-click="twin-chapter-1" aria-label="从 0:00 开始播放：第十一天">
    <span class="chapter-thumb"><img src="{{ '/assets/img/day-eleven-ch1.jpg' | relative_url }}" width="640" height="272" alt="" loading="lazy"><span class="chapter-time">0:00</span></span>
    <span class="chapter-title">第十一天</span>
    <span class="chapter-desc">一个普通的回答会把人带到哪里。然后是陈先生，以及数字孪生被允许做的三件事。</span>
  </button></li>
  <li><button type="button" class="chapter" data-t="56" data-goatcounter-click="twin-chapter-2" aria-label="从 0:56 开始播放：大多数日子">
    <span class="chapter-thumb"><img src="{{ '/assets/img/day-eleven-ch2.jpg' | relative_url }}" width="640" height="272" alt="" loading="lazy"><span class="chapter-time">0:56</span></span>
    <span class="chapter-title">大多数日子</span>
    <span class="chapter-desc">两次复诊之间，什么事也没有。到第九周，他能读懂自己的数字了。</span>
  </button></li>
  <li><button type="button" class="chapter" data-t="213" data-goatcounter-click="twin-chapter-3" aria-label="从 3:33 开始播放：凌晨 2:40">
    <span class="chapter-thumb"><img src="{{ '/assets/img/day-eleven-ch3.jpg' | relative_url }}" width="640" height="272" alt="" loading="lazy"><span class="chapter-time">3:33</span></span>
    <span class="chapter-title">凌晨 2:40</span>
    <span class="chapter-desc">一条紧急低血糖提醒，同时送到他和他的医护团队。一位医生关闭了这条标记。</span>
  </button></li>
  <li><button type="button" class="chapter" data-t="332" data-goatcounter-click="twin-chapter-4" aria-label="从 5:32 开始播放：一个星期二">
    <span class="chapter-thumb"><img src="{{ '/assets/img/day-eleven-ch4.jpg' | relative_url }}" width="640" height="272" alt="" loading="lazy"><span class="chapter-time">5:32</span></span>
    <span class="chapter-title">一个星期二</span>
    <span class="chapter-desc">他问要不要停用二甲双胍。一个通用助手回答了。</span>
  </button></li>
  <li><button type="button" class="chapter" data-t="398" data-goatcounter-click="twin-chapter-5" aria-label="从 6:38 开始播放：那次拒答">
    <span class="chapter-thumb"><img src="{{ '/assets/img/day-eleven-ch5.jpg' | relative_url }}" width="640" height="272" alt="" loading="lazy"><span class="chapter-time">6:38</span></span>
    <span class="chapter-title">那次拒答</span>
    <span class="chapter-desc">数字孪生拒答，标记了这个问题，并回给他三样东西。</span>
  </button></li>
  <li><button type="button" class="chapter" data-t="474" data-goatcounter-click="twin-chapter-6" aria-label="从 7:54 开始播放：九天后">
    <span class="chapter-thumb"><img src="{{ '/assets/img/day-eleven-ch6.jpg' | relative_url }}" width="640" height="272" alt="" loading="lazy"><span class="chapter-time">7:54</span></span>
    <span class="chapter-title">九天后</span>
    <span class="chapter-desc">他的医生已经看过这个问题。几个月后，日志里仍然留着它。</span>
  </button></li>
</ol>

陈先生 58 岁，患有 2 型糖尿病。短片陪他和他的数字孪生走过三个月。大多数日子什么事也没有；到第九周，数字孪生还没开口，他已经从自己的数字里看出了规律：按设计，他应该越来越不需要它，而不是越来越需要它。一天夜里，他的血糖降了下来，提醒同时送到他和他的医护团队。在片中，他的诊所会收到这类提醒和标记。在目前的第一阶段设计里，它们发给病人，并写进他下次复诊的摘要；只有在诊所同意接收的情况下，才会更早送到诊所。多数诊所夜里不会有人看到，一个知道这一点的系统必须把这一点说出来。然后，他问要不要停用二甲双胍，短片把这一刻呈现了两次。

在片尾一段，病种从糖尿病换成高血压、心力衰竭和慢性肾病，治理层保持不变。这正是设计意图：治理层只建一次，再针对每种疾病分别配置。

## 为什么重要 {#why-it-matters}

糖尿病病人一年里坐在临床医生面前的时间，可能只有一两个小时。其间八千多个小时，他们都是一个人面对自己的问题；而这些问题，现在越来越多地被拿去问通用 AI 助手。这些助手在构建时，没有经过验证的临床范围，没有何时拒答的规程，也没有一份病人自己的临床医生能查阅的记录。这不是谁在疏忽：对多数病人来说，并没有一个有治理的选项可选。

危险很少来自一个听起来就不对的回答。通用助手大多数时候是对的，所以到了它出错的那一天，人们照样信它。聊天窗口里没有任何东西会标出这样一个时刻：一个问题从询问某种规律意味着什么，转成了要求一个临床判断，比如该不该停药，肾脏有没有受累。

所以，光看准确率，判断不了一个面向病人的医疗 AI 是否安全。在这里，安全更适合理解为范围、拒答、升级和记录：四项可以检查、也可以让某个人为之负责的属性。拒答也必须回给对方一些东西，否则就是把人关在门外。用了一年之后，一个好的系统应当让人即使不用它，也更能读懂自己的数字。

我把这四项属性的证据称为 *behavioural assurance*（行为保证）：关于一个已部署的系统实际做了什么的证据，而不是它的模型在发布前被证明能做什么。它表明系统是否守在经过验证的范围之内，是否在该拒答、该升级的地方拒答和升级，以及事后能否重放。

## 为什么是现在，为什么是香港 {#why-now}

香港已经从原则走到了实践。政府已经发布关于 AI 道德和生成式 AI 的指引；2025 年 2 月，医院管理局（医管局）宣布，从次月起，六家公立医院将用生成式 AI 起草医疗报告，每一份报告都由医生核对并批准。

照护也在转移。2026 年 3 月，政府宣布，参加人数已逾 20 万的慢性疾病共同治理先导计划将常规化，并推出基层医疗共治网络，目标是在前五年覆盖约 70 万人。政府还表示，会逐步邀请医管局家庭医学诊所的合适病人加入该网络的服务（[政府新闻公报，2026 年 3 月 13 日](https://www.info.gov.hk/gia/general/202603/13/P2026031300680.htm)）。糖尿病和高血压的照护正转由家庭医生和社区跟进，但在两次复诊之间的大部分时间里，病人仍要自己读懂数据，自己判断什么时候该回去找医生。光有更多数据，补不上这个缺口。政府 2025 年答复立法会时指出，医管局 2024 年照顾的糖尿病病人超过 658,000 人；如果给所有人都配连续血糖监测仪，医护人员会面对读数的信息过载，每年还要多花数十亿元（[立法会答复，2025 年 7 月 16 日](https://www.info.gov.hk/gia/general/202507/16/P2025071600591.htm)）。

下一步是直接和病人对话的 AI；而对这一步，不论在香港还是其他地方，我都没有找到一种标准的证据形式。一个对话式医疗 AI，要怎样证明自己满足了上面这四项属性，并留下能让审查者重放过往回答的记录？2026 年 *npj Digital Medicine* 上的一篇文章，题为“[Innovating global regulatory frameworks for generative AI in medical devices is an urgent priority](https://doi.org/10.1038/s41746-026-02552-2)”（为医疗器械中的生成式 AI 革新全球监管框架，是当务之急）。人们将对这些系统提出什么要求，现在正在定下来；在系统到达病人之前去塑造这些要求，远比之后便宜。

## 一项设计研究 {#a-design-study}

按建筑师对这个词的用法，“研究”（study）是在一样东西建成之前，对它的形式所做的推敲；这部短片就是这个意义上的研究。它展示的，是第一阶段原型在构建时要满足的交互，不是原型本身，也不是它的架构。这样，临床医生和审查者现在就能质疑这项要求，趁系统还不存在、各项决定还没有定死。

原型的边界规则和升级规则，已由一位独立的基层医疗临床医生做过书面审查，那次审查改变了设计；具体改动写在[项目页面]({{ '/zh-hans/portfolio/' | relative_url }}#clinical-review)上。目前没有临床结果可以报告，我也不声称系统的任何部分已在病人身上得到验证。

## 它在整体中的位置 {#where-it-fits}

<table>
<tr>
  <td><strong>1 · 立场</strong></td>
  <td><a href="{{ '/zh-hans/writing/' | relative_url }}">锚定论文：面向病人的可问责解读</a><br>
      <span class="muted">观点文章，已投稿，尚未发表。五层问责图，以及 0 到 4 级的成熟度框架。</span></td>
</tr>
<tr>
  <td><strong>2 · 本研究</strong></td>
  <td><em>Day Eleven</em>：把这一立场所要求的交互，做成具体的、公开的东西。</td>
</tr>
<tr>
  <td><strong>3 · 第一阶段原型</strong></td>
  <td><a href="{{ '/zh-hans/portfolio/' | relative_url }}">面向病人的医疗数字孪生</a><br>
      <span class="muted">构建中。章程、风险归属和外部临床审查已经公开；架构尚未公开。</span></td>
</tr>
<tr>
  <td><strong>4 · 下一步</strong></td>
  <td>一篇伦理论文和一篇技术论文，然后是在一个范围明确的心血管代谢使用场景中，一个经过前瞻性评估、在临床监督下运行的数字孪生。需要多年时间，并取决于临床合作伙伴和伦理审批。</td>
</tr>
</table>

## 背后的论证 {#the-argument-behind-it}

完整的论证在笔记[**它大多数时候是对的，这正是问题所在**]({{ '/zh-hans/notes/2026-09-02-most-of-the-time-it-is-right-that-is-the-problem/' | relative_url }})里。它解释了：为什么评判一个面向病人的医疗 AI，要看它拒答了什么；为什么一项要花临床医生时间的升级，不出一个季度就会被关掉；以及为什么一次无法还原的拒答，和从没发生过的拒答没有区别。

## 是谁做的 {#who-made-this}

<div class="author-card">
  <img src="{{ '/assets/img/portrait-144.jpg' | relative_url }}" width="139" height="144" alt="Xiaoyan (Candice) Qian 的照片">
  <div>
    <p>我是 Xiaoyan (Candice) Qian。我在同一个系统上，既构建面向病人的医疗 AI，也构建它需要的治理。我构思了 <em>Day Eleven</em>，写了它的临床情景；我设计了这个数字孪生的治理架构，现在正在构建它的第一阶段原型。我是香港大学 AI 博士，在 <em>International Journal of Computer Vision</em> 和 AAAI 发表过三维感知方向的第一作者论文；现任该联合实验室研发经理兼功能实验室负责人。</p>
    <p class="author-links"><a href="{{ '/zh-hans/about/' | relative_url }}">关于我</a> · <a href="{{ '/zh-hans/writing/' | relative_url }}">研究与写作</a> · <a href="https://www.linkedin.com/in/xiaoyan-qian-b2256b88/">LinkedIn</a> · <a href="https://scholar.google.com/citations?user=XNdT5EMAAAAJ">Google Scholar</a></p>
  </div>
</div>

## 来反驳它，或帮它成形 {#talk}

这部短片，就是为了让人趁设计还能改的时候来反驳而做的。联系我最好用 Email：[qianxy10@connect.hku.hk](mailto:qianxy10@connect.hku.hk)。

- **如果你在香港诊治成年糖尿病病人**，可以<a href="mailto:qianxy10@connect.hku.hk?subject=Day%20Eleven%3A%20the%20one-page%20list" data-goatcounter-click="twin-ask-list">向我索取那份一页清单</a>，上面列着数字孪生可以回答什么、必须拒答什么。在清单上做标注大约需要半小时；每一处标注都会改变配置，并连同你的名字和日期一起记录下来。不涉及任何病人。
- **如果你研究医疗 AI 或它的治理**，请把你的反对意见发给我。站得住的反对意见会改变设计；如果你愿意，我会注明出自你。
- **如果你资助或开发健康科技**，[项目章程]({{ '/zh-hans/artifacts/pre-deployment-charter/' | relative_url }})写明了项目所处的阶段、边界，以及目前尚未主张的内容。
- **如果你是记者**，下面的剧照注明出处即可免费转载，我也乐意书面回答技术问题。

<p class="muted">
<strong>供媒体使用。</strong>两张 3840 × 1632 像素的剧照可免费转载，请注明出处
<em>Day Eleven, Xiaoyan (Candice) Qian, Medical Digital Twin Initiative, HKU-Avnet Joint AI Laboratory</em>。剧照：<a href="{{ '/assets/press/day-eleven-still-01-governed-vs-ungoverned.jpg' | relative_url }}">1 · 有治理与无治理，并排对照</a> ·
<a href="{{ '/assets/press/day-eleven-still-02-permission-strip.jpg' | relative_url }}">2 · 权限条</a>。两张剧照的画面内都带有合成情景和原型的说明，请让它们保持可见。请把这部短片描述为：出自一个部署前研究原型的示意性交互研究，使用虚构病人和合成数据。它不是诊断系统，也没有在临床使用。请不要把它描述为监测服务：在目前的设计里，提醒发给病人，只有在诊所同意接收的情况下，才会送到诊所。如果需要一句背景：香港正把糖尿病和高血压转由家庭医生和社区跟进，但在两次复诊之间的大部分时间里，病人仍要自己读懂数据，自己判断什么时候该回去找医生。
</p>

<p class="muted">
示意性的合成情景。它描绘的是由无治理的 AI 健康建议造成的一类伤害，不指向任何具体产品或真实个案。它展示的是一个有治理的系统做什么，而不是它怎样运作：这里不公开任何规则、阈值、提示词、评估方法或数据来源。
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
