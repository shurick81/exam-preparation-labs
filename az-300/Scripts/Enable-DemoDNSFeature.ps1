Start-Transcript c:\Enable-DemoDNSFeature.log;
Install-WindowsFeature -Name DNS;
Set-NetFirewallRule -Name DNSSrv-DNS-TCP-In -Enabled True;
Set-NetFirewallRule -Name DNSSrv-DNS-UDP-In -Enabled True;
Add-DnsServerPrimaryZone -Name "west02.contoso.com" -ZoneFile "west02.contoso.com.dns"
Add-DnsServerResourceRecordA -ZoneName "west02.contoso.com" -Name test -IPv4Address 10.0.0.1