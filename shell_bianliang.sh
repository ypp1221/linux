#!/bin/bash

your_name="ypp"
echo $your_name
echo ${your_name}

#定义只读变量 readonly
myurl="http://www.baidu.com"
readonly myurl
echo myurl

#删除变量 unset

unset your_name
echo your_name
#此时打印的是"your_name"不是"ypp"

:<<EOF
#类型
#	1）局部变量
#	2）环境变量
#	3）shell变量

#Shell 字符串
#1）单引号，中间不能有变量，
#2）双引号，中间可以有变量，转义字符

EOF
your_name="yangpanpan"
#使用双引号进行拼接
greeting="I am "$your_name" !"
greeting1="I do not${your_name} !"
echo $greeting $greeting1
#使用单引号进行拼接
greeting2='I am'$your_name' !'
greeting3='I do not${your_name} !'
echo $greeting2 $greeting3


#获取字符串的长度
string="abcd"
echo ${#string}

#提取字符串,提取第二个字符串开始截取4个字符
string="runoob is a great site"
echo ${string:1:4}
#print "unoo"

#查找字符i或者o的位置（第一个位置—）
echo `expr index "$string" io`

#shell 数组
array_name=('pnnnn' 'j' 'y' 'a')
echo ${array_name[@]}

#获取数组长度
length=${#array_name[*]}
echo "length is "$length

#向脚本中传递参数
echo "$# parameters" #获取参数长度
echo "$@"	#获取所有参数
