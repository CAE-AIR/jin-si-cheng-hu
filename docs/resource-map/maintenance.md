# 上游维护状态与部署边界

核验日期：2026-10-11。维护证据为 GitHub 默认分支最新提交与仓库状态；近期文档、依赖或测试提交只证明有维护活动，不能证明数值模型已验证。以下没有进行新的安装或编译试验。

| 项目 | 当前维护证据（UTC） | 许可证／学习快照 | 部署与改造难度 | 可采用结论 |
| --- | --- | --- | --- | --- |
| Chrono | 未归档、未禁用；[2026-10-11 提交](https://github.com/projectchrono/chrono/commit/d613a4c1f1267bd102db07f774268414f1831211)，修复 FMI 示例挂起／崩溃 | BSD-3-Clause；本库仍锁定 10.0.0 的 16 个文件 | 通用示例需完整发行环境；专用历史截面需核对 C++ 扩展与 Python 绑定，改造成本较高 | 首选通用力学框架参考；金丝材料和工序需二次开发 |
| EXUDYN | 未归档、未禁用；[2026-10-09 提交](https://github.com/jgerstmayr/EXUDYN/commit/f172eb2c4b8cc1ccb19d722749145d185b9000c6)，测试与无 tkinter 环境适配 | 自定义 General License，GitHub 元数据为 NOASSERTION；本库仍锁定 v1.13.6 的 16 个文件 | Python 示例入口较便捷；有状态材料回调、供丝历史和接触仍需专项验证 | 二维梁、滑动和 ALE 备选参考 |
| PyElastica | 未归档、未禁用；[2026-10-07 提交](https://github.com/GazzolaLab/PyElastica/commit/0688eb4f0d6091288a38367fcea4ac0c57fb0f96)，更新环境依赖 | MIT；本库仍锁定 v1.0.0 的 12 个文件 | Python／NumPy／Numba 路径较便捷；加完整塑性与供丝后已超出原有弹性杆示例范围 | 杆数组、显式积分与接触学习参考 |
| IPC Toolkit | 未归档、未禁用；[2026-10-07 提交](https://github.com/ipc-sim/ipc-toolkit/commit/0985885fecf157ac7c065c5f461028cc0aebe228)，修复文档发布权限 | MIT；本轮登记为外部候选，未新增源码快照 | C++／CMake 与 Python 绑定；集成力学求解器成本高于运行单个接触示例 | 补充几何碰撞、接触势与摩擦参考；不作为完整成弧软件 |

锁定快照与当前默认分支是不同证据。不能将上述最新提交的行为直接套到本库固定源文件；原 44 文件及哈希不更新。

## IPC Toolkit

官方 [仓库](https://github.com/ipc-sim/ipc-toolkit)、[说明与构建文档](https://ipctk.xyz/)、[固定版本 README](https://github.com/ipc-sim/ipc-toolkit/blob/0985885fecf157ac7c065c5f461028cc0aebe228/README.md)、[MIT 许可证](https://github.com/ipc-sim/ipc-toolkit/blob/0985885fecf157ac7c065c5f461028cc0aebe228/LICENSE)。

可复用范围：接触势及其导数、接触检测、连续碰撞检测、几何距离与摩擦势。官方明确该工具包不包含完整物理模型和求解器。C++ 路径通过 CMake 管理所需依赖，Python 路径提供 `ipctk` 绑定；具体平台、Python 版本与 wheel 覆盖应在安装前查阅 [Python 文档](https://ipctk.xyz/build/python.html) 和 [C++ 构建文档](https://ipctk.xyz/build/c%2B%2B.html)，本次未验证本机安装。

在金丝成弧中，需要另行实现圆截面梁塑性、工具几何、材料状态和工序。C-IPC 论文（L103）中的有限厚度方案和标准工具包的默认接触配置不是自动等价的；必须核对采用的距离偏置、CCD 和求解路径。L104 与 L105 可用于检查离散表面造成的假切向力和分辨率依赖，不能直接把所有版本的 IPC 判定为不适用。

如果以后复制上游源码，应另行固定提交、收录完整许可并加入 sources.lock.json，不把本页外链登记算作已收录源码。

## 其余候选如何处理

原 [选型记录](../selection.md) 中 DisMech-rods、FreeCAD Wire Bonder、wirebond-simulator 等保持原有候选位置，本轮未重新核验其维护状态，不引用旧记录为本轮最新结论。只有实际解决当前缺口且许可证、部署和原始实现经过核验的项目才进入优先复用列表。

L101 论文的 C++ 实现建立在 G+SMo 上，但论文明确实现未包含在 G+SMo 内，只能向作者合理请求获取；不能通过克隆 G+SMo 宣称获得完整弹塑性梁代码，见 [论文代码可用性段](https://d-nb.info/1255771364/34)。
