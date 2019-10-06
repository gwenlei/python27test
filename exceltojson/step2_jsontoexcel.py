#coding:utf8
import xlrd 
import xlwt 
import json

def jsontoexcel(inputjsonvalue,outputjsonvalue,messsheet,resultsheet,valuecol):
    englishnamecol=7
    typecol=9
    constrainstcol=10
    remarkcol=12
        
    for i in range(0,messsheet.nrows):
        if messsheet.cell_value(i,englishnamecol) =='ESB报文头' :
            headbeginrow=i
            break
    outputheadendrow=messsheet.nrows
    for i in range(headbeginrow,messsheet.nrows):
        if messsheet.cell_value(i,englishnamecol) =='输入' :
            inputheadbeginrow=i+1
        if messsheet.cell_value(i,englishnamecol) =='输出' :
            inputheadendrow=i
            outputheadbeginrow=i+1
        if messsheet.cell_value(i,0)=='ESB报文样例(XML和JSON)':
            outputheadendrow=i
    
    outputbodyendrow=headbeginrow        
    for i in range(0,headbeginrow):
        if messsheet.cell_value(i,0) =='输入' :
            inputbodybeginrow=i+1
        if messsheet.cell_value(i,0) =='输出' :
            inputbodyendrow=i
            outputbodybeginrow=i+1
        if messsheet.cell_value(i,0)=='':
            outputbodyendrow=i
    
    arrayflag=0
    arrayname=''
    print('inputhead',inputheadbeginrow,inputheadendrow)      
    for i in range(inputheadbeginrow,inputheadendrow):
        try:
            resultsheet.write(i,valuecol,inputjsonvalue[messsheet.cell_value(i,constrainstcol)][messsheet.cell_value(i,englishnamecol)])
        except Exception as e:
            print('exception',e)
            continue
    
    print('outputhead',outputheadbeginrow,outputheadendrow)
    for i in range(outputheadbeginrow,outputheadendrow):
        if messsheet.cell_value(i,typecol)=='Array' and 'Start' in messsheet.cell_value(i,remarkcol):
            arrayname=messsheet.cell_value(i,englishnamecol)
            arrayflag=1
            continue
        if messsheet.cell_value(i,typecol)=='Array' and 'End' in messsheet.cell_value(i,remarkcol):
            arrayname=''
            arrayflag=0
            continue
        if arrayflag==1:
            try:
                resultsheet.write(i,valuecol,outputjsonvalue[messsheet.cell_value(i,constrainstcol)][arrayname][0][messsheet.cell_value(i,englishnamecol)])
            except Exception as e:
                print('exception',e)
                continue
        else:
            try:
                resultsheet.write(i,valuecol,outputjsonvalue[messsheet.cell_value(i,constrainstcol)][messsheet.cell_value(i,englishnamecol)])
            except Exception as e:
                print('exception',e)
                continue
    
    print('inputbody',inputbodybeginrow,inputbodyendrow)
    for i in range(inputbodybeginrow,inputbodyendrow):
        try:
            resultsheet.write(i,valuecol,inputjsonvalue['BODY'][messsheet.cell_value(i,englishnamecol)])    
        except Exception as e:
            print('exception',e)
            continue
    
    print('outputbody',outputbodybeginrow,outputbodyendrow)
    for i in range(outputbodybeginrow,outputbodyendrow):
        try:
            resultsheet.write(i,valuecol,outputjsonvalue['BODY'][messsheet.cell_value(i,englishnamecol)])    
        except Exception as e:
            print('exception',e)
            continue


namedict={'用信申请':'OCM0001','授信申请':'OCM0011'}

messfilename=u'step1/广州银行ESB项目_字段映射_网络信贷系统_V1.3.4addhead.xls'
messwb=xlrd.open_workbook(messfilename)
print(str(messwb.sheet_names()).decode('unicode-escape'))
messsheetnames=messwb.sheet_names()
messsheet=messwb.sheet_by_name(u'OCM0001')

jsonfilenamelist=[u'用信申请测试集.xls',u'授信申请测试集.xls']
for k in jsonfilenamelist:
    jsonwb=xlrd.open_workbook('template/'+k)
    print(str(jsonwb.sheet_names()).decode('unicode-escape'))
    jsonsheetnames=jsonwb.sheet_names()
    resultwb=xlwt.Workbook()
    for i in jsonsheetnames:
        print(i)
        jsonsheet=jsonwb.sheet_by_name(i)    
        resultsheet=resultwb.add_sheet(i)
        for i in range(0,messsheet.nrows):
            for j in range(0,messsheet.ncols):
                resultsheet.write(i,j,messsheet.cell_value(i,j))
        valuecol=14
        print('jsonnum=',jsonsheet.nrows-1)
        for j in range(1,jsonsheet.nrows):
            inputjsonstring=jsonsheet.cell_value(j,1)
            inputjsonvalue=json.loads(inputjsonstring)
            print(inputjsonvalue)
            
            outputjsonstring=jsonsheet.cell_value(j,2)
            outputjsonvalue=json.loads(outputjsonstring)
            print(outputjsonvalue)
            
            jsontoexcel(inputjsonvalue,outputjsonvalue, messsheet, resultsheet,valuecol+j-1)

    resultfilename=u'step2/'+k
    resultwb.save(resultfilename)