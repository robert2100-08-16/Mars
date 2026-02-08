---
doc_type: appendix
---

# Kolophon

## Über dieses Buch

**Das Mars Buch** wurde vollständig aus Markdown-Quelldateien erzeugt, die in
einem öffentlichen Git-Repository gespeichert sind. In keiner Phase wurde ein
proprietäres Textverarbeitungsprogramm verwendet.

## Werkzeugkette

| Komponente | Werkzeug | Version |
|------------|----------|---------|
| Quellformat | Markdown (CommonMark + YAML-Frontmatter) | — |
| PDF-Engine | Pandoc → LuaLaTeX | Pandoc ≥ 3.x |
| Build-Orchestrator | [GitBook Worker](https://github.com/Rob9999/gitbook-worker) | v2.1.0+ |
| Grundschrift | DejaVu Serif | 2.37 |
| Serifenlose | DejaVu Sans | 2.37 |
| Festbreitenschrift | DejaVu Sans Mono | 2.37 |
| Emoji-Schrift | Twemoji Mozilla (COLR/CPAL) | — |
| Versionskontrolle | Git + GitHub | — |
| Archivierung & DOI | Zenodo (CERN) | — |
| KI-Unterstützung | GitHub Copilot (Claude) | — |

## Build-Anleitung

```bash
# Voraussetzungen: Python ≥ 3.10, Pandoc, TeX Live (LuaLaTeX)
pip install gitbook-worker

# Deutsches PDF bauen
cd book/
gitbook-worker run --lang de --profile local

# Englisches PDF bauen
gitbook-worker run --lang en --profile local
```

Alternativ das mitgelieferte PowerShell-Build-Script verwenden:

```powershell
cd book/
.\build-book.ps1 -Lang de
.\build-book.ps1 -Lang en
```

## Quell-Repository

Alle Quelldateien sind verfügbar unter:
<https://github.com/robert2100-08-16/Mars>

## Typographische Hinweise

Das PDF verwendet DejaVu-Schriften für breite Unicode-Abdeckung über
Lateinisch, Griechisch, Kyrillisch und mathematische Symbolbereiche.
Farb-Emojis werden über die Twemoji-Mozilla-Schrift im COLR/CPAL-Format
gerendert, das von LuaLaTeX unterstützt wird.

Mathematische Notation nutzt LaTeX' native Formelsatzfunktionen. Chemische
Formeln (CO₂, SiO₂, H₂O usw.) werden als Unicode-Subscripts dargestellt,
mit LaTeX-Math-Mode-Fallback im PDF.

## Papierformat

A4, 2,5 cm Ränder, 11 pt Grundschrift, nummerierte Abschnitte, verlinkte
Querverweise und Inhaltsverzeichnis.

## Versionsgeschichte

| Version | Datum | Anmerkungen |
|---------|-------|-------------|
| 1.0.0 | 2026-02-08 | Erstausgabe |
