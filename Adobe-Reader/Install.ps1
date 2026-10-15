$setup = Get-ChildItem "$PSScriptRoot\Reader_de_install.exe" | Select-Object -First 1
Start-Process $setup.FullName -ArgumentList '/sAll /rs /msi EULA_ACCEPT=YES /norestart' -Wait
