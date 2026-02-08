---
title: "Design Improvements for the Mars Rubber-Glass House – Proposals for v2"
author: "Robert Alexander Massinger"
affiliation: "Robert Alexander Massinger Space Technologies, Munich, Germany"
contact: "robert@robert-alexander-massinger-space-technologies.com"
version: "1.0"
date: 2026-02-08
last-modified: 2026-02-08
status: "draft"
doi: ""
doi-all-versions: ""
zenodo-record: ""
resource-type: "publication"
lang: en
keywords:
  - Mars Habitat
  - Rubber-Glass House
  - Design Improvements
  - Habitability
  - Life Support Systems
  - Radiation Shielding
  - Vertical Farming
  - Thermal Zoning
abstract: |
  This document proposes a set of technical and habitability improvements for
  the Mars Rubber-Glass House, building upon the v1 design published in June 2024.
  Key changes include increasing the interior height from 3 m to 5 m to enable
  mezzanine levels and vertical farming, introducing thermal zoning with three
  climate areas, adding radiation shielding through regolith and water walls,
  expanding agricultural capacity with LED-assisted vertical farming and aquaponics,
  doubling the number of airlocks for redundancy, and addressing previously
  unspecified systems such as water recycling, energy storage, acoustics, and
  crew privacy. Each proposal is justified with references to existing research
  and includes updated material estimates.
license: "CC BY 4.0"
copyright: "© 2026 Robert Alexander Massinger, Munich, Germany"
ai-disclosure: "Claude (Anthropic), GPT-4"
related-publications:
  - title: "Mars Rubber-Glass House Project – Design, Variants, Cost, and Vision for Martian Habitats"
    doi: "10.5281/zenodo.16493055"
    relation: "isNewVersionOf"
  - title: "Three-Step Evolution Towards Biomimetic and Self-Growing Structures"
    doi: "10.5281/zenodo.16540444"
    relation: "references"
  - title: "Mars Field Laboratories: Integrating Autonomous Legged Robots and Cooperative Robotic Clusters"
    doi: "10.5281/zenodo.15455156"
    relation: "references"
history:
  - version: "1.0"
    date: 2026-02-08
    changes: "Initial draft based on v1 gap analysis"
---

# Design Improvements for the Mars Rubber-Glass House – Proposals for v2

## Introduction

The original design of the 1000 m² Mars Rubber-Glass House
([DOI: 10.5281/zenodo.16493055](https://doi.org/10.5281/zenodo.16493055))
establishes a solid foundation for Martian habitat construction using silicone
rubber, borosilicate glass, and titanium/Inconel framing. However, the v1 design
focuses primarily on structural feasibility and cost, while several aspects
critical to long-term habitability remain unaddressed. This document proposes
specific improvements for a v2 revision, informed by ISS operational experience,
NASA's Baseline Values and Assumptions Document (BVAD), Biosphere 2 lessons
learned, and current Mars mission architectures.

---

## 1. Interior Height: 3 m → 5 m

### Problem
The v1 design specifies a 3 m ceiling height — adequate for basic operations but
psychologically constraining for permanent habitation. Research on confined
environments (submarines, Antarctic stations, ISS) consistently shows that
perceived spaciousness is a key factor in crew morale during long-duration missions.

### Proposal
Increase the single-storey interior height to **5 m**, enabling:

- **Mezzanine levels** for private sleeping quarters (2.20 m headroom sufficient)
- **Vertical farming racks** on 3 tiers within the agricultural zone
- **Improved air circulation** — larger volume reduces CO₂ hotspots and thermal
  stratification
- **Psychological benefit** — sense of openness critical for multi-year stays

### Material Impact

| Parameter | v1 (3 m) | v2 (5 m) | Delta |
|---|---|---|---|
| Interior volume | 3,000 m³ | 5,000 m³ | +67% |
| Glass wall area | ~420 m² | ~700 m² | +67% |
| Frame weight | 5,500 kg | ~8,500 kg | +55% |
| Atmosphere mass (at 70 kPa) | ~2.6 t | ~4.3 t | +67% |
| Foundation wall height | 0.5 m | 0.5 m | unchanged |

---

## 2. Thermal Zoning: 1 Zone → 3 Zones

### Problem
The v1 design treats the entire 1000 m² as a single climate volume. Heating
5,000 m³ uniformly to 22 °C is energy-intensive and suboptimal — plants benefit
from cooler temperatures, and laboratories may need stable conditions different
from living areas.

### Proposal
Introduce **three climate zones** separated by lightweight silicone foam partition
walls:

| Zone | Area | Temperature | Purpose |
|---|---|---|---|
| **Warm zone** | ~350 m² | 22–24 °C | Living quarters, sleeping cabins, kitchen |
| **Temperate zone** | ~250 m² | 18–20 °C | Laboratories, workshops, machinery |
| **Cool zone** | ~400 m² | 12–16 °C | Agriculture (cool-night cycles for crops) |

**Energy savings:** Estimated 20–30% reduction in heating load compared to
uniform heating, as the agricultural zone (largest area) operates at lower
temperatures.

---

## 3. Water Management System

### Problem
The v1 design does not address water supply, recycling, or humidity control.
Water is the single most critical resource for crew survival and plant growth.

### Proposal

- **Closed-loop water recycling:** Condensate recovery from air, greywater
  filtration, and urine processing (similar to ISS WRS — Water Recovery System)
- **Target humidity:** 40–60% relative humidity for optimal plant growth and human
  comfort
- **Underfloor reservoir:** 10 m³ water tank integrated into the silicone rubber
  floor slab — the material is inherently watertight
  - Provides ~6 months emergency reserve for 4 crew members
  - Thermal mass helps stabilize interior temperatures
- **Estimated water budget:** ~25 L/person/day (with recycling) vs. ~50 L/day
  without recycling

---

## 4. Radiation Shielding

### Problem
The v1 design mentions UV-protective glass coatings but does not address galactic
cosmic radiation (GCR) or solar particle events (SPE). Mars lacks a global
magnetic field, resulting in surface doses of ~0.67 mSv/day (MSL/RAD measurement).
Over a 2-year stay, this accumulates to ~490 mSv — close to NASA's career limits.

### Proposal
A layered shielding approach:

1. **Regolith layer on the roof** (above solar panels):
   - 50 cm of Martian regolith ≈ 80 g/cm² mass shielding
   - Reduces GCR dose by ~50%
   - Requires regolith harvesting robotics (cross-reference:
     [DOI: 10.5281/zenodo.15455156](https://doi.org/10.5281/zenodo.15455156) –
     Mars Field Laboratories)

2. **Water wall panels** in side walls:
   - 10–20 cm water layer between double-glass panels
   - Excellent hydrogen-rich shielding against secondary neutrons
   - Maintains transparency while providing thermal mass
   - Estimated shielding: additional 20–30% GCR dose reduction

3. **Storm shelter** for SPE events:
   - One reinforced room (~20 m²) with ≥2 m regolith overhead
   - Designed for 4 people for up to 72 hours
   - Includes emergency life support, water, and communications

### Combined shielding estimate
Effective dose reduction to ~0.20–0.25 mSv/day (from 0.67), well within
acceptable limits for multi-year habitation.

---

## 5. Agricultural System Expansion

### Problem
The v1 design allocates 50 m² per person (200 m² total) for food production.
Research from NASA BVAD and Biosphere 2 suggests 80–120 m² per person is more
realistic for full caloric autonomy under controlled-environment agriculture.

### Proposal

- **Increase base agricultural area** to 400 m² (100 m²/person)
- **Vertical farming on 3 tiers** within the 5 m height → effective growing area
  of ~1,200 m²
- **LED supplemental lighting:** Mars receives only ~43% of Earth's solar
  irradiance; supplemental full-spectrum LEDs are essential for crop yields,
  especially in winter or during dust storms
- **Algae bioreactors:** Expand from 20 m² to 40 m² — algae produce more O₂
  and protein per m² than any crop
- **Aquaponics integration:** Closed-loop fish–plant system for protein
  diversification and nutrient cycling
- **Crop selection:** Potatoes, soybeans, wheat, lettuce, tomatoes, spirulina
  (optimized for caloric density and growth speed)

---

## 6. Airlock Redundancy: 1 → 2 + Emergency Hatch

### Problem
The v1 design has a single airlock — a critical single point of failure.
If the airlock jams, leaks, or is blocked by debris, the crew has no EVA
capability and no emergency exit.

### Proposal

- **2 full-size airlocks** at opposite ends of the structure (north and south)
- **1 emergency hatch** (1 m × 1 m) for evacuation only
- Each airlock: 2 m × 2 m × 5 m (unchanged from v1 spec)
- Total added weight: ~1,000 kg (one additional airlock)

Note: The v1 variants document already specifies 2–3 airlocks for multi-storey
configurations. This should be the baseline for all designs.

---

## 7. Energy Storage and Redundancy

### Problem
The v1 design relies exclusively on rooftop solar panels (973,392 kWh/Mars year).
Mars dust storms can last weeks, reducing solar output to 10–20% of nominal.
No energy storage is specified.

### Proposal

- **Battery bank:** Lithium-iron-phosphate (LFP) batteries for at least **72 hours**
  of full autonomy without solar input
  - Estimated capacity: ~80–100 kWh usable storage
  - Weight: ~800 kg
- **Radioisotope heater units (RHU):** Backup heat source for critical systems
  during prolonged dust storms (similar to Mars 2020 MMRTG concept)
- **Load prioritization:** During storms, non-essential systems (some lighting,
  laboratory equipment) are powered down; life support and agriculture lighting
  take priority

---

## 8. Acoustics and Privacy

### Problem
The v1 design describes an open floor plan for 4 people. ISS crew reports
and Antarctic winter-over studies consistently identify **noise and lack of
privacy** as top stressors in confined environments.

### Proposal

- **Individual crew cabins:** 4 modules, each ~12 m² (3 m × 4 m), with:
  - Silicone foam sound insulation (STC rating ≥ 35)
  - Personal lighting and climate control
  - Door or curtain for visual privacy
- **Quiet room:** One additional 12 m² enclosed space for relaxation, reading,
  video calls
- **Acoustic dampening:** Silicone foam panels on ceilings and partition walls
  to reduce reverberation (the glass+rubber structure is inherently reflective)

---

## Updated Specification Summary

| Parameter | v1 | v2 (proposed) | Notes |
|---|---|---|---|
| Interior height | 3 m | **5 m** | Enables mezzanine, vertical farming |
| Floor area | 1,000 m² | 1,000 m² | Unchanged |
| Interior volume | 3,000 m³ | **5,000 m³** | +67% |
| Climate zones | 1 | **3** | Warm / Temperate / Cool |
| Agricultural area | 200 m² | **400 m² + 3 tiers** | Effective ~1,200 m² |
| Algae reactors | 20 m² | **40 m²** | Doubled capacity |
| Airlocks | 1 | **2 + emergency hatch** | Redundancy |
| Radiation shielding | UV coating | **Regolith + water wall + storm shelter** | Multi-layered |
| Water system | Not specified | **Closed-loop + 10 m³ reservoir** | ISS-derived |
| Energy storage | Not specified | **100 kWh battery + RHU backup** | 72 h autonomy |
| Crew privacy | Open plan | **4 cabins + quiet room** | 12 m² each |
| Frame weight | 5,500 kg | **~8,500 kg** | +55% due to height |
| Glass area (walls) | ~420 m² | **~700 m²** | +67% |

---

## Impact on Cost Estimation

A rough adjustment of the v1 cost estimate (materials only, excluding transport):

| Component | v1 Cost | v2 Estimated Cost | Delta |
|---|---|---|---|
| Silicone rubber | $53,500 | ~$60,000 | Floor same, more foam for partitions |
| Titanium/Inconel frame | $165,000 | ~$255,000 | +55% weight |
| Borosilicate glass | $500,000 | ~$835,000 | +67% wall area |
| Solar panels | $200,000 | ~$200,000 | Roof area unchanged |
| Airlock(s) | $100,000 | ~$200,000 | 2 units + hatch |
| Battery system | – | ~$80,000 | New |
| Water recycling system | – | ~$150,000 | New |
| LED grow lights | – | ~$60,000 | New |
| **Total (materials)** | **$1,018,500** | **~$1,840,000** | **+81%** |

The cost increase is significant but justified: the v2 design transforms the
structure from a basic shelter into a genuinely habitable long-term home.

---

## Next Steps

1. Peer review of proposed specifications by materials and life-support engineers
2. Update all source documents with revised parameters
3. Recalculate transport costs for v2 material quantities
4. Integrate with Three-Step Evolution roadmap (Phase 1 → Phase 2 transition)
5. Prepare Zenodo v2 release with updated PDFs

---

## References

- NASA Baseline Values and Assumptions Document (BVAD), NASA/TP-2015-218570
- Hassler, D. M. et al. (2014). Mars' Surface Radiation Environment Measured
  with the Mars Science Laboratory. *Science*, 343(6169).
- Wheeler, R. M. (2017). Agriculture for Space: People and Places Paving the Way.
  *Open Agriculture*, 2(1).
- Biosphere 2 Center (various). Lessons Learned from Biosphere 2 Operations.

---

## Disclaimer

This document and any associated materials are provided "as is", without
warranty of any kind. Portions were generated with the assistance of AI tools
(Claude by Anthropic, GPT-4 by OpenAI). The author assumes full responsibility
for the final content.

All trademarks are property of their respective owners.
