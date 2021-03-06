# 8. 安全产品服务
## 8.1 DDoS 防护

### 8.1.1 DDoS 基础防护

京东云免费为用户提供最高 2Gb 的默认 DDoS 基础防护能力，在用户成功申请公网 IP 后防护为用户自动开启基础服务，根据实际业务需求，您可以灵活设置清洗触发值，调整防护策略。在攻击流量达到清洗触发值后，开启清洗机制。当攻击流量超过黑洞阈值后，公网IP将触发黑洞状态。抵御 SYN Flood、ICMP Flood 等各种大流量攻击。

### 8.1.2 IP 高防

IP 高防，是依托京东云安全团队雄厚的技术力量，在京东商城多年攻击防护的实战经验上，推出的一款抗 DDoS 攻击的安全增值服务。旨在用户遭受大流量的 DDoS 攻击的情况下，保护用户服务器的安全。

![图 8 DDoS 防护示意图](https://github.com/jdcloudcom/cn/blob/edit/image/Security-Information/DDoS11.jpg)


根据不同用户的互联网业务需求，可提供以下 DDoS 防御能力：

· 源站隐藏

开启 IP 高防服务后，IP 高防的 IP 地址，将代理用户对源站的访问，使用户源站不再直接暴露在外，从而有效保护源站的安全。

· 防护多种类型的 DDoS 攻击

支持电信、联通、移动、BGP 等多条线路，机房集群高达 1000G+ 的清洗能力，单线支持 400G 超大防护带宽。 能从容应对 SYN Flood、ACK Flood、ICMP Flood 等各种类型大流量 DDoS 攻击和 CC 防护。

· 快速接入，弹性防护

只需用户在 DNS 服务商处， 将待保护的域名在 CNAME 解析到京东云 IP 高防服务上，即可完成接入。

开启弹性防护后，当用户受到的攻击超过购买套餐的峰值时，用户的业务仍可继续得到京东云的防护。使用弹性防护功能，用户无需再担心因为攻击超过套餐峰值导致服务中断的问题。

· 全业务支持

非网站类 + 网站类场景全面覆盖，支持 TCP/UDP/HTTP/HTTPS 协议，覆盖金融、电商、政府、移动 APP 等各种业务场景。

## 8.2 主机安全

主机安全是京东云基于京东云安全在电商防御和安全大数据分析方面的积累，推出的云主机安全管理产品，通过在云主机上部署轻量级 Agent 实时感知主机安全风险，有效防御恶意攻击行为，提供包括高危漏洞检测、异地登录提醒、Webshell 查杀和暴力防破解在内主机防御和检测功能，保障公有云主机安全。

· 弱口令检测

系统内置弱口令字典，根据字典规则对账号口令进行检测，通过云平台展示存在弱口令风险，提醒用户修改，避免系统账号被破解。

· 异常登录提醒

根据系统设置规则自动识别异常登录行为并预警，用户可以设置常用登录地区，当出现登录地址为非常用登录地，则产生告警记录，上报到云平台提醒用户存在异地登录风险。

· 防暴力破解

有效阻断暴力破解行为，包括远程登录暴力破、数据库防暴力破解、FTP防暴力破解，通过系统日志、网络数据包协议分析、端口等方式获取尝试暴力破解的 IP，并判断其是否满足防护规则若满足规则，则进行拦截并上报云平台。

· 高危漏洞检测

定期检测系统高危漏洞上报云主机漏洞详情，产品提供 Windows 系统漏洞修复功能，Linux 提供漏洞修复建议需手动完成漏洞修复。

· Webshell 检测

京东云主机安全会对服务器上新创建的 Web 程序文件进行可疑风险判断，对有风险的 WebShell 文件进行预警，用户可以根据预警信息对 Webshell 文件进行处理。

## 8.3 态势感知

云态势感知（Cloud Situation Awareness）是一种基于公有云计算环境的、在用户充分授权的情况下，收集各个安全组件的海量数据，通过大数据关联分析和机器学习技术，从全局视角提升对安全威胁的发现识别、理解分析、响应处置，最终提供用户安全决策能力。

云态势感知具有以下功能：

· 安全能力

提供安全事件闭环处理工作流，探测应用层攻击、暴力破解、系统弱口令等 25 种安全威胁并且提供详细证据和安全建议，提供免费的上百种威胁模型。

· 数据接入能力

提供云基础防护 DDoS 检测数据，网络入侵检测引擎数据，主机入侵检测引擎数据。

· 大数据分析能力

提供海量重复事件聚合能力以及定向攻击关联分析。

· 威胁概览

提供用户业务安全状态量化指标，提供以攻击者视角的单一攻击事件、定向攻击事件，以防御者视角的安全引擎开启覆盖率、弱点事件指标与变化。同时提供 Top10 被攻击资产，Top10 威胁分类 。

· 单一攻击事件分析

提供基于账号资产、详情时间段、攻击类型、等级和处理状态的查询，事件详情列表，以及事件处理状态更细。同时提供具体事件详情和修复建议。

· 定向攻击事件分析

提供基于账号资产、详情时间段、威胁模型、等级和处理状态的查询，事件详情列表，以及事件处理状态更细，同时提供具体事件详情。

· 弱点事件

提供基于主机漏洞详情，以漏洞为统计维度向用户展示主机弱点。督促用户修复相关漏洞。

· 云上网络和主机资产关联

提供云上网络和主机资产关联，提供基于内外网 IP 查询，以及网络检测引擎开放和关闭功能。

## 8.4 Web 应用防火墙

Web 应用防火墙 (Web Application Firewall, 简称 WAF) 是京东云推出的专业的安全防护服务。可以防御 SQL 注入、XSS 跨站脚本、常见 Web 服务器插件漏洞、木马上传等 OWASP 常见攻击，抵御恶意 CC 攻击 ,避免网站资产数据泄露，保障网站的安全与可用性。

京东云 WAF 服务多地域部署。每个 WAF 接入节点采用 BGP 多线接入，智能选择最优路径，毫秒级响应延迟。能根据源站地址列表智能选择访问体验最优的 WAF 接入节点。站点无须安装任何硬软件，只需修改 DNS 记录，即可对网站开启防护。并且支持配置 WAF 为旁路观察模式，对于攻击请求只记录日志不阻断，便于用户观察 WAF 在实际业务中的工作情况。

![图 9 Web 应用防火墙安全防护示意图](https://github.com/jdcloudcom/cn/blob/edit/image/Security-Information/Web11.jpg)

WAF 主要功能：

· 网站隐身

通过域名 DNS 牵引流量，不对攻击者暴露源站地址，从而有效保护源站的安全。

· 常见 Web 应用攻击防护

防御 OWASP TOP 10 常见威胁攻击，包括但不限于：SQL 注入、XSS 跨站、Webshell 上传、后门隔离保护、命令注入、非法 HTTP 协议请求、常见 Web 服务器漏洞攻击、核心文件非授权访问、路径穿越、扫描防护等。

· CC 攻击防御

对单一源 IP 的访问频率进行控制、重定向跳转验证、人机识别。通过建立威胁情报与可信访问分析模型、快速识别恶意流量。

· 精准访问控制

支持 IP、URL、Referer 等 HTTP 常见字段的条件组合，轻松依据需求，设置精准访问控制策略，识别可信与恶意流量。

· 0day 补丁定期及时更新

及时更新最新漏洞补丁，第一时间全球同步下发最新补丁，对网站进行安全防护。

## 8.5 应用安全网关

应用安全网关（VPC-WAF）是基于京东云高性能负载均衡集群的 Web 应用安全防护产品，通过提供 WAF 功能、业务安全可视、BOT 行为管理和合规性检查等功能，保障业务稳定可持续运行，提升用户体验，为网络服务提供者解决 Web 或 APP 业务因攻击导致的异常或合规性问题。

 ![图 10 应用安全网关防护示意图](https://github.com/jdcloudcom/cn/blob/edit/image/Security-Information/Application11.jpg)

应用安全网关主要功能：

· Web 应用防火墙

OWASP TOP 10 威胁防护：有效防御 SQL 注入、XSS 攻击、命令 / 代码执行、文件包含、木马上传、路径穿越、恶意扫描等 OWASP TOP 10 攻击。

0Day 漏洞防护：专业的攻防团队 7\*24 小时跟进 0day 漏洞，分析漏洞原理，并制定安全防护策略，及时进行防护。

· CC 攻击防护

京东云应用安全网关提供多种 CC 防护模式，通过 Cookie 验证、验证码挑战等更多种挑战验证算法，能够有效的防护 CC 攻击行为。通过自定义 CC 规则，能够对特定 URI 或页面进行 CC 精细化防护，满足大型 Web 站点特定页面的应用层 DOS 防护需求。

· 精准访问控制策略

支持自定义检测：支持灵活的检测对象定义，包括任意 HTTP 协议字段与 HTTP BODY 字段，支持各种检测运算。

支持条件组合检测：支持多个检测条件的逻辑组合，以支持复杂规则的定义。

支持防护规则自定义：提供全面覆盖复杂应用交互场景的自定义规则，能作用于具体的防护对象之上，大大提高了规则的有效性和精准度。

· BOT 管理

对搜索引擎爬虫行为，进行友好和恶意判断，对恶意的机器行为进行甄别和处置，有效提供网站运行的稳定性。通过对 HTTP 协议分析和大数据建模，对暴力破解、拖库、撞库等机器人行为进行分析和和处理，保障网站业务安全。

预定定义 BOT 行为管理：
支持爬虫防护、暴力破解防护等功能，有效保障网站业务安全。

自定义 BOT 管理策略： 用户可以根据 Web 站点的业务特性，添加自定义 BOT 规则，选择访问频次和动作类型，对特定的关键字或者 URI 进行机器人行为判断，提供业务防护准确性和有效率。

· Web 站点合规性

京东云应用安全网关提供通过提供网页防篡改、敏感信息防泄漏、协议合规性检查等功能，提供 Web 站点合规性检查和防护。

· 业务安全可视化

攻击分类报表：攻击类型分布一目了然，针对攻击类型分类，制定安全加固策略。

攻击趋势图：查看攻击趋势图，了解黑客对业务的关注程度。

 CC 攻击防护趋势：CC 攻击趋势统计，实时查看防护效果和统计。

访问控制趋势 : 对用户制定的访问控制规则进行统计分析，实时查询用户访问情况。

· 便捷管理

RESTfulAPI 支持：提供全套 RESTfulAPI 接口，可实现页面自定义。

无 DNS 修改：无需修改 DNS
实现业务防护和监控，和负载均衡一起实现证书自主管理和 SSL 卸载功能。

## 8.6 SSL 数字证书

京东云 SSL 证书（JD SSL Certificates）提供证书上传、下载、管理等功能，在云上可签发 Symantec、GlobalSign、GeoTrust 证书，为网站、移动应用提供完善的 HTTPS 解决方案，提升网站的可信度，有效防范劫持、篡改和监听等攻击行为，使业务安全保护和优良体验如影随形。同时，SSL 数字证书产品可为京东云和互联网用户提供丰富的证书品牌和证书类型，支持云上证书对生成、证书申请签发和续费，还可以提供证书管理和详情查看，支持与京东云平台上其他产品业务进行绑定（如负载均衡、CDN），为京东云用户提供一站式证书安全存管和便捷使用的服务。

· 网站安全防护

实现网站 HTTPS 化，加密用户与网站间的交互访问，强化网站用户侧可信展示程度，有效防范会话劫持、恶意监听。

· 在线证书签发

可以在一个京东云平台购买不同品牌、不同类型和不同安全级别的数字证书，可以按照不同使用需求和习惯购买适合自己业务的数字证书。

· 在线证书管理

提供在数字证书管理功能，用户可以在京东云平台查看所有证书的情况，包括证书类型、域名信息、证书颁发时间、证书到期时间等。

## 8.7 密钥管理服务（KMS）

密钥管理服务（Key Management Service，KMS）作为安全管理服务产品。借助密钥管理服务，用户可以安全、便捷的使用密钥，专注于业务需要的加解密功能场景及应用。

京东云 KMS 为用户提供的功能如下：

· 密钥管理与轮换

用户主密钥 CMK 管理，提供云上密钥的全生命周期管理，包括创建、禁用、轮换、删除等。

数据密钥，提供数据密钥 DEK 的生成、加密、解密，用于云上数据的加解密。

服务密钥，KMS 会为云上服务（如 OSS、EBS、RDS）的加密创建服务密钥。

· 数据加解密

KMS 提供小数据加解密与信封加解密两种使用方式。对于小于 4K 的数据，用户可以直接使用 CMK 对数据进行加解密，对于超过 4K 的数据，用户可以使用信封加密的方式对数据进行加解密。

KMS 已实现与云上多种产品集成，用户可以使用自己的 CMK 对云上产品的数据进行加密，即可实现云端数据的加密存储。

· 机密数据加密托管

机密数据托管，是一种私密数据加密管理服务，使用服务密钥对指定机密数据进行加密存储，以标识 ID 代替明文数据进行访问应用程序、服务和 IT 资源所需的私密信息。借助该服务，用户可以在整个生命周期内，轮换、管理和检索数据库凭证、API 密钥和其他机密信息。用户和应用程序通过调用 API 来检索机密信息，从而无需对明文形式的敏感信息进行编码。

· 多用户与细颗粒度应用授权，弹性分配资源

基于京东云 IAM 系统角色授权，KMS 可以支持多用户的应用与身份鉴权。只有通过身份认证与应用操作鉴权，才可以对 KMS 存储的 CMK 进行操作。另外 KMS 对 CMK 进行了东西向隔离，每个用户只能访问与管理自己的 CMK，无法操作其他用户的 CMK，保证用户密钥的安全。

· 密钥 HSM 硬件模块保护

KMS 创建的密钥都会由服务端 HSM 硬件模块提供保护，并且由硬件产生真随机数，保障密钥的随机性。

· 支持 API 调用

KMS 提供丰富的 API 接口，用户可以根据自身需求进行调用，并且支持对 API 资源操作的鉴权，保障对资源操作的可靠与安全。

· 操作日志审计

对密钥的所有操作，都会产生日志并记录在服务端，用户可以对全部操作进行审计。

· 高可用性与容灾备份

KMS 通过完善的技术方案，保障服务的高可用性，并且拥有完善的容灾与备份措施，以保障密钥不会因为不可抗力而丢失。
