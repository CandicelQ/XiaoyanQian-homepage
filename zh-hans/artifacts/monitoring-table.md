---
layout: artifact
lang: zh-Hans
kind: artifact
en_url: /artifacts/monitoring-table/
permalink: /zh-hans/artifacts/monitoring-table/
title: "部署后监测表（已脱敏）"
evidence_type: "情景推演 · 已脱敏"
evidence_class: scenario
summary: "把“盯着模型”变成可执行的行动。每一行回答五个问题：看什么，多久看一次，谁负责，什么算异常，接下来做什么。"
author: "Xiaoyan Qian"
version: "v0.2"
publication_date: "2026-08-03"
stable_url: "https://xiaoyanqian.com/artifacts/monitoring-table/"
license: "All rights reserved"
suggested_citation: "Qian, X. (2026). Post-deployment Monitoring Table (sanitized), v0.2. https://xiaoyanqian.com/artifacts/monitoring-table/"
---

## 这份文档的用途 {#what-this-artifact-is-for}

监测表不是摆设。它存在的意义，是让持续监督变得可执行。每一行同时回答五个问题：看什么，多久看一次，谁负责，什么算异常，以及出现异常时会怎样。一个指标如果没有复核负责人、触发阈值和必须采取的行动，就不算受到治理。

这里的结构和监测逻辑，是我在部署前治理设计中用的那一套，放在我那个面向病人的心血管代谢孪生的领域里展示，以对应我那篇 Viewpoint 里边界明确的心血管代谢用例。我构建的系统还没有部署，所以这里的示例是一份示意性的部署后监测计划，用来演练这套结构，不是来自实际运行系统的数字。其中不含任何保密的项目或病人细节。

## 固定元数据 {#fixed-metadata}

| 字段 | 值 |
| --- | --- |
| 数据来源 | 可穿戴设备和电子健康记录（EHR）数据流、模型输出日志、人工复核记录 |
| 模型版本 | Cardiometabolic Risk Twin，部署前构建版本（任何试点之前，在验证时锁定版本） |
| 审批负责人 | AI 治理负责人 |
| 生效日期 | 尚未生效（部署前） |
| 版本 | v0.2 |
| 最近更新 | 2026 年 7 月 |
| 已知局限 | 部分性能指标存在标签延迟；每月复核可能滞后于真实的临床变化 |

## 监测表 {#monitoring-table}

| 监测对象 | 指标 | 频率 | 负责人 | 警报阈值 | 触发后的行动 |
| --- | --- | --- | --- | --- | --- |
| 输入漂移 | 年龄、病种构成、数据缺失，以及心率、HRV、睡眠、血压、HbA1c 的分布 | 每月 | 数据团队 | 任一关键变量出现显著偏移 | 启动漂移分析 |
| 输出漂移 | 每周的高风险轨迹标记数 | 每周 | 治理负责人 | 比基线高出 50% 以上 | 通知临床负责人复核 |
| 性能漂移 | 心血管风险预测的 AUC、灵敏度、校准 | 每月 | 供应商 + 数据团队 | AUC 下降 > 0.05，或灵敏度下降超过 15 个百分点 | 提交性能报告 |
| 校准漂移 | 高风险组内观察到的与预测的心血管事件对比 | 每月 | 病人安全团队 | 预测为高风险，但观察到的发生率持续下降 | 重新校准或限制使用 |
| 公平性漂移 | 在女性、老年人，以及低收入或来自中低收入国家（LMIC）的病人中的表现 | 每季度 | 伦理 / 公平委员会 | 任一群体的漏报率明显上升 | 亚组审计 |
| 临床负担 | 临床医生处理标记所花的时间 | 每月 | 临床科室负责人 | 警报疲劳相关的投诉增多 | 调整阈值或工作流程 |

## 设计原则 {#the-design-principle}

只有每个指标都绑定了**负责人、触发阈值和必须采取的行动**，监测才是真监测。这张表回答的是部署之后真正要紧的问题：我们看什么，多久看一次，谁负责，什么算异常，我们又怎么处理。这就是一份准确率报告和持续治理之间的区别。

<details markdown="1">
<summary>引用信息</summary>

| 字段 | 值 |
| --- | --- |
| 标题 | Post-deployment Monitoring Table (sanitized) |
| 作者 | Xiaoyan Qian |
| 公开页面版本 | v0.2 |
| 发布日期 | 2026-08-03 |
| 固定网址 | https://xiaoyanqian.com/artifacts/monitoring-table/ |
| 许可 | 保留所有权利 |
| 建议引用格式 | Qian, X. (2026). *Post-deployment Monitoring Table (sanitized)* (v0.2). https://xiaoyanqian.com/artifacts/monitoring-table/ |

</details>
