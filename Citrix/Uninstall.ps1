$keys = 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\*',
        'HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*'
 
$app = Get-ItemProperty $keys -ErrorAction SilentlyContinue |
    Where-Object { $_.PSChildName -eq 'CitrixOnlinePluginPackWeb' }
 
if ($app) {
    $exe = $app.UninstallString -replace '^"([^"]+)".*', '$1'
    Start-Process $exe -ArgumentList '/uninstall /cleanup /silent' -Wait
}