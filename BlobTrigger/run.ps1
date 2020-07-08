# Input bindings are passed in via param block.
param([byte[]] $InputBlob, $TriggerMetadata)

$inputJson = [System.Text.Encoding]::ASCII.GetString($InputBlob)
# Write out the blob name and size to the information log.
Write-Host "PowerShell Blob trigger function Processed blob! Name: $($inputJson) Size: $($InputBlob.Length) bytes"

Push-OutputBinding -Name result -Value $inputJson
