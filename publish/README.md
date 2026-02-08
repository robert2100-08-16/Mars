# publish — Standalone PDF Pipeline

This folder contains the **standalone PDF build pipeline** for individual
documents, driven by `publish.yml` at the repository root.

## Contents

| File | Description |
|------|-------------|
| `The 1000 m² Mars Rubber-Glass House v2.md` | EN source for v2.0 |
| `Das 1000 m² Mars Gummi-Glashaus v2.md` | DE source for v2.0 |
| `*.pdf` | Generated PDFs (git-ignored) |
| `temp/` | Temporary build artifacts |

## Usage

```powershell
cd <repo-root>
python -m gitbook_worker.tools.publishing.pipeline --root . --manifest publish.yml --no-gitbook-rename
```

PDFs are archived under [`published/habitats/mars-gummi-haus/10.5281-zenodo.18526534/`](../published/habitats/mars-gummi-haus/10.5281-zenodo.18526534/README.md).
