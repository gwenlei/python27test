*** Settings ***
Force Tags        OCM0001-进件申请
Resource          元素层.robot

*** Variables ***

*** Test Cases ***
全填
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0001-进件申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

必填
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0001-进件申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

AppFlowNo-申请流水号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0001-进件申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

BrwNm-借款人姓名-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0001-进件申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

CertNo-证件号码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0001-进件申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

MblNo-手机号码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0001-进件申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

ProdCd-产品代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0001-进件申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

LoanProdNm-贷款产品名称-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0001-进件申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

LoanAmt-贷款金额-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0001-进件申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

CurrCd-币种-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0001-进件申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

RpyMd-还款方式-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0001-进件申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

ChanFlg-渠道标志-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0001-进件申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

RetStCd-返回状态码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0001-进件申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

SvcCd-服务代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0001-进件申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

ScnCd-场景代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0001-进件申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

CnsmrSysID-消费方系统编号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0001-进件申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

CnsmrSrlNo-消费方流水号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0001-进件申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

TxnDt-交易日期-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0001-进件申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

TxnTm-交易时间-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0001-进件申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

SvcCd-服务代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0001-进件申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

ScnCd-场景代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0001-进件申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

CnsmrSysID-消费方系统编号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0001-进件申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

CnsmrSrlNo-消费方流水号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0001-进件申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

TxnDt-交易日期-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0001-进件申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

TxnTm-交易时间-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0001-进件申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

PvdrSysID-提供方系统编号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0001-进件申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

PvdrSrlNo-提供方流水号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0001-进件申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

RetSt-返回状态-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0001-进件申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

RetInfArry-返回信息数组-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0001-进件申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

RetCd-返回代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0001-进件申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

RetMsg-返回信息-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0001-进件申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

