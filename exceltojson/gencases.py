#coding:utf8
import xlrd 
import xlwt 
import os
# filename=u'step1/广州银行ESB项目_字段映射_网络信贷系统_V1.3.4addhead.xls'
dirname='step1/'
filenamelist=os.listdir(dirname)
for filename in filenamelist:
    wb=xlrd.open_workbook(dirname+filename)
    print(str(wb.sheet_names()).decode('unicode-escape'))
    resultwb=xlwt.Workbook()
        
    col_case=18
    col_englishname=7
    col_chinesename=8
    col_mustinput=10
    row_begin=7
    for k in wb.sheet_names():
        print(k)
        if 'OCM' in k:
            num_case=0
            bodysheet=wb.sheet_by_name(k)
            resultsheet=resultwb.add_sheet(k)
            
            for i in range(0,bodysheet.nrows):
                if bodysheet.cell_value(i,col_englishname) =='ESB报文头' :
                    headbeginrow=i
                    break
            bodyoutputendrow=headbeginrow
            for i in range(0,headbeginrow):
                if '输入' in bodysheet.cell_value(i,0) :
                    bodyinputbeginrow=i+1
                if '输出' in bodysheet.cell_value(i,0) :
                    bodyinputendrow=i
                    bodyoutputbeginrow=i+1
                if bodysheet.cell_value(i,0)=='ESB报文样例(XML和JSON)':
                    bodyoutputendrow=i
                    break
            for i in range(headbeginrow,bodysheet.nrows):
                if '输入' in bodysheet.cell_value(i,0) :
                    headinputbeginrow=i+1
                if '输出' in bodysheet.cell_value(i,0) :
                    headinputendrow=i
                    headoutputbeginrow=i+1
                if bodysheet.cell_value(i,0)=='ESB报文样例(XML和JSON)':
                    headoutputendrow=i
                    break

            
            for i in range(0,bodysheet.nrows):
                for j in range(0,bodysheet.ncols):
                    resultsheet.write(i,j,bodysheet.cell_value(i,j))
            resultsheet.write(0,col_case,k+'-'+u'全填')
            for i in range(bodyinputbeginrow,bodyinputendrow)+range(headinputbeginrow,headinputendrow):
                resultsheet.write(i,col_case,bodysheet.cell_value(i,col_chinesename))
            for i in range(bodyoutputbeginrow,bodyoutputendrow):
                resultsheet.write(i,col_case,bodysheet.cell_value(i,col_mustinput))
            for i in range(headoutputbeginrow,headoutputendrow):
                resultsheet.write(i,col_case,bodysheet.cell_value(i,col_mustinput+1))
                
            resultsheet.write(0,col_case+1,k+'-'+u'必填')
            for i in range(bodyinputbeginrow,bodyinputendrow)+range(headinputbeginrow,headinputendrow):
                if bodysheet.cell_value(i,col_mustinput)=='Y' or bodysheet.cell_value(i,col_mustinput+1)=='Y':
                    resultsheet.write(i,col_case+1,bodysheet.cell_value(i,col_chinesename))
            for i in range(bodyoutputbeginrow,bodyoutputendrow):
                resultsheet.write(i,col_case+1,bodysheet.cell_value(i,col_mustinput))
            for i in range(headoutputbeginrow,headoutputendrow):
                resultsheet.write(i,col_case+1,bodysheet.cell_value(i,col_mustinput+1))
            num_case+=1
            
            for i in range(bodyinputbeginrow,bodyinputendrow)+range(headinputbeginrow,headinputendrow):
                if bodysheet.cell_value(i,col_mustinput)=='Y' or bodysheet.cell_value(i,col_mustinput+1)=='Y':
                    num_case+=1
                    resultsheet.write(0,col_case+num_case,k+'-'+u'必填项填空值'+'-'+bodysheet.cell_value(i,col_chinesename)+'-'+bodysheet.cell_value(i,col_englishname))
                    for ii in range(bodyinputbeginrow,bodyinputendrow)+range(headinputbeginrow,headinputendrow):
                        if ii==i:continue
                        resultsheet.write(ii,col_case+num_case,bodysheet.cell_value(ii,col_chinesename))
                    for ii in range(bodyoutputbeginrow,bodyoutputendrow):
                        resultsheet.write(ii,col_case+num_case,bodysheet.cell_value(ii,col_mustinput))
                    for ii in range(headoutputbeginrow,headoutputendrow):
                        resultsheet.write(ii,col_case+num_case,bodysheet.cell_value(ii,col_mustinput+1))
    
        resultfilename='excelcases/%sandcases.xls'%filename.split('.xls',1)[0]
        resultwb.save(resultfilename)