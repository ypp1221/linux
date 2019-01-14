#linux中文件和文件夹的区别：
#使用ls -l查询得出

#-rw-r--r-- 1 ypp ypp 100492 1月   9 15:55 val.txt
#第一个字符为‘-’的是文件，为‘d'的是文件夹
#1)迭代的统计出当前文件夹下所有文件夹和子文件的数量
ls -lR|grep "^-" |wc -l
#2)查询opencv安装路径，其实就是查找文件名
sudo find / -iname "*opencv*"
#解压xx.tar.gz
tar -zxvf xx.tar.gz
#解压xx.tar.bz2
tar -jxvf xx.tar.bz2

#硬链接和软连接的区别
1)硬链接，不能跨分区，不能链接文件夹,如果删除一个链接，不会影响
该节点的源文件和其他硬链接
link source new_link 
2)软连接，可以跨分区，也能链接文件夹，删除源文件，其下所有的软
链接都不可用
link -s source new_link

#grep 的使用
1)查找python版本
sudo dpkg -l | grep -i python(dpkg -l列出安装的.deb包，-i是忽略大小写)
2)搜索和过滤文件
sudo grep -v "#" filepath(-v是输出不匹配项)
3)查找所有mp3文件,艺术家jayZ的文件
sudo find . -name ".mp3" |grep -i "jayZ"|grep -vi "remix"

注释：grep -vi "remix"是忽略大小写的查找不包含"remix"的匹配项
