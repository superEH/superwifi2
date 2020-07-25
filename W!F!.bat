@rem bin\windows\bat
@echo off
title W!F!
MODE con: cols=45 lines=10
COLOR 0F
echo.     __      __  _   ___   _ 
echo.     \ \    / / ^| ^| ^| __^| ^| ^|
echo.      \ \/\/ /  ^|_^| ^| _^|  ^|_^|
echo.       \_/\_/   (_) ^|_^|   (_)
echo.    Autor: SEH
echo.    
TIMEOUT /T 5 /nobreak>NUL
mkdir wifi
cd wifi
netsh wlan export profile key=clear
dir *.xml |% {
$xml=[xml] (get-content $_)
Write-Host $xml.WLANProfile.SSIDConfig.SSID.name `t $xml.WLANProfile.MSM.Security.sharedKey.keymaterial
}
cd ..
rmdir -recurse wifi
cls
exit





