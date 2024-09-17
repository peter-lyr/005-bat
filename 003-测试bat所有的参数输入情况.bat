@echo off
setlocal enabledelayedexpansion

set i=1
for %%i in (%*) do (
  echo 参数!i!: │%%i│
  set /a i+=1
)

endlocal

REM echo 所有参数是：%*

..\002-python\008-在003-测试bat所有的参数输入情况.bat中调用，测试bat的参数.py %*

exit /b

1. 单引号不能作为参数的引号，双引号才行

结论：
1. 不太好把握哪些特殊参数该怎么传入才合适
2. 还是不管是什么命令，都先把他们及他们的参数的先写到一个文件里
3. 再调用python文件，在里面去读这个文件，再去执行
