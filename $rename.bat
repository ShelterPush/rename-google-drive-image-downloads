@echo off

REM The $ in the name allows this file to be at the top of the directory

REM I want to go from *_* - *.jpg to *_*.jpg

setlocal enabledelayedexpansion
set deletestring=*-*.*
REM This is to make it look for that specific format

for /f "tokens=1,2,* delims=-." %%F in ('dir /b "%deletestring%"') do (
	Ren "%%F-%%G.%%H" "%%F.jpg"
	
)
REM This renames something like firstname_lastname - Firstname Lastname.jpg
REM  to firstname_lastname .jpg
REM The space is there because DOS doesn't like to work with spaces.
endlocal
