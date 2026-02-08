# 📖 The Mars Book / Das Mars Buch

GitBook Worker workspace for producing professional PDF editions of the
Mars repository content.

## Quick Start

### Prerequisites

- Python ≥ 3.10
- Pandoc ≥ 3.x
- TeX Live with LuaLaTeX
- [GitBook Worker](https://github.com/Rob9999/gitbook-worker) v2.1.0+

### Installation

```powershell
# Create virtual environment (once)
py -3.11 -m venv .venv
.\.venv\Scripts\activate

# Install gitbook-worker
pip install -e <path-to-gitbook-worker-repo>
# or from wheel:
pip install gitbook_worker-2.1.0-py3-none-any.whl
```

### Build PDFs

```powershell
cd book/

# Collect content + build English PDF
.\build-book.ps1 -Lang en

# Collect content + build German PDF
.\build-book.ps1 -Lang de

# Build both
.\build-book.ps1

# Only collect content (no PDF build)
.\build-book.ps1 -SkipBuild
```

## Structure

```
book/
├── content.yaml              # Language configuration
├── build-book.ps1            # Content collector + build script
├── README.md                 # This file
├── en/                       # English edition
│   ├── book.json             # Book metadata
│   ├── publish.yml           # Build profiles + PDF options
│   ├── LICENSE               # CC BY 4.0
│   └── content/              # Markdown content (populated by build script)
│       ├── README.md         # Cover page
│       ├── SUMMARY.md        # Table of contents
│       ├── introduction/     # Introduction (book-only chapter)
│       ├── chapters/         # Paper chapters (copied from source)
│       └── appendix/         # License + Colophon
├── de/                       # German edition (same layout)
│   └── ...
└── fonts-storage/            # Local font cache (gitignored)
```

## Content Sources

The `build-book.ps1` script collects the latest version of each chapter from
its canonical location in the repository:

| Chapter | Source Location | EN | DE |
|---------|---------------|:--:|:--:|
| Design 1000 m² House | `published/habitats/mars-gummi-haus/10.5281-zenodo.16493055/` | ✅ | ✅ |
| Variants | `published/habitats/mars-gummi-haus/10.5281-zenodo.16493055/` | ✅ | ✅ |
| Design Improvements v2 | `Habitats/MarsGummiHaus/` | ✅ | ⏳ |
| Cost Estimation | `published/habitats/mars-gummi-haus/10.5281-zenodo.16493055/` | ✅ | ⏳ |
| The People's House | `published/habitats/mars-gummi-haus/10.5281-zenodo.16493055/` | ✅ | — |
| Three-Step Evolution | `published/habitats/three-step-evolution.../docs/` | ✅ | ⏳ |
| Mars Field Labs | `Robotics/` | ✅ | ⏳ |

✅ = available · ⏳ = uses EN version until DE translation exists · — = no DE equivalent

## Book-Only Content

These chapters exist only in the book and are **not** published as standalone
papers:

- **Introduction / Einleitung** — overview and reading guide
- **License / Lizenz** — full CC BY 4.0 text
- **Colophon / Kolophon** — toolchain and typography documentation
