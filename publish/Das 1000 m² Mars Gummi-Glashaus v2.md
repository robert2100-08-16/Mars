---
title: Das 1000 m² Mars Gummi-Glashaus — Version 2.0
subtitle: Ein umfassendes Design für Langzeithabitation, geschlossene Lebenserhaltung
  und operative Crew-Routinen
author: Robert Alexander Massinger
affiliation: Robert Alexander Massinger Space Technologies, München, Deutschland
contact: robert@robert-alexander-massinger-space-technologies.com
version: '2.0'
date: 2026-02-08
last-modified: 2026-02-08
status: draft
doi: ''
doi-all-versions: ''
zenodo-record: ''
resource-type: publication
lang: de
keywords:
- Mars-Habitat
- Gummi-Glashaus
- Geschlossene Lebenserhaltung
- Bioregenerative Landwirtschaft
- Abfall-zu-Ressource-Kreislauf
- Crew-Routinen
- Thermische Zonierung
- Strahlenschutz
- Humanfaktoren
- In-Situ-Ressourcennutzung
- Isolationsanaloga-Erkenntnisse
- Vertikale Landwirtschaft
- Aquaponik
- Wasserrecycling
abstract: 'Dieses Paper präsentiert das Design in Version 2.0 des 1000 m² Mars

  Gummi-Glashauses, ein umfassendes Upgrade von der strukturellen

  Machbarkeitsstudie (v1, Juni 2024) zu einem vollständig spezifizierten

  Habitat für langfristige menschliche Besiedlung. Aufbauend auf den

  Design-Verbesserungen v2 (erhöhte Deckenhöhe, thermische Zonierung,

  Strahlenschutz, erweiterte Landwirtschaft, Energiespeicherung und

  Crew-Privatsphäre) integriert v2.0 fünf wesentliche neue Systeme:

  (1) einen vollständigen geschlossenen Abfall-zu-Ressource-Kreislauf, der

  menschliche Exkremente, Lebensmittelabfälle und atmosphärische Nebenprodukte

  in Dünger, Wasser und chemische Ausgangsstoffe umwandelt; (2) strukturierte

  tägliche, wöchentliche, monatliche und jährliche Crew-Routinen, modelliert

  nach Betriebserfahrungen von Biosphere 2, MARS-500, HI-SEAS, ISS und

  Antarktis-Stationen; (3) eine In-Situ-Ressourcennutzungs-Strategie (ISRU)

  zur Herstellung von Baumaterialien, Treibstoffen und Spezialchemikalien aus

  marsianischem Regolith und Atmosphäre; (4) ein medizinisches und

  psychologisches Unterstützungskonzept, basierend auf Forschung in

  Isolationsumgebungen; sowie (5) eine Simulations- und Validierungsmethodik

  nach dem Zyklus Untersuchung → Modell → Simulation → Validierung →

  Wissenschaftliche Bewertung. Das Ergebnis ist ein Design, das das

  Gummi-Glashaus von einem Schutzraum in eine autarke Mikrozivilisation

  verwandelt, die vier Besatzungsmitglieder auf unbestimmte Zeit versorgen

  kann.

  '
license: CC BY 4.0
copyright: © 2026 Robert Alexander Massinger, München, Deutschland
ai-disclosure: Claude (Anthropic), GPT-4 (OpenAI)
related-publications:
- title: Mars Rubber-Glass House Project – Design, Variants, Cost, and Vision for
    Martian Habitats
  doi: 10.5281/zenodo.16493055
  relation: isNewVersionOf
- title: Design Improvements for the Mars Rubber-Glass House – Proposals for v2
  doi: ''
  relation: continues
- title: Three-Step Evolution Towards Biomimetic and Self-Growing Structures
  doi: 10.5281/zenodo.16540444
  relation: references
- title: 'Mars Field Laboratories: Integrating Autonomous Legged Robots and Cooperative
    Robotic Clusters'
  doi: 10.5281/zenodo.15455156
  relation: references
history:
- version: '1.0'
  date: 2024-06-01
  changes: Ursprüngliches v1-Design — strukturelle Machbarkeit und Kostenschätzung
- version: '1.5'
  date: 2026-02-08
  changes: Design-Verbesserungen v2 (Höhe, Zonierung, Abschirmung, Landwirtschaft,
    Energie, Privatsphäre)
- version: '2.0'
  date: 2026-02-08
  changes: Umfassende v2.0 — geschlossene Lebenserhaltung, Crew-Routinen, Abfall-Kreislauf,
    ISRU, medizinisches Konzept, Simulationsmethodik
geometry:
- paperwidth=210mm
- paperheight=297mm
- left=15mm
- right=15mm
- top=15mm
- bottom=15mm
header-includes:
- \usepackage{calc}
- \usepackage{enumitem}
- \setlistdepth{20}
- \usepackage{longtable}
- \usepackage{ltablex}
- \usepackage{booktabs}
- \usepackage{array}
- \keepXColumns
- \setlength\LTleft{0pt}
- \setlength\LTright{0pt}
---

<a id="md-habitats-marsgummihaus-das-1000-m-mars-gummi-glashaus-v2"></a>


# Das 1000 m² Mars Gummi-Glashaus — Version 2.0

## Zusammenfassung

Dieses Paper präsentiert das Design in Version 2.0 des 1000 m² Mars Gummi-Glashauses, ein umfassendes Upgrade von der strukturellen Machbarkeitsstudie (v1, Juni 2024) zu einem vollständig spezifizierten Habitat für langfristige menschliche Besiedlung. Aufbauend auf den Design-Verbesserungen v2 integriert v2.0 fünf wesentliche neue Systeme: einen geschlossenen Abfall-zu-Ressource-Kreislauf, strukturierte Crew-Routinen nach Erfahrungen irdischer Analogprojekte, In-Situ-Ressourcennutzung (ISRU), ein medizinisches und psychologisches Unterstützungskonzept sowie eine Simulations- und Validierungsmethodik. Das Ergebnis verwandelt das Gummi-Glashaus von einem Schutzraum in eine autarke Mikrozivilisation, die vier Besatzungsmitglieder auf unbestimmte Zeit versorgen kann.

---

## 1. Einleitung

### 1.1 Hintergrund

Das ursprüngliche Mars Gummi-Glashaus (v1) etablierte das strukturelle und materielle Fundament: ein 1000 m² (50 m × 20 m) eingeschossiges Habitat mit Silikonkautschuk-Fundamenten, einem Titan/Inconel-Rahmen, Borosilikatglas-Wänden, Solarpaneelen auf dem Dach und einer einzelnen Luftschleuse — alles bei Materialkosten von ca. 1,02 Mio. $ ([DOI: 10.5281/zenodo.16493055](https://doi.org/10.5281/zenodo.16493055)).

Das Dokument „Design Improvements v2" identifizierte kritische Lücken im v1-Design und schlug acht Verbesserungen vor:

1. Erhöhung der Innenhöhe von 3 m auf 5 m
2. Drei Temperaturzonen (warm, gemäßigt, kühl)
3. Geschlossenes Wassermanagement
4. Mehrschichtiger Strahlenschutz
5. Erweiterung des Landwirtschaftssystems mit vertikalem Anbau
6. Luftschleusen-Redundanz (2 + Notluke)
7. Energiespeicherung und Redundanz (100 kWh Batterie + RHU)
8. Akustik und Crew-Privatsphäre (Einzelkabinen)

### 1.2 Umfang der Version 2.0

Version 2.0 übernimmt alle acht v2-Vorschläge als Grundlage und erweitert das Design zu einem **vollständigen operativen Habitat**, indem fünf bisher nicht spezifizierte Bereiche adressiert werden:

- **Geschlossener Abfall-zu-Ressource-Kreislauf** — von menschlichen Exkrementen und Lebensmittelabfällen zu Dünger, Wasser und chemischen Ausgangsstoffen
- **Strukturierte Crew-Routinen** — tägliche, wöchentliche, monatliche und jährliche Abläufe, informiert durch Biosphere 2, MARS-500, HI-SEAS, ISS und Antarktis-Stationen
- **In-Situ-Ressourcennutzung (ISRU)** — Herstellung von Baumaterialien, Treibstoffen und Spezialchemikalien aus marsianischen Ressourcen
- **Medizinische und psychologische Unterstützung** — basierend auf Forschung zur Psychologie in Isolationsumgebungen
- **Simulations- und Validierungsmethodik** — ein rigoroser Zyklus aus Untersuchung → Modell → Simulation → Validierung → Wissenschaftliche Bewertung

### 1.3 Erkenntnisse aus irdischen Isolationsanaloga

Das v2.0-Design wird durch Betriebserfahrungen aus fünf wichtigen Analogprojekten informiert:

| Analogprojekt | Dauer | Crew | Zentrale Erkenntnisse |
|---|---|---|---|
| **Biosphere 2** (1991–1993) | 2 Jahre | 8 | Landwirtschaft produzierte 83 \% der Nahrung; O_{2} sank von 20,9 \% auf 14,5 \%; CO_{2}-Management kritisch; Crew verlor 16 \% Körpergewicht; Fraktionsbildung; Pflanzenkläranlage recycelte Abwasser |
| **MARS-500** (2010–2011) | 520 Tage | 6 | Schlafstörungen bei 4 von 6 Crew-Mitgliedern; Aktivitätsniveau brach ein; zirkadiane Rhythmusstörungen; keine offiziell berichteten interpersonellen Konflikte |
| **HI-SEAS IV** (2015–2016) | 366 Tage | 6 | Essen als Moralfaktor kritisch; Wassersystemausfälle; Kommunikationsverzögerungs-Simulation; Crew-Dynamik unter Beobachtung |
| **Concordia-Station** (laufend) | 9 Monate/Winter | 13 | Extreme Isolation; hypobare Hypoxie auf 3.233 m; zirkadiane Störungen; Analogprojekt für Deep-Space-Missionen |
| **ISS** (laufend) | 6–12 Monate | 3–6 | Lärm und Privatsphäre sind größte Stressoren; strukturierte Abläufe essenziell; Sport verhindert Knochen-/Muskelverlust; WRS erreicht 93 \% Wasserrückgewinnung |

Diese Erkenntnisse fließen direkt in jeden Abschnitt dieses Dokuments ein.

---

## 2. Strukturelles Design — konsolidierte v2-Grundlage

### 2.1 Hüllenabmessungen

| Parameter | v1 | v2.0 |
|---|---|---|
| Grundfläche | 50 m × 20 m = 1.000 m² | 50 m × 20 m = 1.000 m² |
| Innenhöhe | 3,0 m | **5,0 m** |
| Innenvolumen | 3.000 m³ | **5.000 m³** |
| Fundamentmauer | 140 m Umfang × 0,5 m × 0,1 m | unverändert |
| Zwischengeschoss | — | **~400 m² auf 2,5 m Höhe** |
| Nutzbare Gesamtfläche | 1.000 m² | **~1.400 m²** (EG + Zwischengeschoss) |

### 2.2 Strukturmaterialien

| Bauteil | Material | v2.0 Masse |
|---|---|---|
| Bodenplatte | Silikonkautschuk (10 cm) | 107 m³ |
| Fundamentmauer | Silikonkautschuk | ~7 m³ |
| Trennwandschaum | Silikonschaum-Isolierung | ~5 m³ |
| Rahmen | Titan / Inconel | ~8.500 kg |
| Verglasung (Wände) | Borosilikatglas + Isolierbeschichtung | ~700 m² (~16.700 kg) |
| Dach | Solarpaneele (1.000 m²) + Regolith-Schicht (50 cm) | ~10.000 kg Paneele + ~800.000 kg Regolith |
| Luftschleusen | 2 × Titan/Inconel + Borosilikat | ~2.000 kg |
| Notluke | 1 × 1 m × 1 m verstärkt | ~200 kg |

### 2.3 Thermische Zonierung

Drei Klimazonen, getrennt durch leichte Silikonschaum-Trennwände (STC ≥ 35):

```
┌──────────────────────────────────────────────────────┐
│                    SOLARDACH (1.000 m²)              │
│              + 50 cm marsianische Regolith-Schicht   │
├──────────┬──────────────────────┬────────────────────┤
│          │                      │                    │
│  WARME   │    GEMÄSSIGTE        │      KÜHLE         │
│  ZONE    │    ZONE              │      ZONE          │
│  ~350 m² │    ~250 m²           │      ~400 m²       │
│  22–24°C │    18–20°C           │      12–16°C       │
│          │                      │                    │
│ Wohn-    │ Labore, Werkstätten, │ Landwirtschaft,    │
│ bereich, │ Maschinenraum,       │ vertikaler Anbau,  │
│ Küche,   │ Krankenstation,      │ Algen-Bioreaktoren,│
│ Kabinen, │ ISRU-Verarbeitung,   │ Aquaponik,         │
│ Ruheraum │ Abfallverarbeitung   │ Kompostierung      │
│          │                      │                    │
│ [Schleuse│                      │        [Schleuse   │
│  NORD]   │                      │         SÜD]       │
├──────────┴──────────────────────┴────────────────────┤
│  ZWISCHENGESCHOSS (über Warm- + Gemäßigter Zone)     │
│  ~400 m²: 4 Crew-Kabinen (48 m²), Ruheraum (12 m²),  │
│  Lager, Crew-Freizeit, obere Etagen vertikaler Anbau │
└──────────────────────────────────────────────────────┘
```

**Energieeinsparung:** Geschätzte 20–30 % Reduktion der Heizlast gegenüber gleichmäßiger Beheizung, da die Agrarzone (40 % der Grundfläche) bei 12–16 °C mit Tag/Nacht-Zyklus betrieben wird.

---

## 3. Geschlossenes Lebenserhaltungssystem (GLES)

Das v2.0-Habitat arbeitet als nahezu geschlossenes bioregeneratives Lebenserhaltungssystem. Das Ziel ist **≥ 95 % Schließungsgrad** für Wasser und **≥ 80 % Schließungsgrad** für Nahrung, nach dem Biosphere-2-Modell, verbessert durch 30 Jahre anschließende Forschung.

### 3.1 Atmosphärenmanagement

| Parameter | Zielwert | Methode |
|---|---|---|
| O_{2}-Partialdruck | 21,0 kPa (± 0,5) | Photosynthese + Elektrolyse-Backup |
| CO_{2}-Partialdruck | 0,04–0,10 kPa | Pflanzenaufnahme + Scrubber-Fallback |
| Gesamtdruck | 70 kPa | Druckkörper + Überdruckventile |
| Relative Luftfeuchtigkeit | 40–60 \% | Kondensation + Entfeuchtung |
| Temperatur (Warmzone) | 22–24 °C | Aktive Heizung + thermische Masse |
| Spurengas-Entfernung | < SMAC-Grenzwerte | Aktivkohle + katalytischer Oxidator |

**Lektion aus Biosphere 2:** O_{2} sank über 16 Monate von 20,9 % auf 14,5 %, bedingt durch mikrobielle Atmung in organisch reichen Böden und CO_{2}-Absorption durch unversiegelten Beton. V2.0 begegnet dem durch:
- Versiegelter Silikonkautschuk-Boden verhindert Boden-Beton-Reaktionen
- Dedizierte Algen-Bioreaktoren (40 m²) optimiert für O_{2}-Produktion
- Backup-Elektrolyseeinheit (Wasserspaltung → H_{2} + O_{2})
- Echtzeit-Atmosphärenüberwachung mit automatischer Regelung

### 3.2 Wassermanagement

**Wasserbudget pro Crew-Mitglied (mit Recycling):**

| Quelle | Volumen/Tag | Anmerkungen |
|---|---|---|
| Trinkwasser | 2,5 L | Trinkwasserqualität |
| Nahrungszubereitung | 1,0 L | |
| Körperhygiene | 6,0 L | Dusche (Navy-Stil, 2 min) |
| Wäsche | 5,0 L | Wöchentlich, gemeinschaftlich |
| Landwirtschaftliche Bewässerung | 8,0 L | Rezirkulierende Hydroponik |
| Toilettenspülung / -verarbeitung | 2,5 L | Vakuum-unterstützt |
| **Gesamt pro Person** | **25 L/Tag** | |
| **Gesamt für 4 Crew** | **100 L/Tag** | |

**Wasserrecycling-System (nach ISS-WRS-Vorbild):**

1. **Feuchtigkeitskondensat-Rückgewinnung** — Klimaanlagen sammeln ~4 L/Tag pro Person aus Transpiration und Atmung
2. **Grauwasser-Filtration** — Dusch-, Wasch- und Küchenwasser gefiltert durch Biofilm-Reaktor + Aktivkohle + UV-Sterilisation
3. **Urinaufbereitung** — Dampfkompressionsdestillation (VCD) mit 93 % Rückgewinnungsrate
4. **Pflanzentranspirationsrückgewinnung** — Die Agrarzone allein recycelt ~60 L/Tag durch Pflanzentranspiration → Kondensation
5. **Unterboden-Reservoir** — 10 m³ Notreserve integriert in Silikonkautschuk-Bodenplatte (inhärent wasserdicht)

**Ziel-Wasserrückgewinnungsrate:** ≥ 93 % (ISS-erprobt), Anspruch ≥ 97 % mit Pflanzentranspirationskreislauf.

### 3.3 Abfall-zu-Ressource-Kreislauf

Dies ist eine **Schlüsselinnovation von v2.0**. Jeder Abfallstrom wird als Ressourcen-Input behandelt:

#### 3.3.1 Verarbeitung menschlicher Exkremente

| Abfallstrom | Tagesvolumen (4 Crew) | Verarbeitung | Produkt |
|---|---|---|---|
| **Urin** | ~6 L | VCD → Wasser; Harnstoff-Extraktion → Stickstoffdünger | ~5,5 L Wasser + ~30 g Harnstoff/Tag |
| **Fäkalien** | ~0,6 kg | Thermophile Kompostierung (60–70 °C, 14 Tage) → Wurmkompostierung (21 Tage) | ~0,15 kg stabilisierter Kompost/Tag |
| **Grauwasser-Schlamm** | ~2 L | Biofilm-Vergärung → Nährstoffextraktion | Phosphor- + Kaliumsalze |

**Kompostierungsprozess:**
1. **Sammlung** — Vakuumtoilette trennt Urin und Fäkalien an der Quelle
2. **Vorbehandlung** — Fäkalien gemischt mit Ernteresten (C:N-Verhältnis 25:1–30:1)
3. **Thermophile Kompostierung** — Geschlossener Reaktor bei 60–70 °C für 14 Tage; tötet Pathogene (Salmonellen, E. coli, Helminthen-Eier)
4. **Wurmkompostierung** — *Eisenia fetida* (Kompostwürmer) verarbeiten den Kompost weitere 21 Tage und produzieren nährstoffreichen Wurmhumus
5. **Reifung** — 30 Tage aerobe Nachrotte
6. **Ausbringung** — Verteilung auf Anbaubeete als Langzeitdünger

**Sicherheit:** Die thermophile Phase übertrifft die WHO-Richtlinien zur Pathogenabtötung (≥ 55 °C für ≥ 14 Tage). Der Kompost wird vor landwirtschaftlicher Nutzung auf Fäkalcoliforme getestet.

#### 3.3.2 Verarbeitung von Lebensmittelabfällen

| Abfallart | Tagesvolumen (4 Crew) | Verarbeitung | Produkt |
|---|---|---|---|
| Erntereste (Stängel, Wurzeln, Blätter) | ~3 kg | Zerkleinerung → Kompostierung oder Pflanzenkohle | Kompost oder Bodenverbesserer |
| Küchenabfälle (Schalen, Reste) | ~0,5 kg | Wurmkompostierung oder anaerobe Vergärung | Wurmhumus oder Biogas (CH_{4}) |
| Nicht essbare Biomasse | ~1 kg | Pyrolyse (400 °C, sauerstofffrei) | Pflanzenkohle (Bodenkohlenstoff) + Synthesegas |

#### 3.3.3 Atmosphärischer Abfall-Kreislauf

| Gas | Quelle | Verarbeitung | Produkt |
|---|---|---|---|
| CO_{2} (ausgeatmet) | ~1 kg/Person/Tag | Photosynthese der Pflanzen + Sabatier-Reaktor | O_{2} + Biomasse; oder CH_{4} + H_{2}O |
| CH_{4} (aus Vergärung) | Spuren | Katalytische Oxidation | CO_{2} + H_{2}O (zurück zu den Pflanzen) |
| NH_{3} (aus Kompostierung) | Spuren | Biofilter (nitrifizierende Bakterien) | NO_{3}⁻ (Flüssigdünger) |
| VOC (aus Materialien) | Spuren | Aktivkohle-Adsorption | Gereinigte Luft |

#### 3.3.4 Chemie- und Rohstoffrückgewinnung

Das geschlossene System produziert auch Spezialprodukte:

| Produkt | Quelle | Prozess | Verwendung |
|---|---|---|---|
| **Stickstoffdünger (Harnstoff)** | Urin | Konzentration + Kristallisation | Landwirtschaft |
| **Phosphorsalze** | Grauwasser + Kompost-Sickerwasser | Struvit-Fällung (MgNH_{4}PO_{4}) | Landwirtschaft |
| **Kaliumsalze** | Pflanzenasche + Kompost-Sickerwasser | Auslaugung + Verdampfung | Landwirtschaft |
| **Pflanzenkohle** | Ernterest-Pyrolyse | Pyrolyse bei 400 °C | Bodenverbesserer, Wasserfiltration |
| **Methan (CH_{4})** | Anaerobe Vergärung von Lebensmittelabfällen | Mesophile Vergärung (35 °C) | Brennstoff für Heizung oder Sabatier-Input |
| **Sauerstoff (O_{2})** | Wasserelektrolyse-Backup | PEM-Elektrolyse | Atmosphären-Ergänzung |
| **Wasserstoff (H_{2})** | Wasserelektrolyse | PEM-Elektrolyse | Sabatier-Reaktor-Input |

### 3.4 Nährstoff-Massenbilanz

Eine vereinfachte jährliche Nährstoffbilanz für 4 Crew:

| Nährstoff | Bedarf (kg/Jahr) | Aus Abfall-Recycling (kg/Jahr) | Aus ISRU (kg/Jahr) | Bilanz |
|---|---|---|---|---|
| Stickstoff (N) | 40 | 30 (aus Urin + Kompostierung) | 10 (aus atmosphärischer N_{2}-Fixierung) | Ausgeglichen |
| Phosphor (P) | 8 | 6 (aus Struvit + Kompost) | 2 (aus Regolith-Extraktion) | Ausgeglichen |
| Kalium (K) | 15 | 10 (aus Pflanzenasche + Kompost) | 5 (aus Regolith) | Ausgeglichen |
| Kohlenstoff (C) | 200 | 180 (aus CO_{2} + Biomasse-Kreislauf) | 20 (aus atmosphärischem CO_{2}) | Ausgeglichen |
| Wasser (H_{2}O) | 36.500 L | 34.675 L (95 \% Recycling) | 1.825 L (aus Eisextraktion) | Ausgeglichen |

---

## 4. Landwirtschaftssystem

### 4.1 Designparameter

| Parameter | v1 | v2.0 |
|---|---|---|
| Agrar-Basisfläche | 200 m² (50 m²/Person) | **400 m² (100 m²/Person)** |
| Vertikale Ebenen | 1 | **3 Ebenen in der Kühlzone** |
| Effektive Anbaufläche | 200 m² | **~1.200 m²** |
| Algen-Bioreaktoren | 20 m² | **40 m²** |
| Aquaponik-System | — | **30 m² Fischtanks + Anbaubeete** |
| LED-Zusatzbeleuchtung | — | **Vollspektrum, 18 h Photoperiode** |
| Anbaumethode | Bodenbasiert | **Hybrid: Hydroponik + Bodenbeete** |

### 4.2 Kulturpflanzenauswahl und Ertragsziele

Die Pflanzenauswahl ist optimiert für Kaloriedichte, Wachstumsgeschwindigkeit, Nährstoffvollständigkeit und CO_{2}-zu-O_{2}-Umwandlungseffizienz:

| Kulturpflanze | Fläche (m²) | Ertrag (kg/m²/Jahr) | Kalorien (kcal/kg) | Jährliche kcal | Rolle |
|---|---|---|---|---|---|
| **Kartoffeln** | 200 | 15 | 770 | 2.310.000 | Grundnahrung Kohlenhydrate |
| **Sojabohnen** | 150 | 3 | 1.460 | 657.000 | Protein + Öl |
| **Weizen** | 200 | 4 | 3.390 | 2.712.000 | Grundnahrung Getreide |
| **Reis** | 100 | 5 | 1.300 | 650.000 | Grundnahrung Getreide |
| **Salat/Blattgemüse** | 150 | 20 | 150 | 450.000 | Vitamine + Mineralstoffe |
| **Tomaten** | 100 | 30 | 180 | 540.000 | Vitamine + Moral |
| **Süßkartoffeln** | 100 | 12 | 860 | 1.032.000 | Kohlenhydrate + Vitamin A |
| **Spirulina (Algen)** | 40 | 50 (trocken) | 2.900 | 5.800.000 | Protein + O_{2}-Produktion |
| **Tilapia (Aquaponik)** | 30 | 8 (Fische/m²/Jahr × 0,5 kg) | 960 | 115.200 | Tierisches Protein |
| **Gesamt** | **1.070** | | | **~14.266.200** | |
| **Bedarf** (4 Crew × 2.500 kcal/Tag × 668 Sols) | | | | **~6.680.000** | |

Das System produziert etwa **das Doppelte des Mindest-Kalorienbedarfs** und bietet damit einen Sicherheitspuffer, entsprechend der Biosphere-2-Erkenntnis, dass landwirtschaftliche Engpässe der gefährlichste Fehlermodus sind (die Crew verlor 16 % Körpergewicht trotz „der produktivsten Farm der Welt").

### 4.3 Aquaponik-Integration

Ein geschlossenes Fisch-Pflanzen-System bietet Proteinvielfalt und Nährstoffkreislauf:

```
┌─────────────┐     ┌──────────────┐     ┌──────────────┐
│ Fischtanks  │────>│ Biofilter    │────>│ Anbaubeete   │
│ (Tilapia)   │     │ (NH_{3}→NO_{3}⁻)   │     │ (Salat,      │
│ 30 m²       │     │              │     │  Tomaten)    │
│ 28°C        │     └──────────────┘     │              │
│             │<─────────────────────────│ Rückwasser   │
└─────────────┘                          └──────────────┘
      │                                         │
      ▼                                         ▼
  Fischabfälle                            Sauberes Wasser
  (Dünger)                                (zurück in Tanks)
```

- **Fischart:** Tilapia (*Oreochromis niloticus*) — robust, schnellwachsend, omnivor, bereits in Biosphere 2's Reis-Azolla-Teichsystem eingesetzt
- **Futter:** Spirulina + Erntereste + Insektenmehl (Schwarze Soldatenfliegen-Larven, gefüttert mit Lebensmittelabfällen)
- **Ertrag:** ~120 kg Fisch/Jahr (30 g Protein/Tag für 4 Crew)

### 4.4 Beleuchtungssystem

Der Mars empfängt nur ~43 % der irdischen Sonneneinstrahlung (590 W/m² Spitze auf dem Mars vs. 1.361 W/m²). Während globaler Staubstürme (2–8 Wochen Dauer) kann der Solareintrag auf 10–20 % des Nominalwerts sinken.

**Ergänzende LED-Anlage:**
- Vollspektrum-LEDs (rot 660 nm + blau 450 nm + weiß) — optimiert für photosynthetisch aktive Strahlung (PAR)
- Leistungsbedarf: ~50 W/m² × 1.200 m² effektive Fläche × 18 h/Tag = **1.080 kWh/Tag** bei Volllast
- Bei klaren Bedingungen: LEDs ergänzen Sonnenlicht (reduziert auf ~30 % Leistung)
- Bei Staubstürmen: LEDs bei 100 % zur Aufrechterhaltung des Pflanzenwachstums
- Lichtplanung: 18 h Licht / 6 h Dunkelheit (optimiert für die meisten Kulturpflanzen)

---

## 5. Energiesystem

### 5.1 Stromerzeugung

| Quelle | Kapazität | Jahresertrag | Anmerkungen |
|---|---|---|---|
| Dach-Solarpaneele | 1.000 m² × ~150 W/m² Spitze | ~973.392 kWh/Marsjahr | Staubsturm-Degradation: 10–20 \% |
| Radioisotopen-Heizeinheiten (RHU) | 3 × 1 kW thermisch | ~26.280 kWh thermisch/Jahr | Nur Backup-Wärme |

### 5.2 Leistungsbudget

| System | Tagesverbrauch (kWh) | Priorität |
|---|---|---|
| Lebenserhaltung (Atmosphäre, Temperatur) | 120 | **Kritisch** |
| Agrar-Beleuchtung (LEDs) | 400–1.080 | **Hoch** |
| Wasserrecycling | 30 | **Kritisch** |
| Abfallverarbeitung | 15 | **Mittel** |
| ISRU-Verarbeitung | 50 | **Niedrig** |
| Crew-Systeme (Licht, Kochen, Kommunikation) | 40 | **Mittel** |
| Laborausrüstung | 20 | **Niedrig** |
| **Nominal gesamt** | **~675–1.355** | |
| **Verfügbar (klarer Tag)** | **~1.460** | 973.392 ÷ 668 Sols |

### 5.3 Energiespeicherung und Lastmanagement

- **Batteriebank:** 200 kWh LFP (aufgewertet vom v2-Vorschlag mit 100 kWh)
  - Versorgt ~72 Stunden kritische Systeme (Lebenserhaltung + Wasser + minimale Agrar-Beleuchtung)
  - Gewicht: ~1.600 kg
- **Lastpriorisierung bei Staubstürmen:**
  1. Lebenserhaltung (Atmosphäre, Temperatur) — immer an
  2. Wasserrecycling — immer an
  3. Agrar-Beleuchtung — reduziert auf 30 % (nur kritische Kulturen)
  4. Crew-Systeme — reduziert
  5. Labor + ISRU — ausgesetzt

---

## 6. Strahlenschutz

### 6.1 Strahlungsumgebung

Marsoberflächenstrahlung (MSL/RAD-Daten):
- GCR-Dosisrate: ~0,67 mSv/Tag (~244 mSv/Jahr)
- SPE-Ereignisse: bis zu 50 mSv in Stunden (selten, aber gefährlich)
- NASA-Karrierelimit: 600 mSv (alters-/geschlechtsabhängig)

### 6.2 Mehrschichtiges Abschirmungsdesign

| Schicht | Position | Material | Dicke | Dosisreduktion |
|---|---|---|---|---|
| **Regolith-Decke** | Dach (über Solarpaneelen) | Marsianischer Regolith | 50 cm (~80 g/cm²) | ~50 \% GCR |
| **Wasserwände** | Seitenwände (Doppelglas) | Wasser | 10–20 cm | ~20–30 \% GCR + exzellente Neutronenabschirmung |
| **Wasserstoffreiches Polyethylen** | Sturmschutzbunker-Wände | HDPE-Paneele | 10 cm | Zusätzlich ~15 \% für Bunker |
| **Regolith-Wall** | Sturmschutzbunker | Verdichteter Regolith | ≥ 2 m Überdeckung | ~90 \% gesamt für Bunker |

### 6.3 Sturmschutzbunker

- **Lage:** Zentraler Bereich der gemäßigten Zone
- **Fläche:** ~20 m² (5 m × 4 m)
- **Kapazität:** 4 Crew für bis zu 72 Stunden
- **Abschirmung:** ≥ 2 m Regolith-Überdeckung + Wasserwände an allen Seiten
- **Ausstattung:** Notfall-Lebenserhaltung, 200 L Wasser, Nahrungsrationen (72 h), Medizinset, Kommunikationsterminal
- **Effektive Dosisrate im Bunker:** < 0,05 mSv/Tag

### 6.4 Kombinierte Abschirmungsleistung

| Standort | Dosisrate (mSv/Tag) | Jahresdosis (mSv) |
|---|---|---|
| Ungeschirmte Marsoberfläche | 0,67 | 244 |
| Im Habitat (allgemein) | ~0,20–0,25 | ~73–91 |
| Im Sturmschutzbunker | < 0,05 | < 18 |
| NASA-Karrierelimit (Referenz) | — | 600 |

Ein 2-Jahres-Aufenthalt bei ~0,22 mSv/Tag = ~160 mSv — deutlich innerhalb der NASA-Karrierelimits.

---

## 7. Crew-Routinen — operative Abläufe

### 7.1 Designphilosophie

Strukturierte Abläufe sind essenziell für Gesundheit, Moral und Produktivität der Crew. Forschung aller wichtigen Analogprojekte bestätigt:

- **ISS:** Hochstrukturierter 16-Stunden-Arbeits- / 8-Stunden-Schlafplan verhindert Abdriften
- **MARS-500:** Unstrukturierte Zeit führte zur zunehmenden Inaktivität der Crew; 4 von 6 entwickelten Schlafstörungen
- **Biosphere 2:** Fraktionsbildung wurde durch Meinungsverschiedenheiten über tägliche Prioritäten verschärft
- **HI-SEAS:** Crew erledigte 40 Aufgaben/Woche; strukturierte Aktivitäten erhielten das Engagement aufrecht
- **Concordia:** Zirkadiane Störung während der Polarnacht erfordert strenge Licht/Dunkel-Planung

### 7.2 Tagesablauf (Sol = 24 h 37 min)

Der Tagesablauf folgt einem **16/8-Rhythmus** (16 h aktiv, 8 h Schlaf), mit Anpassung an den geringfügig längeren Marstag:

| Zeit (Mars lokal) | Dauer | Aktivität | Zone |
|---|---|---|---|
| 06:00–06:30 | 30 min | Aufstehen, Körperhygiene | Warm |
| 06:30–07:00 | 30 min | Morgen-Gesundheitscheck (Gewicht, Vitalzeichen, Stimmungstagebuch) | Warm |
| 07:00–07:45 | 45 min | Frühstück (gemeinschaftlich) | Warm |
| 07:45–08:00 | 15 min | Tagesbriefing + Aufgabenverteilung | Gemäßigt |
| 08:00–10:00 | 2 h | **Landwirtschaftliche Pflege** — Ernte, Aussaat, Schnitt, Nährstoffkontrollen | Kühl |
| 10:00–10:15 | 15 min | Pause | — |
| 10:15–12:15 | 2 h | **Wissenschaft / Laborarbeit** — Experimente, Datenanalyse, Erd-Kommunikation | Gemäßigt |
| 12:15–13:00 | 45 min | Mittagessen (gemeinschaftlich) | Warm |
| 13:00–13:30 | 30 min | **Siesta / persönliche Zeit** | Warm |
| 13:30–15:30 | 2 h | **Wartung + Technik** — Systemchecks, Reparaturen, ISRU | Gemäßigt |
| 15:30–15:45 | 15 min | Pause | — |
| 15:45–17:00 | 1,25 h | **EVA oder Training** (2 Crew, abwechselnde Paare) oder Indoor-Sport | Verschieden |
| 17:00–18:00 | 1 h | **Pflichttraining** — Krafttraining + Ausdauer | Warm |
| 18:00–18:30 | 30 min | Körperhygiene + Dusche | Warm |
| 18:30–19:15 | 45 min | Abendessen (gemeinschaftlich) | Warm |
| 19:15–20:00 | 45 min | **Abendbriefing** — Logbucheinträge, Planung nächster Sol, Erd-Video-Uplink | Gemäßigt |
| 20:00–22:00 | 2 h | **Persönliche Zeit** — Freizeit, Lesen, Videoanrufe, Hobbys | Warm / Kabinen |
| 22:00–06:00 | 8 h | **Schlaf** (Einzelkabinen, blaulichtfrei) | Kabinen |

**Kritische Design-Merkmale:**
- **Drei gemeinsame Mahlzeiten** — Biosphere 2 und HI-SEAS fanden, dass gemeinsame Mahlzeiten die wichtigste soziale Bindungsaktivität sind
- **Pflichttraining** — ISS-Protokoll: 2 h/Tag (1 h Kraft + 1 h Ausdauer) verhindert Knochenverlust (~1,5 %/Monat) und Muskelatrophie
- **Morgen-Gesundheitscheck** — Körpergewicht, Blutdruck, Pulsoximetrie, Stimmungs-Selbsteinschätzung auf einer 1–10-Skala (MARS-500-Erkenntnis: Frühwarnung bei psychologischen Problemen ist kritisch)
- **Persönliche Zeit** — Mindestens 2 h/Tag unverplante Zeit (ISS-Erkenntnis: Überplanung verursacht Crew-Rebellion — siehe Skylab-4-„Streik")
- **Blaulicht-Sperre** — Kein Blaulicht-Spektrum nach 20:00 (Concordia-Forschung zeigt: zirkadiane Störung ist ein Hauptproblem in Isolation)

### 7.3 Wochenplan

Jeder Sol hat einen primären Fokus. Die Woche ist als **6-Tage-Arbeit / 1-Tag-Ruhe**-Zyklus strukturiert (konsistent mit ISS-Betrieb):

| Sol | Fokus | Besondere Aktivitäten |
|---|---|---|
| **Sol 1 (Montag)** | Landwirtschaft | Intensive Ernte; Fruchtfolgeplanung; Keimkontrollen; Kompost umsetzen |
| **Sol 2 (Dienstag)** | Wissenschaft | Laborexperimente; geologische Probenanalyse; Erd-Daten-Downlink |
| **Sol 3 (Mittwoch)** | Technik | Systemwartung; Filterwechsel; Druckprüfungen; ISRU-Betrieb |
| **Sol 4 (Donnerstag)** | EVA-Tag | Paar-EVA (2 Crew, 4 h); Regolith-Sammlung; Außeninspektion; Sensorinstallation |
| **Sol 5 (Freitag)** | Medizin + Training | Vollständige medizinische Untersuchungen; Notfallübungen; Kompetenz-Kreuztraining |
| **Sol 6 (Samstag)** | Haushalt | Grundreinigung; Wäsche; Abfallverarbeitungs-Check; Bestandsaufnahme |
| **Sol 7 (Sonntag)** | **Ruhetag** | Keine geplante Arbeit; persönliche Projekte; Erholung; Crew-Sozialaktivitäten; Familiengespräche zur Erde |

**Wöchentliche Pflichtaktivitäten:**
- 1 × EVA-Ausfahrt (2 Crew, mindestens 4 h)
- 1 × Notfallübung (Feuer, Druckverlust, Medizin, Kommunikationsausfall — rotierend)
- 1 × Crew-Versammlung (offene Diskussion von Problemen, Moralcheck)
- 1 × Grundreinigung aller Gemeinschaftsbereiche
- 1 × Wasserqualitätsanalyse (mikrobiell + chemisch)
- 1 × Atmosphärenzusammensetzungs-Überprüfung (manueller Gegencheck der Sensoren)

### 7.4 Monatsplan

Monatliche Aktivitäten ergänzen den Wochenzyklus:

| Woche | Monatsaktivität |
|---|---|
| **Woche 1** | **Erntezyklus-Review** — Erträge vs. Ziele bewerten; Pflanzpläne anpassen; erschöpfte Nährlösungen ersetzen; pH-Sensoren rekalibrieren |
| **Woche 2** | **System-Grundwartung** — Vollständige Inspektion aller Lebenserhaltungssubsysteme; HEPA-Filter ersetzen; Wasserfiltrationsmembranen reinigen; Backup-Stromsysteme testen |
| **Woche 3** | **Medizinische Überprüfung** — Umfassende Gesundheitsbeurteilung: Blutbild, Knochendichte-Scan (portabler DXA), psychologische Evaluation (standardisierter Fragebogen + Videocall mit Erd-Psychologe); Sehtest (ICP-Monitoring) |
| **Woche 4** | **Wissenschaftsbericht + Planung** — Monatlicher Wissenschaftsbericht kompiliert und zur Erde übermittelt; Review experimenteller Ergebnisse; Planung der Experimente des Folgemonats; Bestandsabgleich |

**Monatlich erfasste Kennzahlen:**

| Kategorie | Kennzahlen |
|---|---|
| Landwirtschaft | Ernteerträge (kg); O_{2}-Produktionsrate; CO_{2}-Fixierungsrate; Wasserverbrauch; Schädlings-/Krankheitsinzidenz |
| Lebenserhaltung | Wasserrückgewinnungsrate (\%); Luftzusammensetzung (O_{2}, CO_{2}, Spurengase); Stromverbrauch; Abfallverarbeitungsdurchsatz |
| Medizin | Körpermasse; Knochendichte; Blutdruck; HbA1c; Immunmarker; Schlafqualität (Aktigraphie); Stimmungstrends |
| Technik | Systemverfügbarkeit (\%); Reparaturhäufigkeit; Verbrauchsmaterial-Bestand; ISRU-Ausstoß |
| Psychologie | Crew-Kohäsion (Soziometrie); Stressindikatoren; Konfliktvorfälle; Moralindex |

### 7.5 Jahresplan (Marsjahr = 668,6 Sols)

Der Jahresplan richtet sich nach den **Marsjahreszeiten** (Mars hat eine Achsneigung von 25,19°, was erdähnliche Jahreszeiten erzeugt, aber ~doppelt so lang):

| Zeitraum (Sols) | Jahreszeit | Fokus | Schlüsselereignisse |
|---|---|---|---|
| **Sol 1–167** | Nördlicher Frühling | **Aufbauphase** | Große Pflanzaktionen; Außenbau/-reparatur (ruhiges Wetter); wissenschaftliche Erkundungskampagnen; EVA-Frequenz: 2/Woche |
| **Sol 168–334** | Nördlicher Sommer | **Produktivitätsphase** | Spitzenernte; maximale Solarenergie; ISRU-Produktion; Langstrecken-EVA-Expeditionen; geringstes Staubsturmrisiko |
| **Sol 335–501** | Nördlicher Herbst | **Vorbereitungsphase** | Erntespeicherung; Systemvorbereitung für Winter; Staubsturmvorbereitung; Batterie-Lademaximierung; reduzierte EVA |
| **Sol 502–668** | Nördlicher Winter | **Konservierungsphase** | Reduzierter Solareintrag; Staubsturmsaison; Fokus auf Indoor-Wissenschaft, Wartung, Training; LED-Landwirtschaft auf Volllast; Sturmschutzbunker-Bereitschaft |

**Jährliche Meilensteine:**

| Sol | Meilenstein |
|---|---|
| Sol 1 | Neujahrszeremonie; Jahresziele setzen; Crew-Rollenrotation überprüfen |
| Sol 50 | Erste große Ernte-Überprüfung |
| Sol 167 | Frühlingsreview; Veröffentlichung des ersten saisonalen Wissenschaftsberichts |
| Sol 334 | Halbjahres-Gesundheitsuntersuchung; psychosoziale Beurteilung |
| Sol 400 | Staubsturm-Bereitschaftsübung (vollständige 72-h-Bunkerübung) |
| Sol 500 | Wintersonnenwende-Feier; Crew-Wertschätzungsevent |
| Sol 600 | Vor-Jahresreview-System-Audit |
| Sol 668 | Jahresreview; Datenzusammenstellung; Planung nächstes Jahr |

### 7.6 Simulations- und Validierungsmethodik

Jedes operative System folgt einem rigorosen Fünf-Stufen-Zyklus:

```
┌───────────────┐     ┌──────────┐     ┌────────────┐
│ Untersuchung  │────>│  Modell  │────>│ Simulation │
│ (Beobachten & │     │ (Theorie │     │ (Digitalen │
│  Messen)      │     │  bilden) │     │  Zwilling  │
└───────────────┘     └──────────┘     │  laufen    │
       ▲                               │  lassen)   │
       │                               └─────┬──────┘
       │                                     │
       │                                     ▼
┌──────┴───────────┐              ┌──────────────────┐
│ Wissenschaftliche│<─────────────│   Validierung    │
│ Bewertung &      │              │ (Modell vs.      │
│ Veröffentlichung │              │  Realität        │
└──────────────────┘              │  vergleichen)    │
                                  └──────────────────┘
```

**Angewendet auf jede Domäne:**

| Domäne | Untersuchung | Modell | Simulation | Validierung | Bewertung |
|---|---|---|---|---|---|
| **Landwirtschaft** | Wöchentliche Messung: Ernteerträge, Wachstumsraten, Nährstoffaufnahme | Wachstumsmodelle: Ertrag = f(Licht, Temperatur, Nährstoffe, CO_{2}) | Digitalen Zwilling mit variablen Inputs ausführen (Staubsturm-Szenarien, Nährstoffmangel) | Vorhergesagte vs. tatsächliche Erträge monatlich vergleichen | Saisonale landwirtschaftliche Leistungsberichte veröffentlichen |
| **Wasserkreislauf** | Tägliche Überwachung: Durchflussraten, Qualitätsparameter, Rückgewinnungsrate | Massenbilanzmodell: Inputs, Verluste, Recycling-Effizienz | Ausfallmodi simulieren (Pumpenausfall, Membranverschmutzung) | Modellvorhersagen vs. Sensordaten vergleichen | Jährlicher Wasserkreislauf-Leistungsbericht |
| **Abfall-Kreislauf** | Kompostreife, Nährstoffgehalt, mikrobielle Aktivität verfolgen | Nährstoffflussmodell: N-, P-, K-Bilanz über alle Abfallströme | Optimale C:N-Verhältnisse, Temperaturprofile, Verweilzeiten simulieren | Kompostproben im Labor gegen Modellvorhersagen testen | Abfall-zu-Ressource-Umwandlungseffizienz-Daten veröffentlichen |
| **Energie** | Tägliche Protokollierung: Stromerzeugung, -verbrauch, Speicherstände | Energiebilanzmodell mit saisonaler Solarvarianz | Staubsturm-Szenarien simulieren (2, 4, 8 Wochen Dauer) | Tatsächliche Energiereserven vs. Modell bei echten Stürmen vergleichen | Jährlicher Energiesystem-Leistungsbericht |
| **Crew-Gesundheit** | Tägliche Vitalzeichen, wöchentliche Stimmungsumfragen, monatliche Blutbilder | Crew-Gesundheitsmodell: Fitness = f(Sport, Ernährung, Schlaf, Stress) | Gesundheitsverläufe bei reduziertem Sport / schlechtem Schlaf vorhersagen | Mit tatsächlichen medizinischen Daten vergleichen | Beitrag zur interplanetaren Medizinliteratur |
| **Struktur** | Druck, Temperaturgradienten, Materialermüdungssensoren überwachen | FEA-Modell der Struktur unter Marsbedingungen | Extremereignisse simulieren (Meteoriteneinschlag, Staubsturmbelastung) | Sensordaten vs. Modellvorhersagen vergleichen | Technische Leistungsberichte |

---

## 8. In-Situ-Ressourcennutzung (ISRU)

### 8.1 Verfügbare marsianische Ressourcen

| Ressource | Quelle | Verfügbarkeit | Verarbeitung |
|---|---|---|---|
| **SiO_{2} (Siliziumdioxid)** | Regolith (~45 \% SiO_{2}) | Reichlich | Glas, Silikonkautschuk, Aerogel |
| **Fe_{2}O_{3} (Eisenoxid)** | Regolith (~18 \% Fe_{2}O_{3}) | Reichlich | Eisen/Stahl für Werkzeuge, Strukturen |
| **CO_{2}** | Atmosphäre (95,3 \%) | Praktisch unbegrenzt | Sabatier → CH_{4} + O_{2}; Ausgangsstoff für Pflanzenwachstum |
| **N_{2}** | Atmosphäre (2,7 \%) | Begrenzt, aber extrahierbar | Dünger (Haber-Bosch benötigt H_{2} + N_{2}) |
| **H_{2}O (Eis)** | Unterirdische Eisvorkommen | Standortabhängig | Wasser, H_{2} (Elektrolyse), O_{2} |
| **Ar (Argon)** | Atmosphäre (1,6 \%) | Verfügbar | Schutzgas zum Schweißen, Brandlöschung |
| **Al_{2}O_{3}, TiO_{2}, MgO** | Regolith | Nebenbestandteile | Aluminium-, Titan-Extraktion (langfristig) |

### 8.2 ISRU-Prozesskette

**Phase 1 (ab Sol 1): Atmosphärenverarbeitung**
- CO_{2}-Sammlung + Sabatier-Reaktion: CO_{2} + 4H_{2} → CH_{4} + 2H_{2}O
- Produziert Methan (Brennstoff/Heizung) + Wasser
- Wasserelektrolyse: 2H_{2}O → 2H_{2} + O_{2}
- Sauerstoff für Atmosphäre; Wasserstoff wird zum Sabatier-Reaktor zurückgeführt

**Phase 2 (ab Sol 100): Regolith-Verarbeitung**
- Regolith-Sammlung durch Robotersysteme ([DOI: 10.5281/zenodo.15455156](https://doi.org/10.5281/zenodo.15455156))
- Silika-Extraktion für Glasreparatur und Silikonkautschuk-Produktion
- Eisenoxid-Reduktion für einfache Metallwerkzeuge
- Regolith-Sintern für Baumaterialsteine

**Phase 3 (ab Sol 300): Chemische Fertigung**
- Haber-Bosch-Verfahren (N_{2} + H_{2} → NH_{3}) — erfordert erhebliche Energie, ermöglicht aber Düngerunabhängigkeit
- Perchlorat-Reduktion aus Regolith — Entgiftung von Marsboden für die Landwirtschaft
- Wassergewinnung aus unterirdischen Eisvorkommen

### 8.3 ISRU-Anlagen-Anforderungen

| Ausrüstung | Masse (kg) | Leistung (kW) | Standort |
|---|---|---|---|
| CO_{2}-Sammler + Kompressor | 200 | 2 | Außen |
| Sabatier-Reaktor | 150 | 1 | Gemäßigte Zone |
| Wasserelektrolyse-Einheit | 100 | 5 | Gemäßigte Zone |
| Regolith-Verarbeitungsofen | 300 | 8 | Außen (geschirmt) |
| Haber-Bosch-Minireaktor | 200 | 3 | Gemäßigte Zone |
| **Gesamt** | **950** | **19 Spitze** | |

---

## 9. Medizinische und psychologische Unterstützung

### 9.1 Medizinische Einrichtung

In der gemäßigten Zone gelegen, umfasst die Krankenstation ~15 m²:

| Ausrüstung | Zweck |
|---|---|
| Portabler Ultraschall | Diagnostische Bildgebung (ersetzt Röntgen — keine Strahlungsquelle nötig) |
| Blutanalysegerät (Point-of-Care) | Blutbild, Stoffwechselpanel, HbA1c, CRP, Elektrolyte |
| Portabler DXA-Scanner | Knochendichte-Monitoring (kritisch für Mars-Gravitation: 0,38 g) |
| Chirurgisches Set (klein) | Wundversorgung, Zahnextraktion, Abszessdrainage |
| Apothekenschrank | Antibiotika, Analgetika, Anästhetika, Herzmedikamente, Antidepressiva |
| Defibrillator + AED | Kardiale Notfälle |
| Telemedizin-Terminal | Videokonsultation mit der Erde (4–24 min Verzögerung) |
| Psychologische Assessment-Tools | PHQ-9 (Depression), GAD-7 (Angst), PSQI (Schlafqualität), Crew-Soziometrie |

### 9.2 Psychologisches Unterstützungskonzept

Basierend auf Erkenntnissen aller Analogprojekte:

| Stressor | Gegenmaßnahme | Evidenz |
|---|---|---|
| **Isolation** | Wöchentliche Erd-Videoanrufe; Crew-Sozialevents; abwechslungsreiche Tagesaktivitäten | MARS-500: Crew verbrachte zunehmend Zeit allein; ISS: geplante Familiengespräche essenziell |
| **Enge** | 5 m Deckenhöhe; Glaswände mit Außensicht; unterschiedliche Temperaturzonen; EVA-Möglichkeiten | U-Boote/Antarktis: wahrgenommene Geräumigkeit korreliert mit Moral |
| **Interpersonelle Konflikte** | Konfliktlösungstraining vor der Mission; Einzelkabinen; Ruheraum; monatliche Psychologie-Reviews | Biosphere 2: Crew spaltete sich in zwei Fraktionen; Prävention ist entscheidend |
| **Monotonie** | Rotierende Aufgabenzuweisung; Hobby-Material; Musikinstrumente; Virtual-Reality-Erholung; Feiern von Feiertagen und Meilensteinen | HI-SEAS: 40 Aufgaben/Woche erhielten Engagement; Feiern wichtig |
| **Zirkadiane Störung** | Strikte Lichtplanung (Blaulicht-Sperre ab 20:00); dedizierte Schlafkabinen mit Verdunklung; morgendliche Helllicht-Exposition | Concordia + MARS-500: zirkadiane Störung ist universell in Isolation |
| **Sinnverlust** | Klare Missionsziele; Ziele für wissenschaftliche Veröffentlichungen; geteilte Verantwortung für Nahrungsproduktion; Mentoring-Rollen | ISS: Crew, die sich wissenschaftlich produktiv fühlt, berichtet höhere Zufriedenheit |
| **Gesundheitsangst** | Regelmäßiges medizinisches Monitoring; Telemedizin-Zugang; umfassende Apotheke; Kreuztraining in medizinischen Grundkenntnissen für alle Crew-Mitglieder | Alle Analogprojekte: medizinisches Training für Nicht-Ärzte ist essenziell |

### 9.3 Crew-Auswahlkriterien

Basierend auf Analogforschung sollte die 4-Personen-Crew umfassen:

| Rolle | Kompetenzen | Backup-Kompetenz |
|---|---|---|
| **Kommandant / Ingenieur** | Führung, Maschinenbau/Elektrotechnik | Grundlagen Landwirtschaft, Erste Hilfe |
| **Flugmediziner / Biologe** | Medizin, Biologie, Psychologie | Labortechniken, Notreparatur |
| **Agrarwissenschaftler** | Botanik, Aquakultur, Lebensmitteltechnologie | Wassersysteme, Kompostierung |
| **Geologe / ISRU-Spezialist** | Geologie, Chemie, Robotik | EVA-Spezialist, Kommunikationssysteme |

Alle Crew-Mitglieder müssen kreuztrainiert sein in: Notfallmedizin, Brandbekämpfung, EVA-Betrieb, Grundreparatur aller kritischen Systeme.

---

## 10. Sicherheits- und Notfallsysteme

### 10.1 Notfallszenarien und Reaktionen

| Szenario | Erkennung | Reaktion | Schutzraumzeit |
|---|---|---|---|
| **Schnelle Druckentlastung** | Drucksensoren (< 65 kPa Alarm) | Betroffene Zone abdichten; Notfallmasken anlegen; Leck lokalisieren und abdichten | Minuten |
| **Feuer** | Rauch- + Thermosensoren | CO_{2}-Löscher; Kompartiment abdichten; nach Löschung belüften | Minuten–Stunden |
| **Solare Partikelereignisse** | Weltraumwetterwarnung (8 min Vorwarnung von der Erde) | Crew zum Sturmschutzbunker; dort verbleiben bis Entwarnung | 24–72 Stunden |
| **Staubsturm (groß)** | Atmosphären-Opazitätssensoren | Lastprioritäts-Modus; LED-Landwirtschaft; Batterieschonung | Wochen |
| **Medizinischer Notfall** | Crew-Meldung; Vitalmonitore | Stabilisieren; Telemedizin-Konsultation; chirurgischer Eingriff falls ausgebildet | — |
| **Kommunikationsausfall** | Signal-Timeout | Autonomer Betrieb nach Standardprotokollen; Antennendiagnostik | Tage–Wochen |
| **Wassersystem-Ausfall** | Durchfluss- + Qualitätssensoren | Umschalten auf Notreservoir (10 m³ = 100 Tage bei reduziertem Verbrauch) | Tage |
| **Ernteausfall** | Visuelle + Sensor-Überwachung | Notrationen (6 Monate eingelagert); beschleunigte Neupflanzung | Wochen–Monate |

### 10.2 Notfall-Verbrauchsmaterial

| Gegenstand | Menge | Reichweite (4 Crew) |
|---|---|---|
| Notfall-Nahrungsrationen | 2.400 kg (gefriergetrocknet) | 180 Tage |
| Wasserreserve (Unterboden) | 10.000 L | 100 Tage (bei 25 L/Person/Tag) |
| Sauerstoffkerzen (Backup) | 200 Stück | 60 Tage |
| Medizinische Versorgung | Vollständige Apotheke | 2 Jahre |
| Ersatzteile (kritische Systeme) | Umfassendes Set | — |

---

## 11. Aktualisierte Spezifikationsübersicht

| Parameter | v1 (2024) | v2.0 (2026) | Anmerkungen |
|---|---|---|---|
| Innenhöhe | 3 m | **5 m** | Zwischengeschoss, vertikaler Anbau, Psychologie |
| Grundfläche | 1.000 m² | **1.000 m² + 400 m² Zwischengeschoss** | Nutzbar: ~1.400 m² |
| Innenvolumen | 3.000 m³ | **5.000 m³** | +67 \% |
| Klimazonen | 1 | **3** | Warm / Gemäßigt / Kühl |
| Anbaufläche (effektiv) | 200 m² | **~1.200 m²** | 400 m² Basis × 3 Ebenen |
| Algen-Bioreaktoren | 20 m² | **40 m²** | Verdoppelte Kapazität |
| Aquaponik | — | **30 m² Fischtanks + Anbaubeete** | Tilapia + Gemüse |
| Luftschleusen | 1 | **2 + Notluke** | Redundanz |
| Strahlenschutz | UV-Beschichtung | **Regolith + Wasserwand + Sturmschutzbunker** | Mehrschichtig |
| Wassersystem | Nicht spezifiziert | **Geschlossen, ≥ 93 \% Rückgewinnung + 10 m³ Reserve** | ISS-basiert + Pflanzentranspiration |
| Abfallrecycling | Nicht spezifiziert | **Vollständiger Abfall-zu-Ressource-Kreislauf** | Kompost, Struvit, Pflanzenkohle, Biogas |
| Energiespeicherung | Nicht spezifiziert | **200 kWh LFP + RHU-Backup** | 72 h kritische Autonomie |
| ISRU-Fähigkeit | Nicht spezifiziert | **Atmosphären- + Regolith-Verarbeitung** | CO_{2}→CH_{4}, Silika, Eisen, Dünger |
| Crew-Privatsphäre | Offener Grundriss | **4 Kabinen (12 m²) + Ruheraum** | Schallisolierung STC ≥ 35 |
| Krankenstation | Nicht spezifiziert | **15 m² ausgestattete Einrichtung** | Ultraschall, Apotheke, Telemedizin |
| Sturmschutzbunker | Nicht spezifiziert | **20 m² mit ≥ 2 m Regolith** | 72 h Kapazität für 4 Crew |
| Rahmenmasse | 5.500 kg | **~8.500 kg** | +55 \% |
| Glasfläche (Wände) | ~420 m² | **~700 m²** | +67 \% |
| Crew-Routinen | Nicht spezifiziert | **Vollständige tägliche/wöchentliche/monatliche/jährliche Pläne** | Evidenzbasiert |
| Simulationsframework | Nicht spezifiziert | **5-Stufen-Validierungszyklus pro Domäne** | Untersuchung → Bewertung |

---

## 12. Aktualisierte Kostenschätzung

### 12.1 Materialkosten (ohne Transport)

| Komponente | v1 Kosten | v2.0 geschätzte Kosten | Anmerkungen |
|---|---|---|---|
| Silikonkautschuk + Schaum | 53.500 $ | ~75.000 $ | Mehr Schaum für Trennwände + Kompost-Container |
| Titan/Inconel-Rahmen | 165.000 $ | ~255.000 $ | +55 \% Gewicht für 5 m Höhe |
| Borosilikatglas | 500.000 $ | ~835.000 $ | +67 \% Wandfläche |
| Solarpaneele | 200.000 $ | ~200.000 $ | Dachfläche unverändert |
| Luftschleusen (2 + Luke) | 100.000 $ | ~210.000 $ | 2 Einheiten + Notluke |
| Batteriesystem (200 kWh LFP) | — | ~160.000 $ | Aufgewertet vom v2-Vorschlag |
| Wasserrecycling-System | — | ~200.000 $ | ISS-Grade VCD + Biofilm-Reaktor |
| LED-Wachstumslampen (1.200 m²) | — | ~120.000 $ | Vollspektrum-Agrar-LEDs |
| Aquaponik-System | — | ~50.000 $ | Tanks, Biofilter, Verrohrung |
| Abfallverarbeitungssystem | — | ~80.000 $ | Kompostierung + Wurmkompost + Pyrolyse |
| ISRU-Ausrüstung | — | ~400.000 $ | Sabatier + Elektrolyse + Haber-Bosch |
| Krankenstations-Ausrüstung | — | ~150.000 $ | Ultraschall, DXA, Apotheke, Defibrillator |
| Sturmschutzbunker (Verstärkung) | — | ~50.000 $ | HDPE-Paneele + verstärkte Struktur |
| Notvorräte (6 Monate) | — | ~100.000 $ | Gefriergetrocknete Nahrung, O$_2$-Kerzen, Ersatzteile |
| Sensorik + Automatisierung | — | ~200.000 $ | Umweltüberwachung, digitaler Zwilling |
| **Gesamt (Material)** | **1.018.500 $** | **~3.085.000 $** | **+203 \%** |

### 12.2 Transportkostenauswirkung

Bei SpaceX-Starship-Zielrate von ~200 $/kg in den LEO (mit Mars-Transit-Multiplikator ~2.700 $/kg gesamt):

| Position | Masse (kg) | Transportkosten |
|---|---|---|
| Rahmen + Glas + Luftschleusen | ~27.400 | ~74 Mio. $ |
| Alle anderen Systeme | ~8.600 | ~23 Mio. $ |
| Notvorräte | ~3.000 | ~8 Mio. $ |
| **Gesamt Transport** | **~39.000** | **~105 Mio. $** |
| **Gesamtprojekt (Material + Transport)** | | **~108 Mio. $** |

**Zentrale Erkenntnis:** ISRU-Fähigkeit (400.000 $ auf der Erde) kann Dutzende Millionen an zukünftigen Transportkosten einsparen, indem Ersatzglas, -kautschuk und -metalle auf dem Mars produziert werden. Das ISRU-System amortisiert sich, wenn es auch nur 2.000 kg Frachtmaterial ersetzt.

---

## 13. Vergleich mit irdischen Analogprojekten

| Merkmal | Biosphere 2 | MARS-500 | HI-SEAS | ISS | **Mars GGH v2.0** |
|---|---|---|---|---|---|
| **Umschlossene Fläche** | 12.700 m² | 550 m³ | ~70 m² | ~388 m³ | **1.000 m² (5.000 m³)** |
| **Crew** | 8 | 6 | 6 | 3–6 | **4** |
| **Dauer** | 2 Jahre | 520 Tage | Bis 1 Jahr | 6–12 Monate | **Unbegrenzt** |
| **Nahrungsselbstversorgung** | 83 \% | 0 \% (gelagert) | 0 \% (gelagert) | 0 \% (gelagert) | **Ziel: ≥ 80 \%** |
| **Wasserrecycling** | Teilweise (Kläranlage) | Teilweise | Keines | 93 \% (WRS) | **Ziel: ≥ 95 \%** |
| **Abfallrecycling** | Kompostierung + Kläranlage | Keines | Keines | Teilweise (nur Wasser) | **Vollständiger Kreislauf** |
| **ISRU** | N/A | N/A | N/A | N/A | **Atmosphäre + Regolith** |
| **Strahlenschutz** | N/A | N/A | N/A | Teilweise (ISS-Hülle) | **Mehrschichtig** |
| **Gravitation** | 1 g | 1 g | 1 g | ~0 g | **0,38 g** |

---

## 14. Risikomatrix

| Risiko | Wahrscheinlichkeit | Auswirkung | Gegenmaßnahme | Restrisiko |
|---|---|---|---|---|
| Ernteausfall (Krankheit/Schädlinge) | Mittel | Kritisch | Artenvielfalt; abgedichtete Anbaukammern; biologische Schädlingsbekämpfung; 6-Monats-Nahrungsreserve | Niedrig |
| Wassersystem-Ausfall | Niedrig | Kritisch | Doppelt-redundante Pumpen; 10 m³ Reservoir; manuelle Reinigungsfähigkeit | Niedrig |
| Solarsturm (SPE) | Niedrig | Hoch | Sturmschutzbunker; 8-Minuten-Vorwarnung von der Erde; autonomes Schutzprotokoll | Niedrig |
| Staubsturm (> 4 Wochen) | Mittel | Hoch | 200 kWh Batterie; LED-Landwirtschaft; Lastpriorisierung | Mittel |
| Crew-Konflikte | Mittel | Mittel | Einzelkabinen; Konflikttraining; monatliches Psychologie-Review; Ruheraum | Niedrig |
| Strukturversagen | Sehr niedrig | Kritisch | Drucküberwachung; selbstdichtende Silikonflicken; Notfallmasken; Zonenisolierung | Niedrig |
| Medizinischer Notfall | Niedrig | Hoch | Kreuztrainierte Crew; Telemedizin; umfassende Apotheke; chirurgische Fähigkeit | Mittel |
| ISRU-Ausfall | Mittel | Niedrig | ISRU ist ergänzend, nicht kritisch; alle essenziellen Vorräte bevorratet | Sehr niedrig |

---

## 15. Schlussfolgerung

Version 2.0 des Mars Gummi-Glashauses transformiert das ursprüngliche Konzept von einer strukturellen Machbarkeitsstudie zu einem umfassenden Design für unbegrenzte menschliche Habitation auf dem Mars. Die zentralen Fortschritte sind:

1. **Vom Schutzraum zum Ökosystem** — Das geschlossene Lebenserhaltungssystem mit Abfall-zu-Ressource-Kreislauf schafft eine Mikrosphäre, in der menschlicher Abfall Pflanzen ernährt, die Menschen ernähren — ein Annäherung an das Ideal eines sich selbst erhaltenden Systems.

2. **Vom Bauplan zum Betriebshandbuch** — Strukturierte tägliche, wöchentliche, monatliche und jährliche Routinen, informiert durch Jahrzehnte analoger Erfahrung, adressieren die Humanfaktoren, die isolierte Gemeinschaften zum Erfolg oder Scheitern bringen.

3. **Von erdabhängig zu marsnativ** — Die ISRU-Strategie reduziert schrittweise die Abhängigkeit von Erdnachschub, im Einklang mit der Drei-Stufen-Evolution hin zu autonomen Strukturen ([DOI: 10.5281/zenodo.16540444](https://doi.org/10.5281/zenodo.16540444)).

4. **Von theoretisch zu validiert** — Die Fünf-Stufen-Simulationsmethodik stellt sicher, dass jedes System kontinuierlich untersucht, modelliert, simuliert, validiert und wissenschaftlich bewertet wird.

Die ca. 3 Mio. $ Materialkosten (bzw. ~108 Mio. $ inkl. Transport) positionieren das Mars Gummi-Glashaus als ernsthaften Kandidaten für frühe Marsbesiedelung. Mit zunehmender Reife der ISRU-Fähigkeiten und sinkenden Transportkosten — SpaceX peilt 200 $/kg in den LEO innerhalb des Jahrzehnts an — wird die Wirtschaftlichkeit zunehmend günstiger.

> *„Ein Haus ist erst ein Zuhause, wenn es bewohnt wird. Auf dem Mars ist ein Haus erst ein Zuhause, wenn es das Leben in seinem Inneren erhalten kann — auf unbestimmte Zeit, anmutig und in Würde."*

---

## 16. Nächste Schritte

1. **Erdprototyp** — Bau eines maßstabsgetreuen v2.0-Prototyps auf der Erde (~3 Mio. $) zur Validierung von Struktur-, Landwirtschafts- und Lebenserhaltungssystemen
2. **Digitaler Zwilling** — Entwicklung eines umfassenden Simulationsmodells, das alle Subsysteme für Szenariotests integriert
3. **Geschlossene-Kreislauf-Tests** — Durchführung eines 6-monatigen Testlaufs in einem versiegelten Habitat mit 4 Crew im Erdprototyp
4. **ISRU-Validierung** — Test der Regolith-Verarbeitung mit JSC Mars-1-Simulant
5. **Peer Review** — Designprüfung durch Materialwissenschaftler, Lebenserhaltungsingenieure und Psychologen
6. **Zenodo v2 Release** — Veröffentlichung aller aktualisierten Dokumente mit querverwiesenen DOIs
7. **Integration mit Mars Field Laboratories** — Planung robotischer Vorstationierung für Regolith-Ernte und Standortvorbereitung ([DOI: 10.5281/zenodo.15455156](https://doi.org/10.5281/zenodo.15455156))
8. **Phase-2-Übergang** — Beginn des Designs für das biomimetische Silika-Aerogel-Upgrade gemäß der Drei-Stufen-Evolutions-Roadmap

---

## 17. Referenzen

1. NASA Baseline Values and Assumptions Document (BVAD), NASA/TP-2015-218570
2. Hassler, D. M. et al. (2014). Mars' Surface Radiation Environment Measured with the Mars Science Laboratory. *Science*, 343(6169).
3. Wheeler, R. M. (2017). Agriculture for Space: People and Places Paving the Way. *Open Agriculture*, 2(1), 14–32.
4. Nelson, M. et al. (2009). The water cycle in closed ecological systems: Perspectives from the Biosphere 2 and Laboratory Biosphere systems. *Advances in Space Research*, 44(12), 1404–1412.
5. Allen, J. P. (1991). *Biosphere 2: The Human Experiment*. Penguin Books.
6. Basner, M. et al. (2013). Mars 520-d mission simulation reveals protracted crew hypokinesis. *PNAS*, 110(7), 2635–2640.
7. Binsted, K. et al. (2013). HI-SEAS as an opportunity for long duration instrument/protocol testing. University of Hawaiʻi at Mānoa.
8. Salam, A. (2009). The coldest job on earth. *BMJ*, b2453.
9. Walford, R. L. et al. (1996). "Biospheric medicine" as viewed from the two-year first closure of Biosphere 2. *Aviation, Space, and Environmental Medicine*, 67(7), 609–617.
10. Harrison, A. A. et al. (1991). *From Antarctica to Outer Space: Life in Isolation and Confinement*. Springer.
11. Weyer, C. et al. (2000). Energy metabolism after 2 y of energy restriction: The Biosphere 2 experiment. *American Journal of Clinical Nutrition*, 72(4), 946–953.
12. Haeuplik-Meusburger, S. et al. (2017). Habitability Studies and Full Scale Simulation Research: Preliminary Themes Following HISEAS Mission IV. *ICES Proceedings*.
13. Massinger, R. A. (2024). Mars Rubber-Glass House Project. Zenodo. [DOI: 10.5281/zenodo.16493055](https://doi.org/10.5281/zenodo.16493055)
14. Massinger, R. A. (2024). Three-Step Evolution Towards Biomimetic and Self-Growing Structures. Zenodo. [DOI: 10.5281/zenodo.16540444](https://doi.org/10.5281/zenodo.16540444)
15. Massinger, R. A. (2025). Mars Field Laboratories. Zenodo. [DOI: 10.5281/zenodo.15455156](https://doi.org/10.5281/zenodo.15455156)

---

## Haftungsausschluss

Dieses Dokument und alle zugehörigen Materialien werden „wie besehen" bereitgestellt, ohne Gewähr jeglicher Art. Teile wurden mit Unterstützung von KI-Werkzeugen (Claude von Anthropic, GPT-4 von OpenAI) erstellt. Der Autor übernimmt die volle Verantwortung für den endgültigen Inhalt. Alle Markenzeichen sind Eigentum ihrer jeweiligen Inhaber.

---

**Lizenz:** Creative Commons Namensnennung 4.0 International (CC BY 4.0)

© 2026 Robert Alexander Massinger, München, Deutschland.

Sie dürfen dieses Material für beliebige Zwecke teilen und anpassen, sofern angemessene Quellenangabe erfolgt. Volle Lizenz: https://creativecommons.org/licenses/by/4.0/legalcode