# 金丝成弧

金丝成弧算法源码学习库。GitHub 仓库地址名采用拼音 `jin-si-cheng-hu`，中文名称为“金丝成弧”。

收录可用于学习和二次开发的开源力学源码，为后续金丝成弧专用求解器提供可追溯参考。建立日期：2026-10-11。

当前收录 **3 个项目、44 个完整原文件**。每个文件均从固定提交取得，保留上游目录、版权头和完整许可证，未修改源码；Git blob SHA 与 SHA-256 记录在 [sources.lock.json](sources.lock.json)。这些是精选学习快照，**不是完整的可编译发行包，也不是已完成的金丝成弧求解器**。

## 从这里开始

1. 先看 [按功能整理的资源地图](docs/resource-map/README.md)：9 个模块对应源码、论文、能力缺口与复用判断。
2. 查看 [缺口与最简单的 MVP](docs/resource-map/gaps-and-mvp.md) 和 [上游维护／部署核验](docs/resource-map/maintenance.md)，再读 [选型依据](docs/selection.md) 与 [学习路线](docs/learning-guide.md)。
3. 阅读 [原100篇文献](docs/literature/2026-10-11/README.md) 与 [针对缺口补查的7篇](docs/literature/2026-10-11/supplement/README.md)：共107个独立研究条目，70个为2020—2026年；补充批次中1篇按预印本收录。附中文要点、适用边界和BibTeX导入文件。
4. 进入各项目的源码索引，阅读固定版本原文件。
5. 后续开发先遵循 [AGENTS.md](AGENTS.md)，通过小算例验证，再组合完整成形流程。

2026-10-11 整理结论：**基于现有框架二次开发**。现有资源支持梁、积分、基础接触和供丝机制学习；主要缺口是反复弯曲的截面塑性、中空瓷嘴接触、供丝中的材料历史及金丝参数标定。首版方案为单根、平面轨迹、大转动弹塑性梁。本次只整理资源与补查文献，尚未开发该算法。

| 项目 | 固定版本 | 定位 | 本库入口 |
|---|---|---|---|
| [Project Chrono](https://github.com/projectchrono/chrono) | 10.0.0 / `9faf13dd8f1128dd75ed233a9627027b0422c3f7` | 首选力学底座参考：大转动梁、塑性接口、接触及送线 | [说明](docs/projects/chrono.md) · [16 文件索引](third_party/chrono/INDEX.md) |
| [EXUDYN](https://github.com/jgerstmayr/EXUDYN) | v1.13.6 / `f172eb2c4b8cc1ccb19d722749145d185b9000c6` | 二维梁、滑动约束、ALE 与材料回调参考 | [说明](docs/projects/exudyn.md) · [16 文件索引](third_party/exudyn/INDEX.md) |
| [PyElastica](https://github.com/GazzolaLab/PyElastica) | v1.0.0 / `b087f1399f9be2fdd2fcf3768689f7735a96f7ab` | 细杆状态布局、弹性杆、接触与显式积分参考 | [说明](docs/projects/pyelastica.md) · [12 文件索引](third_party/pyelastica/INDEX.md) |

## 验证快照

在库根目录使用 PowerShell：

```powershell
./tools/verify-snapshots.ps1
```

脚本只读检查文件字节数、Git blob SHA 和 SHA-256，不执行第三方源码。第三方示例依赖完整上游版本；需要运行时，应另建环境，安装或构建上述固定版本，并按照其文档补齐依赖。

## 目录与授权

- `third_party/`：未修改的上游源码及原始许可，索引文件为本库整理。
- `docs/`：学习说明、能力边界和选型记录。
- `sources.lock.json`：逐文件版本、来源链接与校验信息。
- `tools/`：只读快照校验工具。

各上游项目仍按自己的许可证分发，详见 [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md)。本库不将不同项目统一改为一个许可证，不改变上游作者署名。源码学习与数值能力分析不等同于金丝成品预测精度已经得到验证。
