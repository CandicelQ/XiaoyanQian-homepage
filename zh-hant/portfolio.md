---
layout: default
title: 治理作品集
lang: zh-Hant
en_url: /portfolio/
permalink: /zh-hant/portfolio/
---

# 治理作品集 {#governance-portfolio}

<p class="section-intro">
多數醫療 AI 治理都來得太晚：它以文件的形式出現在模型跑通之後，那時真正要緊的決定都已經預設定下了。我反過來做。在這裏，我把治理當作與系統同步構建的設計約束，每一項都要經過同一個檢驗：系統提出的每一項主張，有沒有負責人、有沒有核查、有沒有審計軌跡，還是隻是一句承諾？缺了這三樣的控制只是一種意見，不是治理。
</p>

<p class="section-intro">
以下是經過挑選、已脫敏的部分材料，每一項都按證據類型標註：
<span class="badge badge-project">項目衍生</span>
<span class="badge badge-scenario">情景推演</span>
<span class="badge badge-published">研究</span>。完整的內部材料不公開；這裏展示的重點是治理結構、風險歸屬和部署就緒的推理，而不是保密的技術細節。
</p>

<p class="section-intro">
治理工作的可信度，始於對自身證據的誠實主張，所以每一項都帶有以下三種標籤之一。<strong>項目衍生</strong>：在一個真實的醫療 AI 項目內部產出的工作，已為公開分享脫敏；它反映的是部署前的治理設計，不是上市後的經驗。<strong>情景推演</strong>：基於現實部署模式和公開監管材料構建的治理練習；它們展示的是判斷力，不是部署經歷。<strong>研究</strong>：稿件與公開文章，並註明各自實際的發表狀態。
</p>

<h2 id="who-for">寫給誰</h2>

<p class="section-intro">
不同的讀者看同一份治理工作，要找的證明各不相同。這一節把四類常見問題對應到這裏能回答它們的具體證據，並如實說明每一項能證明甚麼、不能證明甚麼。同樣的控制在四行裏反覆出現，這是有意的：即使行業本身無法遷移，這門功夫也能遷移。
</p>

<div class="who-for" markdown="1">

| 如果你的問題是…… | 你真正想問的是 | 在這裏看甚麼 | 它證明甚麼，以及它的侷限 |
| --- | --- | --- | --- |
| **獨立的 AI／模型風險**：第二道防線挑戰第一道防線 | 這個人能否獨立判斷，一項 AI 風險是*真正*得到了管理，而不只是寫進了文件？ | [治理一覽](#at-a-glance)圖、[風險登記冊]({{ '/zh-hant/artifacts/risk-register/' | relative_url }})、[主張與證據登記冊]({{ '/zh-hant/artifacts/claims-evidence-register/' | relative_url }})、[智能體風險控制矩陣]({{ '/zh-hant/artifacts/agent-risk-control-matrix/' | relative_url }}) | 構建與籤核分離，加上一套「主張 &rarr; 測試 &rarr; 證據 &rarr; 負責人」的紀律，讓任何一項控制都可以被挑戰，包括系統對自身的主張。這個習慣來自我為 NeurIPS、ICML、CVPR 和 AAAI 審稿的八年；在那裏，主張跑在證據前面是典型缺陷。這是部署前的設計，不是在銀行內部擔任第二道防線的履歷。 |
| **企業 AI 治理**：管理完整的生命週期 | 這個人能否在 AI 系統的整個生命週期裏治理它，而不只是在上線時？ | [部署前章程]({{ '/zh-hant/artifacts/pre-deployment-charter/' | relative_url }})、[變更控制日誌]({{ '/zh-hant/artifacts/change-control-log/' | relative_url }})、[標準登記冊]({{ '/zh-hant/artifacts/standards-register/' | relative_url }})、[監測表]({{ '/zh-hant/artifacts/monitoring-table/' | relative_url }}) | 登記 &rarr; 風險 &rarr; 審批 &rarr; 監測 &rarr; 變更，每個階段都有負責人、觸發條件和證據；在一個系統上展示，並推廣為可複用的工具。 |
| **臨床／醫療 AI**：安全地部署面向病人的 AI | 這個人能否分清一個有前景的原型和一個可部署的系統？ | [旗艦項目](#projects)、[公開披露摘要]({{ '/zh-hant/artifacts/public-disclosure-summary/' | relative_url }})，以及關於漂移、人工推翻和升級（轉交醫生處理）的[案例](#casebook) | 部署就緒的推理，出自一個親手構建自己所治理系統的人。這個孿生還處在部署前；這不是上市後的經驗。 |
| **監管／公共政策**：把技術風險轉化為決策 | 這個人能否把技術證據轉化為可以直接用於決策的控制措施，併為受影響的人提供一條對決定提出異議的途徑？ | [案例集](#casebook)裏的權利／救濟表、[公開披露摘要]({{ '/zh-hant/artifacts/public-disclosure-summary/' | relative_url }})、[標準登記冊]({{ '/zh-hant/artifacts/standards-register/' | relative_url }}) | 把技術風險表述為政策級別的控制措施、透明度和寫明的異議途徑；這不是在主張監管職權。 |

</div>

<p class="section-intro">
這四行沒有一行主張我並不擁有的決策權：最終的剩餘風險接受、銀行第二道防線的授權、臨床風險接受，或監管權力。下面每一項都按證據類型標註，完整的內部材料不公開。如果其中一行正是你的問題，就選它，<a href="{{ '/zh-hant/about/' | relative_url }}">我們一起過一遍</a>它怎樣對應到你的系統。
</p>

<h2 id="projects">旗艦項目</h2>

### 面向病人的醫療數字孿生：構建系統，也構建它的治理 {#patient-facing-medical-digital-twin-building-the-system-and-its-governance}
<p class="badge badge-project">項目衍生 · 系統構建 + 部署前治理設計</p>

這是我的主要項目。在 HKU-Avnet Joint AI Laboratory（港大與安富利的聯合 AI 實驗室），我同時主導一個面向病人的醫療數字孿生的工程開發，以及在它部署之前必須先到位的治理框架。系統還在孵化階段，而這恰恰是治理工作最要緊的時候。在同一個系統上身兼兩職，正是要點所在：我治理我所構建的東西。

**我構建甚麼**

- **深度學習基礎（同行評審，第一作者）**：3D 感知與自動標註，分別發表於 AAAI（2023）和 *International Journal of Computer Vision*（2026）。這是「我構建」這句話中可以公開引用的核心，也是孿生的表徵層和可視化層的基礎。
- **系統架構**，覆蓋孿生的各個層次：傳感與數據接入、病人表徵、預測，以及受治理的解釋；與我研究中的問責圖對齊。
- **3D 可視化組件**：我主導了孿生的 3D 生成與渲染流程的設計、集成、測試和交付，包括模型選型、生成質素評估、客戶端與伺服器端集成，以及成本約束。這套流程在實驗室開幕時，在一面大型 LED 牆上公開示範過。
- **真實約束下的交付**：模型開發、指導實習生、向持份者彙報，以及在硬性截止期限前交付可運行的示範。

**當前狀態。** 孿生的模型和框架正在積極開發中。這個系統目前是一個內部研究示範，不是可部署的產品，我也正是這樣描述它的。有兩樣東西是分開把關的，而且是我有意分開的，不是悄悄分開的。**架構概覽和已建成系統的示範**，仍要等底層研究發表、並通過保密審查之後才公開：我寧可等它們背後的證據穩定了再展示，也不願意做一次誇大系統的預覽。**系統構建所要滿足的交互模式**是另一項主張，現在已經公開，形式是一部示意性的合成短片 [*Day Eleven*]({{ '/zh-hant/twin/' | relative_url }})，它展示一次有治理的拒答是甚麼樣子，但不披露任何規則、閾值、提示詞、評估方法或數據來源。公開後者、暫不公開前者，這和本頁在 2026 年 9 月之前的說法不同，那時兩者都在同一道關口之後。改變的理由是，一個早早說出、標明日期的立場，比一個遲遲才放出的示範更有價值；而且保密風險在架構裏，不在論證裏。

<a id="clinical-review"></a>**外部臨床審閱。** 這套治理框架已經不只是我一個人的聲音。項目章程經過了外部審閱；2026 年 8 月，一位在項目中沒有任何角色的基層醫療臨床醫生，以書面形式審閱了第一階段的邊界規則與升級規則：邊界劃得更準了，從「診斷還是非診斷」改為「描述規律還是判斷緊急程度」；升級路徑改為圍繞病人來設計，而不是發給一個寫死的接收方；那次審閱提出的六類隱性傷害，現在作為測試類別放進了評估套件。這次審閱是作為設計輸入來處理的，留有決策記錄，而不是當作背書存檔。

<!-- DEMO PLACEHOLDER: the illustrative interaction film is live at /twin/ (Sept 2026). Still outstanding: the embedded five-layer architecture figure + a demo of the built system. Gate for those two only: (1) Viewpoint accepted/published, (2) demo polished, (3) reviewed for confidentiality. -->

**我怎樣治理它**（治理包，持續維護；最近一次實質性修訂：2026 年 8 月 22 日；已脫敏）

- **預期用途與邊界界定**：當前系統是甚麼（一個內部研究示範），不是甚麼（一個經過臨床驗證或可部署的系統），以及在任何外部試點之前需要哪些證據。
- **項目章程、角色與範圍釐清，以及決策權圖**：在大學、產業合作方和未來的臨床合作方之間，每一道階段關口由誰建議、誰批准、徵詢誰的意見。
- **風險歸屬設計**：一份早期風險登記冊，把風險識別、控制歸屬、風險歸屬和風險接受權限分開，讓剩餘風險由有權限、也有資源去管理它的人來接受。
- **運作工具**：持份者圖、RACI 矩陣、決策備忘錄模板、數據就緒檢查清單、貢獻與成果登記冊、階段過渡條款與商業化觸發條款，以及署名與致謝原則。
- **部署就緒標準**：面向病人使用之前必須具備的驗證證據、亞組表現、人工監督設計、監測計劃和升級路徑。
- **營運交接**：過渡與交接計劃，讓系統可以由營運團隊、而不是由它的構建者來運行；涵蓋監測、事件響應、變更控制，以及交接後必須繼續保留的人在迴路控制，各自由誰負責。

*這是一個項目衍生的部署前治理案例。它不作為實際上線的部署案例或上市後案例來呈現，公開版本已脫敏。*

<h2 id="at-a-glance">治理一覽</h2>

<p class="section-intro">
最快看清這些怎樣組合在一起的辦法是：八個風險領域，每個領域都列出我為它設計的控制，以及系統運行之後這項控制按設計應產出的審計證據。這是地圖；下面的案例和治理文件是實地。<span class="badge badge-project">項目衍生</span> · 部署前 · 已脫敏。
</p>

| 風險領域 | 一句話說風險 | 我設計的控制 | 它按設計應產出的證據 |
| --- | --- | --- | --- |
| 預期用途與邊界 | 範圍蔓延：從監測擴展到診斷，或出現超出預期用途的使用 | [部署前章程]({{ '/zh-hant/artifacts/pre-deployment-charter/' | relative_url }}) | 禁止用途清單、決策權記錄 |
| 數據 | 數據不可信、不合法或無法追溯；把數據缺失讀成「沒有風險」 | 數據就緒關口 + 來源／血緣登記冊 | 就緒狀態、血緣條目、合法性基礎記錄 |
| 主張與證據 | 對系統的描述用了證據支持不了的說法 | [主張與證據登記冊]({{ '/zh-hant/artifacts/claims-evidence-register/' | relative_url }}) | 每條主張的差距類型、負責人，以及這條主張可以使用之前必須完成的研究 |
| 智能體 | 智能體蔓延、訪問範圍過寬、權限蔓延、無法審計的操作 | [智能體決策權]({{ '/zh-hant/cases/agent-decision-rights/' | relative_url }}) · [智能體風險控制矩陣]({{ '/zh-hant/artifacts/agent-risk-control-matrix/' | relative_url }}) | 名錄、訪問審查日誌、控制測試 |
| 變更控制 | 模型被悄悄更新；沒有剩下一個可以安全運行的版本 | [變更控制與預定變更控制計劃（PCCP）案例]({{ '/zh-hant/cases/model-change-control/' | relative_url }}) · [模型變更控制日誌]({{ '/zh-hant/artifacts/change-control-log/' | relative_url }}) | 版本日誌、再驗證記錄、回退觸發條件 |
| 保證 | 構建者自我認證；交付壓力壓倒安全 | 交付與籤核分離，並把獨立審查定為發佈條件 | 獨立籤核記錄、審計確認 |
| 上市後信號 | 儀表盤全綠也看不見的行為層面傷害 | [模型漂移案例]({{ '/zh-hant/cases/model-drift/' | relative_url }}) · [監測表]({{ '/zh-hant/artifacts/monitoring-table/' | relative_url }}) · [風險登記冊]({{ '/zh-hant/artifacts/risk-register/' | relative_url }}) | 信號日誌、升級記錄、漂移分析 |
| 依賴 | 一項難以替換的輸入（模型、雲服務、傳感器、專業人員、耗材）失效 | [依賴登記冊]({{ '/zh-hant/artifacts/dependency-register/' | relative_url }}) | 每項依賴的負責人、回退方案和複審觸發條件 |

<p class="section-intro">
兩條原則貫穿每一行：每項控制都寫明<strong>負責人、觸發條件和審計軌跡</strong>（而不是「我們很謹慎」）；負責<strong>交付</strong>一個組件的人，永遠不是簽字確認它<strong>安全</strong>的那個人。如果你在構建或監督面向病人的醫療 AI，這張圖支撐的請求只有一個，也很簡單：選一行，我們一起過一遍它會怎樣用到你的系統上。
</p>

<h2 id="casebook">治理案例集</h2>

<p class="section-intro">
基於現實部署模式和公開監管材料構建的情景推演治理案例；所依據的公開材料包括 FDA 的 AI 賦能器械指引與 PCCP、世界衞生組織（WHO）關於衞生領域 AI 的指引、NIST AI RMF、ISO/IEC 42001 和香港 TR-008。每個案例都逐項分析問題、持份者、關鍵風險、治理機制、RACI 和審計證據，並給出明確的上市後決策狀態：批准、有條件批准、臨床複核或拒絕。這種統一的結構是有意為之：它是為了便於教學而設計的，所以每個案例同時也是一次訓練，用來培養別人的治理判斷力。
</p>

<p class="section-intro">
這些案例不是對這些框架的文獻綜述。每一個案例，都是我用在自己那個面向病人的系統上的推理，再推廣成可以教的模式；框架是共同的詞彙，不是來源。同樣的控制，有名稱、有負責人，也出現在上面那份項目衍生的治理包裏。
</p>

<p class="section-intro">
案例集覆蓋 AI 醫療器械軟件（AI-SaMD）部署的完整生命週期，包含<strong>九個就緒領域，從預期用途邊界到上市後監測，每個領域都產出一件具體、可調整的治理工具</strong>，而不是一份通用模板：
</p>

<ul class="readiness-list">
  <li><strong>預期用途與範圍</strong>：邊界執行、超出預期用途的使用逐漸蔓延</li>
  <li><strong>臨床驗證與變更控制</strong>：預定變更控制計劃（PCCP）、版本治理</li>
  <li><strong>病人安全與事件支援</strong>：假陰性事件響應、帶完整示例的風險登記冊和標準操作程序（SOP）</li>
  <li><strong>知情同意與面向病人的安全</strong>：披露、範圍，以及不確定性的呈現</li>
  <li><strong>智能體與人工監督</strong>：智能體決策權、人工推翻與審計日誌</li>
  <li><strong>數據治理</strong>：多醫院數據就緒</li>
  <li><strong>公平性與公正性</strong>：亞組監測</li>
  <li><strong>供應商與供應鏈治理</strong>：供應商盡職調查、模型與雲服務依賴</li>
  <li><strong>上市後監測</strong>：持續的漂移監測與升級</li>
</ul>

<p class="section-intro">如果你正在推進臨床 AI 或 AI-SaMD 的部署，其中有幾個模塊可以直接調整後用到你的系統上。如果一個紮根於真實系統構建的治理視角對你有用，<a href="{{ '/zh-hant/about/' | relative_url }}">歡迎聯絡我</a>。</p>

<p class="section-intro"><strong>從這裏開始：</strong><a href="{{ '/zh-hant/cases/model-drift/' | relative_url }}">臨床部署中的醫療 AI 模型漂移</a>是旗艦案例。它與下面兩份已發佈的治理文件（監測表和風險登記冊）直接配套，把一個治理問題從頭到尾走一遍：發現漂移，明確由誰負責，決定怎樣做。</p>

<ul class="case-list">
{% assign cases_zh = site.pages | where: "lang", page.lang | where: "kind", "case" | sort: "path" %}{% for case in cases_zh %}
  <li>
    <p class="badge badge-{{ case.evidence_class }}">{{ case.evidence_type }}</p>
    <div class="case-title"><a href="{{ case.url | relative_url }}">{{ case.title }}</a></div>
    <p>{{ case.summary }}</p>
  </li>
{% endfor %}
</ul>

<h2 id="artifacts">治理文件</h2>

<p class="section-intro">
獨立成篇的治理工具，每一份都寫成能回答這幾個問題：看甚麼、多久看一次、誰負責、甚麼算異常、接下來怎樣辦。每份治理文件都帶有固定的元數據：數據來源、模型版本、審批負責人、生效日期和已知侷限。
</p>

<p class="section-intro">
其中九份全文公開。七份覆蓋部署的生命週期；一份是面向公眾的問責文件，任何非用戶都能讀；還有一份治理的是外部框架本身，也就是「引用一次標準」與「標準修訂後仍讓它保持有效」之間的區別。六份取自我為自己的醫療數字孿生制定的治理包（項目衍生，已脫敏）：部署前章程、風險登記冊、主張與證據登記冊、依賴登記冊、智能體風險控制矩陣，以及模型變更控制日誌。監測表是一份情景推演工具。由於孿生還在部署前，這裏展示的營運示例是用來演練結構的示意性示範案例，不是來自實際運行系統的數據。
</p>

| 治理文件 | 生命週期階段 | 證據 | 核心設計原則 |
| --- | --- | --- | --- |
| [部署前治理章程]({{ '/zh-hant/artifacts/pre-deployment-charter/' | relative_url }}) | 部署之前 | <span class="badge badge-project">項目衍生</span> | 治理在部署之前、與系統並行構建，而不是事後補上 |
| [風險登記冊]({{ '/zh-hant/artifacts/risk-register/' | relative_url }}) | 風險治理 | <span class="badge badge-project">項目衍生</span> | 沒有負責人，就沒人管；沒有複審日期，就會被遺忘 |
| [主張與證據登記冊]({{ '/zh-hant/artifacts/claims-evidence-register/' | relative_url }}) | 證據與主張驗證 | <span class="badge badge-project">項目衍生</span> | 把一條主張引用了甚麼，和那份證據實際支持甚麼，分開來看；在有人對兩者之間的差距負責之前，任何主張都不能到達病人、資助方或監管機構 |
| [依賴登記冊]({{ '/zh-hant/artifacts/dependency-register/' | relative_url }}) | 基礎設施／連續性 | <span class="badge badge-project">項目衍生</span> | 風險不只是模型出錯，還有模型不可用；每一項外部依賴都需要負責人、回退方案和複審觸發條件 |
| [智能體風險控制矩陣]({{ '/zh-hant/artifacts/agent-risk-control-matrix/' | relative_url }}) | 智能體治理／保證 | <span class="badge badge-project">項目衍生</span> | 每一項智能體風險都需要一項控制、一項證明它有效的測試、一個受監測的信號，以及一條審計證據記錄：從承諾走到證據 |
| [部署後監測表]({{ '/zh-hant/artifacts/monitoring-table/' | relative_url }}) | 運行期監測 | <span class="badge badge-scenario">情景推演</span> | 每個指標都需要一位複審負責人、一個觸發閾值和一項必須採取的行動 |
| [公開披露摘要]({{ '/zh-hant/artifacts/public-disclosure-summary/' | relative_url }}) | 公共問責 | <span class="badge badge-project">項目衍生</span> | 自願以公營部門的透明度標準來衡量；如果一個非用戶看不懂系統做甚麼、不做甚麼、誰負責、怎樣對它提出異議，它就不算對公眾負責 |
| [標準與框架登記冊]({{ '/zh-hant/artifacts/standards-register/' | relative_url }}) | 標準治理 | <span class="badge badge-project">項目衍生</span> | 採用一個框架不是一次性的動作；每一項標準都是一個被追蹤的對象，有版本、對應的控制、負責人和變更影響計劃。這就是在框架之下做治理，而不只是引用一個框架 |
| [模型變更控制日誌]({{ '/zh-hant/artifacts/change-control-log/' | relative_url }}) | 變更治理 | <span class="badge badge-project">項目衍生</span> | 不允許悄悄更新：每次變更都帶有風險等級、再驗證觸發條件、具名的審批負責人和留存的證據軌跡，並且始終保留一個可以回退的安全舊版本 |

**更多工具**（已脫敏，可應要求提供）：

| 治理文件 | 作用 | 核心設計原則 |
| --- | --- | --- |
| 事件響應 SOP | 對漂移和安全事件的限時響應（T+1 小時到 T+30 天） | 每一步都有時間線、觸發條件、負責人、行動和產出；包含嚴重程度分級和結案更新 |
| AI 事件的 RACI 矩陣 | 在治理負責人、臨床醫生、數據團隊、供應商、安全委員會、法務和管理層之間分配責任 | 供應商不決定是否繼續使用；數據團隊不單獨判斷病人安全 |
| 人工推翻日誌模板 | 記錄每一次接受、修改或拒絕的決定，並附原因代碼 | 只有當人有足夠的資訊、也有記錄在案的責任去質疑 AI 時，監督才是真實的 |
| 供應商盡職調查清單 | 審查驗證、校準、亞組公平性、更新政策、審計權和回滾條款 | 沒有審計權，醫院只能信任供應商；沒有責任條款，風險就流向病人 |
| 醫療 AI 審計清單 | 八項審計，每項寫明要核查的證據、負責人和頻率 | 一個沒有可核查證據的審計條目，只是一種意見 |
