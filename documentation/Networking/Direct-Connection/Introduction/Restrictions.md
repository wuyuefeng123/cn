# 使用限制

#### 京东智联云对客户端VPN设备的要求
* 已在京东云完成企业实名认证；
* 客户侧专线发起端需是三层交换机或路由器设备；
* 支持BGP协议，建议使用BPG-4；
* 支持VLAN或802.1q协议；
* 支持三层子接口配置(可选)；

#### 专线连接的相关限制

- 专线连接对客户侧设备的要求，详见产品概述；
- 专线连接服务仅支持连接到同地域的边界网关，即物理连接和边界网关属于同一地域；
- 使用专线连接前，应规划好IDC内和VPC内的网段，请保证IDC内的网段和VPC内的网段不会重叠；
- 物理端口类型为：1000MBase-T、1000MBase-LX(1310nm 10km)、10GBase-LR(1310nm 10km)、100GBase-LR4(1310nm 10km)。初次通过千兆光口和万兆光口接入时，由京东云提供云端所需的单模光模块，100G光口接入时请客户自行提供云端所需的QSFP28的100G单模光模块；
- 调整配置，仅支持在1G和10G之间调整配置，若要调整到其它端口类型，请申请接入新的物理连接，申请变更端口配置时，请客户自行提供云端所需的单模光模块；

#### 托管连接的相关限制

- 托管连接对客户侧设备的要求，详见产品概述；
- 托管连接服务仅支持连接到同地域的边界网关，即托管专线和边界网关属于同一地域；
- 使用托管连接前，应规划好京东云托管区内和VPC内的网段，尽量保证京东云托管区内的网段和VPC内的网段不会重叠；
- 物理端口类型为：1000MBase-LX(1310nm)、10GBase-LR(1310nm)。初次通过千兆光口和万兆光口接入时，由京东云提供云端所需的单模光模块；
- 调整配置，仅支持在1G和10G之间调整配置，若要调整到其它端口类型，请申请接入新的托管专线，申请变更端口配置时，请客户自行提供云端所需的单模光模块；

#### 边界网关相关资源配额

| 资源 | 限制 | 例外申请方式 |
|:---:|:---:|:---:|
|同地域物理连接+托管专线数	|10	| 工单	|
|每个物理连接上创建的专线通道数	|50	| 工单	|
|每个托管专线上创建的托管通道数	|50	| 工单	|
|同地域边界网关数	|5	| 工单	|
|每个边界网关可创建的VPC接口数	|50	| 工单	|
|同一边界网关的静态路由规则数	|50	| 工单	|
|同一边界网关的动态路由规则数	|300	| 工单	|
