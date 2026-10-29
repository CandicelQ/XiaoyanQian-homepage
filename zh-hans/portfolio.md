---
layout: default
title: 治理作品集
lang: zh-Hans
en_url: /portfolio/
permalink: /zh-hans/portfolio/
---

# 治理作品集 {#governance-portfolio}

<p class="section-intro">
多数医疗 AI 治理都来得太晚：它以文档的形式出现在模型跑通之后，那时真正要紧的决定都已经默认定下了。我反过来做。在这里，我把治理当作与系统同步构建的设计约束，每一项都要经过同一个检验：系统提出的每一项主张，有没有负责人、有没有核查、有没有审计轨迹，还是只是一句承诺？缺了这三样的控制只是一种意见，不是治理。
</p>

<p class="section-intro">
以下是经过挑选、已脱敏的部分材料，每一项都按证据类型标注：
<span class="badge badge-project">项目衍生</span>
<span class="badge badge-scenario">情景推演</span>
<span class="badge badge-published">研究</span>。完整的内部材料不公开；这里展示的重点是治理结构、风险归属和部署就绪的推理，而不是保密的技术细节。
</p>

<p class="section-intro">
治理工作的可信度，始于对自身证据的诚实主张，所以每一项都带有以下三种标签之一。<strong>项目衍生</strong>：在一个真实的医疗 AI 项目内部产出的工作，已为公开分享脱敏；它反映的是部署前的治理设计，不是上市后的经验。<strong>情景推演</strong>：基于现实部署模式和公开监管材料构建的治理练习；它们展示的是判断力，不是部署经历。<strong>研究</strong>：稿件与公开文章，并注明各自实际的发表状态。
</p>

<h2 id="who-for">写给谁</h2>

<p class="section-intro">
不同的读者看同一份治理工作，要找的证明各不相同。这一节把四类常见问题对应到这里能回答它们的具体证据，并如实说明每一项能证明什么、不能证明什么。同样的控制在四行里反复出现，这是有意的：即使行业本身无法迁移，这门功夫也能迁移。
</p>

<div class="who-for" markdown="1">

| 如果你的问题是…… | 你真正想问的是 | 在这里看什么 | 它证明什么，以及它的局限 |
| --- | --- | --- | --- |
| **独立的 AI／模型风险**：第二道防线挑战第一道防线 | 这个人能否独立判断，一项 AI 风险是*真正*得到了管理，而不只是写进了文档？ | [治理一览](#at-a-glance)图、[风险登记册]({{ '/zh-hans/artifacts/risk-register/' | relative_url }})、[主张与证据登记册]({{ '/zh-hans/artifacts/claims-evidence-register/' | relative_url }})、[智能体风险控制矩阵]({{ '/zh-hans/artifacts/agent-risk-control-matrix/' | relative_url }}) | 构建与签核分离，加上一套“主张 &rarr; 测试 &rarr; 证据 &rarr; 负责人”的纪律，让任何一项控制都可以被挑战，包括系统对自身的主张。这个习惯来自我为 NeurIPS、ICML、CVPR 和 AAAI 审稿的八年；在那里，主张跑在证据前面是典型缺陷。这是部署前的设计，不是在银行内部担任第二道防线的履历。 |
| **企业 AI 治理**：管理完整的生命周期 | 这个人能否在 AI 系统的整个生命周期里治理它，而不只是在上线时？ | [部署前章程]({{ '/zh-hans/artifacts/pre-deployment-charter/' | relative_url }})、[变更控制日志]({{ '/zh-hans/artifacts/change-control-log/' | relative_url }})、[标准登记册]({{ '/zh-hans/artifacts/standards-register/' | relative_url }})、[监测表]({{ '/zh-hans/artifacts/monitoring-table/' | relative_url }}) | 登记 &rarr; 风险 &rarr; 审批 &rarr; 监测 &rarr; 变更，每个阶段都有负责人、触发条件和证据；在一个系统上展示，并推广为可复用的工具。 |
| **临床／医疗 AI**：安全地部署面向病人的 AI | 这个人能否分清一个有前景的原型和一个可部署的系统？ | [旗舰项目](#projects)、[公开披露摘要]({{ '/zh-hans/artifacts/public-disclosure-summary/' | relative_url }})，以及关于漂移、人工推翻和升级（转交医生处理）的[案例](#casebook) | 部署就绪的推理，出自一个亲手构建自己所治理系统的人。这个孪生还处在部署前；这不是上市后的经验。 |
| **监管／公共政策**：把技术风险转化为决策 | 这个人能否把技术证据转化为可以直接用于决策的控制措施，并为受影响的人提供一条对决定提出异议的途径？ | [案例集](#casebook)里的权利／救济表、[公开披露摘要]({{ '/zh-hans/artifacts/public-disclosure-summary/' | relative_url }})、[标准登记册]({{ '/zh-hans/artifacts/standards-register/' | relative_url }}) | 把技术风险表述为政策级别的控制措施、透明度和写明的异议途径；这不是在主张监管职权。 |

</div>

<p class="section-intro">
这四行没有一行主张我并不拥有的决策权：最终的剩余风险接受、银行第二道防线的授权、临床风险接受，或监管权力。下面每一项都按证据类型标注，完整的内部材料不公开。如果其中一行正是你的问题，就选它，<a href="{{ '/zh-hans/about/' | relative_url }}">我们一起过一遍</a>它怎样对应到你的系统。
</p>

<h2 id="projects">旗舰项目</h2>

### 面向病人的医疗数字孪生：构建系统，也构建它的治理 {#patient-facing-medical-digital-twin-building-the-system-and-its-governance}
<p class="badge badge-project">项目衍生 · 系统构建 + 部署前治理设计</p>

这是我的主要项目。在 HKU-Avnet Joint AI Laboratory（港大与安富利的联合 AI 实验室），我同时主导一个面向病人的医疗数字孪生的工程开发，以及在它部署之前必须先到位的治理框架。系统还在孵化阶段，而这恰恰是治理工作最要紧的时候。在同一个系统上身兼两职，正是要点所在：我治理我所构建的东西。

**我构建什么**

- **深度学习基础（同行评审，第一作者）**：3D 感知与自动标注，分别发表于 AAAI（2023）和 *International Journal of Computer Vision*（2026）。这是“我构建”这句话中可以公开引用的核心，也是孪生的表征层和可视化层的基础。
- **系统架构**，覆盖孪生的各个层次：传感与数据接入、病人表征、预测，以及受治理的解释；与我研究中的问责图对齐。
- **3D 可视化组件**：我主导了孪生的 3D 生成与渲染流程的设计、集成、测试和交付，包括模型选型、生成质量评估、客户端与服务器端集成，以及成本约束。这套流程在实验室开幕时，在一面大型 LED 墙上公开演示过。
- **真实约束下的交付**：模型开发、指导实习生、向利益相关方汇报，以及在硬性截止期限前交付可运行的演示。

**当前状态。** 孪生的模型和框架正在积极开发中。这个系统目前是一个内部研究演示，不是可部署的产品，我也正是这样描述它的。有两样东西是分开把关的，而且是我有意分开的，不是悄悄分开的。**架构概览和已建成系统的演示**，仍要等底层研究发表、并通过保密审查之后才公开：我宁可等它们背后的证据稳定了再展示，也不愿意做一次夸大系统的预览。**系统构建所要满足的交互模式**是另一项主张，现在已经公开，形式是一部示意性的合成短片 [*Day Eleven*]({{ '/zh-hans/twin/' | relative_url }})，它展示一次有治理的拒答是什么样子，但不披露任何规则、阈值、提示词、评估方法或数据来源。公开后者、暂不公开前者，这和本页在 2026 年 9 月之前的说法不同，那时两者都在同一道关口之后。改变的理由是，一个早早说出、标明日期的立场，比一个迟迟才放出的演示更有价值；而且保密风险在架构里，不在论证里。

<a id="clinical-review"></a>**外部临床审阅。** 这套治理框架已经不只是我一个人的声音。项目章程经过了外部审阅；2026 年 8 月，一位在项目中没有任何角色的基层医疗临床医生，以书面形式审阅了第一阶段的边界规则与升级规则：边界划得更准了，从“诊断还是非诊断”改为“描述规律还是判断紧急程度”；升级路径改为围绕病人来设计，而不是发给一个写死的接收方；那次审阅提出的六类隐性伤害，现在作为测试类别放进了评估套件。这次审阅是作为设计输入来处理的，留有决策记录，而不是当作背书存档。

<!-- DEMO PLACEHOLDER: the illustrative interaction film is live at /twin/ (Sept 2026). Still outstanding: the embedded five-layer architecture figure + a demo of the built system. Gate for those two only: (1) Viewpoint accepted/published, (2) demo polished, (3) reviewed for confidentiality. -->

**我怎样治理它**（治理包，持续维护；最近一次实质性修订：2026 年 8 月 22 日；已脱敏）

- **预期用途与边界界定**：当前系统是什么（一个内部研究演示），不是什么（一个经过临床验证或可部署的系统），以及在任何外部试点之前需要哪些证据。
- **项目章程、角色与范围厘清，以及决策权图**：在大学、产业合作方和未来的临床合作方之间，每一道阶段关口由谁建议、谁批准、征询谁的意见。
- **风险归属设计**：一份早期风险登记册，把风险识别、控制归属、风险归属和风险接受权限分开，让剩余风险由有权限、也有资源去管理它的人来接受。
- **运作工具**：利益相关方图、RACI 矩阵、决策备忘录模板、数据就绪检查清单、贡献与成果登记册、阶段过渡条款与商业化触发条款，以及署名与致谢原则。
- **部署就绪标准**：面向病人使用之前必须具备的验证证据、亚组表现、人工监督设计、监测计划和升级路径。
- **运营交接**：过渡与交接计划，让系统可以由运营团队、而不是由它的构建者来运行；涵盖监测、事件响应、变更控制，以及交接后必须继续保留的人在回路控制，各自由谁负责。

*这是一个项目衍生的部署前治理案例。它不作为实际上线的部署案例或上市后案例来呈现，公开版本已脱敏。*

<h2 id="at-a-glance">治理一览</h2>

<p class="section-intro">
最快看清这些怎样组合在一起的办法是：八个风险领域，每个领域都列出我为它设计的控制，以及系统运行之后这项控制按设计应产出的审计证据。这是地图；下面的案例和治理文档是实地。<span class="badge badge-project">项目衍生</span> · 部署前 · 已脱敏。
</p>

| 风险领域 | 一句话说风险 | 我设计的控制 | 它按设计应产出的证据 |
| --- | --- | --- | --- |
| 预期用途与边界 | 范围蔓延：从监测扩展到诊断，或出现超出预期用途的使用 | [部署前章程]({{ '/zh-hans/artifacts/pre-deployment-charter/' | relative_url }}) | 禁止用途清单、决策权记录 |
| 数据 | 数据不可信、不合法或无法追溯；把数据缺失读成“没有风险” | 数据就绪关口 + 来源／血缘登记册 | 就绪状态、血缘条目、合法性基础记录 |
| 主张与证据 | 对系统的描述用了证据支持不了的说法 | [主张与证据登记册]({{ '/zh-hans/artifacts/claims-evidence-register/' | relative_url }}) | 每条主张的差距类型、负责人，以及这条主张可以使用之前必须完成的研究 |
| 智能体 | 智能体蔓延、访问范围过宽、权限蔓延、无法审计的操作 | [智能体决策权]({{ '/zh-hans/cases/agent-decision-rights/' | relative_url }}) · [智能体风险控制矩阵]({{ '/zh-hans/artifacts/agent-risk-control-matrix/' | relative_url }}) | 名录、访问审查日志、控制测试 |
| 变更控制 | 模型被悄悄更新；没有剩下一个可以安全运行的版本 | [变更控制与预定变更控制计划（PCCP）案例]({{ '/zh-hans/cases/model-change-control/' | relative_url }}) · [模型变更控制日志]({{ '/zh-hans/artifacts/change-control-log/' | relative_url }}) | 版本日志、再验证记录、回退触发条件 |
| 保证 | 构建者自我认证；交付压力压倒安全 | 交付与签核分离，并把独立审查定为发布条件 | 独立签核记录、审计确认 |
| 上市后信号 | 仪表盘全绿也看不见的行为层面伤害 | [模型漂移案例]({{ '/zh-hans/cases/model-drift/' | relative_url }}) · [监测表]({{ '/zh-hans/artifacts/monitoring-table/' | relative_url }}) · [风险登记册]({{ '/zh-hans/artifacts/risk-register/' | relative_url }}) | 信号日志、升级记录、漂移分析 |
| 依赖 | 一项难以替换的输入（模型、云服务、传感器、专业人员、耗材）失效 | [依赖登记册]({{ '/zh-hans/artifacts/dependency-register/' | relative_url }}) | 每项依赖的负责人、回退方案和复审触发条件 |

<p class="section-intro">
两条原则贯穿每一行：每项控制都写明<strong>负责人、触发条件和审计轨迹</strong>（而不是“我们很谨慎”）；负责<strong>交付</strong>一个组件的人，永远不是签字确认它<strong>安全</strong>的那个人。如果你在构建或监督面向病人的医疗 AI，这张图支撑的请求只有一个，也很简单：选一行，我们一起过一遍它会怎样用到你的系统上。
</p>

<h2 id="casebook">治理案例集</h2>

<p class="section-intro">
基于现实部署模式和公开监管材料构建的情景推演治理案例；所依据的公开材料包括 FDA 的 AI 赋能器械指南与 PCCP、世界卫生组织（WHO）关于卫生领域 AI 的指南、NIST AI RMF、ISO/IEC 42001 和香港 TR-008。每个案例都逐项分析问题、利益相关方、关键风险、治理机制、RACI 和审计证据，并给出明确的上市后决策状态：批准、有条件批准、临床复核或拒绝。这种统一的结构是有意为之：它是为了便于教学而设计的，所以每个案例同时也是一次训练，用来培养别人的治理判断力。
</p>

<p class="section-intro">
这些案例不是对这些框架的文献综述。每一个案例，都是我用在自己那个面向病人的系统上的推理，再推广成可以教的模式；框架是共同的词汇，不是来源。同样的控制，有名称、有负责人，也出现在上面那份项目衍生的治理包里。
</p>

<p class="section-intro">
案例集覆盖 AI 医疗器械软件（AI-SaMD）部署的完整生命周期，包含<strong>九个就绪领域，从预期用途边界到上市后监测，每个领域都产出一件具体、可调整的治理工具</strong>，而不是一份通用模板：
</p>

<ul class="readiness-list">
  <li><strong>预期用途与范围</strong>：边界执行、超出预期用途的使用逐渐蔓延</li>
  <li><strong>临床验证与变更控制</strong>：预定变更控制计划（PCCP）、版本治理</li>
  <li><strong>病人安全与事件支持</strong>：假阴性事件响应、带完整示例的风险登记册和标准操作程序（SOP）</li>
  <li><strong>知情同意与面向病人的安全</strong>：披露、范围，以及不确定性的呈现</li>
  <li><strong>智能体与人工监督</strong>：智能体决策权、人工推翻与审计日志</li>
  <li><strong>数据治理</strong>：多医院数据就绪</li>
  <li><strong>公平性与公正性</strong>：亚组监测</li>
  <li><strong>供应商与供应链治理</strong>：供应商尽职调查、模型与云服务依赖</li>
  <li><strong>上市后监测</strong>：持续的漂移监测与升级</li>
</ul>

<p class="section-intro">如果你正在推进临床 AI 或 AI-SaMD 的部署，其中有几个模块可以直接调整后用到你的系统上。如果一个扎根于真实系统构建的治理视角对你有用，<a href="{{ '/zh-hans/about/' | relative_url }}">欢迎联系我</a>。</p>

<p class="section-intro"><strong>从这里开始：</strong><a href="{{ '/zh-hans/cases/model-drift/' | relative_url }}">临床部署中的医疗 AI 模型漂移</a>是旗舰案例。它与下面两份已发布的治理文档（监测表和风险登记册）直接配套，把一个治理问题从头到尾走一遍：发现漂移，明确由谁负责，决定怎么做。</p>

<ul class="case-list">
{% assign cases_zh = site.pages | where: "lang", page.lang | where: "kind", "case" | sort: "path" %}{% for case in cases_zh %}
  <li>
    <p class="badge badge-{{ case.evidence_class }}">{{ case.evidence_type }}</p>
    <div class="case-title"><a href="{{ case.url | relative_url }}">{{ case.title }}</a></div>
    <p>{{ case.summary }}</p>
  </li>
{% endfor %}
</ul>

<h2 id="artifacts">治理文档</h2>

<p class="section-intro">
独立成篇的治理工具，每一份都写成能回答这几个问题：看什么、多久看一次、谁负责、什么算异常、接下来怎么办。每份治理文档都带有固定的元数据：数据来源、模型版本、审批负责人、生效日期和已知局限。
</p>

<p class="section-intro">
其中九份全文公开。七份覆盖部署的生命周期；一份是面向公众的问责文件，任何非用户都能读；还有一份治理的是外部框架本身，也就是“引用一次标准”与“标准修订后仍让它保持有效”之间的区别。六份取自我为自己的医疗数字孪生制定的治理包（项目衍生，已脱敏）：部署前章程、风险登记册、主张与证据登记册、依赖登记册、智能体风险控制矩阵，以及模型变更控制日志。监测表是一份情景推演工具。由于孪生还在部署前，这里展示的运营示例是用来演练结构的示意性演示案例，不是来自实际运行系统的数据。
</p>

| 治理文档 | 生命周期阶段 | 证据 | 核心设计原则 |
| --- | --- | --- | --- |
| [部署前治理章程]({{ '/zh-hans/artifacts/pre-deployment-charter/' | relative_url }}) | 部署之前 | <span class="badge badge-project">项目衍生</span> | 治理在部署之前、与系统并行构建，而不是事后补上 |
| [风险登记册]({{ '/zh-hans/artifacts/risk-register/' | relative_url }}) | 风险治理 | <span class="badge badge-project">项目衍生</span> | 没有负责人，就没人管；没有复审日期，就会被遗忘 |
| [主张与证据登记册]({{ '/zh-hans/artifacts/claims-evidence-register/' | relative_url }}) | 证据与主张验证 | <span class="badge badge-project">项目衍生</span> | 把一条主张引用了什么，和那份证据实际支持什么，分开来看；在有人对两者之间的差距负责之前，任何主张都不能到达病人、资助方或监管机构 |
| [依赖登记册]({{ '/zh-hans/artifacts/dependency-register/' | relative_url }}) | 基础设施／连续性 | <span class="badge badge-project">项目衍生</span> | 风险不只是模型出错，还有模型不可用；每一项外部依赖都需要负责人、回退方案和复审触发条件 |
| [智能体风险控制矩阵]({{ '/zh-hans/artifacts/agent-risk-control-matrix/' | relative_url }}) | 智能体治理／保证 | <span class="badge badge-project">项目衍生</span> | 每一项智能体风险都需要一项控制、一项证明它有效的测试、一个受监测的信号，以及一条审计证据记录：从承诺走到证据 |
| [部署后监测表]({{ '/zh-hans/artifacts/monitoring-table/' | relative_url }}) | 运行期监测 | <span class="badge badge-scenario">情景推演</span> | 每个指标都需要一位复审负责人、一个触发阈值和一项必须采取的行动 |
| [公开披露摘要]({{ '/zh-hans/artifacts/public-disclosure-summary/' | relative_url }}) | 公共问责 | <span class="badge badge-project">项目衍生</span> | 自愿以公共部门的透明度标准来衡量；如果一个非用户看不懂系统做什么、不做什么、谁负责、怎样对它提出异议，它就不算对公众负责 |
| [标准与框架登记册]({{ '/zh-hans/artifacts/standards-register/' | relative_url }}) | 标准治理 | <span class="badge badge-project">项目衍生</span> | 采用一个框架不是一次性的动作；每一项标准都是一个被追踪的对象，有版本、对应的控制、负责人和变更影响计划。这就是在框架之下做治理，而不只是引用一个框架 |
| [模型变更控制日志]({{ '/zh-hans/artifacts/change-control-log/' | relative_url }}) | 变更治理 | <span class="badge badge-project">项目衍生</span> | 不允许悄悄更新：每次变更都带有风险等级、再验证触发条件、具名的审批负责人和留存的证据轨迹，并且始终保留一个可以回退的安全旧版本 |

**更多工具**（已脱敏，可应要求提供）：

| 治理文档 | 作用 | 核心设计原则 |
| --- | --- | --- |
| 事件响应 SOP | 对漂移和安全事件的限时响应（T+1 小时到 T+30 天） | 每一步都有时间线、触发条件、负责人、行动和产出；包含严重程度分级和结案更新 |
| AI 事件的 RACI 矩阵 | 在治理负责人、临床医生、数据团队、供应商、安全委员会、法务和管理层之间分配责任 | 供应商不决定是否继续使用；数据团队不单独判断病人安全 |
| 人工推翻日志模板 | 记录每一次接受、修改或拒绝的决定，并附原因代码 | 只有当人有足够的信息、也有记录在案的责任去质疑 AI 时，监督才是真实的 |
| 供应商尽职调查清单 | 审查验证、校准、亚组公平性、更新政策、审计权和回滚条款 | 没有审计权，医院只能信任供应商；没有责任条款，风险就流向病人 |
| 医疗 AI 审计清单 | 八项审计，每项写明要核查的证据、负责人和频率 | 一个没有可核查证据的审计条目，只是一种意见 |
