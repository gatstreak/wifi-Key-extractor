@echo off 
VER
echo.
echo Welcome to wifi password extractor tool this will allow you to retrieve passwords 
echo from networks you have had access to prior
TIMEOUT /T 3 /NOBREAK >null
CLS

:TOP
CLS
netsh wlan show profiles
Set/p WIFINAME=wifi Name:
cls
netsh wlan show profile name="%WIFINAME%" key=clear
PAUSE
goto TOP