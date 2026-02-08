# YAML Frontmatter Standard for Mars Repository

**Version:** 1.0  
**Date:** 2026-02-08  
**Scope:** All Markdown documents in this repository that are published or intended for publication.

---

## Purpose

Every publishable `.md` document must begin with a YAML frontmatter block enclosed in `---` delimiters. This enables:
- Automated PDF metadata injection via Pandoc
- Consistent Zenodo metadata across all publications
- Machine-readable version tracking and cross-referencing
- Reproducible document history

---

## Required Fields

```yaml
---
# === Identity ===
title: "Full Title of the Document"
subtitle: ""                        # optional, e.g. "A Vision for Adaptive Habitats on Mars"
author: "Robert Alexander Massinger"
affiliation: "Robert Alexander Massinger Space Technologies, Munich, Germany"
contact: "robert@robert-alexander-massinger-space-technologies.com"

# === Versioning ===
version: "1.0"                      # semantic: major.minor (major = content changes, minor = fixes)
date: 2024-06-01                    # original publication date (ISO 8601)
last-modified: 2026-02-08           # date of last edit (ISO 8601)
status: "published"                 # draft | review | published | archived

# === Zenodo / DOI ===
doi: "10.5281/zenodo.XXXXXXXX"      # version-specific DOI (leave empty if unpublished)
doi-all-versions: "10.5281/zenodo.XXXXXXXX"  # concept DOI resolving to latest version
zenodo-record: "https://zenodo.org/records/XXXXXXXX"
resource-type: "publication"        # publication | preprint | dataset | software

# === Content Metadata ===
lang: en                            # ISO 639-1: en | de
keywords:
  - Mars Habitat
  - Silicone Rubber
  - Borosilicate Glass
abstract: |
  A concise summary of the document (150–250 words).

# === Legal ===
license: "CC BY 4.0"               # CC BY 4.0 | MIT | CC BY 4.0 + MIT
copyright: "© 2024 Robert Alexander Massinger, Munich, Germany"
ai-disclosure: "GPT-4"             # which AI model(s) assisted, or "none"

# === Cross-References ===
related-publications:
  - title: "Mars Rubber-Glass House Project"
    doi: "10.5281/zenodo.16493055"
    relation: "supplements"         # supplements | isSupplementedBy | continues |
                                    # isContinuedBy | references | isReferencedBy |
                                    # isPartOf | hasPart | isNewVersionOf
  - title: "Three-Step Evolution Towards Biomimetic and Self-Growing Structures"
    doi: "10.5281/zenodo.16540444"
    relation: "references"

# === History ===
history:
  - version: "1.0"
    date: 2024-06-01
    changes: "Initial publication on Zenodo"
  - version: "1.1"
    date: 2026-02-08
    changes: "Added frontmatter, cross-references, design improvements"
---
```

---

## Field Reference

### Identity Fields

| Field | Required | Description |
|---|---|---|
| `title` | Yes | Full document title |
| `subtitle` | No | Subtitle or tagline |
| `author` | Yes | Primary author name |
| `affiliation` | Yes | Organization / institution |
| `contact` | No | Email or URL |

### Versioning Fields

| Field | Required | Description |
|---|---|---|
| `version` | Yes | Semantic version `major.minor` |
| `date` | Yes | Original publication date |
| `last-modified` | Yes | Date of most recent edit |
| `status` | Yes | `draft` / `review` / `published` / `archived` |

### Zenodo / DOI Fields

| Field | Required | Description |
|---|---|---|
| `doi` | If published | Version-specific DOI |
| `doi-all-versions` | If published | Concept DOI (resolves to latest) |
| `zenodo-record` | If published | Direct URL to Zenodo record |
| `resource-type` | Yes | `publication` / `preprint` / `dataset` |

### Content Metadata

| Field | Required | Description |
|---|---|---|
| `lang` | Yes | ISO 639-1 language code |
| `keywords` | Yes | YAML list of keywords (match Zenodo subjects) |
| `abstract` | Yes | 150–250 word summary (YAML block scalar `\|`) |

### Legal Fields

| Field | Required | Description |
|---|---|---|
| `license` | Yes | SPDX-compatible license identifier |
| `copyright` | Yes | Copyright notice |
| `ai-disclosure` | Yes | AI tools used, or `"none"` |

### Cross-References

| Field | Required | Description |
|---|---|---|
| `related-publications` | If applicable | List of related works with DOI and relation type |

### History

| Field | Required | Description |
|---|---|---|
| `history` | Yes | Chronological list of version entries with date and changes |

---

## Relation Types (for `related-publications`)

Based on DataCite relation types used by Zenodo:

| Relation | Use when |
|---|---|
| `supplements` | This document provides supplementary material to the related work |
| `isSupplementedBy` | The related work supplements this document |
| `continues` | This document is a continuation of the related work |
| `isContinuedBy` | The related work continues this document |
| `references` | This document cites the related work |
| `isReferencedBy` | The related work cites this document |
| `isPartOf` | This document is part of a larger collection |
| `hasPart` | The related work is part of this collection |
| `isNewVersionOf` | This document replaces an older version |

---

## Pandoc Integration

The frontmatter is fully compatible with Pandoc's YAML metadata blocks.
Key mappings for PDF generation:

```bash
pandoc input.md -o output.pdf \
  --pdf-engine=lualatex \
  -V mainfont="DejaVu Sans" \
  --metadata-file=defaults.yaml  # optional shared defaults
```

Pandoc automatically uses `title`, `author`, `date`, `abstract`, and `keywords`
for the PDF title page. Additional fields are preserved as custom metadata.

---

## Versioning Rules

1. **Major version** (1.0 → 2.0): Significant content changes, new sections, revised data
2. **Minor version** (1.0 → 1.1): Frontmatter updates, typo fixes, formatting, cross-references
3. Every version bump must add a `history` entry
4. Every Zenodo upload creates a new version-specific DOI
5. The `doi-all-versions` remains stable across versions
