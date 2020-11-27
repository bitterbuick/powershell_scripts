function Get-IPGeolocation
{
    Param
    (
        [string]$IPAddress
    )
 
    $request = Invoke-WebRequest -Method Get -Uri "https://ipapi.co/$IPAddress"
 
    $response.InputFields | Where-Object {
    $_.name -like "* city*"
    } | Select-Object Name, City
}