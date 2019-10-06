*** Settings ***
Library           RequestsLibrary
Library           String
Resource          变量.robot
Library           Collections
Library           ExcelLibrary

*** Keywords ***
sendmessage
    [Arguments]    ${inputmessage}
    ${接口地址}    set variable    ${接口地址模拟}
    ${pre}    ${pre1}    ${ip}    ${route}=    split String    ${接口地址}    /
    ...    3
    create session    event    http://${ip}
    ${headers}    create dictionary    Content-Type=application/json;charsest=UTF-8
    Comment    ${response}    post request    event    /esb/esbBusiness/doRecv    data=${inputmessage}    headers=${headers}
    ${response}    post request    event    /${route}    data=${inputmessage}    headers=${headers}
    log    ${response.text}
    delete all sessions
    [Return]    ${response}

开始接口测试
    [Arguments]    ${newsetdict}
    ${datafile}    set variable    ${CURDIR}${/}result${/}广州银行ESB项目_字段映射_网络信贷系统_V1.3.4addheadandcases.xls
    ${resultfile}    set variable    ${CURDIR}${/}result${/}result.xls
    ${setdict}    create dictionary    birth_match=Y    rel_relation=00    testagemin=22    testagemax=54    testpart=BODY
    ...    sheet=Sheet1    datafile=${datafile}    resultfile=${resultfile}
    ${keylist}    get dictionary keys    ${newsetdict}
    : FOR    ${key}    IN    @{keylist}
    \    set to dictionary    ${setdict}    ${key}    ${newsetdict['${key}']}
    open excel    ${setdict['datafile']}
    ${value}    get column values    ${setdict['sheet']}    0
    ${row}    get row count    ${setdict['sheet']}
    ${title}    set variable    ${0}
    ${end}    set variable    ${0}
    : FOR    ${i}    IN RANGE    0    ${row}
    \    ${title}    set variable if    '${value[${i}][1]}'=='${TEST_NAME}'    ${i}    ${title}
    \    Exit For Loop If    '${value[${i}][1]}'=='${TEST_NAME}'
    ${input}    get column values    ${setdict['sheet']}    1
    log    ${input[${title}][1]}
    sendmessage    ${input[${title}][1]}
