*** Settings ***
Force Tags        OCM0017-额度恢复服务接口
Resource          元素层.robot

*** Variables ***

*** Test Cases ***
全填
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0017-额度恢复服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

必填
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0017-额度恢复服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

AppFlowNo-申请流水号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0017-额度恢复服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

LoanOrdrNo-贷款订单号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0017-额度恢复服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

DblNo-借据号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0017-额度恢复服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

AcctDt-账务日期-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0017-额度恢复服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

TransTm-交易时间-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0017-额度恢复服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

RpyPrinAmt-还款本金金额-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0017-额度恢复服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

LmtRcvrTp-额度恢复类型 -空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0017-额度恢复服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

VerNo-版本号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0017-额度恢复服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

ChanFlg-渠道标志-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0017-额度恢复服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

RetCd-返回代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0017-额度恢复服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

SvcCd-服务代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0017-额度恢复服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

ScnCd-场景代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0017-额度恢复服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

CnsmrSysID-消费方系统编号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0017-额度恢复服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

CnsmrSrlNo-消费方流水号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0017-额度恢复服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

TxnDt-交易日期-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0017-额度恢复服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

TxnTm-交易时间-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0017-额度恢复服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

SvcCd-服务代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0017-额度恢复服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

ScnCd-场景代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0017-额度恢复服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

CnsmrSysID-消费方系统编号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0017-额度恢复服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

CnsmrSrlNo-消费方流水号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0017-额度恢复服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

TxnDt-交易日期-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0017-额度恢复服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

TxnTm-交易时间-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0017-额度恢复服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

PvdrSysID-提供方系统编号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0017-额度恢复服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

PvdrSrlNo-提供方流水号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0017-额度恢复服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

RetSt-返回状态-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0017-额度恢复服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

RetInfArry-返回信息数组-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0017-额度恢复服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

RetCd-返回代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0017-额度恢复服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

RetMsg-返回信息-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0017-额度恢复服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

