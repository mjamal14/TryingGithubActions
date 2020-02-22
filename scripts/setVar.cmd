@echo off
setlocal enabledelayedexpansion
echo argument is %1
for %%N in (1 2 3 4) do (
   set number=%%N
   echo number=!number!
   )
