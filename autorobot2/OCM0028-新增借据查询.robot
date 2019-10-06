*** Settings ***
Force Tags        OCM0028-新增借据查询
Resource          元素层.robot

*** Variables ***

*** Test Cases ***
全填
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0028-新增借据查询
    ${caseresultlist}    开始接口测试    ${newsetdict}

必填
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0028-新增借据查询
    ${caseresultlist}    开始接口测试    ${newsetdict}

QryTp-查询类型-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0028-新增借据查询
    ${caseresultlist}    开始接口测试    ${newsetdict}

RetCd-返回代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0028-新增借据查询
    ${caseresultlist}    开始接口测试    ${newsetdict}

DblNo-借据号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0028-新增借据查询
    ${caseresultlist}    开始接口测试    ${newsetdict}

CrdAgrmNo-授信协议编号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0028-新增借据查询
    ${caseresultlist}    开始接口测试    ${newsetdict}

DblAmt-借据金额-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0028-新增借据查询
    ${caseresultlist}    开始接口测试    ${newsetdict}

DblBal-借据余额-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0028-新增借据查询
    ${caseresultlist}    开始接口测试    ${newsetdict}

DblStartDt-借据起始日-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0028-新增借据查询
    ${caseresultlist}    开始接口测试    ${newsetdict}

DblMateDt-借据到期日-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0028-新增借据查询
    ${caseresultlist}    开始接口测试    ${newsetdict}

DblSt-借据状态-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0028-新增借据查询
    ${caseresultlist}    开始接口测试    ${newsetdict}

ExecYrRate-执行年利率-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0028-新增借据查询
    ${caseresultlist}    开始接口测试    ${newsetdict}

 FltIntRt-浮动利率-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0028-新增借据查询
    ${caseresultlist}    开始接口测试    ${newsetdict}

LoanTrm-贷款期限-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0028-新增借据查询
    ${caseresultlist}    开始接口测试    ${newsetdict}

LmtTrmUnt-额度期限单位-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0028-新增借据查询
    ${caseresultlist}    开始接口测试    ${newsetdict}

RpyMd-还款方式-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0028-新增借据查询
    ${caseresultlist}    开始接口测试    ${newsetdict}

PrdctID-产品ID-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0028-新增借据查询
    ${caseresultlist}    开始接口测试    ${newsetdict}

ChanNo-渠道号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0028-新增借据查询
    ${caseresultlist}    开始接口测试    ${newsetdict}

BankCardNo-银行卡号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0028-新增借据查询
    ${caseresultlist}    开始接口测试    ${newsetdict}

DistrCardNo-放款卡号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0028-新增借据查询
    ${caseresultlist}    开始接口测试    ${newsetdict}

RpyCyc-还款周期-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0028-新增借据查询
    ${caseresultlist}    开始接口测试    ${newsetdict}

RpyDt-还款日期-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0028-新增借据查询
    ${caseresultlist}    开始接口测试    ${newsetdict}

SvcCd-服务代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0028-新增借据查询
    ${caseresultlist}    开始接口测试    ${newsetdict}

ScnCd-场景代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0028-新增借据查询
    ${caseresultlist}    开始接口测试    ${newsetdict}

CnsmrSysID-消费方系统编号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0028-新增借据查询
    ${caseresultlist}    开始接口测试    ${newsetdict}

CnsmrSrlNo-消费方流水号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0028-新增借据查询
    ${caseresultlist}    开始接口测试    ${newsetdict}

TxnDt-交易日期-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0028-新增借据查询
    ${caseresultlist}    开始接口测试    ${newsetdict}

TxnTm-交易时间-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0028-新增借据查询
    ${caseresultlist}    开始接口测试    ${newsetdict}

SvcCd-服务代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0028-新增借据查询
    ${caseresultlist}    开始接口测试    ${newsetdict}

ScnCd-场景代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0028-新增借据查询
    ${caseresultlist}    开始接口测试    ${newsetdict}

CnsmrSysID-消费方系统编号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0028-新增借据查询
    ${caseresultlist}    开始接口测试    ${newsetdict}

CnsmrSrlNo-消费方流水号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0028-新增借据查询
    ${caseresultlist}    开始接口测试    ${newsetdict}

TxnDt-交易日期-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0028-新增借据查询
    ${caseresultlist}    开始接口测试    ${newsetdict}

TxnTm-交易时间-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0028-新增借据查询
    ${caseresultlist}    开始接口测试    ${newsetdict}

PvdrSysID-提供方系统编号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0028-新增借据查询
    ${caseresultlist}    开始接口测试    ${newsetdict}

PvdrSrlNo-提供方流水号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0028-新增借据查询
    ${caseresultlist}    开始接口测试    ${newsetdict}

RetSt-返回状态-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0028-新增借据查询
    ${caseresultlist}    开始接口测试    ${newsetdict}

RetInfArry-返回信息数组-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0028-新增借据查询
    ${caseresultlist}    开始接口测试    ${newsetdict}

RetCd-返回代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0028-新增借据查询
    ${caseresultlist}    开始接口测试    ${newsetdict}

RetMsg-返回信息-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0028-新增借据查询
    ${caseresultlist}    开始接口测试    ${newsetdict}

