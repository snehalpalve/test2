$metadataUri = "http://169.254.169.254/metadata/instance?api-version=2021-02-01"
$metadata = Invoke-RestMethod -Headers @{"Metadata"="true"} -Method GET -UseBasicParsing -Uri $metadataUri
$metadataJson = $metadata | ConvertTo-Json -Depth 64
Write-Output $metadataJson