# enableTde


## 描述
开启数据库的TDE功能

## 请求方式
POST

## 请求地址
https://rds.jdcloud-api.com/v1/regions/{regionId}/instances/{instanceId}/tde:enableTde

|名称|类型|是否必需|默认值|描述|
|---|---|---|---|---|
|**regionId**|String|True| |地域代码，取值范围参见[《各地域及可用区对照表》](../Enum-Definitions/Regions-AZ.md)|
|**instanceId**|String|True| |RDS 实例ID，唯一标识一个RDS实例|

## 请求参数
无


## 返回参数
无


## 返回码
|返回码|描述|
|---|---|
|**200**|OK|

## 请求示例
POST
```
public void testEnableTde() {
    EnableTdeRequest request = new EnableTdeRequest();
    request.setInstanceId("sqlserver-0nyjcvjxls");
    request.setRegionId("cn-north-1");
    EnableTdeResponse response = rdsClient.enableTde(request);
    System.out.println(new Gson().toJson(response));
}

```

## 返回示例
```
{
    "requestId": "bpaoqk0mt49r2cc5bhh9ahq4vvivw1ie"
}
```
