﻿param($minutes = 300)

$myShell = New-Object -com "Wscript.SHell"
Start-Sleep -Seconds 5
$myShell.sendkeys("~")
for ($i=0; $i -lt $minutes; $i++){
    Start-Sleep -Seconds 30
    $myShell.SendKeys("{BS}")
    $myShell.SendKeys("{BS}")
    $myShell.SendKeys("{BS}")
    $myShell.sendkeys("$i")
}