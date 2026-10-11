# PyElastica 学习快照

固定版本：v1.0.0；提交：b087f1399f9be2fdd2fcf3768689f7735a96f7ab。MIT 许可。

## 复用方向

Cosserat 杆离散与状态布局、director 和截面参数初始化、边界约束、接触几何和摩擦计算、PositionVerlet/PEFRL 积分阶段。入口见 [源码索引](../../third_party/pyelastica/INDEX.md)。

## 关键限制

- 内力以剪切刚度乘 sigma-rest_sigma、弯曲刚度乘 kappa-rest_kappa 计算，内置模型为弹性杆。
- rest_kappa 是参考曲率，不等同塑性应变或随动硬化内变量。
- 本快照未提供金丝屈服、反向弯曲与残余塑性曲率、专用供丝和焊端事件。
- 实际接触公式主要在 _contact_functions.py，而非仅 contact_forces.py 包装器。
- 杆—圆柱示例不能直接视为中空瓷嘴；示例还依赖完整上游目录的 post_processing.py。

## 完整源码和运行

本库12文件为学习选摘。运行需完整锁定版本和 Python >=3.10，以及 NumPy、Numba、SciPy 等依赖。完整源码见 [固定提交](https://github.com/GazzolaLab/PyElastica/tree/b087f1399f9be2fdd2fcf3768689f7735a96f7ab)。

