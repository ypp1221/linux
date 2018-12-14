#!/bin/bash
:<<EOF

文件：1）普通文件;2）目录；3）伪文件

EOF
files=`find . -name "*.sh"`
echo $files
