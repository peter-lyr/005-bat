REM 在Windows批处理文件（.bat）中，可以通过以下几种方式获取输入的参数：
REM
REM 命令行参数：
REM 使用 %1, %2, %3 等变量来获取传递给批处理文件的参数。例如：
REM @echo off
REM echo 第一个参数是：%1
REM echo 第二个参数是：%2
REM pause
REM
REM 运行 mybatch.bat arg1 arg2 时，输出将是：
REM 第一个参数是：arg1
REM 第二个参数是：arg2
REM
REM 手动输入参数：
REM 使用 set /p 命令来提示用户输入参数。例如：
REM @echo off
REM set /p var1=请输入第一个参数：
REM set /p var2=请输入第二个参数：
REM echo 您输入的参数是：%var1% 和 %var2%
REM pause
REM
REM 运行批处理文件时，用户将被提示输入参数。
REM 获取所有参数：
REM 使用 %* 来获取所有传递给批处理文件的参数。例如：
REM @echo off
REM echo 所有参数是：%*
REM pause
REM 以上不好区分带双引号的参数边界
