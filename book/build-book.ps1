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

# ── Helper: Strip YAML frontmatter and sanitise --- rules ────────────────
# Pandoc interprets --- lines as YAML metadata block delimiters. When
# gitbook-worker merges chapters into a single Markdown file, leftover
# frontmatter blocks and --- horizontal rules trigger YAML parse errors.
# This function:
#   1. Removes the opening YAML frontmatter block (first ---…--- pair)
#   2. Replaces remaining standalone --- lines with *** (valid HR in MD)
function Sanitise-ChapterContent([string]$RawContent) {
    $lines = $RawContent -split "`r?`n"
    $out = [System.Collections.Generic.List[string]]::new()
    $state = "start"   # start | in-frontmatter | body

    foreach ($line in $lines) {
        switch ($state) {
            "start" {
                if ($line -match '^\s*$') {
                    # skip leading blank lines before frontmatter
                    continue
                }
                elseif ($line -match '^---\s*$') {
                    $state = "in-frontmatter"
                    continue
                }
                else {
                    # no frontmatter — emit line and switch to body
                    $state = "body"
                    $out.Add($line)
                }
            }
            "in-frontmatter" {
                if ($line -match '^---\s*$') {
                    $state = "body"
                    continue
                }
                # skip frontmatter lines
            }
            "body" {
                # Replace standalone --- with *** to avoid YAML ambiguity
                if ($line -match '^---\s*$') {
                    $out.Add("***")
                }
                else {
                    $out.Add($line)
                }
            }
        }
    }
    return ($out -join "`n")
}

# ── Helper: Copy one chapter (with sanitisation) ────────────────────────
function Copy-Chapter([string]$Source, [string]$LangRoot, [string]$RelDest) {
    if ([string]::IsNullOrWhiteSpace($RelDest)) { return }
    $dest = Join-Path $LangRoot $RelDest
    $dir = Split-Path $dest -Parent
    if (-not (Test-Path $dir)) { New-Item -ItemType Directory -Path $dir -Force | Out-Null }

    # Read, strip frontmatter, replace --- rules, write
    $raw = Get-Content -Path $Source -Raw -Encoding UTF8
    $clean = Sanitise-ChapterContent $raw
    [System.IO.File]::WriteAllText($dest, $clean, [System.Text.UTF8Encoding]::new($false))

    Write-Host "  OK  $RelDest  (frontmatter stripped)" -ForegroundColor Green
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

    # Disable ERDA CJK/Indic/Ethiopic fallback fonts (not needed for DE/EN)
    $env:ERDA_ENABLE_LUA_FALLBACK = "0"

    # Use the explicit invocation pattern recommended by gitbook-worker docs:
    #   python -m gitbook_worker.tools.workflow_orchestrator run
    #     --root <book-root> --manifest <lang>/publish.yml
    #     --profile local --content-config content.yaml --lang <lang>
    $pythonExe = "c:\Python311\python.exe"
    if (-not (Test-Path $pythonExe)) {
        # Fallback: use python from PATH
        $pythonExe = "python"
    }

    $bookDir = $script:BookRoot
    $manifest = "$LangId/publish.yml"

    & $pythonExe -m gitbook_worker.tools.workflow_orchestrator run `
        --root $bookDir `
        --manifest $manifest `
        --profile local `
        --content-config content.yaml `
        --lang $LangId

    if ($LASTEXITCODE -ne 0) {
        Write-Error "gitbook-worker exited with code $LASTEXITCODE for [$LangId]"
    }
    else {
        $pdfDir = Join-Path $bookDir "$LangId\publish"
        Write-Host "PDF(s) written to: $pdfDir" -ForegroundColor Green
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
