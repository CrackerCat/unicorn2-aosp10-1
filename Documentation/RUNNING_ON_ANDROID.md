## 目前成果
此脚本是linux脚本,windows下不可用
前提条件, 保证你的手机是root状态, 而且此刻手机正插在电脑上  
走完编译之后[Documentation/COMPILE.md](Documentation/COMPILE.md)

进入build文件夹, 给adb.sh一个权限  
`chmod a+x ./adb.sh`  
然后`./adb.sh`会推送至你的`/data/local/tmp/build`目录并会得到测试结果(具体操作请查看adb.sh脚本)  
如果没有root权限会有可能导致推送不进去
