---
layout: artifact
title: "部署前治理章程（項目衍生，已脫敏）"
lang: zh-Hant
kind: artifact
en_url: /artifacts/pre-deployment-charter/
permalink: /zh-hant/artifacts/pre-deployment-charter/
evidence_type: "項目衍生 · 部署前 · 已脫敏"
evidence_class: project
summary: "我為自己正在構建的醫療數字孿生編制的真實治理章程。它把系統界定為非診斷性的原型，並在任何部署之前，與系統同步建立它的治理。"
author: "Xiaoyan Qian"
version: "v0.1"
publication_date: "2026-08-03"
stable_url: "https://xiaoyanqian.com/artifacts/pre-deployment-charter/"
license: "All rights reserved"
suggested_citation: "Qian, X. (2026). Pre-deployment Governance Charter (project-derived, sanitized), v0.1. https://xiaoyanqian.com/artifacts/pre-deployment-charter/"
---

## 這份文件的用途 {#what-this-artifact-is-for}

多數治理失敗，在寫下第一行監測代碼之前就開始了：預期用途含糊，邊界沒有界定，也沒有人決定病人蔘與之前需要甚麼證據。部署前治理章程在一開始就把這些事定下來。它寫明系統是甚麼、不是甚麼、邊界在哪裏，以及在走向試點之前必須先有哪些文件。

它取自我正在 HKU-Avnet Joint AI Laboratory（港大與安富利的聯合 AI 實驗室）構建的醫療數字孿生，出自它真實的治理包（v0.2）。系統尚未部署；這份章程之所以現在就有，正是因為這一點。它已脫敏：合作方名稱、具體個人和保密細節都已刪去，結構和治理邏輯是真實的。

## 固定元數據 {#fixed-metadata}

| 字段 | 值 |
| --- | --- |
| 項目階段 | 孵化 / 部署前 |
| 編制者 | 以項目治理工作線的身份編制並起草 |
| 提交對象 | 供執行發起人及相關 PI 審閱（具體人員在內部列明） |
| 審閱狀態 | 本章程所依據的項目定義和邊界，已於 2026 年 8 月發給項目的產業資助方，對方已確認知悉。第一階段（Phase 1）的範圍和邊界也於 2026 年 8 月由一位當時在項目中不擔任任何角色的外部臨床醫生審閱；這次審閱把第一階段的範圍收窄到單一病種，並圍繞一個具體的臨床問題重新界定了用例。尚未開展獨立的臨床驗證 |
| 來源治理包版本 | v0.2 |
| 最後更新 | 2026 年 8 月 |
| 已知侷限 | 部署前：目前還沒有任何臨床驗證或上市後證據；本章程規定的是在任何外部試點之前必須產出甚麼 |

## 項目定義與預期用途 {#project-definition-and-intended-use}

這個項目開發一個**非診斷性**的醫療數字孿生原型，配套一個**並行的部署前治理框架**。當前系統是一個內部研究示範，不是經過臨床驗證或可部署的系統，也不是診斷器械。它面向病人的用途，等真正走到那一步時，是在限定範圍內做縱向解釋和升級（轉交醫生處理），而不是自主診斷。

## 治理工作線的範圍 {#scope-of-the-governance-workstream}

1. 用例與預期用途的界定
2. 模型邊界聲明（系統可以主張甚麼、不可以主張甚麼）
3. 數據就緒評估
4. 臨床複核流程
5. 風險登記冊與 RACI
6. 事件升級路徑
7. 上市後監測構想
8. 部署就緒標準

## 邊界 {#boundaries}

- **臨床驗證和病人安全決定**需要臨床複核人 / 臨床 PI 批准，不能只由 AI 團隊決定。
- **知識產權、授權許可、衍生公司和商業化**需要走相應的機構、法律和技術轉移程序。
- **任何醫院部署**在推進之前，都需要經過正式的臨床、法律和數據治理審查。

## 部署前文件清單 {#pre-deployment-artifact-set}

在系統走向外部試點之前，本章程要求以下文件已經存在並經過審閱：用例界定、數據就緒檢查清單、模型邊界聲明、臨床複核流程、風險登記冊、RACI 矩陣、事件升級路徑，以及上市後監測構想。

## 設計原則 {#the-design-principle}

治理不是模型跑通之後再加上的一層合規。它要**與系統同步、在部署之前**建立，這樣預期用途、邊界和問責是在它們還能影響構建的時候決定的，而不是出了問題之後再回頭重建。這份章程就是一件工具，把「我們以後再治理」變成「在它到達病人之前，這些必須成立」。

<details markdown="1">
<summary>引用資訊</summary>

| 字段 | 值 |
| --- | --- |
| 標題 | Pre-deployment Governance Charter (project-derived, sanitized) |
| 作者 | Xiaoyan Qian |
| 公開頁面版本 | v0.1 |
| 發佈日期 | 2026-08-03 |
| 固定網址 | https://xiaoyanqian.com/artifacts/pre-deployment-charter/ |
| 許可 | 保留所有權利 |
| 建議引用格式 | Qian, X. (2026). *Pre-deployment Governance Charter (project-derived, sanitized)* (v0.1). https://xiaoyanqian.com/artifacts/pre-deployment-charter/ |

</details>
