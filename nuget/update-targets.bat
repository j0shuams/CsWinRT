@echo off

set cswinrtVersion=1.1.3

echo ************************************
echo [Start] Copy targets files to the %cswinrtVersion% nuget folder
echo ************************************


set sourceDir=c:\gh\cswinrt4\nuget
set destinationBuild=c:\users\jlarkin\.nuget\packages\microsoft.windows.cswinrt\%cswinrtVersion%\build
set destinationBuildTransitive=c:\users\jlarkin\.nuget\packages\microsoft.windows.cswinrt\%cswinrtVersion%\buildTransitive
set plainTargets=Microsoft.Windows.CsWinRT.targets
set authoringTargets=Microsoft.Windows.CsWinRT.Authoring.targets
set authoringTransitiveTargets=Microsoft.Windows.CsWinRT.Authoring.Transitive.targets

echo **********************************
echo * update the nuget\build directory
echo **********************************
robocopy %sourceDir% %destinationBuild% %plainTargets% %authoringTargets% %authoringTransitiveTargets%

echo ********************************************
echo * update the nuget\buildTransitive directory
echo ********************************************
robocopy %sourceDir% %destinationBuildTransitive% %authoringTransitiveTargets%


echo ************************************
echo [The End]
echo ************************************
