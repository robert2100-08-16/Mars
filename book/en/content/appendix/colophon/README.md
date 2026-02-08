---
doc_type: appendix
---

# Colophon

## About This Book

**The Mars Book** was produced entirely from Markdown source files stored in a
public Git repository. No proprietary word processor was used at any stage.

## Toolchain

| Component | Tool | Version |
|-----------|------|---------|
| Source format | Markdown (CommonMark + YAML frontmatter) | — |
| PDF engine | Pandoc → LuaLaTeX | Pandoc ≥ 3.x |
| Build orchestrator | [GitBook Worker](https://github.com/Rob9999/gitbook-worker) | v2.1.0+ |
| Body font | DejaVu Serif | 2.37 |
| Sans font | DejaVu Sans | 2.37 |
| Mono font | DejaVu Sans Mono | 2.37 |
| Emoji font | Twemoji Mozilla (COLR/CPAL) | — |
| Version control | Git + GitHub | — |
| Archival & DOI | Zenodo (CERN) | — |
| AI assistance | GitHub Copilot (Claude) | — |

## Build Instructions

```bash
# Prerequisites: Python ≥ 3.10, Pandoc, TeX Live (LuaLaTeX)
pip install gitbook-worker

# Build English PDF
cd book/
gitbook-worker run --lang en --profile local

# Build German PDF
gitbook-worker run --lang de --profile local
```

Alternatively, use the provided PowerShell build script:

```powershell
cd book/
.\build-book.ps1 -Lang en
.\build-book.ps1 -Lang de
```

## Source Repository

All source files are available at:
<https://github.com/robert2100-08-16/Mars>

## Typography Notes

The PDF uses DejaVu fonts for broad Unicode coverage across Latin, Greek,
Cyrillic and mathematical symbol ranges. Colour emojis are rendered via the
Twemoji Mozilla font using the COLR/CPAL format supported by LuaLaTeX.

Mathematical notation uses LaTeX's native math typesetting. Chemical formulae
(CO₂, SiO₂, H₂O, etc.) are rendered as Unicode subscripts where supported,
with LaTeX math-mode fallback in the PDF.

## Paper Format

A4, 2.5 cm margins, 11 pt body text, numbered sections, hyperlinked
cross-references and table of contents.

## Version History

| Version | Date | Notes |
|---------|------|-------|
| 1.0.0 | 2026-02-08 | First edition |
