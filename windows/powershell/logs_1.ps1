# Add Name of the Logfile (System, Application, etc)
$logFileName = "Application"

# Add Path, needs to end with a backsplash
# saves to Desktop
$path = $env:userprofile + "\Desktop\" 

# do not edit
$exportFileName = $logFileName + (get-date -f yyyyMMdd) + ".evt"
$logFile = Get-WmiObject Win32_NTEventlogFile | Where-Object {$_.logfilename -eq $logFileName}
$logFile.backupeventlog($path + $exportFileName)
