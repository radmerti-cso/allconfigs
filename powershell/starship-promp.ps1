# Add this to the end of your "%USER%\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1"
# If you get an error "running scripts is disabled on this system" run "Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Unrestricted"
Invoke-Expression (&starship init powershell)
