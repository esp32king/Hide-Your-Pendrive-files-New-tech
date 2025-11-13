
@ECHO OFF
title Folder Locker
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST Krishna goto MDLOCKER
:CONFIRM
echo Do you want to lock folder? (Y/N)
set /p "cho=>"
if %cho%==Y goto LOCK
if %cho%==y goto LOCK
if %cho%==N goto END
if %cho%==n goto END
echo Wrong choice.
goto CONFIRM
:LOCK
ren Krishna "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Folder locked 
goto End
:UNLOCK
echo Type Folder Password for unlock:
set/p "pass=>"
if NOT %pass%==Kaliya goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Krishna
echo Folder unlocked
goto End
:FAIL
echo Wrong password
goto end
:MDLOCKER
md Krishna
echo Krishna folder created
goto End
:End
