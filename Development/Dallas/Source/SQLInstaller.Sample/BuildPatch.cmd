torch -p -xi V101\SQLInstaller.Sample.wixpdb V102\SQLInstaller.Sample.wixpdb -out V102\diff.wixmst
candle Patch.wxs
light Patch.wixobj -out V102\Patch.wixmsp
pyro V102\Patch.wixmsp -out V102\Patch102.msp -t RTM V102\diff.wixmst
REM iexpress /N /Q Upgrade.sed
REM msiexec /p Patch\Patch102.msp /l*vx Patch.log /qb SQLSERVER=myserver SQLDATABASE=mydatabase