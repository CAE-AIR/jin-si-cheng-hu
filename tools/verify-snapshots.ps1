param([string]$Root = (Join-Path $PSScriptRoot '..'))
$ErrorActionPreference = 'Stop'
$taskLibraryRoot = [IO.Path]::GetFullPath($Root)
$taskLock = Get-Content -LiteralPath (Join-Path $taskLibraryRoot 'sources.lock.json') -Raw -Encoding UTF8 | ConvertFrom-Json
$taskUtf8 = [Text.UTF8Encoding]::new($false)
$taskFailures = [Collections.Generic.List[string]]::new()
$taskVerified = 0
$taskTotalBytes = 0
foreach ($taskRecord in $taskLock.files) {
    $taskPath = [IO.Path]::GetFullPath((Join-Path $taskLibraryRoot $taskRecord.local_path))
    if (-not $taskPath.StartsWith($taskLibraryRoot + [IO.Path]::DirectorySeparatorChar, [StringComparison]::OrdinalIgnoreCase)) { throw 'Manifest path escapes the library.' }
    if (-not (Test-Path -LiteralPath $taskPath -PathType Leaf)) { $taskFailures.Add('Missing: ' + $taskRecord.local_path); continue }
    $taskBytes = [IO.File]::ReadAllBytes($taskPath)
    $taskHeader = $taskUtf8.GetBytes('blob ' + $taskBytes.Length + [char]0)
    $taskSha1 = [Security.Cryptography.SHA1]::Create()
    try { $taskBlobHash = ([BitConverter]::ToString($taskSha1.ComputeHash([byte[]]($taskHeader + $taskBytes)))).Replace('-', '').ToLowerInvariant() } finally { $taskSha1.Dispose() }
    $taskSha256 = (Get-FileHash -LiteralPath $taskPath -Algorithm SHA256).Hash.ToLowerInvariant()
    if ($taskBytes.Length -ne $taskRecord.bytes -or $taskBlobHash -ne $taskRecord.git_blob_sha -or $taskSha256 -ne $taskRecord.sha256) { $taskFailures.Add('Mismatch: ' + $taskRecord.local_path); continue }
    if ($taskRecord.modified -ne $false) { $taskFailures.Add('Snapshot is marked modified: ' + $taskRecord.local_path); continue }
    $taskVerified++
    $taskTotalBytes += $taskBytes.Length
}
if ($taskLock.files.Count -ne $taskLock.source_file_count -or $taskTotalBytes -ne $taskLock.source_total_bytes) { $taskFailures.Add('Manifest totals do not match.') }
if ($taskFailures.Count -gt 0) { $taskFailures | ForEach-Object { Write-Output $_ }; throw 'Source snapshot verification failed.' }
[pscustomobject]@{ result = 'PASS'; source_files = $taskVerified; source_bytes = $taskTotalBytes; projects = $taskLock.project_count } | ConvertTo-Json -Compress
