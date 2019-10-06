*** Settings ***
Force Tags        OCM0008
Resource          元素层.robot

*** Variables ***

*** Test Cases ***
全填
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0008
    ${caseresultlist}    开始接口测试    ${newsetdict}

必填
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0008
    ${caseresultlist}    开始接口测试    ${newsetdict}

AppFlowNo-申请流水号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0008
    ${caseresultlist}    开始接口测试    ${newsetdict}

BrwNm-借款人姓名-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0008
    ${caseresultlist}    开始接口测试    ${newsetdict}

IDCert-身份证-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0008
    ${caseresultlist}    开始接口测试    ${newsetdict}

IDCertVldDDt-身份证有效期-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0008
    ${caseresultlist}    开始接口测试    ${newsetdict}

AppTm-申请时间-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0008
    ${caseresultlist}    开始接口测试    ${newsetdict}

DrwCashAmt-提现金额-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0008
    ${caseresultlist}    开始接口测试    ${newsetdict}

AmortTerm-分期期数-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0008
    ${caseresultlist}    开始接口测试    ${newsetdict}

BrwUsg-借款用途-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0008
    ${caseresultlist}    开始接口测试    ${newsetdict}

CtcPrsnNm-联系人姓名-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0008
    ${caseresultlist}    开始接口测试    ${newsetdict}

CtcPrsnRela-联系人关系-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0008
    ${caseresultlist}    开始接口测试    ${newsetdict}

ResdntAddr-居住地址-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0008
    ${caseresultlist}    开始接口测试    ${newsetdict}

BrwGnd-借款人性别-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0008
    ${caseresultlist}    开始接口测试    ${newsetdict}

Nation-国籍-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0008
    ${caseresultlist}    开始接口测试    ${newsetdict}

Crr-职业-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0008
    ${caseresultlist}    开始接口测试    ${newsetdict}

RspEncd-响应编码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0008
    ${caseresultlist}    开始接口测试    ${newsetdict}

SvcCd-服务代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0008
    ${caseresultlist}    开始接口测试    ${newsetdict}

ScnCd-场景代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0008
    ${caseresultlist}    开始接口测试    ${newsetdict}

CnsmrSysID-消费方系统编号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0008
    ${caseresultlist}    开始接口测试    ${newsetdict}

CnsmrSrlNo-消费方流水号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0008
    ${caseresultlist}    开始接口测试    ${newsetdict}

TxnDt-交易日期-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0008
    ${caseresultlist}    开始接口测试    ${newsetdict}

TxnTm-交易时间-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0008
    ${caseresultlist}    开始接口测试    ${newsetdict}

SvcCd-服务代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0008
    ${caseresultlist}    开始接口测试    ${newsetdict}

ScnCd-场景代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0008
    ${caseresultlist}    开始接口测试    ${newsetdict}

CnsmrSysID-消费方系统编号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0008
    ${caseresultlist}    开始接口测试    ${newsetdict}

CnsmrSrlNo-消费方流水号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0008
    ${caseresultlist}    开始接口测试    ${newsetdict}

TxnDt-交易日期-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0008
    ${caseresultlist}    开始接口测试    ${newsetdict}

TxnTm-交易时间-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0008
    ${caseresultlist}    开始接口测试    ${newsetdict}

PvdrSysID-提供方系统编号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0008
    ${caseresultlist}    开始接口测试    ${newsetdict}

PvdrSrlNo-提供方流水号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0008
    ${caseresultlist}    开始接口测试    ${newsetdict}

RetSt-返回状态-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0008
    ${caseresultlist}    开始接口测试    ${newsetdict}

RetInfArry-返回信息数组-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0008
    ${caseresultlist}    开始接口测试    ${newsetdict}

RetCd-返回代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0008
    ${caseresultlist}    开始接口测试    ${newsetdict}

RetMsg-返回信息-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0008
    ${caseresultlist}    开始接口测试    ${newsetdict}

