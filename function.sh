#!/bin/bash


#参数不需要显示传递，直接用就行
sayHello()
{
echo "Hello world"$1
return "$2"
}
sayHello yangpanpan 3

length(){
	str=$1
	result=0
	if [ "$str" != "" ];then
		result=${#str}
	fi
	echo $result
}

len=$(length "fafaf")
echo "the string's length is $len"
#数组传递参数
func()
{
	echo "number of elements is $#"
	while [ $# -gt 0 ]
	
	do
		echo "$1"
		shift
	done
}
a=(a b "c d")
func "${a[@]}"
#通过循环遍历数组
array=(Monday Thesday Wednesday Thursday Friday Thursday Sunday)
for value in ${array[*]}
do
	echo "${value}"
done
k=${#array[@]}
echo $k
for ((i=0;i<$k;i++))
do
	echo ${array[$i]}
done

#数组切片
echo ${array[@]:1:4}
#将数组元素替换，并赋值给新的数组
s=(${array[@]/Thesday/星期二})
echo "the result is ${s[*]}"
#数组的删除  unset
:<<EOF
1)加载文件内容到数组中
2)数组的链接 s=("array1[@]" "array2[@]")
EOF
content=(`cat "tesh.sh"`)
for i in ${content[@]}
do
	echo $i
done


