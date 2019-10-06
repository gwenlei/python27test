#coding:utf8
import codecs
import xlrd 
import xlwt 
import os
# filename=u'step3/广州银行ESB项目_字段映射_网络信贷系统_V1.3.4addheadandcases.xls'
dirname='excelcases/'
filenamelist=os.listdir(dirname)
for filename in filenamelist:
    wb=xlrd.open_workbook(dirname+filename)
    print(str(wb.sheet_names()).decode('unicode-escape'))
    
    for k in wb.sheet_names():
        print(k)
        sheet=wb.sheet_by_name(k)
        resultdir=u'robotcases/%s/'%filename.split('.xls',1)[0].decode('GBK')
        if not os.path.exists(resultdir):
            os.makedirs(resultdir)
        print(resultdir)
        print(k)
        resultfilename=resultdir+k+'.robot'
        with codecs.open(resultfilename,'w','utf-8') as f:
            prestring='''*** Settings ***
Force Tags        %s
Resource          元素层.robot

*** Variables ***

*** Test Cases ***
'''%k
            f.write(prestring)
            for i in range(0,sheet.nrows):
                if sheet.cell_value(i,0)=='':continue
                f.write(sheet.cell_value(i,0))
                casestring='''
    [Tags]
    ${newsetdict}    create dictionary    sheet=%s
    ${caseresultlist}    开始接口测试    ${newsetdict}

'''%k
                f.write(casestring)
