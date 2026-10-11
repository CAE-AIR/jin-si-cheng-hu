# 金丝成弧：100篇相关文献学习清单

检索与核验日期：2026-10-11。共100篇独立条目；2020—2026年64篇，2024—2026年27篇，2016—2026年80篇。98篇已确认DOI。

直接成弧、材料与键合边界、弹塑性杆与送丝、回弹识别与验证。包含方法迁移参考，不代表100篇都研究金丝。

本批以摘要和出版题录为依据；两篇会议文献仅核对题录。未声称已获取或精读100篇全文。

## 使用方式

- 先筛选“先读”12篇，建立成弧过程、材料标定、塑性历史和实验验证之间的联系。
- 直接成弧文献用于研究瓷嘴轨迹、拐点、低弧和空间间隙；材料文献用于识别金丝与热影响区的力学状态。
- 杆、回弹和送丝论文用于迁移数值方法；银铜钢线、薄板、管材的材料参数均需要重新标定。
- BibTeX可导入Zotero等文献管理器；CSV可按年份、主题和阅读优先级筛选。全文需经原出版商、开放获取页面或机构权限获取。
- 本次只建立研究索引，没有实现成弧算法。

## 主题分布

| 主题 | 篇数 |
| --- | ---: |
| 直接成弧与轨迹 | 33 |
| 材料与键合边界 | 22 |
| 弹塑性杆与送丝 | 32 |
| 回弹、识别与验证 | 13 |

## 先读12篇

- [L001] 2026 — [面向超低弧的引线键合工艺研究](https://ep.org.cn/CN/10.16257/j.cnki.1681-1070.2026.0015)。采用20微米金丝和力控瓷嘴验证超低弧工艺，可为高度约束、颈部断裂与压平过程提供最新案例。
- [L007] 2022 — [Machine learning enables accurate wire loop profile prediction for advanced microelectronics packaging](https://www.sciencedirect.com/science/article/abs/pii/S152661252200679X)。以有限元生成三拐点弧形数据库，再训练SVR/SVM预测坐标，可借鉴快速代理模型方法。
- [L012] 2020 — [Rationally Designing the Trace of Wire Bonder Head for Large-Span-Ratio Wire Bonding in 3D Stacked Packaging](https://doi.org/10.1109/access.2020.3037338)。从目标弧形推导键合头几何轨迹并以显式有限元与细金丝实验验证，支持轨迹反求方案。
- [L013] 2019 — [Study of Complex Looping With Five Kinks in Thermosonic Wire Bonding by Using Variable-Length Link-Spring Model](https://doi.org/10.1109/tcpmt.2018.2881224)。动态增加线段模拟送丝及五拐点弧形，并用实验校验，是复杂弧形简化模型的重要依据。
- [L023] 2014 — [Modeling and Experimental Study of the Kink Formation Process in Wire Bonding](https://doi.org/10.1109/tsm.2012.2225649)。通过含张力、摩擦与真实轨迹的二维动态模型分析拐点塑性及弹性芯，是塑性弯曲核心依据。
- [L025] 2013 — [Variable-Length Link-Spring Model of Wire-Bonding Looping Process](https://doi.org/10.1109/tcpmt.2013.2237773)。通过变长连杆与转动弹簧及非线性迭代模拟送丝和成弧，可作为二维MVP的重要简化候选。
- [L033] 2001 — [Linkage-spring model in analyzing wirebonding loops](https://doi.org/10.1109/6144.946493)。以铰链和弹塑性弹簧描述键合线的大转动，适合学习低成本成弧模型与实验验证。
- [L040] 2022 — [Effect of Mechanical Characteristics of Gold Wire on Microstructure and Properties of Ball Bonding](https://rmme.ijournals.cn/rmme/article/html/20210875?st=search)。直接比较不同力学状态金丝的弧形与热影响区，适合成弧本构标定及形状验证。
- [L043] 2019 — [The combined effects of grain and sample sizes on the mechanical properties and fracture modes of gold microwires](https://www.jmst.org/EN/10.1016/j.jmst.2018.09.012)。研究金微丝晶粒与线径耦合对屈服及加工硬化的影响，可指导材料尺寸标定。
- [L070] 2023 — [Two-scale off-and online approaches to geometrically exact elastoplastic rods](https://link.springer.com/article/10.1007/s00466-022-02204-8)。为金丝纤维截面历史变量和力矩合力模型提供两种实现路线，支持准确性与计算代价权衡。
- [L082] 2021 — [A finite element formulation for a direct approach to elastoplasticity in special Cosserat rods](https://onlinelibrary.wiley.com/doi/10.1002/nme.6566)。提供Cosserat杆内部塑性变量、返回映射及一致切线，可作为金丝历史相关成形求解的基础。
- [L086] 2020 — [Discrete Elasto-Plastic Rods](https://www.sciencedirect.com/science/article/abs/pii/S2352431620301024)。直接给出离散杆加纤维截面塑性返回映射，覆盖弯扭拉与循环加载，是轻量金丝求解的重要候选。

## 核验与筛选说明

优先采用正式期刊卷期/出版商建议引用年份；早期在线与卷期差异单独标注。已在线发表但未来印刷排期的条目按在线论文收录。

通过Consensus检索并读取所选结果的fetch记录；用Crossref精确题名/DOI匹配补齐出版元数据，必要时检查出版商或会议原记录。重复标题和DOI合并，关联较弱的材料疲劳、环境可靠性、管材专用方法等候选不计入100篇。两篇2024 IEMT会议论文只有题录证据，清单已注明。

中文参考要点是基于摘要与题录的学习说明，不替代全文方法审查；论文中的参数、算法细节、开源状态和复现实验需要逐篇确认。

## 分类文件与下载

| 分类 | 篇数 | 阅读 | 表格 | Zotero导入 |
| --- | ---: | --- | --- | --- |
| 直接成弧与轨迹 | 33 | [论文与中文要点](loops.md) | [CSV](loops.csv) | [BibTeX](loops.bib) |
| 材料与键合边界 | 22 | [论文与中文要点](materials.md) | [CSV](materials.csv) | [BibTeX](materials.bib) |
| 弹塑性杆与送丝 | 32 | [论文与中文要点](rods.md) | [CSV](rods.csv) | [BibTeX](rods.bib) |
| 回弹、识别与验证 | 13 | [论文与中文要点](validation.md) | [CSV](validation.csv) | [BibTeX](validation.bib) |

[下载完整100篇Excel清单](literature.xlsx)。筛选列已设置，原始网址保留为可复制文本；本页与各分类页面提供可点击论文链接。

公开库仅收录题录、来源链接和原创中文学习说明，不收录论文PDF或完整摘要。
