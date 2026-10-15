$setup = Get-ChildItem "7z*.exe" | Select-Object -First 1
Start-Process $setup.FullName -ArgumentList '/S' -Wait