:: Copyright (c) 2016 Tiger-Workshop Limited. All rights reserved.

:: Change HKCU to HKLM if you want to install globally.
:: %~dp0 is the directory containing this bat script and ends with a backslash.
REG ADD "HKLM\Software\Google\Chrome\NativeMessagingHosts\com.tigerworkshop.chrome.hardwarebridge" /ve /t REG_SZ /d "%~dp0com.tigerworkshop.chrome.hardwarebridge-win.json" /f
REG ADD "HKCU\Software\Google\Chrome\NativeMessagingHosts\com.tigerworkshop.chrome.hardwarebridge" /ve /t REG_SZ /d "%~dp0com.tigerworkshop.chrome.hardwarebridge-win.json" /f
