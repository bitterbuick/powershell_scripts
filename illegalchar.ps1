$Path = 'C:\Users\AdamFreeman\Downloads\DWHHR 511-O SocialChorus.csv'
$OutCSV = 'C:\Users\AdamFreeman\Downloads\results.csv'
$RegEx = '[^-\w\.@]' # This matches anything that isn't a-z, A-Z, 0-9, or the '-', '_', and '.' characters.  Add any others you need to permit.

$Output = Get-ChildItem -Path $Path -Recurse | Where-Object -FilterScript { $_.Name -match $RegEx } | ForEach-Object {
    
    $out = [PSCustomObject]@{ # Note: add any additional inforamtion you want to caputure here
        Name = $_.Name
        Path = (Split-Path -Path $_.FullName)
        Type = $_.GetType().Name.Replace('Info', '')
    }
    
    Write-Output $out
}

$Output | Export-Csv -Path $OutCSV -NoTypeInformation