# checkCompanyLegalPersonAndAgent


## 描述
企业所有信息核验

## 请求方式
POST

## 请求地址
https://cloudauth.jdcloud-api.com/v1/companyAuth:legalPersonAndAgent


## 请求参数
|名称|类型|是否必需|默认值|描述|
|---|---|---|---|---|
|**legalPersonAndAgentSpec**|LegalPersonAndAgentSpec|True| | |

### <div id="legalpersonandagentspec">LegalPersonAndAgentSpec</div>
|名称|类型|是否必需|默认值|描述|
|---|---|---|---|---|
|**companyType**|Integer|True| |企业类型：<br>企业(ET_PE_QiYe)<br>个体工商户(ET_SE_GeTiGongShangHu)<br>政府机构/事业单位(ET_OU_ZhengFu_ShiYeDanWei)<br>|
|**companyName**|String|True| |企业名称|
|**idCode**|String|True| |统一社会信用代码或营业执照注册号|
|**legalPersonName**|String|True| |法定代表人姓名|
|**legalPersonId**|String|True| |法定代表人身份证号|
|**agentName**|String|True| |代理人姓名|
|**agentId**|String|True| |代理人身份证号|
|**businessId**|String|True| |业务流水号(如果一天之内服务端收到两次相同的businessId，则返回上一次业务的结果)|

## 返回参数
无


## 返回码
|返回码|描述|
|---|---|
|**200**|OK|
|**403**|FAIL|

## 示例代码

```
import (
	"fmt"
	"time"

	core "git.jd.com/jcloud-api-gateway/jcloud-sdk-go/core"
	cloudauth "git.jd.com/jcloud-api-gateway/jcloud-sdk-go/services/cloudauth/apis"
	client "git.jd.com/jcloud-api-gateway/jcloud-sdk-go/services/cloudauth/client"
	//models "git.jd.com/jcloud-api-gateway/jcloud-sdk-go/services/cloudauth/models"
)

func IntHelper(x int) *int {
	return &x
}

func StrHelper(x string) *string {
	return &x
}

func BoolHelper(x bool) *bool {
	return &x
}

func main() {
	accessKey := "22EA946**********5D4E0C2B6"
	secretKey := "2B30ED2**********906ABEB40"
	credentials := core.NewCredentials(accessKey, secretKey)

	config := core.NewConfig()
	config.SetEndpoint("10.0.0.1:8000")
	config.SetScheme("http")
	config.SetTimeout(20 * time.Second)

	client := client.NewCloudauthClient(credentials)
	client.SetConfig(config)
// CheckLegalPersonAndAgent 企业法人和代理人信息核验
	{
		legalPersonAndAgentSpec := models.LegalPersonAndAgentSpec{
			/* 企业类型*/
			CompanyType: 0,
			/* 企业名称  */
			CompanyName: "京东云",
			/* 统一社会信用代码或营业执照注册号  */
			IdCode: "91110000802100433B",
			/* 法定代表人姓名  */
			LegalPersonName: "刘代理",
			/* 法定代表人身份证号  */
			LegalPersonId: "110101199003072113",
			/* 代理人姓名  */
			AgentName: "梁志祥",
			/* 代理人身份证号  */
			AgentId: "342401198706243426",
		}
		req := cloudauth.NewCheckLegalPersonAndAgentRequest(legalPersonAndAgentSpec)
		if resp, err := client.CheckLegalPersonAndAgent(req); err != nil {
			fmt.Println("error : ", err)
		} else {
			fmt.Println("resp : ", resp)
			fmt.Println("resp.RequestID : ", resp.RequestID)
			fmt.Println("resp.Error : ", resp.Error)
			fmt.Println("resp.Result : ", resp.Result)
		}
	}
}
```

