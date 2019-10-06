*** Settings ***
Force Tags        OCM0005-理财通进还款前置检查
Resource          元素层.robot

*** Variables ***

*** Test Cases ***
全填
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0005-理财通进还款前置检查
    ${caseresultlist}    开始接口测试    ${newsetdict}

必填
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0005-理财通进还款前置检查
    ${caseresultlist}    开始接口测试    ${newsetdict}

FundCorpMrchId-基金公司商户号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0005-理财通进还款前置检查
    ${caseresultlist}    开始接口测试    ${newsetdict}

TFMUserId-真身id-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0005-理财通进还款前置检查
    ${caseresultlist}    开始接口测试    ${newsetdict}

LoanOrdrNo-贷款订单号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0005-理财通进还款前置检查
    ${caseresultlist}    开始接口测试    ${newsetdict}

LoanPrinAmt-贷款本金-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0005-理财通进还款前置检查
    ${caseresultlist}    开始接口测试    ${newsetdict}

CurrCd-币种-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0005-理财通进还款前置检查
    ${caseresultlist}    开始接口测试    ${newsetdict}

RpyOrdrNo-还款订单号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0005-理财通进还款前置检查
    ${caseresultlist}    开始接口测试    ${newsetdict}

LoanTm-贷款时间-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0005-理财通进还款前置检查
    ${caseresultlist}    开始接口测试    ${newsetdict}

RpyTm-还款时间-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0005-理财通进还款前置检查
    ${caseresultlist}    开始接口测试    ${newsetdict}

RpyAmt-还款金额-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0005-理财通进还款前置检查
    ${caseresultlist}    开始接口测试    ${newsetdict}

RpyPrinAmt-还款本金金额-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0005-理财通进还款前置检查
    ${caseresultlist}    开始接口测试    ${newsetdict}

RpyIntAmt-还款利息金额-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0005-理财通进还款前置检查
    ${caseresultlist}    开始接口测试    ${newsetdict}

StmpTax-印花税-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0005-理财通进还款前置检查
    ${caseresultlist}    开始接口测试    ${newsetdict}

RpyPnshIntAmt-还款罚息-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0005-理财通进还款前置检查
    ${caseresultlist}    开始接口测试    ${newsetdict}

RpyRmk-还款说明-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0005-理财通进还款前置检查
    ${caseresultlist}    开始接口测试    ${newsetdict}

RetStCd-返回状态码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0005-理财通进还款前置检查
    ${caseresultlist}    开始接口测试    ${newsetdict}

RpyOrdrNo-还款订单号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0005-理财通进还款前置检查
    ${caseresultlist}    开始接口测试    ${newsetdict}

SvcCd-服务代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0005-理财通进还款前置检查
    ${caseresultlist}    开始接口测试    ${newsetdict}

ScnCd-场景代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0005-理财通进还款前置检查
    ${caseresultlist}    开始接口测试    ${newsetdict}

CnsmrSysID-消费方系统编号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0005-理财通进还款前置检查
    ${caseresultlist}    开始接口测试    ${newsetdict}

CnsmrSrlNo-消费方流水号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0005-理财通进还款前置检查
    ${caseresultlist}    开始接口测试    ${newsetdict}

TxnDt-交易日期-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0005-理财通进还款前置检查
    ${caseresultlist}    开始接口测试    ${newsetdict}

TxnTm-交易时间-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0005-理财通进还款前置检查
    ${caseresultlist}    开始接口测试    ${newsetdict}

SvcCd-服务代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0005-理财通进还款前置检查
    ${caseresultlist}    开始接口测试    ${newsetdict}

ScnCd-场景代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0005-理财通进还款前置检查
    ${caseresultlist}    开始接口测试    ${newsetdict}

CnsmrSysID-消费方系统编号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0005-理财通进还款前置检查
    ${caseresultlist}    开始接口测试    ${newsetdict}

CnsmrSrlNo-消费方流水号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0005-理财通进还款前置检查
    ${caseresultlist}    开始接口测试    ${newsetdict}

TxnDt-交易日期-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0005-理财通进还款前置检查
    ${caseresultlist}    开始接口测试    ${newsetdict}

TxnTm-交易时间-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0005-理财通进还款前置检查
    ${caseresultlist}    开始接口测试    ${newsetdict}

PvdrSysID-提供方系统编号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0005-理财通进还款前置检查
    ${caseresultlist}    开始接口测试    ${newsetdict}

PvdrSrlNo-提供方流水号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0005-理财通进还款前置检查
    ${caseresultlist}    开始接口测试    ${newsetdict}

RetSt-返回状态-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0005-理财通进还款前置检查
    ${caseresultlist}    开始接口测试    ${newsetdict}

RetInfArry-返回信息数组-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0005-理财通进还款前置检查
    ${caseresultlist}    开始接口测试    ${newsetdict}

RetCd-返回代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0005-理财通进还款前置检查
    ${caseresultlist}    开始接口测试    ${newsetdict}

RetMsg-返回信息-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0005-理财通进还款前置检查
    ${caseresultlist}    开始接口测试    ${newsetdict}

