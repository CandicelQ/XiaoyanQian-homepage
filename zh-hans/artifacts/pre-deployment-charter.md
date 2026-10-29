---
layout: artifact
title: "部署前治理章程（项目衍生，已脱敏）"
lang: zh-Hans
kind: artifact
en_url: /artifacts/pre-deployment-charter/
permalink: /zh-hans/artifacts/pre-deployment-charter/
evidence_type: "项目衍生 · 部署前 · 已脱敏"
evidence_class: project
summary: "我为自己正在构建的医疗数字孪生编制的真实治理章程。它把系统界定为非诊断性的原型，并在任何部署之前，与系统同步建立它的治理。"
author: "Xiaoyan Qian"
version: "v0.1"
publication_date: "2026-08-03"
stable_url: "https://xiaoyanqian.com/artifacts/pre-deployment-charter/"
license: "All rights reserved"
suggested_citation: "Qian, X. (2026). Pre-deployment Governance Charter (project-derived, sanitized), v0.1. https://xiaoyanqian.com/artifacts/pre-deployment-charter/"
---

## 这份文档的用途 {#what-this-artifact-is-for}

多数治理失败，在写下第一行监测代码之前就开始了：预期用途含糊，边界没有界定，也没有人决定病人参与之前需要什么证据。部署前治理章程在一开始就把这些事定下来。它写明系统是什么、不是什么、边界在哪里，以及在走向试点之前必须先有哪些文档。

它取自我正在 HKU-Avnet Joint AI Laboratory（港大与安富利的联合 AI 实验室）构建的医疗数字孪生，出自它真实的治理包（v0.2）。系统尚未部署；这份章程之所以现在就有，正是因为这一点。它已脱敏：合作方名称、具体个人和保密细节都已删去，结构和治理逻辑是真实的。

## 固定元数据 {#fixed-metadata}

| 字段 | 值 |
| --- | --- |
| 项目阶段 | 孵化 / 部署前 |
| 编制者 | 以项目治理工作线的身份编制并起草 |
| 提交对象 | 供执行发起人及相关 PI 审阅（具体人员在内部列明） |
| 审阅状态 | 本章程所依据的项目定义和边界，已于 2026 年 8 月发给项目的产业资助方，对方已确认知悉。第一阶段（Phase 1）的范围和边界也于 2026 年 8 月由一位当时在项目中不担任任何角色的外部临床医生审阅；这次审阅把第一阶段的范围收窄到单一病种，并围绕一个具体的临床问题重新界定了用例。尚未开展独立的临床验证 |
| 来源治理包版本 | v0.2 |
| 最后更新 | 2026 年 8 月 |
| 已知局限 | 部署前：目前还没有任何临床验证或上市后证据；本章程规定的是在任何外部试点之前必须产出什么 |

## 项目定义与预期用途 {#project-definition-and-intended-use}

这个项目开发一个**非诊断性**的医疗数字孪生原型，配套一个**并行的部署前治理框架**。当前系统是一个内部研究演示，不是经过临床验证或可部署的系统，也不是诊断器械。它面向病人的用途，等真正走到那一步时，是在限定范围内做纵向解释和升级（转交医生处理），而不是自主诊断。

## 治理工作线的范围 {#scope-of-the-governance-workstream}

1. 用例与预期用途的界定
2. 模型边界声明（系统可以主张什么、不可以主张什么）
3. 数据就绪评估
4. 临床复核流程
5. 风险登记册与 RACI
6. 事件升级路径
7. 上市后监测构想
8. 部署就绪标准

## 边界 {#boundaries}

- **临床验证和病人安全决定**需要临床复核人 / 临床 PI 批准，不能只由 AI 团队决定。
- **知识产权、授权许可、衍生公司和商业化**需要走相应的机构、法律和技术转移程序。
- **任何医院部署**在推进之前，都需要经过正式的临床、法律和数据治理审查。

## 部署前文档清单 {#pre-deployment-artifact-set}

在系统走向外部试点之前，本章程要求以下文档已经存在并经过审阅：用例界定、数据就绪检查清单、模型边界声明、临床复核流程、风险登记册、RACI 矩阵、事件升级路径，以及上市后监测构想。

## 设计原则 {#the-design-principle}

治理不是模型跑通之后再加上的一层合规。它要**与系统同步、在部署之前**建立，这样预期用途、边界和问责是在它们还能影响构建的时候决定的，而不是出了问题之后再回头重建。这份章程就是一件工具，把“我们以后再治理”变成“在它到达病人之前，这些必须成立”。

<details markdown="1">
<summary>引用信息</summary>

| 字段 | 值 |
| --- | --- |
| 标题 | Pre-deployment Governance Charter (project-derived, sanitized) |
| 作者 | Xiaoyan Qian |
| 公开页面版本 | v0.1 |
| 发布日期 | 2026-08-03 |
| 固定网址 | https://xiaoyanqian.com/artifacts/pre-deployment-charter/ |
| 许可 | 保留所有权利 |
| 建议引用格式 | Qian, X. (2026). *Pre-deployment Governance Charter (project-derived, sanitized)* (v0.1). https://xiaoyanqian.com/artifacts/pre-deployment-charter/ |

</details>
