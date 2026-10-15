$keys = 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\*',
        'HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*'
 
function Get-DotNet8 {
    Get-ItemProperty $keys -ErrorAction SilentlyContinue | Where-Object {
        $_.DisplayName -match '^Microsoft (\.NET|ASP\.NET|Windows Desktop).* 8\.\d+\.\d+' -and
        $_.DisplayName -notmatch '\.NET Framework|\.NET Host'
    }
}
 
# 1. Bundles (exe-Installer) zuerst - die entfernen ihre MSI-Pakete mit
Get-DotNet8 | Where-Object { $_.UninstallString -notmatch 'msiexec' } | ForEach-Object {
    $exe = $_.UninstallString -replace '^"([^"]+)".*', '$1'
    Start-Process $exe -ArgumentList '/uninstall /quiet /norestart' -Wait
}
 
# 2. Uebrig gebliebene MSI-Pakete
Get-DotNet8 | Where-Object { $_.UninstallString -match 'msiexec' } | ForEach-Object {
    Start-Process msiexec.exe -ArgumentList "/x $($_.PSChildName) /qn /norestart" -Wait
}