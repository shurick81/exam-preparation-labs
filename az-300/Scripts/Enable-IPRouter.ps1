Start-Transcript c:\Enable-IPRouter.log;
Set-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters -Name IpEnableRouter -Value 1;
shutdown /r /t 60