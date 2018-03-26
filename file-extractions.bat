@echo off
setlocal enableextensions
for /r %%x in (*.exe) do (
		copy "%%x" ".\rere\"
	)

:xit
pause
exit
