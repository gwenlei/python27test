#coding:utf8
import xlrd 
import xlwt 
import json
import re

def constructjson(sheet,beginrow,endrow,inputstring,outputstring):
    for i in range(beginrow,endrow):
        if sheet.cell_value(i,englishnamecol) =='输入' :
            inputbeginrow=i+1
        if sheet.cell_value(i,englishnamecol) =='输出' :
            inputendrow=i
            outputbeginrow=i+1
        if sheet.cell_value(i,englishnamecol)=='ESB报文样例(XML和JSON)' or sheet.cell_value(i,englishnamecol)=='':
            outputendrow=i
            break
    
    print('input:',inputbeginrow,inputendrow)
    for i in range(inputbeginrow,inputendrow):
        inputstring=inputstring+'"'+sheet.cell_value(i,englishnamecol)+'"'+':'+'"'+sheet.cell_value(i,valuecol)+'",\n'
    
    print('output:',outputbeginrow,outputendrow)
    for i in range(beginrow,endrow):
        if sheet.cell_value(i,typecol)=='Array' and 'Start' in sheet.cell_value(i,remarkcol):
            outputstring=outputstring+'"'+sheet.cell_value(i,englishnamecol)+'"'+':'+'[{\n'
        elif sheet.cell_value(i,typecol)=='Array' and sheet.cell_value(i,remarkcol)=='End':
            outputstring=outputstring[:-2]+'}],\n'
        else:
            outputstring=outputstring+'"'+sheet.cell_value(i,englishnamecol)+'"'+':'+'"'+sheet.cell_value(i,valuecol)+'",\n'
    
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
inputbeginrow=0
inputendrow=0
outputbeginrow=0
outputendrow=sheet.nrows-1
headbeginrow=0
inputsysheadstring='{"SysHead":{\n'
outputsysheadstring='{"SysHead":{\n'
for i in range(0,sheet.nrows):
    if sheet.cell_value(i,englishnamecol) =='ESB报文头' :
        headbeginrow=i+1

for i in range(0,sheet.nrows):
    if sheet.cell_value(i,englishnamecol) =='输入' :
        inputbeginrow=i+1
    if sheet.cell_value(i,englishnamecol) =='输出' :
        inputendrow=i
        outputbeginrow=i+1
    if sheet.cell_value(i,englishnamecol)=='ESB报文样例(XML和JSON)' or sheet.cell_value(i,englishnamecol)=='':
        outputendrow=i
        break

print('input:',inputbeginrow,inputendrow)
for i in range(inputbeginrow,inputendrow):
    inputsysheadstring=inputsysheadstring+'"'+sheet.cell_value(i,englishnamecol)+'"'+':'+'"'+sheet.cell_value(i,valuecol)+'",\n'

print('output:',outputbeginrow,outputendrow)
for i in range(outputbeginrow,outputendrow):
    if sheet.cell_value(i,typecol)=='Array' and 'Start' in sheet.cell_value(i,remarkcol):
        outputsysheadstring=outputsysheadstring+'"'+sheet.cell_value(i,englishnamecol)+'"'+':'+'[{\n'
    elif sheet.cell_value(i,typecol)=='Array' and sheet.cell_value(i,remarkcol)=='End':
        outputsysheadstring=outputsysheadstring[:-2]+'}],\n'
    else:
        outputsysheadstring=outputsysheadstring+'"'+sheet.cell_value(i,englishnamecol)+'"'+':'+'"'+sheet.cell_value(i,valuecol)+'",\n'

inputsysheadstring=inputsysheadstring[:-2]+'}}'
outputsysheadstring=outputsysheadstring[:-2]+'}}'
print(inputsysheadstring)
print(outputsysheadstring)        
        
    
resultwb=xlwt.Workbook()
resultsheet=resultwb.add_sheet('Sheet1')
resultsheet.write(0,0,inputsysheadstring)
resultsheet.write(0,1,outputsysheadstring)
resultfilename=u'json.xls'
resultwb.save(resultfilename)