---
layout: artifact
lang: zh-Hant
kind: artifact
en_url: /artifacts/monitoring-table/
permalink: /zh-hant/artifacts/monitoring-table/
title: "部署後監測表（已脫敏）"
evidence_type: "情景推演 · 已脫敏"
evidence_class: scenario
summary: "把「盯着模型」變成可執行的行動。每一行回答五個問題：看甚麼，多久看一次，誰負責，甚麼算異常，接下來做甚麼。"
author: "Xiaoyan Qian"
version: "v0.2"
publication_date: "2026-08-03"
stable_url: "https://xiaoyanqian.com/artifacts/monitoring-table/"
license: "All rights reserved"
suggested_citation: "Qian, X. (2026). Post-deployment Monitoring Table (sanitized), v0.2. https://xiaoyanqian.com/artifacts/monitoring-table/"
---

## 這份文件的用途 {#what-this-artifact-is-for}

監測表不是擺設。它存在的意義，是讓持續監督變得可執行。每一行同時回答五個問題：看甚麼，多久看一次，誰負責，甚麼算異常，以及出現異常時會怎樣。一個指標如果沒有複核負責人、觸發閾值和必須採取的行動，就不算受到治理。

這裏的結構和監測邏輯，是我在部署前治理設計中用的那一套，放在我那個面向病人的心血管代謝孿生的領域裏展示，以對應我那篇 Viewpoint 裏邊界明確的心血管代謝用例。我構建的系統還沒有部署，所以這裏的示例是一份示意性的部署後監測計劃，用來演練這套結構，不是來自實際運行系統的數字。其中不含任何保密的項目或病人細節。

## 固定元數據 {#fixed-metadata}

| 字段 | 值 |
| --- | --- |
| 數據來源 | 可穿戴設備和電子健康記錄（EHR）數據流、模型輸出日誌、人工複核記錄 |
| 模型版本 | Cardiometabolic Risk Twin，部署前構建版本（任何試點之前，在驗證時鎖定版本） |
| 審批負責人 | AI 治理負責人 |
| 生效日期 | 尚未生效（部署前） |
| 版本 | v0.2 |
| 最近更新 | 2026 年 7 月 |
| 已知侷限 | 部分性能指標存在標籤延遲；每月複核可能滯後於真實的臨床變化 |

## 監測表 {#monitoring-table}

| 監測對象 | 指標 | 頻率 | 負責人 | 警報閾值 | 觸發後的行動 |
| --- | --- | --- | --- | --- | --- |
| 輸入漂移 | 年齡、病種構成、數據缺失、可穿戴設備與化驗數據的分佈（心率、HRV、睡眠、血壓、HbA1c） | 每月 | 數據團隊 | 任一關鍵變量出現顯著偏移 | 啓動漂移分析 |
| 輸出漂移 | 每週的高風險軌跡標記數 | 每週 | 治理負責人 | 比基線高出 50% 以上 | 通知臨床負責人複核 |
| 性能漂移 | 心血管風險預測的 AUC、靈敏度、校準 | 每月 | 供應商 + 數據團隊 | AUC 下降 > 0.05，或靈敏度下降 > 15% | 提交性能報告 |
| 校準漂移 | 高風險組內觀察到的與預測的心血管事件對比 | 每月 | 病人安全團隊 | 預測為高風險，但觀察到的發生率持續下降 | 重新校準或限制使用 |
| 公平性漂移 | 在女性、老年人，以及低收入或來自中低收入國家（LMIC）的病人中的表現 | 每季度 | 倫理 / 公平委員會 | 任一羣體的漏報率明顯上升 | 亞組審計 |
| 臨床負擔 | 臨床醫生處理標記所花的時間 | 每月 | 臨床科室負責人 | 警報疲勞相關的投訴增多 | 調整閾值或工作流程 |

## 設計原則 {#the-design-principle}

只有每個指標都綁定了**負責人、觸發閾值和必須採取的行動**，監測才是真監測。這張表回答的是部署之後真正要緊的問題：我們看甚麼，多久看一次，誰負責，甚麼算異常，我們又怎樣處理。這就是一份準確率報告和持續治理之間的區別。

<details markdown="1">
<summary>引用資訊</summary>

| 字段 | 值 |
| --- | --- |
| 標題 | Post-deployment Monitoring Table (sanitized) |
| 作者 | Xiaoyan Qian |
| 公開頁面版本 | v0.2 |
| 發佈日期 | 2026-08-03 |
| 固定網址 | https://xiaoyanqian.com/artifacts/monitoring-table/ |
| 許可 | 保留所有權利 |
| 建議引用格式 | Qian, X. (2026). *Post-deployment Monitoring Table (sanitized)* (v0.2). https://xiaoyanqian.com/artifacts/monitoring-table/ |

</details>
