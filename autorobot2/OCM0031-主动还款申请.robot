*** Settings ***
Force Tags        OCM0031-主动还款申请
Resource          元素层.robot

*** Variables ***

*** Test Cases ***
全填
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0031-主动还款申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

必填
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0031-主动还款申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

RpyAppFlowNo-还款申请流水号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0031-主动还款申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

DblNo-借据号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0031-主动还款申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

RpyDt-还款日期-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0031-主动还款申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

RpyType-还款类型-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0031-主动还款申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

RpyAmt-还款金额-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0031-主动还款申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

RpyPrin-还款本金-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0031-主动还款申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

CertTp-证件类型-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0031-主动还款申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

CertNo-证件号码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0031-主动还款申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

CustNm-客户姓名-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0031-主动还款申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

ChanNo-渠道号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0031-主动还款申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

BlgAcctCl-结算账户分类-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0031-主动还款申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

BlgMth-结算方式-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0031-主动还款申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

AcctCtgry-账户分类-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0031-主动还款申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

AmtType-金额类型-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0031-主动还款申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

BlgAmt-结算金额-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0031-主动还款申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

RetCd-返回代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0031-主动还款申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

SvcCd-服务代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0031-主动还款申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

ScnCd-场景代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0031-主动还款申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

CnsmrSysID-消费方系统编号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0031-主动还款申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

CnsmrSrlNo-消费方流水号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0031-主动还款申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

TxnDt-交易日期-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0031-主动还款申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

TxnTm-交易时间-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0031-主动还款申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

SvcCd-服务代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0031-主动还款申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

ScnCd-场景代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0031-主动还款申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

CnsmrSysID-消费方系统编号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0031-主动还款申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

CnsmrSrlNo-消费方流水号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0031-主动还款申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

TxnDt-交易日期-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0031-主动还款申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

TxnTm-交易时间-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0031-主动还款申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

PvdrSysID-提供方系统编号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0031-主动还款申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

PvdrSrlNo-提供方流水号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0031-主动还款申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

RetSt-返回状态-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0031-主动还款申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

RetInfArry-返回信息数组-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0031-主动还款申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

RetCd-返回代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0031-主动还款申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

RetMsg-返回信息-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0031-主动还款申请
    ${caseresultlist}    开始接口测试    ${newsetdict}

