==========================================
你可以使用一个循环来遍历所有传递给批处理文件的参数，并逐行打印它们。以下是一个示例代码：

@echo off
setlocal enabledelayedexpansion

set i=1
:loop
if "%~%i"=="" goto end
echo 参数%i%: %~%i
set /a i+=1
goto loop

:end
pause

这个脚本会遍历所有传递给批处理文件的参数，并逐行打印每个参数。你可以将这个代码保存为一个 .bat 文件，然后运行它并传递参数，例如：

mybatch.bat arg1 arg2 arg3

输出将会是：

参数1: arg1
参数2: arg2
参数3: arg3

==========================================
The following usage of the path operator in batch-parameter
substitution is invalid: %~%i"=="" goto end


For valid formats type CALL /? or FOR /?
The syntax of the command is incorrect.

感谢你的反馈！看起来之前的代码有些问题。我们可以使用 FOR 循环来遍历所有传递给批处理文件的参数，并逐行打印它们。以下是一个修正后的示例代码：

@echo off
setlocal enabledelayedexpansion

set i=1
for %%i in (%*) do (
    echo 参数!i!: %%i
    set /a i+=1
)

endlocal
pause

这个脚本会遍历所有传递给批处理文件的参数，并逐行打印每个参数。你可以将这个代码保存为一个 .bat 文件，然后运行它并传递参数，例如：

mybatch.bat arg1 arg2 arg3

输出将会是：

参数1: arg1
参数2: arg2
参数3: arg3
