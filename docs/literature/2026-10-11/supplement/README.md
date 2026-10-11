# 针对功能缺口的补充文献

检索与核验日期：2026-10-11。新增 **7 篇不重复条目（L101—L107）**：6 篇期刊论文、1 篇按 arXiv 记录收录的预印本；6 篇为 2020—2026 年。与原 [100 篇](../README.md) 合计 107 个独立研究条目，其中 70 个为 2020—2026 年。原清单不重编号，预印本不计作已核验的期刊论文。

本轮围绕 [功能地图](../../../resource-map/README.md) 的塑性历史、有限线径接触、供丝历史和标定继续检索。先按标题与 DOI 排重，再核对出版商、作者项目页、机构全文或预印本原记录；Crossref 仅用于题录。中文说明为原创方法摘要，不复制完整摘要或论文 PDF。

**核验层级**：原始来源支持题录、研究方向和下述能力边界；尚未完成全部公式推导、代码复现或金丝验证。可访问原文不等于已经精读，论文有代码链接不等于实现可以直接满足本项目。

## 新增条目

### L101

**2022 — Mixed isogeometric collocation for geometrically exact 3D beams with elasto-visco-plastic material behavior and softening effects**

Oliver Weeger, Dominik Schillinger, Ralf Müller. *Computer Methods in Applied Mechanics and Engineering*, 399, Article 115456. [DOI](https://doi.org/10.1016/j.cma.2022.115456) · [原始来源](https://d-nb.info/1255771364/34)。

- 功能：F02、F03、F07。三维 Cosserat 梁以局部内变量描述塑性和各向同性／随动硬化，可用于审查状态布局、局部更新与一致线性化。
- 边界：应力合力层级的通用梁方法仍需核验截面屈服面和金丝参数；粘弹性与软化不是金丝首版的默认物理项。
- 阅读范围：题录、摘要、公开全文结论及代码可用性段；未逐式推导或复现。
- 代码状态：论文说明实现基于 G+SMo，但未包含在 G+SMo 中，仅可向作者合理请求。不能记作已取得开源实现。

### L102

**2013 — Anomalous Plasticity in the Cyclic Torsion of Micron Scale Metallic Wires**

Dabiao Liu, Yuming He, D. J. Dunstan, Bo Zhang, Zhipeng Gan, Peng Hu, Huaming Ding. *Physical Review Letters*, 110(24), Article 244301. [DOI](https://doi.org/10.1103/physrevlett.110.244301) · [原始来源](https://doi.org/10.1103/PhysRevLett.110.244301)。

- 功能：F03、F09。微米尺度铜与金丝的循环扭转试验显示反向加载不对称及卸载期间的反向塑性，可为历史本构选择提供实验动机。
- 边界：扭转试验不能直接提供成弧弯曲、热影响区或高速工艺的硬化参数；不据此强制采用应变梯度模型。虽较早，因直接金微丝证据保留。
- 阅读范围：APS 出版题录与摘要；主体全文未核验。
- 代码状态：本次未取得可复用计算代码。

### L103

**2021 — Codimensional Incremental Potential Contact**

Minchen Li, Danny M. Kaufman, Chenfanfu Jiang. *ACM Transactions on Graphics*, 40(4), Article 170. [DOI](https://doi.org/10.1145/3450626.3459767) · [原始来源](https://ipc-sim.github.io/C-IPC/)。

- 功能：F04。通过距离偏置表达杆／壳几何厚度并结合连续碰撞检测，适合审查线径是否真正进入接触间隙。
- 边界：属于相应隐式框架，不能把几何保证直接移植到任意显式惩罚接触或金丝塑性模型；有厚度碰撞不等于已有中空瓷嘴模型。
- 阅读范围：作者项目页摘要、代码入口与正式题录；公式和实现未复现。
- 代码状态：作者项目页有代码入口。本轮仅登记相关 IPC Toolkit 候选，未安装或复制论文实现。

### L104

**2023 — No Free Slide: Spurious Contact Forces in Incremental Potential Contact**

Yinwei Du, Yue Li, Stelian Coros, Bernhard Thomaszewski. *arXiv*；**预印本** 2308.01696v1. [DOI](https://doi.org/10.48550/arxiv.2308.01696) · [原始来源](https://arxiv.org/abs/2308.01696)。

- 功能：F04、F09。讨论离散接触面引起的切向力不连续，并研究平滑表面处理；可用于设计无摩擦滑动算例，检查出口几何造成的假摩擦。
- 边界：按本次取得的预印本记录收录，不宣称已核验期刊出版。不是金丝摩擦标定论文，也不能据此否定所有 IPC 配置。
- 阅读范围：arXiv 原题录与摘要；全文和实现未复现。
- 代码状态：本次未核验独立可复用源码。

### L105

**2025 — Geometric Contact Potential**

Zizhou Huang, Maxwell Paik, Zachary Ferguson, Daniele Panozzo, Denis Zorin. *ACM Transactions on Graphics*, 44(4). [DOI](https://doi.org/10.1145/3731142) · [原始来源](https://arxiv.org/abs/2402.00719) · [机构论文](https://cims.nyu.edu/gcl/papers/2025-Contact.pdf)。

- 功能：F04、F09。从连续接触势出发处理分辨率依赖与静止状态伪力问题，可用于接触几何、参数和网格敏感性审查。
- 边界：需适配梁几何、有限线径与本项目力学求解路径，不自动解决塑性和工序。2024 初稿 Orientation-aware Incremental Potential Contact 与 2025 改题后的正式论文合并，不重复计数。
- 阅读范围：arXiv 当前版本摘要、机构论文题录与 Crossref 正式记录；未逐式推导。
- 代码状态：本次未核验单独实现的许可和集成路径。

### L106

**2020 — Incremental Potential Contact: Intersection- and Inversion-free, Large-Deformation Dynamics**

Minchen Li, Zachary Ferguson, Teseo Schneider, Timothy Langlois, Denis Zorin, Daniele Panozzo, Chenfanfu Jiang, Danny M. Kaufman. *ACM Transactions on Graphics*, 39(4), Article 49. [DOI](https://doi.org/10.1145/3386569.3392425) · [原始来源](https://ipc-sim.github.io/)。

- 功能：F04、F07。基础 IPC 工作，可用于理解接触势、连续碰撞检测与隐式求解的配合，避免仅移植单个公式就宣称取得无穿透性质。
- 边界：通用非线性弹性动力学，不含金丝历史塑性、供丝和第二端事件；仅采用部分工具不自动满足完整算法条件。
- 阅读范围：作者项目页摘要、代码入口与 Crossref 题录；未复现。
- 代码状态：作者项目提供代码入口，相关 IPC Toolkit 是接触工具库，官方明确不包含完整物理模型或求解器。

### L107

**2026 — Machine learning-driven process optimization for ultra-low loop wedge bonding in monolithic microwave integrated circuit packaging**

Byung-Geon Park, Jae-Hak Lee, Ah-Young Park. *Journal of Intelligent Manufacturing*. [DOI](https://doi.org/10.1007/s10845-026-02928-x) · [原始来源](https://link.springer.com/article/10.1007/s10845-026-02928-x)。

- 功能：F01、F09。将正交试验、工艺可行性分类与线形回归结合，可为低弧工艺试验设计和参数筛选提供近期参考。
- 边界：楔焊的数据驱动研究不替代金丝球焊历史力学求解；代理模型应放在验证过的力学首版之后。性能只代表论文工况。
- 阅读范围：出版商摘要、发表日期及公开附录；主体全文未逐节核验。
- 代码状态：使用开源 ML 框架不代表论文完整数据与训练脚本已经开放。

## 现有 100 篇中的重点阅读顺序

以下是原有条目的重新编排，**不计入新增 7 篇**。阅读任务尚待开发方案确认后完成；不把摘要结论扩展成已实现能力。

| 优先级／问题 | 原条目 | 下一次原文阅读需要回答 |
| --- | --- | --- |
| 首先：截面塑性 | [L086](https://doi.org/10.1016/j.eml.2020.100767)、[L070](https://doi.org/10.1007/s00466-022-02204-8)、[L082](https://doi.org/10.1002/nme.6566) | 纤维应力怎样积分？状态如何更新与回滚？运动学与剪切假设怎样适配所选梁？ |
| 首先：实际金丝拐点 | [L023](https://doi.org/10.1109/tsm.2012.2225649)、[L040](https://rmme.ijournals.cn/rmme/article/html/20210875?st=search) | 拐点塑性和弹性芯如何描述？材料、热影响区假设与验证观测是什么？ |
| 随后：供丝历史 | [L025](https://doi.org/10.1109/tcpmt.2013.2237773)、[L065](https://doi.org/10.4203/ccc.9.6.1) | 新旧线段怎样区分？ALE 内变量如何输运？稳态方法怎样限制用于非稳态工序？ |
| 随后：滑动接触 | [L072](https://doi.org/10.1016/j.eml.2022.101924) | 接触与摩擦怎样耦合？隐式稳健性条件是什么？弹性杆到塑性杆需改哪些部分？ |
| 标定：反向硬化 | [L078](https://doi.org/10.1016/j.jmatprotec.2022.117657)、[L088](https://doi.org/10.1088/2631-8695/ae8b7c)、[L089](https://doi.org/10.3390/met16091030) | 哪些加载数据能辨识硬化与卸载参数？如何避免把板材参数迁移到金丝？ |

L065 的 [公开会议全文](https://www.ctresources.info/ccc/free.html?id=10019) 已核对主题和方法范围：沿材料流线积分内部变量，研究轴向移动梁的**稳态**弹塑性弯曲。它不等于完整瞬态成弧的 ALE 塑性输运实现；本次未逐式推导或复现。

## 检索边界与未采用候选

- 关键词涉及 wire bonding／gold microwire、cyclic plasticity、return mapping、moving beam／material history、finite thickness contact／spurious contact force，并优先检查 2020—2026 年原始来源。
- 高对偶数返回映射论文以复杂土体模型为应用，一维金丝纤维基线目前不需要该复杂度，未追加。
- 尚待举行会议的摘要不标为已发表同行评议论文；镀钯铜线和后续封装疲劳／伸缩问题不因年份近就列为金丝成弧核心依据。
- “WaveOne Gold”等牙科器械属于镍钛材料，不能当作金微丝材料来源。
- Consensus 一次关键词检索受到速率限制，后续使用出版商、作者、机构与 arXiv 原记录补查；所选 Consensus 候选已读取 fetch 记录，最终依据以本页列出的原始来源为准。

## 可下载题录

[references.json](references.json) 提供模块、证据层级与能力边界；[references.bib](references.bib) 可导入 Zotero。后续取得全文时应补充公式、算法版本与验证记录，不能只把“有 DOI”升级为“可直接实现”。
