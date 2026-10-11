# 学习路线与以后编码的依据

## 1. 先看装配，再追到核心

首先读 Chrono 的 demo_FEA_beams_extrude.cpp，识别梁截面、塑性、接触、送线及积分设置；再追到 Builder、Cosserat 截面和 IGA 单元。示例中的尺寸、碰撞容差、接触半径放大、阻尼和材料参数只是演示设置，不能照搬到微米级金丝。

## 2. 材料状态是首要学习主题

对照 ChBeamMaterialInternalData、ChPlasticityCosserat、IGA 的 old/new 状态与 Copy 提交。未来纤维截面应为各积分点、各纤维保存自己的塑性应变、背应力及累计量；从传入旧状态计算试算新状态，求导或失败试算不污染已提交状态。

学习接口只支持可行性判断。先验证：
- 拉伸、卸载、反向加载；
- 正弯、卸载、反弯，以及附加轴向力；
- 同一旧状态重复调用与扰动求导；
- 丢弃试算后重算、不同单元状态隔离；
- 纤维数、网格和步长细化。

## 3. 运动学与离散交叉阅读

Chrono IGA 用于学习大转动梁和截面积分。EXUDYN 2D ANCF 用于学习中心线形函数、曲率、轴向应变与内力。PyElastica 用于学习离散中心线、director、截面刚度矩阵和数据布局。

这些公式不应随意拼接；实现前选定一条相容的运动学、本构和积分路线。

## 4. 接触与摩擦

Chrono SMC、EXUDYN CircleCable2D、PyElastica _contact_functions.py 展示不同的接触策略。比较几何间隙、线径、法向柔度、摩擦限幅及粘滑状态。检查所锁定版本的 TODO 和限制，尤其 Chrono MultiStep 接触历史尚有未完成项。

圆柱/圆形示例不自动提供中空瓷嘴及出口边缘的正确接触。罚参数、穿透、摩擦功和形状都应核查。

## 5. 供丝与材料身份

先学 EXUDYN Sliding2D/ALE 的坐标及跨单元切换，再看 Chrono Extruder 的新节点生成。预建储丝与动态挤出是不同实现，选型应由边界与工序决定。需要保证材料身份和塑性历史随材料运动，不能只保存空间节点位置。

## 6. 事件与结果

参考源码不提供本项目完整的焊接事件协议。需要自研当前位姿的等效第二端连接、工具和尾丝作用解除、状态连续与稳定判断。输出应区分过程线形和稳定成品线形，同时给出诊断及有效性。

先通过单项实现验证，再组合完整流程；与其他数值解对照不能替代独立成品观测验证。

## 快速入口

- [Chrono 源码索引](../third_party/chrono/INDEX.md)
- [EXUDYN 源码索引](../third_party/exudyn/INDEX.md)
- [PyElastica 源码索引](../third_party/pyelastica/INDEX.md)
- [版本和逐文件校验](../sources.lock.json)

