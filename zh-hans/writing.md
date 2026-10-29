---
layout: default
title: 研究与写作
lang: zh-Hans
en_url: /writing/
permalink: /zh-hans/writing/
---

# 研究与写作 {#research--writing}

<p class="section-intro">
我的研究计划只问一个问题：当一个医疗 AI 系统向病人谈论他们自己的身体时，是什么让这个声音可以被问责？这个计划按顺序展开：一篇锚定论文界定问题（已投稿），一条伦理线和一条技术线在此基础上延伸（分别是下一步和计划中），长期目标是一个在临床中部署、有治理的面向病人的数字孪生。每一项的发表状态都如实标明。完整论文列表：<a href="https://scholar.google.com/citations?user=XNdT5EMAAAAJ">Google Scholar</a>。
</p>

## 锚定论文：面向病人的可问责解读 {#anchor-accountable-patient-facing-interpretation}
<p class="badge badge-published">观点文章 · 已投稿</p>

**Beyond digital replicas: clinical governance for patient-facing conversational digital twins**


医疗数字孪生正在显示出临床价值，但主要是在边界严格、面向专家的场景里。这篇观点文章认为，下一个前沿不是更完整的解剖复制，而是面向病人的可问责解读：当病人看得到输出时，系统能负责任地解释、拒答、升级（转交医生处理）和审计哪些内容。文章提出两个工具：

- **一张五层问责图**，把感知、表征、预测、有治理的编排与沟通、病人与临床医生的互动分开，让责任可以被定位，而不是被摊薄。
- **一个成熟度框架（0 到 4 级）**，区分数字模型、数字影子、预测型孪生、可行动孪生和对话式孪生，让关于部署就绪的主张变得可审计、可证伪。

治理立场是：一个系统，除非能让不确定性可见、给出来源、守在经过验证的范围之内、拒绝做出没有依据的主张、触发升级，并始终处在临床监督之下，否则就不应被当作值得信任的对话式孪生。治理是系统边界的一部分，不是行政上的附加项。

### 这条线的四步 {#the-line-in-four-steps}

这篇锚定论文不是孤立的一篇，而是一个序列的第一步；每一步之所以存在，是为了让下一步能对照一个已经写明的东西来构建，而不是对照一个假设。

1. **立场**：就是这篇观点文章。面向病人的可问责解读是什么意思，以及怎样为它定位责任。
2. **交互研究**：[*Day Eleven*]({{ '/zh-hans/twin/' | relative_url }})，2026 年 9 月起公开。一部不到十分钟的短片，把这项要求变得具体：一个医疗 AI 本该拒答的问题，在有治理和没有治理时各呈现一次，以及三个月后审计日志里仍然留着什么。它研究的是交互，不是对一个已建成系统的演示。
3. **第一阶段原型**：正在构建，使用合成数据和公开数据。它的章程、风险归属和[外部临床审查]({{ '/zh-hans/portfolio/' | relative_url }}#clinical-review)已经公开；它的架构要等论文发表后才公开。
4. **下面两条线，然后是临床评估**：先是伦理线和技术线，然后是在一个范围明确的心血管代谢使用场景中，一个经过前瞻性评估、在临床监督下运行的数字孪生。

## 第一条线：解释性权威的伦理 {#line-1-the-ethics-of-explanatory-authority}
<p class="badge badge-published">规范性论文 · 状态：准备中</p>

当同一个被动监测病人的系统，也和病人谈论它推断出了什么时，监测关系就获得了一个认知上的声音：知情同意不再只是同意采集数据，而是同意一个会塑造病人如何理解自己身体的系统。这篇论文把一种新的伤害定位在未加标记的跨域（unmarked domain-crossing）上：在一次对话里，生成式系统可以从病人同意的监测目的，滑向跨领域推断和心理推断，却没有任何信号表明已经越过了一条线；这让现有知情同意保障和偶然发现保障所依赖的离散性失效。建设性的主张是：让日常健康反馈变得安全的保护性支架，必须事前、通过设计来搭建，靠的是经过验证的范围、有治理的拒答和可审计的升级。

## 第二条线：可以构建、可以测试的治理基础设施 {#line-2-governance-infrastructure-that-can-be-built-and-tested}
<p class="badge badge-published">技术论文 · 状态：计划中；数据获取进行中</p>

技术线把这个框架变成可以测试的工程。一个病人问题依次经过三道保障：针对具体任务的护栏（这在经过验证的范围之内吗？）、安全分类（风险有多高，要不要升级？），以及基于检索的生成（每一句话都能追溯到这位病人自己的记录吗？）。这篇论文的贡献不是推荐某一种机制，而是说明选择哪种机制，本身就是一个可审计的治理决定，每种机制都有各自的溯源特性和失效模式；验证使用公开的纵向健康数据。

## 长期方向 {#long-term-direction}

这个研究计划要走向的终点，是在一个范围明确的心血管代谢使用场景中，一个经过前瞻性评估、在临床监督下运行的面向病人的数字孪生；拒答、升级和审计从一开始就内建其中，而不是部署之后再补上。这是一项多年的工作，涉及临床合作伙伴、伦理审批和实施研究。上面三篇论文是有意分阶段安排的，让每一步都能单独发表、可以证伪，并且本身就有用。

## 代表性论文 {#selected-publications}

- **Xiaoyan Qian**, Chang Liu, Xiaojuan Qi, Siew-Chong Tan, Edmund Y. Lam, Ngai Wong. <a href="https://link.springer.com/article/10.1007/s11263-025-02704-z">CAT++: Enhancing 3D Annotations with Hierarchical-Interleaved Encoding and Attention-Conditioned Implicit Representation</a>. <em>International Journal of Computer Vision</em>, 134(2), 2026.
- **Xiaoyan Qian**, Chang Liu, Xiaojuan Qi, Siew-Chong Tan, Edmund Lam, Ngai Wong. <a href="https://ojs.aaai.org/index.php/AAAI/article/view/25301">Context-Aware Transformer for 3D Point Cloud Automatic Annotation</a>. <em>Proceedings of the AAAI Conference on Artificial Intelligence</em>, 37(2), 2082-2090, 2023.

<p class="muted">这条以我为第一作者的三维感知与自动标注研究，支撑着医疗数字孪生的表征层和可视化层。完整列表见 <a href="https://scholar.google.com/citations?user=XNdT5EMAAAAJ">Google Scholar</a>。</p>

## 治理短文 {#shorter-governance-writing}

我发表简短的[治理笔记]({{ '/zh-hans/notes/' | relative_url }})，每篇只拿一个技术问题，把它翻译成治理语言：风险是什么，谁来负责，实际要怎样部署。新笔记会定期加入，其中有几篇拿 AI 领域的最新进展，放到治理的视角下来读。

<p class="muted">举三篇为例：为什么 2026 年各州关于 AI 用于事先授权的法律，真正关乎的是能否获得医疗，而不只是医疗质量；DeepMind 进入生物韧性领域，对两用问责意味着什么；以及 Anthropic 出口管制事件，对一家依赖外国模型的医院意味着什么。全部笔记见<a href="{{ '/zh-hans/notes/' | relative_url }}">笔记</a>。</p>
