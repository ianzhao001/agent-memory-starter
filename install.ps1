param(
    [string]$TargetDir = (Get-Location).Path,
    [switch]$Force
)

$ErrorActionPreference = "Stop"
$RepoZipUrl = if ($env:AGENT_MEMORY_STARTER_URL) {
    $env:AGENT_MEMORY_STARTER_URL
} else {
    "https://github.com/ianzhao001/agent-memory-starter/archive/refs/heads/main.zip"
}

New-Item -ItemType Directory -Force -Path $TargetDir | Out-Null

foreach ($Item in @("AGENTS.md", ".memory", ".gitignore")) {
    $Target = Join-Path $TargetDir $Item
    if ((Test-Path $Target) -and (-not $Force)) {
        Write-Error "$Item already exists in $TargetDir. Review and merge manually, or rerun with -Force to overwrite."
    }
    if ((Test-Path $Target) -and $Force) {
        Remove-Item -Path $Target -Recurse -Force
    }
}

$TempDir = Join-Path ([System.IO.Path]::GetTempPath()) ("agent-memory-starter-" + [System.Guid]::NewGuid().ToString("N"))
New-Item -ItemType Directory -Force -Path $TempDir | Out-Null

try {
    $ZipPath = Join-Path $TempDir "agent-memory-starter.zip"
    Invoke-WebRequest -Uri $RepoZipUrl -OutFile $ZipPath
    Expand-Archive -Path $ZipPath -DestinationPath $TempDir -Force

    $SourceDir = Get-ChildItem -Path $TempDir -Directory -Filter "agent-memory-starter*" | Select-Object -First 1
    if (-not $SourceDir) {
        throw "Could not find extracted Agent Memory Starter directory."
    }

    Copy-Item -Path (Join-Path $SourceDir.FullName "AGENTS.md") -Destination $TargetDir -Force
    Copy-Item -Path (Join-Path $SourceDir.FullName ".memory") -Destination $TargetDir -Recurse -Force
    Copy-Item -Path (Join-Path $SourceDir.FullName ".gitignore") -Destination $TargetDir -Force

    Write-Output "Agent Memory Starter installed in $TargetDir"
    Write-Output "Start a new agent session and ask it to initialize .memory for this workspace."
}
finally {
    Remove-Item -Path $TempDir -Recurse -Force -ErrorAction SilentlyContinue
}
