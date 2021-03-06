# **分区域运营商详细数据统计**

## **1. 描述**

分区域运营商详细数据统计 (area_isp_stat_v2)

## **2. 请求参数**

| **名称**   | **类型** | **是否必填** | **描述**                                                    |
| ---------- | -------- | ------------ | ----------------------------------------------------------- |
| username   | String   | 是           | 京东用户名pin                                               |
| signature  | String   | 是           | 用户签名，通过md5的方式校验用户的身份信息，保障信息安全。</br>md5=日期+username+秘钥SecretKey; 日期：格式为 yyyymmdd; username：京东用户名pin; 秘钥：双方约定; </br>示例：比如当前日期2016-10-23,用户pin:jcloud_00,用户秘钥SecretKey：e7a31b1c5ea0efa9aa2f29c6559f7d61,那签名为MD5(20161023jcloud_00e7a31b1c5ea0efa9aa2f29c6559f7d61)  |
| domain     | String   | 是           | 待查询的域名，支持多域名查询，格式为"www.a.com,www.b.com" 查询的结果为每一个域名的详细数据 |
| start_time | String   | 是           | 时间格式：yyyy-mm-dd hh:mi 参考示例：2016-12-14 07:00；查询的时间跨度不能超过1小时  |
| end_time   | String   | 否           | 不是必填参数，不传默认到当前时间，时间跨度最大为1个小时，且粒度为5分钟           |
| ipType     | String   | 否           |取值范围[ipv6,ipv4]，不传默认不区分ip类型                   |

## **3. 返回参数**

| **名称** | **描述**                       |
| -------- | ------------------------------ |
| status   | 结果状态 0，刷新成功，其他失败 |
| msg      | 提示信息                       |
| data     | 返回数据                       |

## **4. 调用示例**

- ### **请求地址**

https://opencdn.jcloud.com/api/area_isp_stat_v2

- ### **请求示例**

```
https://opencdn.jcloud.com/api/area_isp_stat_v2
{
    "username" :"test_user",
    "signature" :"d847267fc702273abf394dd0c3128d64",
    "domain" :"www.a.com",
    "start_time" :"2016-12-14 07:00",
    "end_time" :"2016-12-14 12:59"
 }
```

- ### **返回说明**

* json格式

```
{
"status": 0,//0 表示本次请求成功
"data": [
[
TS, //时间戳,
AREA, //区域
ISP, //运营商
BANDWIDTH, //带宽,单位:Mbps
flow，//流量，单位：MB
PV, //请求数
HIT_RATIO, //命中率, 类型: 浮点型, 如 0.5 表示 50%的命中率
{
CODE1: CODE1_COUNT, //CODE1 为具体的状态码,如 206, CODE1_COUNT
为 206 的个数,
CODE2: CODE2_COUNT, //CODE2 为具体的状态码,如 200, CODE2_COUNT
为 200 的个数
},
FST_PKG_TIME, //平均首包响应时间,单位:ms
SVG_SPEED, // 平均下载速度,单位:KB/s
],
]
}
```

- ### **返回示例**

* json格式

```
{

    "status": 0,
    "msg": "成功",
    "data": [
        {
            "domain": "www.a.com",
            "data": [
                {
                    "time": "1539227100",
                    "area": "hebei",
                    "isp": "cmcc",
                    "bandwidth": 0.7114295959472656,
                    "flow": 26.678627967834473,
                    "pv": 11876,
                    "hitratio": 1,
                    "codestat": {
                        "200": 11601,
                        "201": 0,
                        "206": 0,
                        "300": 0,
                        "301": 0,
                        "302": 0,
                        "304": 0,
                        "400": 0,
                        "403": 275,
                        "404": 0,
                        "408": 0,
                        "416": 0,
                        "499": 0,
                        "500": 0,
                        "501": 0,
                        "502": 0,
                        "503": 0,
                        "504": 0,
                        "other": 0
                    },
                    "firstpkgtime": 2.767766883647595,
                    "avgspeed": 569.2294921875
                },
                {
                    "time": "1539227100",
                    "area": "xinjiang",
                    "isp": "ct",
                    "bandwidth": 2.0854625701904297,
                    "flow": 78.20485877990723,
                    "pv": 11747,
                    "hitratio": 1.02,
                    "codestat": {
                        "200": 11747,
                        "201": 0,
                        "206": 0,
                        "300": 0,
                        "301": 0,
                        "302": 0,
                        "304": 0,
                        "400": 0,
                        "403": 0,
                        "404": 0,
                        "408": 0,
                        "416": 0,
                        "499": 0,
                        "500": 0,
                        "501": 0,
                        "502": 0,
                        "503": 0,
                        "504": 0,
                        "other": 0
                    },
                    "firstpkgtime": 0.9670554039944506,
                    "avgspeed": 1125.3603515625
                }
            ]
        }
    ]
}

```
