$keys = 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\*',
        'HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*'
 
Get-ItemProperty $keys -ErrorAction SilentlyContinue |
    Where-Object { $_.DisplayName -like '7-Zip*' } |
    ForEach-Object {
        if ($_.UninstallString -like '*msiexec*') {
            Start-Process msiexec.exe -ArgumentList "/x $($_.PSChildName) /qn /norestart" -Wait
        } else {
            Start-Process $_.UninstallString.Trim('"') -ArgumentList '/S' -Wait
        }
    }