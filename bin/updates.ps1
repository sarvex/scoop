scoop update
$status = scoop status
ForEach ($line in $($status -split "`r`n")) {
  $line = $line.TrimStart().Split(':')[0].TrimEnd()
  Invoke-Expression -Command "scoop update $line"
  Invoke-Expression -Command "sudo scoop update $line -g"
}
Start-Sleep -Seconds 10
