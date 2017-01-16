#!/bin/bash
#做的修改：风向没有录进去　时间以Date类存储　气温分成了最高最低
awk -F , '{print "db.weathertest.insert({date: new Date("$1","$2","$3",0,0),situation: \""$4"\",htemp: "$5",ltemp: "$6"})"}' weatherdata_utf8.csv
