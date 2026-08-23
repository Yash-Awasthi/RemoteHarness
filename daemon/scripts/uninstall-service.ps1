# Stops and unregisters the RemoteHarness tray/daemon autostart.

$ErrorActionPreference = "Stop"
schtasks /End /TN "RemoteHarness" 2>$null
Get-Process RemoteHarnessTray -ErrorAction SilentlyContinue | Stop-Process -Force
schtasks /Delete /F /TN "RemoteHarness"
Write-Host "removed. the daemon is no longer registered to start at logon."
