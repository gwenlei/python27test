*** Settings ***
Force Tags        OCM0009-放款结果通知
Resource          元素层.robot

*** Variables ***

*** Test Cases ***
全填
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0009-放款结果通知
    ${caseresultlist}    开始接口测试    ${newsetdict}

必填
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0009-放款结果通知
    ${caseresultlist}    开始接口测试    ${newsetdict}

TxnFlowNo-交易流水号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0009-放款结果通知
    ${caseresultlist}    开始接口测试    ${newsetdict}

UsrOnlyFlg-用户唯一标志-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0009-放款结果通知
    ${caseresultlist}    开始接口测试    ${newsetdict}

UsrContrNo-用户合同编号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0009-放款结果通知
    ${caseresultlist}    开始接口测试    ${newsetdict}

DistrSt-发放状态-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0009-放款结果通知
    ${caseresultlist}    开始接口测试    ${newsetdict}

DistrAmt-放款金额-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0009-放款结果通知
    ${caseresultlist}    开始接口测试    ${newsetdict}

TransTm-交易时间-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0009-放款结果通知
    ${caseresultlist}    开始接口测试    ${newsetdict}

RetStCd-返回状态码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0009-放款结果通知
    ${caseresultlist}    开始接口测试    ${newsetdict}

SvcCd-服务代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0009-放款结果通知
    ${caseresultlist}    开始接口测试    ${newsetdict}

ScnCd-场景代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0009-放款结果通知
    ${caseresultlist}    开始接口测试    ${newsetdict}

CnsmrSysID-消费方系统编号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0009-放款结果通知
    ${caseresultlist}    开始接口测试    ${newsetdict}

CnsmrSrlNo-消费方流水号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0009-放款结果通知
    ${caseresultlist}    开始接口测试    ${newsetdict}

TxnDt-交易日期-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0009-放款结果通知
    ${caseresultlist}    开始接口测试    ${newsetdict}

TxnTm-交易时间-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0009-放款结果通知
    ${caseresultlist}    开始接口测试    ${newsetdict}

SvcCd-服务代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0009-放款结果通知
    ${caseresultlist}    开始接口测试    ${newsetdict}

ScnCd-场景代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0009-放款结果通知
    ${caseresultlist}    开始接口测试    ${newsetdict}

CnsmrSysID-消费方系统编号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0009-放款结果通知
    ${caseresultlist}    开始接口测试    ${newsetdict}

CnsmrSrlNo-消费方流水号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0009-放款结果通知
    ${caseresultlist}    开始接口测试    ${newsetdict}

TxnDt-交易日期-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0009-放款结果通知
    ${caseresultlist}    开始接口测试    ${newsetdict}

TxnTm-交易时间-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0009-放款结果通知
    ${caseresultlist}    开始接口测试    ${newsetdict}

PvdrSysID-提供方系统编号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0009-放款结果通知
    ${caseresultlist}    开始接口测试    ${newsetdict}

PvdrSrlNo-提供方流水号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0009-放款结果通知
    ${caseresultlist}    开始接口测试    ${newsetdict}

RetSt-返回状态-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0009-放款结果通知
    ${caseresultlist}    开始接口测试    ${newsetdict}

RetInfArry-返回信息数组-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0009-放款结果通知
    ${caseresultlist}    开始接口测试    ${newsetdict}

RetCd-返回代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0009-放款结果通知
    ${caseresultlist}    开始接口测试    ${newsetdict}

RetMsg-返回信息-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0009-放款结果通知
    ${caseresultlist}    开始接口测试    ${newsetdict}

