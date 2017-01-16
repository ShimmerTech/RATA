#!/bin/bash
#修改 db.******.insert
#跟原文件的处理 时间 拆分了 存入mongodb  Date 类，最后的中文字没读入数据库，但文字可以被倒数第二列的　wfxw（违法行为）　表示
awk -F , '{print "db.illegaltest.insert({jszh: \""$1"\",wfbh: \""$2"\",date: new Date("$3","$4","$5","$6","$7"),wfxw: "$8",wfjf: "$9"})"}' illegaldata_utf8.csv
