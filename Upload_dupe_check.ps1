$CSV = Import-Csv "C:\check.csv"

$CSV.id | Group-Object | Where-Object {$_.Count -gt 1}