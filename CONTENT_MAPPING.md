# Content Mapping — Book Chapter Population

> How source documents flow into the book chapter tree.

This document describes the mapping between **canonical source locations**
in the repository and their **destination directories** inside the
`book/<lang>/content/chapters/` tree.

---

## Overview

The Mars repository contains three kinds of content directories:

| Directory | Purpose | Versioned in Git? |
|-----------|---------|:-----------------:|
| `Habitats/MarsGummiHaus/` | Active working documents (latest drafts) | ✅ |
| `Robotics/` | Active working documents (robotics papers) | ✅ |
| `published/<topic>/<DOI>/` | Archival copies of Zenodo-published versions | ✅ |
| `book/<lang>/content/chapters/*/` | Topic READMEs, DOI appendices (structure) | ✅ |
| `book/<lang>/content/chapters/*/design/` etc. | Build-populated sub-chapters | ❌ (`.gitignore`) |

The **build script** `book/build-book.ps1` copies source documents into the
sub-chapter directories at build time, stripping YAML frontmatter and
sanitising horizontal rules for Pandoc compatibility.

---

## Chapter Structure

```
book/<lang>/content/chapters/
├── README.md                         ← Chapter index (versioned)
│
├── 1-mars-rubber-glass-house/        ← Topic 1 (EN) / 1-mars-gummi-glashaus (DE)
│   ├── README.md                     ← Topic overview (versioned)
│   ├── design/README.md              ← Build-populated from source
│   ├── variants/README.md            ← Build-populated from source
│   ├── v2/README.md                  ← Build-populated from source
│   ├── design-improvements/README.md ← Build-populated from source
│   ├── cost-estimation/README.md     ← Build-populated from source
│   ├── the-peoples-house/README.md   ← Build-populated (EN only)
│   └── 1.A-appendix-doi-*/           ← DOI appendix (versioned)
│       ├── README.md
│       ├── 10.5281-zenodo.16493055/  ← Published docs + abstract
│       └── 10.5281-zenodo.18526534/  ← Published docs + abstract
│
├── 2-three-step-evolution/           ← Topic 2 (EN) / 2-drei-stufen-evolution (DE)
│   ├── README.md                     ← Topic overview (versioned)
│   ├── article/README.md             ← Build-populated from source
│   └── 2.A-appendix-doi-*/           ← DOI appendix (versioned)
│       └── 10.5281-zenodo.16540444/
│
└── 3-mars-field-laboratories/        ← Topic 3 (EN) / 3-mars-feldlabore (DE)
    ├── README.md                     ← Topic overview (versioned)
    ├── article/README.md             ← Build-populated from source
    └── 3.A-appendix-doi-*/           ← DOI appendix (versioned)
        └── 10.5281-zenodo.15455156/
```

---

## Source → Destination Mapping

### Topic 1: Mars Rubber-Glass House / Mars Gummi-Glashaus

| Source File | EN Destination | DE Destination |
|-------------|----------------|----------------|
| `published/habitats/mars-gummi-haus/10.5281-zenodo.16493055/Design_Rubber-Glass_House_Mars_EN.md` | `chapters/1-mars-rubber-glass-house/design/README.md` | — |
| `published/habitats/mars-gummi-haus/10.5281-zenodo.16493055/Entwurf_Gummi-Glashaus_Mars_DE.md` | — | `chapters/1-mars-gummi-glashaus/entwurf/README.md` |
| `published/habitats/mars-gummi-haus/10.5281-zenodo.16493055/Varianten_Gummi-Glashaus_Mars_EN.md` | `chapters/1-mars-rubber-glass-house/variants/README.md` | — |
| `published/habitats/mars-gummi-haus/10.5281-zenodo.16493055/Varianten_Gummi-Glashaus_Mars_DE.md` | — | `chapters/1-mars-gummi-glashaus/varianten/README.md` |
| `Habitats/MarsGummiHaus/Design Improvements for the Mars Rubber-Glass House v2.md` | `chapters/1-mars-rubber-glass-house/design-improvements/README.md` | `chapters/1-mars-gummi-glashaus/design-verbesserungen/README.md` |
| `Habitats/MarsGummiHaus/The 1000 m² Mars Rubber-Glass House v2.md` | `chapters/1-mars-rubber-glass-house/v2/README.md` | — |
| `Habitats/MarsGummiHaus/Das 1000 m² Mars Gummi-Glashaus v2.md` | — | `chapters/1-mars-gummi-glashaus/v2/README.md` |
| `published/habitats/mars-gummi-haus/10.5281-zenodo.16493055/Cost_Estimation_Mars_Project_EN.md` | `chapters/1-mars-rubber-glass-house/cost-estimation/README.md` | `chapters/1-mars-gummi-glashaus/kostenschaetzung/README.md` |
| `published/habitats/mars-gummi-haus/10.5281-zenodo.16493055/The_Peoples_1000m2_Rubber-Glass_House_on_Mars_EN.md` | `chapters/1-mars-rubber-glass-house/the-peoples-house/README.md` | — |

### Topic 2: Three-Step Evolution / Drei-Stufen-Evolution

| Source File | EN Destination | DE Destination |
|-------------|----------------|----------------|
| `published/habitats/three-step-evolution.../10.5281-zenodo.16540444/Three-Step Evolution Towards Biomimetic and Self-Growing Structures.md` | `chapters/2-three-step-evolution/article/README.md` | `chapters/2-drei-stufen-evolution/artikel/README.md` |

### Topic 3: Mars Field Laboratories / Mars-Feldlabore

| Source File | EN Destination | DE Destination |
|-------------|----------------|----------------|
| `Robotics/Mars Field Laboratories...Cooperative Robotic Clusters_v1.2.md` | `chapters/3-mars-field-laboratories/article/README.md` | `chapters/3-mars-feldlabore/artikel/README.md` |

> **Legend:** "—" means no version exists for that language. The build script
> skips empty mappings.

---

## DOI Appendix Folders (Versioned)

The `x.A-appendix-doi-*` folders are **not** build-populated — they are
versioned content containing:

- `README.md` — Zenodo abstract, metadata table, document listing
- Copies of all published documents (MDs + PDFs) from the corresponding
  `published/` DOI folder

These serve as an in-book archive so readers of the PDF see the full
Zenodo record content inline.

| DOI | Topic | Documents |
|-----|-------|-----------|
| `10.5281/zenodo.16493055` | 1 (v1 Mars Rubber-Glass House) | 6 Markdown files |
| `10.5281/zenodo.18526534` | 1 (v2.0 Mars Rubber-Glass House) | 2 PDF files |
| `10.5281/zenodo.16540444` | 2 (Three-Step Evolution) | 1 Markdown file |
| `10.5281/zenodo.15455156` | 3 (Mars Field Laboratories) | 1 Markdown + 1 PDF |

---

## Build Process

```
┌─────────────────────────────────┐
│  book/build-book.ps1 -Lang en   │
└────────────┬────────────────────┘
             │
   ┌─────────▼──────────┐
   │  1. Collect Content │  Copy source MDs → chapter sub-dirs
   │     (Sanitise)      │  Strip YAML frontmatter, --- → ***
   └─────────┬───────────┘
             │
   ┌─────────▼──────────┐
   │  2. Build PDF       │  gitbook-worker → Pandoc → LuaLaTeX
   │                     │  Reads SUMMARY.md for chapter order
   └─────────┬───────────┘
             │
   ┌─────────▼──────────┐
   │  3. Output PDF      │  book/<lang>/publish/*.pdf
   └─────────────────────┘
```

### Sanitisation Rules

The build script applies these transformations to every copied chapter:

1. **Strip YAML frontmatter** — removes the opening `---`…`---` block
2. **Replace `---` with `***`** — prevents Pandoc YAML parse errors in
   the merged single-document output

---

## Adding a New Chapter

1. **Create the source document** in its canonical location
   (`Habitats/`, `Robotics/`, or `published/`)
2. **Add a mapping line** in `book/build-book.ps1` → `$MappingLines`
   - Format: `"<source-path>|<en-dest>|<de-dest>"`
   - Use empty string for missing language variant
3. **Create the topic sub-directory** (if new topic):
   - `book/en/content/chapters/<N>-<topic-slug>/README.md`
   - `book/de/content/chapters/<N>-<thema-slug>/README.md`
4. **Update SUMMARY.md** files (root, `book/en/content/`, `book/de/content/`)
5. **Update `.gitignore`** if new sub-chapter directory names are added
6. **Run build** to verify: `.\build-book.ps1 -Lang en`

---

## Adding a DOI Appendix

1. **Create the DOI folder** under the topic's appendix directory:
   `<N>.A-appendix-doi-*/10.5281-zenodo.<ID>/`
2. **Write `README.md`** with Zenodo abstract, metadata, and document table
3. **Copy published documents** from `published/` into the DOI folder
4. **Sanitise** copied MDs (strip frontmatter) — or the build script
   handles this automatically for build-copied content
5. **Update SUMMARY.md** files to include new DOI sub-entries
6. **Update the appendix overview `README.md`** in the `x.A-appendix-doi-*/` folder

---

*Last updated: 2026-02-08 · Maintainer: Robert Alexander Massinger*
