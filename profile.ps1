$env:STARSHIP_CONFIG = "$HOME\dotfiles\starship.toml"
Invoke-Expression (&starship init powershell)
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Invoke-Expression (& { (zoxide init powershell | Out-String) })

# Terminal-Icons se carga solo la primera vez que usas ls
Remove-Item Alias:ls -Force -ErrorAction SilentlyContinue
function ls {
    if (-not (Get-Module Terminal-Icons)) { Import-Module Terminal-Icons }
    Get-ChildItem @args
}

