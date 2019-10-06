#coding:utf8
import xlrd 
import xlwt 
import json
import re

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

filename=u'广州银行ESB项目_字段映射_网络信贷系统_V1.3.4.xls'
wb=xlrd.open_workbook(filename)
print(str(wb.sheet_names()).decode('unicode-escape'))
sheetnames=wb.sheet_names()
sheet=wb.sheet_by_name(u'OCM0001')
print(str([sheet.name,sheet.nrows,sheet.ncols]).decode('unicode-escape'))
englishnamecol=7
typecol=9
constrainstcol=10
remarkcol=12
valuecol=14

inputheadstring,outputheadstring=constructhead(sheet,valuecol)
inputbodystring,outputbodystring=constructbody(sheet,valuecol)
inputstring='{'+inputheadstring+inputbodystring+'}'
outputstring='{'+outputheadstring+outputbodystring+'}'
print(inputstring)
print(outputstring)        
        
    
resultwb=xlwt.Workbook()
resultsheet=resultwb.add_sheet('Sheet1')
resultsheet.write(0,0,inputstring)
resultsheet.write(0,1,outputstring)
resultfilename=u'json.xls'
resultwb.save(resultfilename)