#coding:utf8
import xlrd 
import xlwt 
import os

dirname='template/interfacefiles/'
filenamelist=os.listdir(dirname)
# filename=u'template/广州银行ESB项目_字段映射_网络信贷系统_V1.3.4.xls'
for filename in filenamelist:
    wb=xlrd.open_workbook(dirname+filename)
    print(str(wb.sheet_names()).decode('unicode-escape'))
    sheetnames=wb.sheet_names()
    indexsheet=wb.sheet_by_name(u'索引')
    indexdict={}
    for i in range(1,indexsheet.nrows):
        indexdict[indexsheet.cell_value(i,0)]=indexsheet.cell_value(i,2)
    print(str(indexdict).decode('unicode-escape'))
    headsheet=wb.sheet_by_name(u'标准报文头')
    
    resultwb=xlwt.Workbook()
    
    for k in wb.sheet_names():
        if 'OCM' in k:
            bodysheet=wb.sheet_by_name(k)
            try:
                resultsheet=resultwb.add_sheet(k+'-'+indexdict[k])
            except:
                resultsheet=resultwb.add_sheet(k)
            for i in range(0,bodysheet.nrows):
                for j in range(0,bodysheet.ncols):
                    resultsheet.write(i,j,bodysheet.cell_value(i,j))
            for i in range(0,headsheet.nrows):
                for j in range(0,headsheet.ncols):
                    resultsheet.write(i+bodysheet.nrows+1,j,headsheet.cell_value(i,j))
    
    resultfilename='step1/%saddhead.xls'%filename.split('.xls',1)[0]
    print(resultfilename)
    resultwb.save(resultfilename)
    