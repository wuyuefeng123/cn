# 产品功能

## 超融合混合部署的软件定义计算、网络、存储

### 虚拟化资源服务

相比于传统超融合产品，敏捷专有云超融合版具备更强大的SDN（软件定义网络）功能。提供超融合混合部署的软件定义计算、存储、网络虚拟化服务，支持用户通过云管平台自助式访问和按需申请IT资源，轻松使用云主机、云硬盘、对象存储、私有网络、负载均衡等虚拟资源，3节点最多支持200台以上的云主机运行。

## 一体化资源统一管理平台

### 多租户统一管理

支持用户通过云管平台进行多级多租户的统一身份授权，平台共有5种角色，最多可创建4级用户，有效提升平台运营效率。

### 资源统一管理

支持用户通过云管平台对整个集群的物理资源与虚拟资源进行一体化管理，支持用户进行层级化的资源配额管理，配额管理可精确到单个用户，虚拟资源管理可精确到核。



## 一体化监控运维平台

### 一体机机柜监控大屏

整机交付时，支持通过机柜大屏展示一体机核心监控等可视化信息，便捷浏览一体机CPU、内存、磁盘使用情况，虚拟机创建数量，计算、网络、存储、数据库等服务状态。

### 云管平台可视化运维监控

云管平台提供从硬件设施到云平台的全方位可视化监控，支持从物理层、管理层和虚拟层角度对资源的存活、使用率及性能实现多维度监控与告警，有效提升运维效率。



## 一体化应用

### 应用一体化交付

支持将应用的部署、配置、监控、运维与敏捷专有云超融合版全面融合，提供统一安装配置向导、统一可视化监控、统一运维，实现应用的一体化交付。



# 功能清单

| **一级目录** | **二级目录** | **三级目录**  | **功能描述**                                                 |
| ------------ | ------------ | ------------- | ------------------------------------------------------------ |
| 基础云       | 概览         | ——            | 用户资源使用情况                                             |
|              | 计算资源     | 云主机        | 支持列表查看与筛选、创建、编辑、重启、关机/启动、挂起/恢复、创建镜像、重置密码、重置系统、调整配置、远程连接、删除等全生命周期管理操作。<br>支持单台云主机的详情查看、挂载/卸载云硬盘、绑定/解绑弹性网卡、绑定/解绑浮动IP、绑定/解绑安全组与监控信息查看。 |
|              |              | 镜像          | 支持官方、私有两类镜像的列表查看，以及私有镜像的筛选，支持私有镜像的创建（基于云主机）、编辑、删除等全生命周期管理操作。<br>支持基于官方或私有镜像创建云主机。 |
|              | 存储资源     | 云硬盘        | 支持列表查看与筛选、直接创建、基于快照创建、编辑、挂载/卸载、扩展容量、删除等全生命周期管理操作。<br>支持单块云硬盘详情以及基于该云硬盘创建的快照详情查看。 |
|              |              | 云硬盘快照    | 支持列表查看与筛选、创建、编辑、创建云硬盘、删除等全生命周期管理操作。 |
|              |              | 对象存储      | 支持存储空间列表查看与筛选、创建、删除等全生命周期管理操作。<br>支持单个存储空间的详情查看。<br>支持单个存储空间内执行新建/删除文件夹、对象列表查看与筛选、上传/下载/删除对象、获取对象外链、分片管理、对象详情查看等对象管理操作。<br>支持单个存储空间内执行空间权限设置、跨域访问规则设置、对象生命周期管理规则设置等空间管理操作。<br>支持单个存储空间监控信息的查看。 |
|              | 网络资源     | 网络          | 支持列表查看与筛选、创建、编辑、增加子网、删除等全生命周期管理。<br>支持单个网络的详情查看、内部子网的列表查看、创建、编辑、删除等操作。<br>支持单个子网的详情查看、内部弹性网卡的列表查看、详情查看、编辑、绑定/解绑云主机、删除等操作。 |
|              |              | 路由          | 支持列表查看与筛选、创建、编辑、连接/移除子网、设置网关、清除网关、详情查看、设置静态路由表、删除等全生命周期管理操作。 |
|              |              | 弹性网卡      | 支持列表查看与筛选、创建、编辑、详情查看、绑定/解绑云主机、删除等全生命周期管理。 |
|              |              | 安全组        | 支持列表查看与筛选、创建、管理安全组规则、删除安全组等。     |
|              |              | 浮动IP        | 支持列表查看、分配/释放浮动IP、绑定/解绑云主机或负载均衡等。 |
|              |              | 负载均衡      | 支持列表查看与筛选、负载均衡的创建、编辑、绑定/解绑浮动IP等生命周期管理操作。<br>支持负载均衡详情查看、内部监听器的创建、编辑、健康检查配置、删除等操作。<br>支持负载均衡内部资源池的创建、编辑、添加云主机、修改云主机权重、云主机删除等。 |
| 后台管理     | 用户管理     | ——            | 支持组织（目前支持4级）的添加、编辑、查看与筛选组织中的用户列表等操作。<br>支持用户的新增、编辑、权限管理、重置密码、启用/锁定等操作。 |
|              | 配额管理     | ——            | 支持下级组织的配额分配、编辑，支持本级和下级用户的配额分配与修改，支持查看所属组织的配额总量以及剩余可分配配额信息。 |
| 运维监控     | 监控大屏     | ——            | 支持物理节点的负载监控（CPU、内存、磁盘容量等）、全部类型物理节点上的服务存活监控、存储性能与数据相关监控、平台管理面的资源负载与服务存活监控等。 |
|              | 虚拟资产     | 云主机实例    | 支持平台全部云主机实例的管理，如实例列表查看与筛选、远程连接、编辑、创建镜像、关机/启动、热迁移、重启、删除实例等。 |
|              | 物理资产     | 主机          | 支持主机节点的启动状态与服务状态查看。                       |
| 系统设置     | 规格设置     | 云主机规格    | 支持云主机规格的列表查看、创建、用户授权、删除等操作。       |
|              |              | 云硬盘规格    | 支持云硬盘规格的列表查看与筛选、创建、修改、用户授权、删除等操作。 |
|              | 对象存储设置 | 对象存储配置  | 支持对象存储配置的创建、修改、用户授权、删除等操作。         |
| 账户管理     | 账户管理     | 个人资料管理  | 支持个人基本信息的查看与修改、重置用户密码等操作。           |
|              |              | AccessKey管理 | 支持AK/SK的列表查看、创建、删除等操作。                      |