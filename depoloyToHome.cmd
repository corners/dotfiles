@echo off

setLocal EnableDelayedExpansion


set target=%HOMEPATH%

cd /d %~dp0
set source=%cd%

xcopy vim %target%\vimfiles /EIVY
mkdir %target%\vimfiles\_backup
mkdir %target%\vimfiles\_temp

xcopy vimrc %target%\.vimrc

