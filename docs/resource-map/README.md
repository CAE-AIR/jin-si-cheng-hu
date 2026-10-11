# 按成弧功能整理的资源地图

整理与复核日期：2026-10-11。本页把学习库按开发功能重新组织，源码仍保留原路径。功能状态来自锁定版本源码阅读与公开文献核验；没有安装全部项目、实现算法或运行新的成形计算。

**当前建议：基于现有框架二次开发。** Chrono 作为通用梁力学框架的首选参考，EXUDYN 提供二维梁与送丝约束参考，PyElastica 提供杆状态布局和显式积分参考。三者均不能直接完成经金丝数据验证的全工序成弧预测。最小方案先做单根、平面轨迹、大转动弹塑性梁；具体见 [缺口与 MVP](gaps-and-mvp.md)。

## 功能与证据对照

“框架可复用”表示有明确接口或示例，不表示已完成专用模型集成；“需开发”表示本库未发现可直接满足该功能的完整实现。“暂无成套实现”只针对本库，不能推断整个领域都没有。

| 编号／功能 | 已有源码入口与可复用部分 | 仍需解决的部分 | 对应文献 | 判断 |
| --- | --- | --- | --- | --- |
| F01 瓷嘴轨迹、阶段时序 | [Chrono 挤出示例](../../third_party/chrono/src/demos/fea/demo_FEA_beams_extrude.cpp)、[EXUDYN 滑动示例](../../third_party/exudyn/python/TestModels/ANCFslidingAndALEjointTest.py)：运动驱动与约束组织 | 设备轨迹格式、阶段切换、连续插值、速度与供丝时序对应；轨迹反求放后续 | L012、L023、L025、L107 | 框架可复用，工艺层需开发 |
| F02 大转动梁／杆 | [ChElementBeamIGA.cpp](../../third_party/chrono/src/chrono/fea/ChElementBeamIGA.cpp)、[CObjectANCFCable2D.cpp](../../third_party/exudyn/src/ImplObjects/CObjectANCFCable2D.cpp)、[cosserat_rod.py](../../third_party/pyelastica/elastica/rod/cosserat_rod.py)：运动学、内力装配 | 选定一种运动学，确认剪切、轴向伸长和截面假设；不能拼接三种离散公式 | L070、L082、L086、L101 | 框架可复用，需适配 |
| F03 历史相关截面塑性、反向弯曲 | [ChBeamSectionCosserat.h](../../third_party/chrono/src/chrono/fea/ChBeamSectionCosserat.h)：`ComputeStressWithReturnMapping`、`CreatePlasticityData` 等扩展接口 | 纤维截面、塑性应变、背应力、硬化变量、试算／提交／回滚、拉弯耦合及金丝标定 | L023、L040、L070、L078、L082、L086、L101、L102 | **核心缺口，需开发** |
| F04 中空瓷嘴、有限线径接触与摩擦 | [ChContactSMC.cpp](../../third_party/chrono/src/chrono/physics/ChContactSMC.cpp)、[圆形–梁接触](../../third_party/exudyn/src/ImplObjects/CObjectContactFrictionCircleCable2D.cpp)、[杆–圆柱接触核](../../third_party/pyelastica/elastica/_contact_functions.py)；另见 [IPC Toolkit 外部候选](maintenance.md#ipc-toolkit) | 内孔／出口圆角几何、线径间隙、粘滑、接触参数、微尺度稳定性；有限厚度和伪切向力核验 | L023、L072、L103、L104、L105、L106 | 基础接触可复用，专用接触需开发 |
| F05 供丝与材料身份 | [ChBuilderBeam.cpp](../../third_party/chrono/src/chrono/fea/ChBuilderBeam.cpp)：挤出更新；[CObjectALEANCFCable2D.cpp](../../third_party/exudyn/src/ImplObjects/CObjectALEANCFCable2D.cpp)、[beams.py](../../third_party/exudyn/python/exudyn/beams.py)：ALE 与滑动装配 | 材料弧长／ID 持续映射，塑性历史随材料移动；动态增单元／ALE 均需审查历史继承 | L013、L025、L065、L086 | 供丝机制可借鉴，历史传递需开发 |
| F06 第二端连接、瓷嘴／尾段作用解除 | [boundary_conditions.py](../../third_party/pyelastica/elastica/boundary_conditions.py)、[滑动约束实现](../../third_party/exudyn/src/ImplObjects/CObjectJointSliding2D.cpp)：约束施加方式 | 按材料身份在当前位置连接、分步改变约束、解除工具作用后保留应力与塑性历史；暂无完整键合工序状态机 | L023、L025、L026 | 暂无成套实现，需开发 |
| F07 积分、稳定性与加载方式 | [symplectic_steppers.py](../../third_party/pyelastica/elastica/timestepper/symplectic_steppers.py)：`PositionVerlet`、`PEFRL`；[IGA 示例](../../third_party/chrono/src/demos/python/fea/demo_FEA_beamsIGA.py)：框架求解器配置 | 塑性更新与积分耦合、接触稳定步长、阻尼／能量收支、真实时长与慢加载区分 | L012、L026、L072、L101、L106 | 积分框架可复用，数值控制需适配 |
| F08 线形、曲率、残余状态输出 | [cosserat_rod.py](../../third_party/pyelastica/elastica/rod/cosserat_rod.py)、[factory_function.py](../../third_party/pyelastica/elastica/rod/factory_function.py)：杆数组与状态布局 | 以相同材料弧长输出中心线、弧高、拐点、反力、截面塑性与最终残余状态；独立结果格式 | L007、L023、L026 | 状态布局可复用，指标层需开发 |
| F09 标定与 Abaqus／实验对照 | [现有 100 篇文献](../literature/2026-10-11/README.md)、[本轮功能补充](../literature/2026-10-11/supplement/README.md) | 单调／反向材料数据，网格与截面离散敏感性、步长与接触参数敏感性、独立线形观测；不存在可直接迁移的通用金丝参数包 | L040、L043、L048、L070、L088、L089、L102、L107 | 方法依据已有，数据与实施需补齐 |

可供后续工具读取的对应表见 [module-map.json](module-map.json)。L001—L100 保持原编号，新增 L101—L107，相关原文链接均可从文献索引查到。

## 不应当作已经实现的功能

- Chrono 的 lumped 塑性提供通用截面接口与简化模型，不能直接证明反复弯曲下的纤维塑性、弹性芯或真实金丝硬化精度。标准 Python FEA 绑定未为塑性类启用 director，定制本构先评估 C++ 路径，见 [Chrono 说明](../projects/chrono.md)。
- EXUDYN 的 `ANCFcable2DuserFunction.py` 使用 `atan` 限制弯矩，是单值非线性示例，未构成完整历史本构，见 [EXUDYN 说明](../projects/exudyn.md)。
- PyElastica 的 `rest_kappa` 是参考曲率；其弹性内力与弯矩不能替代金丝塑性演化，见 [PyElastica 说明](../projects/pyelastica.md)。
- 当前 Chrono 快照的 SMC `MultiStep` 分支仍有未实现注释；不能把设置该选项等同于已有完整长期摩擦历史。
- 接触论文的无穿透结论依赖对应几何、连续碰撞检测、求解器和容差设置；只采用一个接触核不自动获得相同保证。

## 使用顺序

1. 先读 [缺口与最小方案](gaps-and-mvp.md)，确认需要实现的范围。
2. 按当前模块选源码和论文，不按项目目录从头照搬。
3. 对选定论文核对原文公式、状态定义、参数和算例；对源码核对锁定版本与许可证。
4. 进入开发前执行快照校验，再把专用实现放在独立目录，保留原文件。

后续不执行独立落点检查，也不把它作为连接、卸载或交付门槛；跳过状态记为 `skipped_by_user`。材料身份、求解完成、结果完整性和有限值核对仍保留。私有工程配置与结果留在私有工作区。
