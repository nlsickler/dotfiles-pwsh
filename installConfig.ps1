$profileName = "Microsoft.PowerShell_profile.ps1"
$ompTheme = "nlsicklerTheme.omp.json"

$destinationTheme = Join-Path (Split-Path -Path $PROFILE -Parent) -ChildPath $ompTheme

Write-Host $destinationTheme

if ((Test-Path -path $PROFILE)) {Remove-Item $PROFILE}
if ((Test-Path -path $destinationTheme)) {Remove-Item $destinationTheme}

Copy-Item $PSScriptRoot/$profileName $PROFILE
Copy-Item $PSScriptRoot/$ompTheme $destinationTheme

. $PROFILE
