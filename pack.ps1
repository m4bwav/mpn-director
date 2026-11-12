# Builds the DLL, assembles the mod folder and makes dist/SwapUnaware-<version>.zip
# holding SwapUnaware/ (what goes in Mods) plus install.cmd for another computer.
# The game's Managed folder comes from -GameManaged, then MPN_MANAGED, then `mpn.py where`.
param([string]$Version = "0.17.1", [string]$GameManaged = $env:MPN_MANAGED)
$ErrorActionPreference = "Stop"
$root = $PSScriptRoot
if (-not $GameManaged) {
    # mpn.py ships with the madnesswright toolkit (github.com/m4bwav/madnesswright): MPN_PY, or a sibling clone.
    $mpn = if ($env:MPN_PY) { $env:MPN_PY } else { Join-Path $root "../madnesswright/skills/madnesswright/scripts/mpn.py" }
    if (-not (Test-Path $mpn)) { throw "mpn.py not found: pass -GameManaged, set MPN_PY, or clone madnesswright next to this repo" }
    $where = python -I $mpn where | ConvertFrom-Json
    if (-not $where.install.install_dir) { throw "game not found: pass -GameManaged <...\Madness Project Nexus_Data\Managed>" }
    $GameManaged = Join-Path $where.install.install_dir "Madness Project Nexus_Data/Managed"
}
dotnet build "$root/src/SwapUnaware.csproj" -c Release -o "$root/build" "-p:GameManaged=$GameManaged" | Out-Host
if ($LASTEXITCODE -ne 0) { throw "build failed" }

$stage = Join-Path $root "dist/stage"
$mod = Join-Path $stage "SwapUnaware"
if (Test-Path $stage) { Remove-Item -Recurse -Force $stage }
New-Item -ItemType Directory -Force (Join-Path $mod "Managed") | Out-Null
Copy-Item "$root/mod/info.txt" $mod
Copy-Item "$root/build/SwapUnaware.dll" (Join-Path $mod "Managed")
Copy-Item "$root/install.cmd" $stage
Copy-Item "$root/README.md" $stage

$zip = Join-Path $root "dist/SwapUnaware-$Version.zip"
if (Test-Path $zip) { Remove-Item -Force $zip }
Compress-Archive -Path "$stage/*" -DestinationPath $zip
Write-Host "Mod folder: $mod"
Write-Host "Zip:        $zip"
