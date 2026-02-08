# Backlog – Mars Repository v2 Release

Stand: 2026-02-08

---

## 1. Cross-Referencing aller drei DOIs

**Priorität:** Hoch  
**Status:** Offen

Keines der drei veröffentlichten Dokumente verweist bisher auf die anderen. In der nächsten Version (v2) sollten alle Quelldokumente gegenseitige DOI-Referenzen enthalten:

- Pub 1 (Habitat) → verweist auf Pub 2 (Three-Step) und Pub 3 (Robotics)
- Pub 2 (Three-Step) → verweist auf Pub 1 (Habitat) und Pub 3 (Robotics)
- Pub 3 (Robotics) → verweist auf Pub 1 (Habitat) und Pub 2 (Three-Step)

**DOIs:**
| Publikation | DOI |
|---|---|
| Mars Rubber-Glass House Project | 10.5281/zenodo.16493055 |
| Three-Step Evolution … Biomimetic | 10.5281/zenodo.16540444 |
| Mars Field Laboratories … Robotics | 10.5281/zenodo.15455156 |

**Betroffene Dateien:**
- `Habitats/MarsGummiHaus/Design of a 1000 m² Rubber-Glass House for Mars.md`
- `Habitats/MarsGummiHaus/Entwurf eines 1000 m² Gummi-Glashauses für den Mars.md`
- `Habitats/three-step-evolution.../Three-Step Evolution … .md`
- `Robotics/Mars Field Laboratories … .md`
- Alle Dateien in `published/habitats/mars-gummi-haus/10.5281-zenodo.16493055/`

---

## 2. Community-Zuordnung auf Zenodo vereinheitlichen

**Priorität:** Hoch  
**Status:** Offen

Aktuell ist nur Pub 2 (Three-Step) der Zenodo-Community **„Interplanetary Lab"** zugeordnet.  
Pub 1 (Habitat) und Pub 3 (Robotics) sollten dort ebenfalls eingereicht werden.

**Aktion:** Über die Zenodo-Weboberfläche bei den Records 16493055 und 15455156 die Community „Interplanetary Lab" beantragen.

---

## 3. Zenodo „Related Identifiers" konfigurieren

**Priorität:** Hoch  
**Status:** Offen

Zenodo unterstützt das Metadatenfeld „Related works" mit Relationstypen wie:
- `isSupplementedBy` / `supplements`
- `continues` / `isContinuedBy`
- `isPartOf` / `hasPart`

**Aktion:** Über Zenodo-UI oder API bei jedem der drei Records die anderen beiden als „related" eintragen:
- Pub 1 ↔ Pub 2: `isSupplementedBy` / `supplements`
- Pub 1 ↔ Pub 3: `isRelatedTo`
- Pub 2 ↔ Pub 3: `isRelatedTo`

---

## 4. Robotics-Paper: Typ „Preprint" → „Publication"

**Priorität:** Mittel  
**Status:** Offen

Das Robotics-Paper (Pub 3, DOI 10.5281/zenodo.15455156) ist auf Zenodo als **Preprint** klassifiziert, obwohl es bereits in Version 1.2 vorliegt.  
Beim nächsten Versions-Upload (v1.3 oder v2) sollte der Resource Type auf **Publication** geändert werden – konsistent mit Pub 1 und Pub 2.

---

## 5. Repo README.md mit allen DOIs und Badges aktualisieren

**Priorität:** Mittel  
**Status:** Offen

Die aktuelle `README.md` im Repo-Root listet nur das Three-Step Paper.  
Aktualisierung mit:
- Alle drei Publikationen mit Titel, Kurzbeschreibung und DOI-Badge
- Lizenzhinweis
- Repo-Struktur-Übersicht
- Link zur Interplanetary Lab Community

---

## 6. GitBook Worker – „The Mars Book" / „Das Mars Buch"

**Priorität:** Hoch  
**Status:** ✅ Scaffold erstellt (2026-02-08)

Professionelle PDF-Erzeugung über [GitBook Worker v2.1.0+](https://github.com/Rob9999/gitbook-worker).  
Workspace eingerichtet unter `book/` mit `content.yaml`, `book.json`, `publish.yml` für DE + EN.

**Nächste Schritte:**
- [ ] gitbook-worker lokal installieren (`pip install -e <path>`)
- [ ] Pandoc + TeX Live (LuaLaTeX) sicherstellen
- [ ] `build-book.ps1 -Lang en` / `-Lang de` testen
- [ ] Erste PDF-Proofs reviewen (Fonts, TOC, Seitenumbrüche)
- [ ] Fehlende DE-Übersetzungen für Three-Step, Cost Estimation, Robotics anfertigen
- [ ] Ggf. GitHub Actions Workflow für automatische Book-PDFs ergänzen
- [ ] The People's House DE-Version erstellen oder aus EN-Book ausschließen

**Buch-Kapitel (nur im Buch, nicht als Paper veröffentlicht):**
- Introduction / Einleitung
- License / Lizenz (Appendix)
- Colophon / Kolophon (Appendix)

---

## Weitere Punkte (niedrigere Priorität)

- ~~YAML-Frontmatter in alle Quelldateien einfügen~~ ✅ erledigt (2026-02-08)
- ~~`The Peoples 1000 m2 Rubber-Glass House on Mars.txt` → `.md` konvertieren~~ ✅ erledigt
- Inhaltliche Aktualisierung: Transportkosten, Energieertrag-Quellenangaben
- ~~Sprintpläne archivieren oder als erledigt markieren~~ ✅ erledigt (→ `backlog/done/`)
- CHANGELOG.md anlegen
- ~~PDF-Pipeline (GitHub Actions) validieren~~ → abgelöst durch GitBook Worker (`book/`)
- ~~AGENTS.md aktualisieren (Three-Step ist veröffentlicht)~~ ✅ erledigt
- ~~V2.0 Mars Rubber-Glass House Paper erstellen~~ ✅ erledigt (2026-02-08) — `Habitats/MarsGummiHaus/The 1000 m² Mars Rubber-Glass House v2.md`
