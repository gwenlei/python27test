#coding:utf8
import xlrd 
import xlwt 
import json
import re
import os

def constructhead(sheet,valuecol):
    print('constructhead')
    for i in range(0,sheet.nrows):
        if sheet.cell_value(i,englishnamecol) =='ESB报文头' :
            headbeginrow=i+1
            break
    for i in range(headbeginrow,sheet.nrows):
        if '输入' in sheet.cell_value(i,0) :
            inputbeginrow=i+1
        if '输出' in sheet.cell_value(i,0) :
            inputendrow=i
            outputbeginrow=i+1
        if sheet.cell_value(i,0)=='ESB报文样例(XML和JSON)':
            outputendrow=i
            break
    inputstring='"SysHead":{\n'
    print('input:',inputbeginrow,inputendrow)
    for i in range(inputbeginrow,inputendrow):
        if sheet.cell_value(i,englishnamecol) =='':break
        if sheet.cell_value(i,constrainstcol) =='SysHead':
            inputstring=inputstring+'"'+sheet.cell_value(i,englishnamecol)+'"'+':'+'"'+sheet.cell_value(i,valuecol)+'",\n'
        if sheet.cell_value(i,constrainstcol)=='AppHead':
            inputstring=inputstring[:-2]+'\n},\n'
            inputbeginrow=i
            break
    inputstring=inputstring+'"AppHead":{\n'
    for i in range(inputbeginrow,inputendrow):
        if sheet.cell_value(i,englishnamecol) =='':break
        if sheet.cell_value(i,constrainstcol) =='AppHead':
            inputstring=inputstring+'"'+sheet.cell_value(i,englishnamecol)+'"'+':'+'"'+sheet.cell_value(i,valuecol)+'",\n'   
    inputstring=inputstring[:-2]+'\n},\n'  

    outputstring='"SysHead":{\n'
    print('output:',outputbeginrow,outputendrow)
    for i in range(outputbeginrow,outputendrow):
        if sheet.cell_value(i,englishnamecol) =='':break
        if sheet.cell_value(i,constrainstcol) =='SysHead':
            if sheet.cell_value(i,typecol)=='Array' and 'Start' in sheet.cell_value(i,remarkcol):
                outputstring=outputstring+'"'+sheet.cell_value(i,englishnamecol)+'"'+':'+'[{\n'
            elif sheet.cell_value(i,typecol)=='Array' and sheet.cell_value(i,remarkcol)=='End':
                outputstring=outputstring[:-2]+'}],\n'
            else:
                outputstring=outputstring+'"'+sheet.cell_value(i,englishnamecol)+'"'+':'+'"'+sheet.cell_value(i,valuecol)+'",\n'
        if sheet.cell_value(i,constrainstcol)=='AppHead':
            outputstring=outputstring[:-2]+'\n},\n'
            outputbeginrow=i
            break
    outputstring=outputstring+'"AppHead":{\n'
    print(outputbeginrow,outputendrow)
    for i in range(outputbeginrow,outputendrow):
        if sheet.cell_value(i,englishnamecol) =='':break
        if sheet.cell_value(i,constrainstcol) =='AppHead':
            outputstring=outputstring+'"'+sheet.cell_value(i,englishnamecol)+'"'+':'+'"'+sheet.cell_value(i,valuecol)+'",\n' 
    outputstring=outputstring[:-2]+'\n},\n'  
    return inputstring,outputstring

def constructbody(sheet,valuecol):
    print('constructbody')
    for i in range(0,sheet.nrows):
        if sheet.cell_value(i,englishnamecol) =='ESB报文头' :
            headbeginrow=i
            break
    outputendrow=headbeginrow
    for i in range(0,headbeginrow):
        if '输入' in sheet.cell_value(i,0) :
            inputbeginrow=i+1
        if '输出' in sheet.cell_value(i,0) :
            inputendrow=i
            outputbeginrow=i+1
        if sheet.cell_value(i,0)=='ESB报文样例(XML和JSON)':
            outputendrow=i
            break
    
    inputstring='"BODY":{\n'
    print('input:',inputbeginrow,inputendrow)
    for i in range(inputbeginrow,inputendrow):
        if sheet.cell_value(i,englishnamecol) =='':break
        inputstring=inputstring+'"'+sheet.cell_value(i,englishnamecol)+'"'+':'+'"'+sheet.cell_value(i,valuecol)+'",\n'
    inputstring=inputstring[:-2]+'\n}\n'
    
    outputstring='"BODY":{\n'
    print('output:',outputbeginrow,outputendrow)
    for i in range(outputbeginrow,outputendrow):
        if sheet.cell_value(i,englishnamecol) =='':break
        if sheet.cell_value(i,typecol)=='Array' and 'Start' in sheet.cell_value(i,remarkcol):
            outputstring=outputstring+'"'+sheet.cell_value(i,englishnamecol)+'"'+':'+'[{\n'
        elif sheet.cell_value(i,typecol)=='Array' and sheet.cell_value(i,remarkcol)=='End':
            outputstring=outputstring[:-2]+'}],\n'
        else:
            outputstring=outputstring+'"'+sheet.cell_value(i,englishnamecol)+'"'+':'+'"'+sheet.cell_value(i,valuecol)+'",\n'
    outputstring=outputstring[:-2]+'\n}\n'
    return inputstring,outputstring

# filenamelist=[u'用信申请测试集.xls',u'授信申请测试集.xls']
# filenamelist=[u'广州银行ESB项目_字段映射_网络信贷系统_V1.3.4addheadandcases.xls']
dirname='excelcases/'
filenamelist=os.listdir(dirname)
for i in filenamelist:
#     wb=xlrd.open_workbook('step2/'+i)
    wb=xlrd.open_workbook(dirname+i)
    print(str(wb.sheet_names()).decode('unicode-escape'))
    sheetnames=wb.sheet_names()
    resultwb=xlwt.Workbook()
    for j in sheetnames:
        sheet=wb.sheet_by_name(j)
        print(str([sheet.name,sheet.nrows,sheet.ncols]).decode('unicode-escape'))
        englishnamecol=7
        typecol=9
        constrainstcol=10
        remarkcol=12
        valuecol=18
        jsonnum=sheet.ncols-valuecol
        print('jsonnum=',jsonnum)
        resultsheet=resultwb.add_sheet(j)        
        resultdir='step3/'
        resultsheet.write(0,0,u'用例名称')
        resultsheet.write(0,1,u'输入报文')
        resultsheet.write(0,2,u'输出报文')
        resultsheet.write(0,3,u'实际输出报文')
        resultsheet.write(0,4,u'实际输出对比')
        resultsheet.write(0,5,u'结论')
        for k in range(0,jsonnum):
            print('k=',k)
            tmpvaluecol=valuecol+k
            inputheadstring,outputheadstring=constructhead(sheet,tmpvaluecol)
            inputbodystring,outputbodystring=constructbody(sheet,tmpvaluecol)
            inputstring='{'+inputheadstring+inputbodystring+'}'
            outputstring='{'+outputheadstring+outputbodystring+'}'
            print(inputstring)
            print(outputstring)                                            
            resultsheet.write(k+1,0,sheet.cell_value(0,tmpvaluecol))
            resultsheet.write(k+1,1,inputstring)
            resultsheet.write(k+1,2,outputstring)
            
            resultfilename=resultdir+i
            resultwb.save(resultfilename)