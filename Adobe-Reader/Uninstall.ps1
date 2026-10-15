$keys = 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\*',
        'HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*'
 
Get-ItemProperty $keys -ErrorAction SilentlyContinue |
    Where-Object { $_.DisplayName -like 'Adobe Acrobat*' } |
    ForEach-Object {
        Start-Process msiexec.exe -ArgumentList "/x $($_.PSChildName) /qn /norestart" -Wait
    }