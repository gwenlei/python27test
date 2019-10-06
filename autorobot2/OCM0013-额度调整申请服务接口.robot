*** Settings ***
Force Tags        OCM0013-额度调整申请服务接口
Resource          元素层.robot

*** Variables ***

*** Test Cases ***
全填
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0013-额度调整申请服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

必填
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0013-额度调整申请服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

BaiduSnId-百度会话id-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0013-额度调整申请服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

RepeatRqsBss-重复请求依据-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0013-额度调整申请服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

AdvType-通知类型-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0013-额度调整申请服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

ChanFlg-渠道标志-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0013-额度调整申请服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

ProdCd-产品代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0013-额度调整申请服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

AdjAmtTp-调额类型-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0013-额度调整申请服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

VerNo-版本号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0013-额度调整申请服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

AdjMd-调整方式-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0013-额度调整申请服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

IDCertNo-身份证号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0013-额度调整申请服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

AgeCnt-年龄-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0013-额度调整申请服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

BDPostLoanLvl-贷中人群分级-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0013-额度调整申请服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

AdjRsnCd-调整原因代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0013-额度调整申请服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

RqsTmstmp-请求时间戳-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0013-额度调整申请服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

AdjAfterAmt-调额后额度-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0013-额度调整申请服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

AdjPreAmt-调额前额度-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0013-额度调整申请服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

BDBScr-度小满B模型评分 -空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0013-额度调整申请服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

AdjAmtIdNo-调额Id号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0013-额度调整申请服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

RetCd-返回代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0013-额度调整申请服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

SvcCd-服务代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0013-额度调整申请服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

ScnCd-场景代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0013-额度调整申请服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

CnsmrSysID-消费方系统编号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0013-额度调整申请服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

CnsmrSrlNo-消费方流水号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0013-额度调整申请服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

TxnDt-交易日期-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0013-额度调整申请服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

TxnTm-交易时间-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0013-额度调整申请服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

SvcCd-服务代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0013-额度调整申请服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

ScnCd-场景代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0013-额度调整申请服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

CnsmrSysID-消费方系统编号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0013-额度调整申请服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

CnsmrSrlNo-消费方流水号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0013-额度调整申请服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

TxnDt-交易日期-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0013-额度调整申请服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

TxnTm-交易时间-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0013-额度调整申请服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

PvdrSysID-提供方系统编号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0013-额度调整申请服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

PvdrSrlNo-提供方流水号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0013-额度调整申请服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

RetSt-返回状态-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0013-额度调整申请服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

RetInfArry-返回信息数组-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0013-额度调整申请服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

RetCd-返回代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0013-额度调整申请服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

RetMsg-返回信息-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0013-额度调整申请服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

