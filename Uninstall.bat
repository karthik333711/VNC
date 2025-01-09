@echo off

:: Uninstall the VNC service
%windir%\vnc\winvnc -uninstall

:: Remove the firewall rule allowing VNC traffic on port 5901
netsh advfirewall firewall delete rule name=vnc