#Write-Output('Hello World')
#Read-Host('Press any key to continue...')

Write-Output "These are the top 10 processes with the highest CPU usage: "
Get-Process | Sort CPU -descending | Select -first 10 -Property ID,ProcessName,CPU | format-table -autosize

$process = read-host "What process would you like to stop?"
Stop-Process -Name $process -Confirm