Start-Transcript c:\Enable-NetFirewallICMPRule.log;
Set-NetFirewallRule -Name FPS-ICMP4-ERQ-In -Enabled True;