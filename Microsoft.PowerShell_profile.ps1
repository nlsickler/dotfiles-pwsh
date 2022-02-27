$ompTheme = "nlsicklerTheme.omp.json"
$config = Join-Path (Split-Path -Path $PROFILE -Parent) -ChildPath $ompTheme

oh-my-posh --init --shell pwsh --config $config | Invoke-Expression
