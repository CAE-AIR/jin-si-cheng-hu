# projectchrono/chrono 精选源码索引

上游版本：10.0.0；固定提交：`9faf13dd8f1128dd75ed233a9627027b0422c3f7`；许可证：BSD-3-Clause。

下列原文件未修改，逐文件校验见仓库根目录 sources.lock.json。本索引为学习库整理文件。文件依赖完整上游工程，不能单独构建。

| 本地原文件 | 学习用途 | 上游固定来源 |
|---|---|---|
| [LICENSE](LICENSE) | 上游授权与版权 | [固定来源](https://github.com/projectchrono/chrono/blob/9faf13dd8f1128dd75ed233a9627027b0422c3f7/LICENSE) |
| [README.md](README.md) | 项目能力与文档入口 | [固定来源](https://github.com/projectchrono/chrono/blob/9faf13dd8f1128dd75ed233a9627027b0422c3f7/README.md) |
| [src/chrono_swig/interface/fea/ChModuleFea.i](src/chrono_swig/interface/fea/ChModuleFea.i) | Python绑定边界 | [固定来源](https://github.com/projectchrono/chrono/blob/9faf13dd8f1128dd75ed233a9627027b0422c3f7/src/chrono_swig/interface/fea/ChModuleFea.i) |
| [src/chrono/fea/ChBeamSection.h](src/chrono/fea/ChBeamSection.h) | 材料历史基类与Copy | [固定来源](https://github.com/projectchrono/chrono/blob/9faf13dd8f1128dd75ed233a9627027b0422c3f7/src/chrono/fea/ChBeamSection.h) |
| [src/chrono/fea/ChBeamSectionCosserat.cpp](src/chrono/fea/ChBeamSectionCosserat.cpp) | 返回映射与截面切线 | [固定来源](https://github.com/projectchrono/chrono/blob/9faf13dd8f1128dd75ed233a9627027b0422c3f7/src/chrono/fea/ChBeamSectionCosserat.cpp) |
| [src/chrono/fea/ChBeamSectionCosserat.h](src/chrono/fea/ChBeamSectionCosserat.h) | 截面本构与扩展接口 | [固定来源](https://github.com/projectchrono/chrono/blob/9faf13dd8f1128dd75ed233a9627027b0422c3f7/src/chrono/fea/ChBeamSectionCosserat.h) |
| [src/chrono/fea/ChBuilderBeam.cpp](src/chrono/fea/ChBuilderBeam.cpp) | 网格与送线更新 | [固定来源](https://github.com/projectchrono/chrono/blob/9faf13dd8f1128dd75ed233a9627027b0422c3f7/src/chrono/fea/ChBuilderBeam.cpp) |
| [src/chrono/fea/ChBuilderBeam.h](src/chrono/fea/ChBuilderBeam.h) | 梁构建与送线接口 | [固定来源](https://github.com/projectchrono/chrono/blob/9faf13dd8f1128dd75ed233a9627027b0422c3f7/src/chrono/fea/ChBuilderBeam.h) |
| [src/chrono/fea/ChElementBeamIGA.cpp](src/chrono/fea/ChElementBeamIGA.cpp) | 大转动梁内力与积分点状态 | [固定来源](https://github.com/projectchrono/chrono/blob/9faf13dd8f1128dd75ed233a9627027b0422c3f7/src/chrono/fea/ChElementBeamIGA.cpp) |
| [src/chrono/fea/ChElementBeamIGA.h](src/chrono/fea/ChElementBeamIGA.h) | IGA梁与历史提交接口 | [固定来源](https://github.com/projectchrono/chrono/blob/9faf13dd8f1128dd75ed233a9627027b0422c3f7/src/chrono/fea/ChElementBeamIGA.h) |
| [src/chrono/physics/ChContactMaterialSMC.h](src/chrono/physics/ChContactMaterialSMC.h) | 接触参数 | [固定来源](https://github.com/projectchrono/chrono/blob/9faf13dd8f1128dd75ed233a9627027b0422c3f7/src/chrono/physics/ChContactMaterialSMC.h) |
| [src/chrono/physics/ChContactSMC.cpp](src/chrono/physics/ChContactSMC.cpp) | 接触力摩擦与限幅 | [固定来源](https://github.com/projectchrono/chrono/blob/9faf13dd8f1128dd75ed233a9627027b0422c3f7/src/chrono/physics/ChContactSMC.cpp) |
| [src/chrono/physics/ChContactSMC.h](src/chrono/physics/ChContactSMC.h) | 罚接触计算接口 | [固定来源](https://github.com/projectchrono/chrono/blob/9faf13dd8f1128dd75ed233a9627027b0422c3f7/src/chrono/physics/ChContactSMC.h) |
| [src/chrono/physics/ChSystemSMC.h](src/chrono/physics/ChSystemSMC.h) | 接触模式 | [固定来源](https://github.com/projectchrono/chrono/blob/9faf13dd8f1128dd75ed233a9627027b0422c3f7/src/chrono/physics/ChSystemSMC.h) |
| [src/demos/fea/demo_FEA_beams_extrude.cpp](src/demos/fea/demo_FEA_beams_extrude.cpp) | 梁塑性送线接触组合 | [固定来源](https://github.com/projectchrono/chrono/blob/9faf13dd8f1128dd75ed233a9627027b0422c3f7/src/demos/fea/demo_FEA_beams_extrude.cpp) |
| [src/demos/python/fea/demo_FEA_beamsIGA.py](src/demos/python/fea/demo_FEA_beamsIGA.py) | Python系统装配 | [固定来源](https://github.com/projectchrono/chrono/blob/9faf13dd8f1128dd75ed233a9627027b0422c3f7/src/demos/python/fea/demo_FEA_beamsIGA.py) |


## 隐式动力求解器核心补充

同一固定版本新增 19 个完整原文件；求解器层级与调用关系见 [核心说明](../../docs/resource-map/implicit-dynamics.md)。原文件保持未修改，完整编译仍需上游工程与依赖。

| 本地原文件 | 内容 | 固定来源 |
| --- | --- | --- |
| [src/chrono/timestepper/ChTimestepperHHT.cpp](src/chrono/timestepper/ChTimestepperHHT.cpp) | HHT 隐式动力积分实现 | [上游](https://github.com/projectchrono/chrono/blob/9faf13dd8f1128dd75ed233a9627027b0422c3f7/src/chrono/timestepper/ChTimestepperHHT.cpp) |
| [src/chrono/timestepper/ChTimestepperHHT.h](src/chrono/timestepper/ChTimestepperHHT.h) | HHT 参数与接口 | [上游](https://github.com/projectchrono/chrono/blob/9faf13dd8f1128dd75ed233a9627027b0422c3f7/src/chrono/timestepper/ChTimestepperHHT.h) |
| [src/chrono/timestepper/ChTimestepperImplicit.cpp](src/chrono/timestepper/ChTimestepperImplicit.cpp) | Newmark 等隐式积分实现与非线性迭代 | [上游](https://github.com/projectchrono/chrono/blob/9faf13dd8f1128dd75ed233a9627027b0422c3f7/src/chrono/timestepper/ChTimestepperImplicit.cpp) |
| [src/chrono/timestepper/ChTimestepperImplicit.h](src/chrono/timestepper/ChTimestepperImplicit.h) | 隐式积分器接口 | [上游](https://github.com/projectchrono/chrono/blob/9faf13dd8f1128dd75ed233a9627027b0422c3f7/src/chrono/timestepper/ChTimestepperImplicit.h) |
| [src/chrono/timestepper/ChTimestepper.cpp](src/chrono/timestepper/ChTimestepper.cpp) | 积分器基础实现 | [上游](https://github.com/projectchrono/chrono/blob/9faf13dd8f1128dd75ed233a9627027b0422c3f7/src/chrono/timestepper/ChTimestepper.cpp) |
| [src/chrono/timestepper/ChTimestepper.h](src/chrono/timestepper/ChTimestepper.h) | 积分器基础接口 | [上游](https://github.com/projectchrono/chrono/blob/9faf13dd8f1128dd75ed233a9627027b0422c3f7/src/chrono/timestepper/ChTimestepper.h) |
| [src/chrono/timestepper/ChIntegrable.cpp](src/chrono/timestepper/ChIntegrable.cpp) | 状态更新与求解修正的系统桥接 | [上游](https://github.com/projectchrono/chrono/blob/9faf13dd8f1128dd75ed233a9627027b0422c3f7/src/chrono/timestepper/ChIntegrable.cpp) |
| [src/chrono/timestepper/ChIntegrable.h](src/chrono/timestepper/ChIntegrable.h) | 残差与增量修正接口 | [上游](https://github.com/projectchrono/chrono/blob/9faf13dd8f1128dd75ed233a9627027b0422c3f7/src/chrono/timestepper/ChIntegrable.h) |
| [src/chrono/timestepper/ChState.h](src/chrono/timestepper/ChState.h) | 动力积分状态定义 | [上游](https://github.com/projectchrono/chrono/blob/9faf13dd8f1128dd75ed233a9627027b0422c3f7/src/chrono/timestepper/ChState.h) |
| [src/chrono/solver/ChNlsolver.cpp](src/chrono/solver/ChNlsolver.cpp) | 非线性求解器基础实现 | [上游](https://github.com/projectchrono/chrono/blob/9faf13dd8f1128dd75ed233a9627027b0422c3f7/src/chrono/solver/ChNlsolver.cpp) |
| [src/chrono/solver/ChNlsolver.h](src/chrono/solver/ChNlsolver.h) | 非线性求解器接口 | [上游](https://github.com/projectchrono/chrono/blob/9faf13dd8f1128dd75ed233a9627027b0422c3f7/src/chrono/solver/ChNlsolver.h) |
| [src/chrono/solver/ChDirectSolverLS.cpp](src/chrono/solver/ChDirectSolverLS.cpp) | 线性系统直接求解与 Eigen 桥接 | [上游](https://github.com/projectchrono/chrono/blob/9faf13dd8f1128dd75ed233a9627027b0422c3f7/src/chrono/solver/ChDirectSolverLS.cpp) |
| [src/chrono/solver/ChDirectSolverLS.h](src/chrono/solver/ChDirectSolverLS.h) | SparseLU／SparseQR 等直接求解接口 | [上游](https://github.com/projectchrono/chrono/blob/9faf13dd8f1128dd75ed233a9627027b0422c3f7/src/chrono/solver/ChDirectSolverLS.h) |
| [src/chrono/solver/ChSolver.cpp](src/chrono/solver/ChSolver.cpp) | 线性求解器基础实现 | [上游](https://github.com/projectchrono/chrono/blob/9faf13dd8f1128dd75ed233a9627027b0422c3f7/src/chrono/solver/ChSolver.cpp) |
| [src/chrono/solver/ChSolver.h](src/chrono/solver/ChSolver.h) | 求解器类型与基础接口 | [上游](https://github.com/projectchrono/chrono/blob/9faf13dd8f1128dd75ed233a9627027b0422c3f7/src/chrono/solver/ChSolver.h) |
| [src/chrono/solver/ChSystemDescriptor.cpp](src/chrono/solver/ChSystemDescriptor.cpp) | 质量、刚度与约束系统矩阵组织 | [上游](https://github.com/projectchrono/chrono/blob/9faf13dd8f1128dd75ed233a9627027b0422c3f7/src/chrono/solver/ChSystemDescriptor.cpp) |
| [src/chrono/solver/ChSystemDescriptor.h](src/chrono/solver/ChSystemDescriptor.h) | 系统矩阵与约束描述接口 | [上游](https://github.com/projectchrono/chrono/blob/9faf13dd8f1128dd75ed233a9627027b0422c3f7/src/chrono/solver/ChSystemDescriptor.h) |
| [src/chrono/physics/ChSystem.cpp](src/chrono/physics/ChSystem.cpp) | 残差、Jacobian 与状态修正装配 | [上游](https://github.com/projectchrono/chrono/blob/9faf13dd8f1128dd75ed233a9627027b0422c3f7/src/chrono/physics/ChSystem.cpp) |
| [src/chrono/physics/ChSystem.h](src/chrono/physics/ChSystem.h) | 动力系统与装配接口 | [上游](https://github.com/projectchrono/chrono/blob/9faf13dd8f1128dd75ed233a9627027b0422c3f7/src/chrono/physics/ChSystem.h) |
