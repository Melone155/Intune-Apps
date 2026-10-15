$setup = Get-ChildItem "CitrixWorkspaceApp*.exe" | Select-Object -First 1
Start-Process $setup.FullName -ArgumentList '/silent /noreboot' -Wait
 