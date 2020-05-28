foreach($line in Get-Content .\IPs.txt) {

   $port=$Args[0]

   write-host "Connecting to $line on port $port"

try {
  $socket = new-object System.Net.Sockets.TcpClient($line, $port)
} catch [Exception] {
  write-host $_.Exception.GetType().FullName
  write-host $_.Exception.Message
}

write-host "Connected.`n"

}

exit 0
