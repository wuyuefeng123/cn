# listSnapshotTasks

## 描述

查询视频截图任务列表
支持过滤查询：

- createTime,ge 最早任务创建时间
- createTime,le 最晚任务创建时间
- status,in 任务状态 IN 查询
- taskId,eq 任务 ID 精确查询

## 请求方式

GET

## 请求地址

https://mps.jdcloud-api.com/v1/snapshotTasks

## 请求参数

| 名称           | 类型                                              | 是否必需 | 默认值 | 描述                                      |
| -------------- | ------------------------------------------------- | -------- | ------ | ----------------------------------------- |
| **pageNumber** | Integer                                           | False    | 1      | 页码；默认值为 1                          |
| **pageSize**   | Integer                                           | False    | 10     | 分页大小；默认值为 10；取值范围 [10, 100] |
| **filters**    | [Filter[]](user-content-listsnapshottasks#filter) | False    |        |                                           |

### <div id="filter">Filter</div>

| 名称         | 类型     | 是否必需 | 默认值 | 描述                      |
| ------------ | -------- | -------- | ------ | ------------------------- |
| **name**     | String   | True     |        | 过滤器属性名              |
| **operator** | String   | False    |        | 过滤器操作符，默认值为 eq |
| **values**   | String[] | True     |        | 过滤器属性值              |

## 返回参数

| 名称          | 类型                                            | 描述                         |
| ------------- | ----------------------------------------------- | ---------------------------- |
| **result**    | [Result](user-content-listsnapshottasks#result) | 查询视频截图模板列表信息结果 |
| **requestId** | String                                          | 请求 ID                      |

### <div id="result">Result</div>

| 名称              | 类型                                                                      | 描述     |
| ----------------- | ------------------------------------------------------------------------- | -------- |
| **pageNumber**    | Integer                                                                   | 当前页码 |
| **pageSize**      | Integer                                                                   | 每页数量 |
| **totalElements** | Integer                                                                   | 查询总数 |
| **totalPages**    | Integer                                                                   | 总页数   |
| **content**       | [SnapshotTaskObject[]](user-content-listsnapshottasks#snapshottaskobject) | 分页内容 |

### <div id="snapshottaskobject">SnapshotTaskObject</div>

| 名称             | 类型                                                        | 描述                                                                                                  |
| ---------------- | ----------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| **taskId**       | String                                                      | 任务 ID                                                                                               |
| **startTime**    | Integer                                                     | 截图起始时间                                                                                          |
| **frameType**    | String                                                      | 截图帧类型。                                                                                          |
| **format**       | String                                                      | 截图格式。取值范围：jpg、png                                                                          |
| **number**       | Integer                                                     | 截图数量                                                                                              |
| **interval**     | Integer                                                     | 截图间隔                                                                                              |
| **width**        | Integer                                                     | 截图宽度                                                                                              |
| **height**       | Integer                                                     | 截图高度                                                                                              |
| **fillType**     | String                                                      | 填充方式                                                                                              |
| **input**        | [Input](user-content-listsnapshottasks#input)               | 输入配置                                                                                              |
| **output**       | [Output](user-content-listsnapshottasks#output)             | 输出配置                                                                                              |
| **spriteConfig** | [SpriteConfig](user-content-listsnapshottasks#spriteconfig) | 雪碧图参数配置                                                                                        |
| **spriteOutput** | [Output](user-content-listsnapshottasks#output)             | 雪碧图输出配置                                                                                        |
| **status**       | String                                                      | 任务状态。<br>- submitted<br>- cancelled<br>- running<br>- finished_success<br>- finished_failure<br> |
| **createTime**   | String                                                      | 创建时间                                                                                              |
| **finishTime**   | String                                                      | 完成时间                                                                                              |

### <div id="output">Output</div>

| 名称           | 类型   | 描述                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| -------------- | ------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **region**     | String | 输出对象存储区域                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| **bucket**     | String | 输出对象存储空间                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| **objectPath** | String | 截图输出路径，包含占位符的截图输出路径。当前支持的占位符包括：<br> {FILENAME} - 输入视频的简单文件名，如 "我和我的祖国"<br> {TASKID} - 该截图任务的 ID，如 "7234584d911b4e0db2fa13545c764898"<br> {YEAR} - 四位数字年份，如 "2020"<br> {MONTH} - 两位数字月份，如 "04"<br> {DAY} - 两位数字日期，如 "15"<br>若未设置，则使用默认的输出路径：mps/{YEAR}/{MONTH}/{DAY}/{FILENAME}/ ，最终解析出的路径如 mps/2020/04/15/我和我的祖国/<br>为保证输出文件的唯一性，避免覆盖，系统会按照一定规则生成文件名，规则如下：<br>对于普通截图，生成 {TASKID}.{SEQUENCEID}.{EXTNAME} 规则的文件名；<br>对于雪碧图，生成 {TASKID}-sprite.{EXTNAME} 规则的文件名；<br>其中 SEQUENCEID 为左补 0 的 6 位数字截图序号，EXTNAME 为截图模板中截图格式 format 字段对应的文件扩展名<br>综述，若未设置此字段，则最终输出的普通截图形如：mps/2020/04/15/我和我的祖国/7234584d911b4e0db2fa13545c764898.000001.jpg ; 雪碧图形如：mps/2020/04/15/我和我的祖国/7234584d911b4e0db2fa13545c764898-sprite.jpg<br> |

### <div id="spriteconfig">SpriteConfig</div>

| 名称            | 类型    | 描述                                                                                                       |
| --------------- | ------- | ---------------------------------------------------------------------------------------------------------- |
| **rows**        | Integer | 雪碧图小图行数。雪碧图行列积必须不大于 100<br>                                                             |
| **columns**     | Integer | 雪碧图小图列数。雪碧图行列积必须不大于 100<br>                                                             |
| **cellWidth**   | Integer | 雪碧图单元格宽度<br>取值范围：[8, 4096]，不能为奇数<br>未设置时，回退为截图宽度 width<br>                  |
| **cellHeight**  | Integer | 雪碧图单元格高度，<br>取值范围：[8, 4096]，不能为奇数<br>未设置时，系统自动会自动设置为截图高度 height<br> |
| **doKeepShots** | Boolean | 是否保留截图<br>雪碧图的截图方式是先截取普通图，然后合成雪碧图。此字段控制是否保留截图。<br>               |

### <div id="input">Input</div>

| 名称          | 类型   | 描述             |
| ------------- | ------ | ---------------- |
| **region**    | String | 输入对象存储区域 |
| **bucket**    | String | 输入对象存储空间 |
| **objectKey** | String | 输入对象         |

## 返回码

| 返回码  | 描述                  |
| ------- | --------------------- |
| **200** | OK                    |
| **400** | Invalid parameter     |
| **401** | Authentication failed |
| **500** | Internal server error |
| **503** | Service unavailable   |

## 请求示例

GET

```
https://mps.jdcloud-api.com/v1/snapshotTasks

```

## 返回示例

```
{
    "requestId": "bgvmivir54gddpgi764se9f4kfr7ge41",
    "result": {
        "content": [
            {
                "taskId": "15aa816b2f4248d6b8af9f2f30cdbf08",
                "startTime": 10,
                "frameType": "intra",
                "number": 9,
                "format": "jpg",
                "interval": 5,
                "width": null,
                "height": 100,
                "fillType": "black",
                "input": {
                    "region": "cn-north-1-stag",
                    "bucket": "vod-storage-72757",
                    "objectKey": "regression/source/hanma.wmv"
                },
                "output": {
                    "region": "cn-north-1-stag",
                    "bucket": "vod-snapshot-output",
                    "objectPath": "mps/2020/04/28/hanma/15aa816b2f4248d6b8af9f2f30cdbf08.{SEQUENCEID}.jpg"
                },
                "spriteConfig": {
                    "rows": 3,
                    "columns": 3,
                    "cellWidth": 300,
                    "cellHeight": null,
                    "doKeepShots": false
                },
                "spriteOutput": {
                    "region": "cn-north-1-stag",
                    "bucket": "vod-snapshot-output",
                    "objectPath": "mps/2020/04/28/hanma/15aa816b2f4248d6b8af9f2f30cdbf08-sprite.jpg"
                },
                "status": "submitted",
                "createTime": "2020-04-28T05:27:03Z",
                "finishTime": null
            }
        ],
        "pageNumber": 1,
        "pageSize": 10,
        "totalElements": 1,
        "totalPages": 1
    }
}
```
