@echo off
setlocal
setlocal enabledelayedexpansion
setlocal enableextensions
set errorlevel=0
mkdir ..\nuget
erase /s ..\nuget\*.nupkg
..\..\Core\packages\NuGet.CommandLine.4.6.2\tools\NuGet.exe pack Microsoft.Bot.Builder.PersonalityChat.nuspec -symbols -properties version=%version%;builder=%builder% -OutputDirectory ..\nuget