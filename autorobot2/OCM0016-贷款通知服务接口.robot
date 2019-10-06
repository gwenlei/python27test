*** Settings ***
Force Tags        OCM0016-贷款通知服务接口
Resource          元素层.robot

*** Variables ***

*** Test Cases ***
全填
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0016-贷款通知服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

必填
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0016-贷款通知服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

AppFlowNo-申请流水号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0016-贷款通知服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

EvID-事务ID-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0016-贷款通知服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

VerNo-版本号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0016-贷款通知服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

BsnOrdrNo-业务订单号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0016-贷款通知服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

TxnTmstmp-交易时间戳-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0016-贷款通知服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

LeaderCd-牵头方代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0016-贷款通知服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

PrtnrCd-合作方代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0016-贷款通知服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

CustNm-客户姓名-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0016-贷款通知服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

CertTp-证件类型-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0016-贷款通知服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

CertNo-证件号码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0016-贷款通知服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

DblNo-借据号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0016-贷款通知服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

AplDt-申请日期-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0016-贷款通知服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

OrgAmt-机构金额-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0016-贷款通知服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

CurrCd-币种-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0016-贷款通知服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

AmortTerm-分期期数-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0016-贷款通知服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

StrtDt-开始日期-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0016-贷款通知服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

MateDt-到期日期-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0016-贷款通知服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

LoanAmt-贷款金额-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0016-贷款通知服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

ChanFlg-渠道标志-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0016-贷款通知服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

RetCd-返回代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0016-贷款通知服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

SvcCd-服务代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0016-贷款通知服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

ScnCd-场景代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0016-贷款通知服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

CnsmrSysID-消费方系统编号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0016-贷款通知服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

CnsmrSrlNo-消费方流水号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0016-贷款通知服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

TxnDt-交易日期-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0016-贷款通知服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

TxnTm-交易时间-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0016-贷款通知服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

SvcCd-服务代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0016-贷款通知服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

ScnCd-场景代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0016-贷款通知服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

CnsmrSysID-消费方系统编号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0016-贷款通知服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

CnsmrSrlNo-消费方流水号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0016-贷款通知服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

TxnDt-交易日期-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0016-贷款通知服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

TxnTm-交易时间-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0016-贷款通知服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

PvdrSysID-提供方系统编号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0016-贷款通知服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

PvdrSrlNo-提供方流水号-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0016-贷款通知服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

RetSt-返回状态-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0016-贷款通知服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

RetInfArry-返回信息数组-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0016-贷款通知服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

RetCd-返回代码-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0016-贷款通知服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

RetMsg-返回信息-空
    [Tags]
    ${newsetdict}    create dictionary    sheet=OCM0016-贷款通知服务接口
    ${caseresultlist}    开始接口测试    ${newsetdict}

