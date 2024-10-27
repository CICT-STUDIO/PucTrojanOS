#开机动画
source bootmain
#判断如果条件为不的话则执行error
if [ -e "return" ]
then
echo -ne ""
else
err=1
source error
fi
if [ -e "name" ]
then
echo -ne ""
else
err=2
source error
fi
if [ -e "mm" ]
then
echo -ne ""
else
err=3
source error
fi
#执行所有功能
for file in func/*
do
source $file
done
#执行内核
source BOOT/boot