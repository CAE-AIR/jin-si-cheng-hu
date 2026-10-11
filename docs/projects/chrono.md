# Chrono 学习快照

固定版本：10.0.0；提交：9faf13dd8f1128dd75ed233a9627027b0422c3f7。许可为 BSD-3-Clause。

## 复用方向

大转动 Cosserat/IGA 梁、网格构建、动力积分与约束、SMC 接触摩擦，以及材料扩展接口。先从 [组合示例](../../third_party/chrono/src/demos/fea/demo_FEA_beams_extrude.cpp) 开始，再按 [源码索引](../../third_party/chrono/INDEX.md) 追踪。

## 关键限制

1. ChPlasticityCosseratLumped 不捕捉截面内塑性区域的发展、充分的反复弯曲行为或拉弯耦合；不能用调节其参数代替纤维截面验证。
2. ChPlasticityCosserat 提供返回映射、历史创建和切线虚函数；自定义历史可通过 Copy 提交，但专用实现需正确深拷贝全部状态。
3. SWIG FEA 文件虽开启模块 directors，未为塑性本构和历史数据类启用类 director。推荐检查 C++ 扩展，不能假定纯 Python override 会被求解器回调。
4. ChContactSMC.cpp 的 MultiStep 切向位移模式仍有 TODO。准确摩擦历史需检查或补实现。
5. 挤出示例用于证明模块组合能力，不能直接当作金丝供丝模型；示例尺度与碰撞容差需重新核定。

## 完整源码和运行

本库收录35个原文件，其中19个为 [隐式动力核心补充](../resource-map/implicit-dynamics.md)。完整源码可从 [固定提交](https://github.com/projectchrono/chrono/tree/9faf13dd8f1128dd75ed233a9627027b0422c3f7) 获取。遵循 [10.0.0 安装说明](https://api.projectchrono.org/10.0.0/pychrono_installation.html)。本库 Python IGA 示例依赖 PardisoMKL 和 Irrlicht，实际环境需核查模块可用性。

