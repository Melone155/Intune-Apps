$setup = Get-ChildItem "windowsdesktop-runtime-8.0.32-win-x86.exe" | Select-Object -First 1
Start-Process $setup.FullName -ArgumentList '/passive /install /norestart' -Wait

exit $setup.ExitCode