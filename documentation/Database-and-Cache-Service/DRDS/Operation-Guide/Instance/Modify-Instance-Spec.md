# 调整配置
DRDS支持动态调整DRDS实例的配置，比如CPU、内存。 扩容期间，数据库连接会出现瞬时的中断，应用重连即可，不影响业务的正常使用。

## 操作步骤
1. 进入实例列表或详情页面，选择“调整配置”
2. 选择新规格的配置，例如CPU，内存，然后点击确认

![调整配置](../../../../../image/DRDS/modify-instance-spec.png)

## 说明
1. 如包年包月的实例下调配置，系统将自动延长实例的到期时间
