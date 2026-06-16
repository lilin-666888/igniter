<script setup lang="ts">
useHead({
  title: 'Manufacturing — Ceramitell Advanced Industrial Ceramics Factory',
  meta: [{
    name: 'description',
    content: "Ceramitell's ISO 9001-certified ceramics manufacturing facility in Pingxiang, China. 12,000m² production floor, 8 firing kilns, CMM inspection, and in-house powder synthesis.",
  }],
})
</script>

<template>
  <div class="mfg-page">
    <div class="breadcrumb">
      <div class="wrap">
        <NuxtLink to="/">Home</NuxtLink>
        <span class="sep">/</span>
        <NuxtLink to="/about">About</NuxtLink>
        <span class="sep">/</span>
        <span>Manufacturing</span>
      </div>
    </div>

    <section class="mfg-hero">
      <div class="mfg-hero-stripe" />
      <div class="wrap">
        <div>
          <div class="mfg-hero-eyebrow">About Ceramitell · Manufacturing</div>
          <h1>Built in-house,<br><span class="hl">certified to ship.</span></h1>
          <p class="mfg-hero-sub">Ceramitell's <b>12,000 m² production facility</b> in Pingxiang, Jiangxi handles the full ceramic manufacturing chain — from raw Si₃N₄ powder to inspected, packaged finished goods. No subcontracting, no quality surprises.</p>
          <div class="mfg-statbar">
            <div><div class="num">12,000</div><div class="lbl">m² Production Floor</div></div>
            <div><div class="num">8</div><div class="lbl">High-Temp Kilns</div></div>
            <div><div class="num">200+</div><div class="lbl">Employees</div></div>
            <div><div class="num">ISO 9001</div><div class="lbl">Certified</div></div>
          </div>
        </div>
        <div class="mfg-hero-img">
          <div class="mfg-hero-img-ph">
            <div class="ph-icon">🏭</div>
            <div class="ph-lbl">Ceramitell main production building — Pingxiang, Jiangxi</div>
          </div>
          <div class="mfg-hero-img-caption">
            <div>
              <div class="cap-title">Pingxiang Manufacturing Base</div>
              <div class="cap-sub">Established 2014 · Jiangxi, China</div>
            </div>
            <div class="cap-sub" style="text-align: right;">12,000 m² · ISO 9001<br>Full in-house production</div>
          </div>
        </div>
      </div>
    </section>

    <div class="cert-strip">
      <div class="wrap">
        <div class="cs-label">Certifications</div>
        <div class="cs-badges">
          <span>ISO 9001</span>
          <span>IATF 16949</span>
          <span>CE</span>
          <span>RoHS · REACH</span>
          <span>UL Recognized</span>
        </div>
      </div>
    </div>

    <section class="cap-band">
      <div class="wrap">
        <div class="sec-num">Factory at a Glance</div>
        <h2>Numbers that <span class="accent">matter to OEMs</span>.</h2>
        <div class="cap-grid">
          <div class="cap-item">
            <div class="cap-num">12,000<span>m²</span></div>
            <div class="cap-unit">Production Floor</div>
            <div class="cap-desc">Total manufacturing footprint covering powder preparation, pressing, sintering, machining, and inspection.</div>
          </div>
          <div class="cap-item">
            <div class="cap-num">8<span>+</span></div>
            <div class="cap-unit">Sintering Kilns</div>
            <div class="cap-desc">High-temperature kilns ranging from 1,400°C to 1,900°C for Si₃N₄, SiC, Al₂O₃, AlN, and ZrO₂ sintering.</div>
          </div>
          <div class="cap-item">
            <div class="cap-num">500K<span>+</span></div>
            <div class="cap-unit">Units / Year</div>
            <div class="cap-desc">Annual production capacity for igniter and heater products across all voltage variants and custom geometries.</div>
          </div>
          <div class="cap-item">
            <div class="cap-num">48<span>h</span></div>
            <div class="cap-unit">Sample Dispatch</div>
            <div class="cap-desc">Stock SKUs dispatched within 48 hours. Custom prototype manufacturing: 7–14 days from drawing approval.</div>
          </div>
        </div>
      </div>
    </section>

    <section id="workshop" class="s" style="background: #fff;">
      <div class="wrap">
        <div class="sec-num">01 · Workshop</div>
        <h2>Inside the <span class="accent">production facility</span>.</h2>
        <p class="sec-lead">From raw ceramic powder to finished precision components — every step happens under the same roof, under the same quality management system.</p>
      </div>

      <div class="wrap mb-4">
        <div class="ph-card hero-img">
          <div class="ph-img">
            <div class="icon">🏭</div>
            <div class="label">Overview — Main Production Hall · Sintering &amp; Machining Wing</div>
            <div class="replace">Replace with wide-angle production hall photo</div>
          </div>
          <div class="ph-caption ph-caption-dark">
            <div class="cap-num">Overview</div>
            <div class="cap-title">Main Production Hall — Sintering &amp; Precision Machining</div>
            <div class="cap-desc">12,000 m² facility housing Si₃N₄, SiC, Al₂O₃, and ZrO₂ production lines. All operations in-house — no subcontracting.</div>
          </div>
        </div>
      </div>

      <div class="wrap">
        <div class="photo-grid-3 mb-4">
          <div class="ph-card">
            <div class="ph-img">
              <div class="icon">🔥</div>
              <div class="label">Kiln Room — High-Temperature Sintering</div>
              <div class="replace">Replace with kiln room photo</div>
            </div>
            <div class="ph-caption">
              <div class="cap-num">Workshop 01</div>
              <div class="cap-title">Sintering Kilns</div>
              <div class="cap-desc">8 high-temperature kilns from 1,400–1,900°C. Atmosphere-controlled sintering for Si₃N₄ and AlN in N₂ environment.</div>
            </div>
          </div>
          <div class="ph-card">
            <div class="ph-img">
              <div class="icon">⚙️</div>
              <div class="label">CNC Machining Centre — Precision Grinding</div>
              <div class="replace">Replace with CNC grinding photo</div>
            </div>
            <div class="ph-caption">
              <div class="cap-num">Workshop 02</div>
              <div class="cap-title">Precision Machining</div>
              <div class="cap-desc">Diamond-wheel CNC grinding centres for post-sinter machining. Tolerances to ±0.01mm on critical dimensions.</div>
            </div>
          </div>
          <div class="ph-card">
            <div class="ph-img">
              <div class="icon">🏗️</div>
              <div class="label">Green Body Pressing — Isostatic Press Line</div>
              <div class="replace">Replace with pressing line photo</div>
            </div>
            <div class="ph-caption">
              <div class="cap-num">Workshop 03</div>
              <div class="cap-title">Green Body Pressing</div>
              <div class="cap-desc">Dry pressing and cold isostatic pressing for complex ceramic geometries. Consistent green density across production batches.</div>
            </div>
          </div>
        </div>

        <div class="photo-grid-2">
          <div class="ph-card">
            <div class="ph-img ph-img-md">
              <div class="icon">🔬</div>
              <div class="label">Quality Inspection Bay — CMM &amp; Dimensional Check</div>
              <div class="replace">Replace with inspection bay photo</div>
            </div>
            <div class="ph-caption">
              <div class="cap-num">Workshop 04</div>
              <div class="cap-title">Quality Inspection Bay</div>
              <div class="cap-desc">Dedicated quality inspection area with CMM coordinate measuring, optical comparators, and electrical resistance testing for every production lot.</div>
            </div>
          </div>
          <div class="ph-card">
            <div class="ph-img ph-img-md">
              <div class="icon">📦</div>
              <div class="label">Packing &amp; Dispatch — Export Warehouse</div>
              <div class="replace">Replace with warehouse photo</div>
            </div>
            <div class="ph-caption">
              <div class="cap-num">Workshop 05</div>
              <div class="cap-title">Export Packing &amp; Dispatch</div>
              <div class="cap-desc">Stock product warehouse with 48-hour dispatch capability. Export packaging validated for air freight and sea freight to 42 countries.</div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section id="production-lines" class="s" style="background: var(--bg-soft);">
      <div class="wrap">
        <div class="sec-num">02 · Production Lines</div>
        <h2>Full-chain production, <span class="accent">no subcontracting</span>.</h2>
        <p class="sec-lead">Every step from raw powder to finished product happens in our facility. This is why we can guarantee material traceability, consistent quality, and 14-day prototype lead times.</p>

        <div class="process-flow">
          <div class="pf-step">
            <div class="pf-circle">⚗️<span class="pf-num">1</span></div>
            <div class="pf-name">Raw Powder</div>
            <div class="pf-sub">In-house synthesis</div>
          </div>
          <div class="pf-arrow">→</div>
          <div class="pf-step">
            <div class="pf-circle">🧪<span class="pf-num">2</span></div>
            <div class="pf-name">Mixing &amp; Granulation</div>
            <div class="pf-sub">Binder + sintering aids</div>
          </div>
          <div class="pf-arrow">→</div>
          <div class="pf-step">
            <div class="pf-circle">🏗️<span class="pf-num">3</span></div>
            <div class="pf-name">Green Body</div>
            <div class="pf-sub">Press or injection mould</div>
          </div>
          <div class="pf-arrow">→</div>
          <div class="pf-step">
            <div class="pf-circle">✂️<span class="pf-num">4</span></div>
            <div class="pf-name">Green Machining</div>
            <div class="pf-sub">Pre-fire profile</div>
          </div>
          <div class="pf-arrow">→</div>
          <div class="pf-step">
            <div class="pf-circle">🔥<span class="pf-num">5</span></div>
            <div class="pf-name">Sintering</div>
            <div class="pf-sub">1400–1900°C</div>
          </div>
          <div class="pf-arrow">→</div>
          <div class="pf-step">
            <div class="pf-circle">⚙️<span class="pf-num">6</span></div>
            <div class="pf-name">Precision Grinding</div>
            <div class="pf-sub">±0.01mm tolerance</div>
          </div>
          <div class="pf-arrow">→</div>
          <div class="pf-step">
            <div class="pf-circle">🔬<span class="pf-num">7</span></div>
            <div class="pf-name">Inspection &amp; Test</div>
            <div class="pf-sub">CMM + electrical</div>
          </div>
          <div class="pf-arrow">→</div>
          <div class="pf-step">
            <div class="pf-circle">📦<span class="pf-num">8</span></div>
            <div class="pf-name">Pack &amp; Ship</div>
            <div class="pf-sub">48h stock · 14d custom</div>
          </div>
        </div>

        <div class="prod-line-grid">
          <div class="pl-card">
            <div class="pl-img">
              <div class="icon">🔥</div>
              <div class="lbl">Igniter &amp; Heater Production Line</div>
              <div class="replace">Replace with production line photo</div>
            </div>
            <div class="pl-body">
              <div class="pl-step">Production Line 01</div>
              <div class="pl-title">Ceramic Igniter &amp; Heater Line</div>
              <div class="pl-desc">Dedicated production line for Si₃N₄ and Al₂O₃ hot surface igniters and heating elements. Continuous sintering schedule with 48-hour stock replenishment cycle. CN-300 series produced here.</div>
              <div class="pl-specs">
                <span class="pl-spec">Capacity: 500K+ units/yr</span>
                <span class="pl-spec">Si₃N₄ &amp; Al₂O₃</span>
                <span class="pl-spec">12V · 120V · 230V</span>
              </div>
            </div>
          </div>
          <div class="pl-card">
            <div class="pl-img">
              <div class="icon">⚙️</div>
              <div class="lbl">Precision Machining Line — Structural Parts</div>
              <div class="replace">Replace with machining line photo</div>
            </div>
            <div class="pl-body">
              <div class="pl-step">Production Line 02</div>
              <div class="pl-title">Precision Structural Parts Line</div>
              <div class="pl-desc">CNC diamond grinding for shaft rods, bearing components, turbine parts, and custom structural ceramics. Tolerances to ±0.01mm with CMM verification on every production lot.</div>
              <div class="pl-specs">
                <span class="pl-spec">±0.01mm tolerance</span>
                <span class="pl-spec">Si₃N₄ · SiC · Al₂O₃</span>
                <span class="pl-spec">CMM verified</span>
              </div>
            </div>
          </div>
          <div class="pl-card">
            <div class="pl-img">
              <div class="icon">⚫</div>
              <div class="lbl">Ceramic Ball Production — Grinding &amp; Lapping</div>
              <div class="replace">Replace with ball production photo</div>
            </div>
            <div class="pl-body">
              <div class="pl-step">Production Line 03</div>
              <div class="pl-title">Precision Ceramic Ball Line</div>
              <div class="pl-desc">Dedicated ball grinding and lapping line for Si₃N₄ and ZrO₂ precision balls from G3 to G60 grade. Mirror surface finish Ra ≤0.01µm on precision grades.</div>
              <div class="pl-specs">
                <span class="pl-spec">G3–G60 grade</span>
                <span class="pl-spec">Ø 0.4–100mm</span>
                <span class="pl-spec">Ra ≤0.01µm</span>
              </div>
            </div>
          </div>
          <div class="pl-card">
            <div class="pl-img">
              <div class="icon">📐</div>
              <div class="lbl">Custom DFM Line — Prototype &amp; Short Run</div>
              <div class="replace">Replace with DFM prototype area photo</div>
            </div>
            <div class="pl-body">
              <div class="pl-step">Production Line 04</div>
              <div class="pl-title">Custom DFM &amp; Prototype Line</div>
              <div class="pl-desc">Dedicated rapid-prototype capability for custom ceramic parts from customer drawings. STEP, DWG, and PDF accepted. DFM review in 48 hours, fired prototype in 7–14 days.</div>
              <div class="pl-specs">
                <span class="pl-spec">DFM in 48h</span>
                <span class="pl-spec">All 6 ceramics</span>
                <span class="pl-spec">No MOQ prototype</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section id="quality-testing" class="s" style="background: #fff;">
      <div class="wrap">
        <div class="sec-num">03 · Quality &amp; Testing</div>
        <h2>Every lot inspected, <span class="accent">every shipment certified</span>.</h2>
        <p class="sec-lead">In-house quality control equipment ensures every product meets specification before leaving the facility. Dimensional, electrical, mechanical, and chemical analysis all performed on-site.</p>

        <div class="eq-grid">
          <div class="eq-card">
            <div class="eq-img">
              <div class="icon">📏</div>
              <div class="lbl">CMM — Coordinate Measuring Machine</div>
              <div class="replace">Replace with CMM photo</div>
            </div>
            <div class="eq-body">
              <div class="eq-cat">Dimensional Inspection</div>
              <div class="eq-name">CMM Coordinate Measuring Machine</div>
              <div class="eq-spec">Zeiss-equivalent 3-axis CMM for dimensional verification of precision structural parts, shaft rods, and bearing components. Measurement accuracy ±0.001mm. Full report with every production lot.</div>
              <span class="eq-tag">Accuracy: ±0.001mm</span>
            </div>
          </div>
          <div class="eq-card">
            <div class="eq-img">
              <div class="icon">⚡</div>
              <div class="lbl">Electrical Test Station — Resistance &amp; Insulation</div>
              <div class="replace">Replace with electrical test photo</div>
            </div>
            <div class="eq-body">
              <div class="eq-cat">Electrical Testing</div>
              <div class="eq-name">Resistance &amp; Insulation Test Station</div>
              <div class="eq-spec">100% in-line testing of ceramic igniters and heaters for cold resistance (±5%), insulation resistance (≥100 MΩ @ 500V DC), and voltage withstand. All units individually tested before packing.</div>
              <span class="eq-tag">100% unit testing</span>
            </div>
          </div>
          <div class="eq-card">
            <div class="eq-img">
              <div class="icon">🔬</div>
              <div class="lbl">Optical Comparator &amp; Surface Profilometer</div>
              <div class="replace">Replace with comparator photo</div>
            </div>
            <div class="eq-body">
              <div class="eq-cat">Surface &amp; Profile Inspection</div>
              <div class="eq-name">Optical Comparator &amp; Profilometer</div>
              <div class="eq-spec">Optical profile projector for 2D dimensional verification and contour inspection. Surface roughness profilometer for Ra measurement on precision-ground components. Ra resolution: 0.001µm.</div>
              <span class="eq-tag">Ra resolution: 0.001µm</span>
            </div>
          </div>
          <div class="eq-card">
            <div class="eq-img">
              <div class="icon">🧪</div>
              <div class="lbl">XRF Chemical Analysis — Material Verification</div>
              <div class="replace">Replace with XRF machine photo</div>
            </div>
            <div class="eq-body">
              <div class="eq-cat">Chemical Analysis</div>
              <div class="eq-name">XRF Chemical Composition Analyser</div>
              <div class="eq-spec">X-ray fluorescence analyser for raw material purity verification and finished product composition confirmation. Traces Na, K, Fe, and transition metal contaminants to ppm level. Batch cert included with every shipment.</div>
              <span class="eq-tag">Traces to ppm level</span>
            </div>
          </div>
          <div class="eq-card">
            <div class="eq-img">
              <div class="icon">💥</div>
              <div class="lbl">Thermal Shock Test Chamber</div>
              <div class="replace">Replace with thermal shock chamber photo</div>
            </div>
            <div class="eq-body">
              <div class="eq-cat">Reliability Testing</div>
              <div class="eq-name">Thermal Shock Test Chamber</div>
              <div class="eq-spec">Automated thermal shock cycling from −40°C to +900°C for endurance validation of ceramic igniter and heater products. Sample-level qualification testing for new OEM programs and product validation.</div>
              <span class="eq-tag">−40°C to +900°C cycling</span>
            </div>
          </div>
          <div class="eq-card">
            <div class="eq-img">
              <div class="icon">⚖️</div>
              <div class="lbl">Hardness Tester — Vickers &amp; Rockwell</div>
              <div class="replace">Replace with hardness tester photo</div>
            </div>
            <div class="eq-body">
              <div class="eq-cat">Mechanical Testing</div>
              <div class="eq-name">Vickers &amp; Rockwell Hardness Tester</div>
              <div class="eq-spec">Micro-Vickers hardness testing for ceramic material verification (Si₃N₄: HV 1500–1700, SiC: HV 2500). Lot-level hardness verification confirms sintering quality and material consistency across production batches.</div>
              <span class="eq-tag">HV 0.1–30 kg load</span>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section id="quality-system" class="quality-band">
      <div class="wrap">
        <div>
          <div class="sec-num">04 · Quality System</div>
          <h2>ISO 9001 from<br><span class="accent">powder to packing</span>.</h2>
          <p class="qb-sub">Our quality management system covers raw material incoming inspection, in-process control, finished goods testing, and full lot traceability from raw powder batch to customer shipment. PPAP-level documentation available for OEM qualification programs.</p>
          <div class="qb-actions">
            <NuxtLink to="/contact" class="btn-primary">Request a Factory Audit →</NuxtLink>
            <NuxtLink to="/contact" class="btn-ghost btn-ghost-light">Download Quality Documents</NuxtLink>
          </div>
        </div>
        <div class="qb-certs">
          <div class="qb-cert">
            <div class="cert-mark">ISO</div>
            <div class="cert-name">ISO 9001:2015 Quality Management System. Full lot traceability and PPAP-level documentation for OEM programs.</div>
          </div>
          <div class="qb-cert">
            <div class="cert-mark">CE</div>
            <div class="cert-name">CE marking for EU export. Declaration of Conformity provided with all CE-marked products.</div>
          </div>
          <div class="qb-cert">
            <div class="cert-mark">UL</div>
            <div class="cert-name">UL Recognized Component for NA market. UL 60730-1 recognition for igniter and heater products.</div>
          </div>
          <div class="qb-cert">
            <div class="cert-mark">RoHS</div>
            <div class="cert-name">RoHS and REACH compliant. Material declarations available for restricted-substance compliance screening.</div>
          </div>
        </div>
      </div>
    </section>

    <section class="mfg-cta">
      <div class="wrap">
        <div class="sec-num sec-num-center">Ready to visit?</div>
        <h2>Factory audits <span class="accent">welcome</span>.</h2>
        <p class="cta-sub">OEM customers are welcome to schedule factory audits and production line visits. Our facility is open for inspection — we have nothing to hide.</p>
        <div class="cta-row">
          <NuxtLink to="/contact" class="btn-primary">Schedule a Factory Visit →</NuxtLink>
          <NuxtLink to="/contact" class="btn-ghost">Request ISO &amp; Quality Documents</NuxtLink>
        </div>
      </div>
    </section>
  </div>
</template>

<style src="~/assets/css/manufacturing.css"></style>
