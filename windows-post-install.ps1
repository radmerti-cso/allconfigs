# install package manager scoop
iwr -useb get.scoop.sh | iex

# install starship cross-shell prompt
scoop install starship

# setup Python Development Master (PDM) in PowerShell
# Create a directory to store completion scripts
mkdir $PROFILE\..\Completions
echo @'

# initialize auto completions for Python Development Master (PDM)
Get-ChildItem "$PROFILE\..\Completions\" | ForEach-Object {
    . $_.FullName
}
'@ | Out-File -Append -Encoding utf8 $PROFILE
# Generate script
Set-ExecutionPolicy Unrestricted -Scope CurrentUser
pdm completion powershell | Out-File -Encoding utf8 $PROFILE\..\Completions\pdm_completion.ps1
