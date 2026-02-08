<#
.SYNOPSIS
    Collects the latest Markdown sources from the Mars repository into the
    GitBook Worker book/ workspace and optionally runs the PDF pipeline.

.DESCRIPTION
    This script copies the newest version of each document from its canonical
    source location (Habitats/, Robotics/, publish/) into the GitBook Worker
    content tree (book/<lang>/content/chapters/...).  It then invokes
    gitbook-worker to produce the PDF.

.PARAMETER Lang
    Language to build: "en", "de", or "all" (default: "all").

.PARAMETER SkipBuild
    Only copy content without running the PDF pipeline.

.EXAMPLE
    .\build-book.ps1 -Lang en
    .\build-book.ps1 -Lang de
    .\build-book.ps1                   # builds both
    .\build-book.ps1 -SkipBuild        # copy only, no PDF
#>
[CmdletBinding()]
param(
    [ValidateSet("en", "de", "all")]
    [string]$Lang = "all",

    [switch]$SkipBuild
)

$ErrorActionPreference = "Stop"

# ── Paths ──────────────────────────────────────────────────────────────────
$BookRoot = $PSScriptRoot                                       # book/
$RepoRoot = (Resolve-Path (Join-Path $BookRoot "..")).Path      # Mars/
$Habitats = Join-Path $RepoRoot "Habitats\MarsGummiHaus"
$Publish = Join-Path $RepoRoot "publish\habitats"
$Robotics = Join-Path $RepoRoot "Robotics"

# ── Source -> Destination Mapping ─────────────────────────────────────────
# Format: "Src|EnDest|DeDest"  (empty string = skip for that language)

$MappingLines = @(
    # Part I: Mars Habitats
    "$Publish\mars-gummi-haus\docs\Design_Rubber-Glass_House_Mars_EN.md|chapters\design-rubber-glass-house\README.md|"
    "$Publish\mars-gummi-haus\docs\Entwurf_Gummi-Glashaus_Mars_DE.md||chapters\entwurf-gummi-glashaus\README.md"
    "$Publish\mars-gummi-haus\docs\Varianten_Gummi-Glashaus_Mars_EN.md|chapters\variants-rubber-glass-house\README.md|"
    "$Publish\mars-gummi-haus\docs\Varianten_Gummi-Glashaus_Mars_DE.md||chapters\varianten-gummi-glashaus\README.md"
    "$Habitats\Design Improvements for the Mars Rubber-Glass House v2.md|chapters\design-improvements-v2\README.md|chapters\design-verbesserungen-v2\README.md"
    "$Publish\mars-gummi-haus\docs\Cost_Estimation_Mars_Project_EN.md|chapters\cost-estimation\README.md|chapters\kostenschaetzung\README.md"
    "$Publish\mars-gummi-haus\docs\The_Peoples_1000m2_Rubber-Glass_House_on_Mars_EN.md|chapters\the-peoples-house\README.md|"
    # Part II: Biomimetic Structures
    "$Publish\three-step-evolution-towards-biomimetic-and-self-growing-structures\docs\Three-Step Evolution Towards Biomimetic and Self-Growing Structures.md|chapters\three-step-evolution\README.md|chapters\drei-stufen-evolution\README.md"
    # Part III: Mars Robotics
    "$Robotics\Mars Field Laboratories Integrating Autonomous Legged Robots and Cooperative Robotic Clusters_v1.2.md|chapters\mars-field-laboratories\README.md|chapters\mars-feldlabore\README.md"
)

# ── Helper: Copy one chapter ─────────────────────────────────────────────
function Copy-Chapter([string]$Source, [string]$LangRoot, [string]$RelDest) {
    if ([string]::IsNullOrWhiteSpace($RelDest)) { return }
    $dest = Join-Path $LangRoot $RelDest
    $dir = Split-Path $dest -Parent
    if (-not (Test-Path $dir)) { New-Item -ItemType Directory -Path $dir -Force | Out-Null }
    Copy-Item -Path $Source -Destination $dest -Force
    Write-Host "  OK  $RelDest" -ForegroundColor Green
}

# ── Collect content ──────────────────────────────────────────────────────
function Collect-Content([string]$LangId) {
    $langRoot = Join-Path $script:BookRoot "$LangId\content"
    Write-Host ""
    Write-Host "Collecting content for [$LangId] ..." -ForegroundColor Cyan

    foreach ($line in $script:MappingLines) {
        $parts = $line.Split("|")
        $src = $parts[0]
        $enDest = $parts[1]
        $deDest = $parts[2]

        if (-not (Test-Path $src)) {
            Write-Warning "Source not found, skipping: $src"
            continue
        }

        $rel = if ($LangId -eq "en") { $enDest } else { $deDest }
        Copy-Chapter -Source $src -LangRoot $langRoot -RelDest $rel
    }
}

# ── Build PDF ────────────────────────────────────────────────────────────
function Build-Pdf([string]$LangId) {
    Write-Host ""
    Write-Host "Building PDF for [$LangId] ..." -ForegroundColor Yellow
    Push-Location $script:BookRoot
    try {
        & gitbook-worker run --lang $LangId --profile local
        if ($LASTEXITCODE -ne 0) {
            Write-Error "gitbook-worker exited with code $LASTEXITCODE"
        }
        else {
            $pdfDir = Join-Path $script:BookRoot "$LangId\publish"
            Write-Host "PDF(s) written to: $pdfDir" -ForegroundColor Green
        }
    }
    finally {
        Pop-Location
    }
}

# ── Main ─────────────────────────────────────────────────────────────────
$langs = if ($Lang -eq "all") { @("en", "de") } else { @($Lang) }

foreach ($l in $langs) {
    Collect-Content -LangId $l
    if (-not $SkipBuild) {
        Build-Pdf -LangId $l
    }
}

Write-Host ""
Write-Host "Done." -ForegroundColor Cyan
