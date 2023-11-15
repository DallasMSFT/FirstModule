

# Dot source all classes in all ps1 files located in the module folder
$AllScripts = Get-ChildItem -Path $PSScriptRoot\Classes\*.ps1 -Exclude *.tests.ps1, *profile.ps1  -Recurse

$AllScripts | ForEach-Object {
    Write-Verbose "Processing class: $($_.FullName)"
    . $_.FullName
}


# Dot source all functions in all ps1 files located in the module folder
$AllScripts = Get-ChildItem -Path $PSScriptRoot\Functions\*.ps1 -Exclude *.tests.ps1, *profile.ps1  -Recurse

$AllScripts | ForEach-Object {
    Write-Verbose "Processing function: $($_.FullName)"
    . $_.FullName
}
