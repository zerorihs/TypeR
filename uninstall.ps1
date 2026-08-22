# Encodage pour les accents dans la console
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
[Console]::InputEncoding  = [System.Text.Encoding]::UTF8
$OutputEncoding = New-Object System.Text.UTF8Encoding

Clear-Host
Write-Host "+------------------------------------------------------------------+" -ForegroundColor Yellow
Write-Host "|                     TypeR SmartFit Uninstaller                   |" -ForegroundColor Yellow
Write-Host "+------------------------------------------------------------------+" -ForegroundColor Yellow
Write-Host ""
Write-Host "- The extension 'TypeR SmartFit' will be completely removed." -ForegroundColor White
Write-Host "- Close Photoshop before continuing." -ForegroundColor Yellow
Write-Host ""
Read-Host -Prompt "- Press Enter to uninstall..."

$AppData = $env:APPDATA
$TargetDir = Join-Path $AppData "Adobe\CEP\extensions\typertools-smartfit"

if (Test-Path $TargetDir) {
    Remove-Item $TargetDir -Recurse -Force -ErrorAction SilentlyContinue
    Write-Host ""
    Write-Host "+------------------------------------------------------------------+" -ForegroundColor Green
    Write-Host "|                     Uninstallation Complete                      |" -ForegroundColor Green
    Write-Host "+------------------------------------------------------------------+" -ForegroundColor Green
    Write-Host "- 'TypeR SmartFit' has been successfully removed from Photoshop." -ForegroundColor Cyan
} else {
    Write-Host ""
    Write-Host "[!] 'TypeR SmartFit' extension was not found on your system." -ForegroundColor Yellow
}

Write-Host ""
Read-Host -Prompt "- Press Enter to exit..."
