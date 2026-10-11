# 源码选择与能力边界

核查日期：2026-10-11，Asia/Shanghai。此记录是源码选型和可开发性判断，不是最终结构模型或预测精度验收。

## 推荐

优先评估基于 Chrono 底座开发：复用大转动梁、方程组装、动力积分、约束和接触接口；专用纤维截面、硬化历史、供丝边界及工序事件需要自行实现和验证。EXUDYN 为二维滑动与 ALE 的备选参考，PyElastica 用于杆离散、接触与积分实现的交叉学习。

## 维护证据与部署成本

- Chrono：未归档，2026-10-09 有默认分支代码修复；2026-04-07 发布 10.0.0。官方有 Windows Conda 预编译包；自定义本构涉及 C++ 构建及可能的绑定工作。
- EXUDYN：未归档，2026-10-10 发布 v1.13.6，当前仍有构建测试与缺陷修复。Python 预编译包安装方便；历史相关塑性材料仍需额外设计。
- PyElastica：未归档，2026-06-22 发布 v1.0.0；2026-10-08 有依赖更新，2026-10-02 有人工文档更新。Python/NumPy/Numba/SciPy 部署较轻，但内置为弹性杆。
- 上述日期按 Asia/Shanghai 记录。维护状态可能变化；来源固定版本与当前维护信号分别记录，不混淆。
- 本库未安装或执行这些软件；部署难度为文档与依赖评估。

## 没有收入源码的候选

| 项目 | 原因 | 可参考部分 |
|---|---|---|
| [DisMech-rods](https://github.com/StructuresComp/dismech-rods) | 最近默认分支提交为2025-11；主要支持 Ubuntu、多项 C++ 依赖，首版优先级较低，GPL-3.0 | DER、隐式积分、接触文献与实现路线 |
| [FreeCAD Wire Bonder](https://github.com/panjh/freecad-wire-bonder) | 早期几何插件，明确排除真实工艺物理预测；元数据声明 LGPL，授权文件需完整核清 | 参数面板、几何展示和样条扫掠 |
| [wirebond-simulator](https://github.com/michsvob/wirebond-simulator) | 2019年后无默认分支更新迹象、未发现明确许可；仅粗线键合几何动画 | 运动阶段可视化思路 |
| [MFB legacy wirebond](https://github.com/llguo95/MFB/tree/main/_legacy/wirebond) | 粗铝丝热循环优化、依赖 ANSYS 与旧路径，任务不同 | 参数扫描组织方式 |

“未发现直接可用成弧项目”限于此次 GitHub 仓库、代码及网页检索，不表示全网不存在。

## 最小开发范围

单根金丝、平面运动、一个固定工况、给定轨迹和等效焊端边界。保持材料身份及塑性历史，完成成弧落线、第二端连接、工具与尾丝作用解除、稳定回弹。预建工具内储丝可减少动态新增材料带来的状态初始化复杂度。

只生成圆弧、样条或将外部求解软件封装为一个命令，不满足专用成形核心目标。精确节点、工序时间、材料参数及验收指标由具体项目输入提供，本公共库不收录私有工程数据。

## 主要源码依据

- [Chrono 塑性/送线/接触组合示例](../third_party/chrono/src/demos/fea/demo_FEA_beams_extrude.cpp)
- [Chrono 本构扩展与 lumped 限制](../third_party/chrono/src/chrono/fea/ChBeamSectionCosserat.h)
- [Chrono SWIG 绑定](../third_party/chrono/src/chrono_swig/interface/fea/ChModuleFea.i)
- [EXUDYN 非线性材料回调示例](../third_party/exudyn/python/TestModels/ANCFcable2DuserFunction.py)
- [PyElastica 弹性本构](../third_party/pyelastica/elastica/rod/cosserat_rod.py)

