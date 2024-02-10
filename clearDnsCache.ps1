$exists = Get-DnsClientCache | Out-String

$entryArray = $exists.split([Environment]::NewLine, [System.StringSplitOptions]::RemoveEmptyEntries)

if ($entryArray.length -gt 10) {

	Clear-DnsClientCache
}
