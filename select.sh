# 3 3!/bin/sh
#测试字符串是否为空
a="abac"
b="fafa"

if [ "$a" = "$b" ];
then
	echo "相等"
else
	echo "不相等"
fi

#测试数字是否相等
:<<EOF
gt: >
lt: <
ge: >=
le: <=
eq: ==
ne: !=

EOF

c=12
d=13
if [ "$c" -eq "$d" ];then
	echo "$c is not equal $d"
elif [ "$c" -ne "$d" ];then
	echo "$c is equal $d"
fi

#测试文件
:<<EOF

test -a file：判断文件是否存在
test -f file：判断文件是否为常规文件
test -d file：判断是否为目录
test -w/r/x：判断文件是否可写  读  执行

以上如果存在，返回值为0

EOF
string="itest.sh"
if [ -w tesh.sh ];then
	echo $PWD
	echo "file exist"
else
	echo "file is not exist"
fi
#case 语句进行选择判断
str="$string"
case $str in
	"str")
		echo "$str is equal 'str'";;

	"itest.sh")
		echo "$str is equal 'itest.sh'";;
esac
#$(())
result=$((3-4))
echo $result


#for  loop
for value in $(ls)
do
	echo $value
done

#array=(Monday Thesday Wednesday Thursday Friday Saturday Sunday)
array="faaf"
for value in 1 23 4
do
	echo $value
done
i=1
while [ "$i" -lt 10 ]
do
	queare=$((i*i)) 
	echo "$i*$i=$queare"
	i=$(( $i+1 ))
done
#while

