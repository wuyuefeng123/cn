# 高失败率告警及邮件发送
## 运行中无效测试的发现/告警
### 页面告警提示
正在执行的脚本，若持续2min验证点成功率一直低于90%，视为无效测试，会在界面提示用户“警告：成功率低于90%持续了2分钟，建议终止”，此时用户可以手动取消本次测试。

![告警-页面告警](../../../../image/Perftest/perf-21.png)

### 发送告警邮件
定时任务执行时，如果有高失败率情况会给定时任务创建时设置的通知邮箱发送告警邮件，详情如下。

![告警-邮件告警](../../../../image/Perftest/perf-22.png)


