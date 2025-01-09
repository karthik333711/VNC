@echo off
pushd "%~dp0"
md %windir%\vnc
copy /y *.* %windir%\vnc

%windir%\vnc\winvnc -install

netsh advfirewall firewall add rule name="VNC Allow Inbound" action=allow dir=in protocol=tcp localport=5900
netsh advfirewall firewall add rule name="VNC Block Outbound" action=block dir=out protocol=tcp localport=5900



