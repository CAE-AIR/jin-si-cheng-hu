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

