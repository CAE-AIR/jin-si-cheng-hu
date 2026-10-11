# 金丝成弧

金丝成弧算法源码学习库。GitHub 仓库地址名采用拼音 `jin-si-cheng-hu`，中文名称为“金丝成弧”。

收录可用于学习和二次开发的开源力学源码，为后续金丝成弧专用求解器提供可追溯参考。建立日期：2026-10-11。

当前收录 **3 个项目、44 个完整原文件**。每个文件均从固定提交取得，保留上游目录、版权头和完整许可证，未修改源码；Git blob SHA 与 SHA-256 记录在 [sources.lock.json](sources.lock.json)。这些是精选学习快照，**不是完整的可编译发行包，也不是已完成的金丝成弧求解器**。

## 从这里开始

1. 阅读 [学习路线](docs/learning-guide.md)，按材料历史、梁运动学、接触、送丝和工序事件逐项学习。
2. 查看 [选型依据](docs/selection.md)，了解当前推荐与未验证的部分。
3. 阅读 [100篇相关文献索引](docs/literature/2026-10-11/README.md)：64篇为2020—2026年，附中文要点、适用边界和BibTeX导入文件。
4. 进入各项目的源码索引，阅读固定版本原文件。
5. 后续开发先遵循 [AGENTS.md](AGENTS.md)，通过小算例验证，再组合完整成形流程。

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
