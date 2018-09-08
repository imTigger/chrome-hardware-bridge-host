:: Copyright (c) 2018 Tiger-Workshop Limited. All rights reserved.

:: Deletes the entry created by install_host.bat
REG DELETE "HKCU\Software\Google\Chrome\NativeMessagingHosts\com.tigerworkshop.chrome.hardwarebridge" /f
REG DELETE "HKLM\Software\Google\Chrome\NativeMessagingHosts\com.tigerworkshop.chrome.hardwarebridge" /f
