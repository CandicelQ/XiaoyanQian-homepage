---
layout: default
title: 研究與寫作
lang: zh-Hant
en_url: /writing/
permalink: /zh-hant/writing/
---

# 研究與寫作 {#research--writing}

<p class="section-intro">
我的研究計劃只問一個問題：當一個醫療 AI 系統向病人談論他們自己的身體時，是甚麼讓這個聲音可以被問責？這個計劃按順序展開：一篇錨定論文界定問題（已投稿），一條倫理線和一條技術線在此基礎上延伸（分別是下一步和計劃中），長期目標是一個在臨床中部署、有治理的面向病人的數字孿生。每一項的發表狀態都如實標明。完整論文列表：<a href="https://scholar.google.com/citations?user=XNdT5EMAAAAJ">Google Scholar</a>。
</p>

## 錨定論文：面向病人的可問責解讀 {#anchor-accountable-patient-facing-interpretation}
<p class="badge badge-published">觀點文章 · 已投稿</p>

**Beyond digital replicas: clinical governance for patient-facing conversational digital twins**


醫療數字孿生正在顯示出臨床價值，但主要是在邊界嚴格、面向專家的場景裏。這篇觀點文章認為，下一個前沿不是更完整的解剖複製，而是面向病人的可問責解讀：當病人看得到輸出時，系統能負責任地解釋、拒答、升級（轉交醫生處理）和審計哪些內容。文章提出兩個工具：

- **一張五層問責圖**，把感知、表徵、預測、有治理的編排與溝通、病人與臨床醫生的互動分開，讓責任可以被定位，而不是被攤薄。
- **一個成熟度框架（0 到 4 級）**，區分數字模型、數字影子、預測型孿生、可行動孿生和對話式孿生，讓關於部署就緒的主張變得可審計、可證偽。

治理立場是：一個系統，除非能讓不確定性可見、給出來源、守在經過驗證的範圍之內、拒絕做出沒有依據的主張、觸發升級，並始終處在臨床監督之下，否則就不應被當作值得信任的對話式孿生。治理是系統邊界的一部分，不是行政上的附加項。

### 這條線的四步 {#the-line-in-four-steps}

這篇錨定論文不是孤立的一篇，而是一個序列的第一步；每一步之所以存在，是為了讓下一步能對照一個已經寫明的東西來構建，而不是對照一個假設。

1. **立場**：就是這篇觀點文章。面向病人的可問責解讀是甚麼意思，以及怎樣為它定位責任。
2. **交互研究**：[*Day Eleven*]({{ '/zh-hant/twin/' | relative_url }})，2026 年 9 月起公開。一部不到十分鐘的短片，把這項要求變得具體：一個醫療 AI 本該拒答的問題，在有治理和沒有治理時各呈現一次，以及三個月後審計日誌裏仍然留着甚麼。它研究的是交互，不是對一個已建成系統的示範。
3. **第一階段原型**：正在構建，使用合成數據和公開數據。它的章程、風險歸屬和[外部臨床審查]({{ '/zh-hant/portfolio/' | relative_url }}#clinical-review)已經公開；它的架構要等論文發表後才公開。
4. **下面兩條線，然後是臨床評估**：先是倫理線和技術線，然後是在一個範圍明確的心血管代謝使用場景中，一個經過前瞻性評估、在臨床監督下運行的數字孿生。

## 第一條線：解釋性權威的倫理 {#line-1-the-ethics-of-explanatory-authority}
<p class="badge badge-published">規範性論文 · 狀態：準備中</p>

當同一個被動監測病人的系統，也和病人談論它推斷出了甚麼時，監測關係就獲得了一個認知上的聲音：知情同意不再只是同意採集數據，而是同意一個會塑造病人如何理解自己身體的系統。這篇論文把一種新的傷害定位在未加標記的跨域（unmarked domain-crossing）上：在一次對話裏，生成式系統可以從病人同意的監測目的，滑向跨領域推斷和心理推斷，卻沒有任何信號表明已經越過了一條線；這讓現有知情同意保障和偶然發現保障所依賴的離散性失效。建設性的主張是：讓日常健康反饋變得安全的保護性支架，必須事前、透過設計來搭建，靠的是經過驗證的範圍、有治理的拒答和可審計的升級。

## 第二條線：可以構建、可以測試的治理基礎設施 {#line-2-governance-infrastructure-that-can-be-built-and-tested}
<p class="badge badge-published">技術論文 · 狀態：計劃中；數據獲取進行中</p>

技術線把這個框架變成可以測試的工程。一個病人問題依次經過三道保障：針對具體任務的護欄（這在經過驗證的範圍之內嗎？）、安全分類（風險有多高，要不要升級？），以及基於檢索的生成（每一句話都能追溯到這位病人自己的記錄嗎？）。這篇論文的貢獻不是推薦某一種機制，而是說明選擇哪種機制，本身就是一個可審計的治理決定，每種機制都有各自的溯源特性和失效模式；驗證使用公開的縱向健康數據。

## 長期方向 {#long-term-direction}

這個研究計劃要走向的終點，是在一個範圍明確的心血管代謝使用場景中，一個經過前瞻性評估、在臨床監督下運行的面向病人的數字孿生；拒答、升級和審計從一開始就內建其中，而不是部署之後再補上。這是一項多年的工作，涉及臨床合作伙伴、倫理審批和實施研究。上面三篇論文是有意分階段安排的，讓每一步都能單獨發表、可以證偽，並且本身就有用。

## 代表性論文 {#selected-publications}

- **Xiaoyan Qian**, Chang Liu, Xiaojuan Qi, Siew-Chong Tan, Edmund Y. Lam, Ngai Wong. <a href="https://link.springer.com/article/10.1007/s11263-025-02704-z">CAT++: Enhancing 3D Annotations with Hierarchical-Interleaved Encoding and Attention-Conditioned Implicit Representation</a>. <em>International Journal of Computer Vision</em>, 134(2), 2026.
- **Xiaoyan Qian**, Chang Liu, Xiaojuan Qi, Siew-Chong Tan, Edmund Lam, Ngai Wong. <a href="https://ojs.aaai.org/index.php/AAAI/article/view/25301">Context-Aware Transformer for 3D Point Cloud Automatic Annotation</a>. <em>Proceedings of the AAAI Conference on Artificial Intelligence</em>, 37(2), 2082-2090, 2023.

<p class="muted">這條以我為第一作者的三維感知與自動標註研究，支撐着醫療數字孿生的表徵層和可視化層。完整列表見 <a href="https://scholar.google.com/citations?user=XNdT5EMAAAAJ">Google Scholar</a>。</p>

## 治理短文 {#shorter-governance-writing}

我發表簡短的[治理筆記]({{ '/zh-hant/notes/' | relative_url }})，每篇只拿一個技術問題，把它翻譯成治理語言：風險是甚麼，誰來負責，實際要怎樣部署。新筆記會定期加入，其中有幾篇拿 AI 領域的最新進展，放到治理的視角下來讀。

<p class="muted">最近的三篇：為甚麼 2026 年各州關於 AI 用於事先授權的法律，真正關乎的是能否獲得醫療，而不只是醫療質素；DeepMind 進入生物韌性領域，對兩用問責意味着甚麼；以及 Anthropic 出口管制事件，對一家依賴外國模型的醫院意味着甚麼。全部筆記見<a href="{{ '/zh-hant/notes/' | relative_url }}">筆記</a>。</p>
