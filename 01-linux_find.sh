#linux中文件和文件夹的区别：
#使用ls -l查询得出

#-rw-r--r-- 1 ypp ypp 100492 1月   9 15:55 val.txt
#第一个字符为‘-’的是文件，为‘d'的是文件夹
#1)迭代的统计出当前文件夹下所有文件夹和子文件的数量
ls -lR|grep "^-" |wc -l
#2)查询opencv安装路径，其实就是查找文件名
sudo find / -iname "*opencv*"

