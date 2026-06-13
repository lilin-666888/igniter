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
            <div class="cap-sub cap-sub-right">12,000 m² · ISO 9001<br>Full in-house production</div>
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

    <section id="workshop" class="s bg-white">
      <div class="wrap">
        <div class="sec-num">01 · Workshop</div>
        <h2>Inside the <span class="accent">production facility</span>.</h2>
        <p class="sec-lead">From raw ceramic powder to finished precision components — every step happens under the same roof, under the same quality management system.</p>
      </div>

      <div class="wrap mb-4">
        <div class="ph-card hero-img">
          <div class="ph-img ph-img-tall">
            <div class="icon icon-light">🏭</div>
            <div class="label label-light">Overview — Main Production Hall · Sintering &amp; Machining Wing</div>
            <div class="replace replace-light">Replace with wide-angle production hall photo</div>
          </div>
          <div class="ph-caption ph-caption-dark">
            <div class="cap-num cap-num-gold">Overview</div>
            <div class="cap-title cap-title-light">Main Production Hall — Sintering &amp; Precision Machining</div>
            <div class="cap-desc cap-desc-light">12,000 m² facility housing Si₃N₄, SiC, Al₂O₃, and ZrO₂ production lines. All operations in-house — no subcontracting.</div>
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

    <section id="production-lines" class="s bg-soft">
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

    <section id="quality-testing" class="s bg-white">
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

<style>
.mfg-page {
  --navy-3: #1e3d6b;
  --bg-soft-2: #E6EEF7;
}

.mfg-page .wrap {
  max-width: 1180px;
}

.breadcrumb {
  background: var(--bg-soft);
  border-bottom: 1px solid var(--line);
  padding: 12px 0;
  font-family: var(--mono);
  font-size: 11px;
  letter-spacing: 0.05em;
  color: var(--ink-faint);
}

.breadcrumb .wrap {
  display: flex;
  gap: 8px;
  align-items: center;
}

.breadcrumb a {
  color: var(--ink-faint);
}

.breadcrumb a:hover {
  color: var(--orange);
}

.breadcrumb .sep {
  color: var(--line);
}

.breadcrumb span:last-child {
  color: var(--ink-soft);
}

.mfg-hero {
  background: linear-gradient(135deg, var(--navy) 0%, var(--navy-3) 60%, #1e4a7a 100%);
  color: #fff;
  padding: 80px 0 0;
  position: relative;
  overflow: hidden;
}

.mfg-hero::after {
  content: '';
  position: absolute;
  top: 0;
  right: 0;
  width: 45%;
  height: 100%;
  background: linear-gradient(135deg, transparent 0%, rgba(242, 100, 25, 0.07) 100%);
  pointer-events: none;
}

.mfg-hero-stripe {
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  height: 3px;
  background: linear-gradient(90deg, var(--orange) 0%, var(--gold) 60%, var(--orange) 100%);
}

.mfg-hero .wrap {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 60px;
  align-items: end;
  position: relative;
}

.mfg-hero-eyebrow {
  font-family: var(--mono);
  font-size: 11px;
  letter-spacing: 0.15em;
  color: var(--gold);
  text-transform: uppercase;
  font-weight: 500;
  margin-bottom: 20px;
}

.mfg-hero h1 {
  font-family: var(--cond);
  font-size: 58px;
  font-weight: 800;
  line-height: 1;
  letter-spacing: -0.025em;
  color: #fff;
  margin-bottom: 22px;
}

.mfg-hero h1 .hl {
  color: var(--gold);
}

.mfg-hero-sub {
  font-size: 17px;
  color: rgba(255, 255, 255, 0.82);
  line-height: 1.6;
  margin-bottom: 36px;
  max-width: 560px;
}

.mfg-hero-sub b {
  color: var(--gold-soft);
}

.mfg-statbar {
  display: flex;
  gap: 32px;
  flex-wrap: wrap;
  margin-bottom: 40px;
}

.mfg-statbar .num {
  font-family: var(--cond);
  font-size: 42px;
  font-weight: 800;
  color: var(--gold);
  line-height: 1;
}

.mfg-statbar .lbl {
  font-family: var(--mono);
  font-size: 10px;
  letter-spacing: 0.1em;
  color: rgba(255, 255, 255, 0.6);
  text-transform: uppercase;
  margin-top: 6px;
}

.mfg-hero-img {
  position: relative;
  align-self: end;
}

.mfg-hero-img-ph {
  height: 380px;
  background: linear-gradient(145deg, rgba(255, 255, 255, 0.06) 0%, rgba(255, 255, 255, 0.02) 100%);
  border: 1px solid rgba(255, 255, 255, 0.12);
  border-bottom: none;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  gap: 14px;
}

.mfg-hero-img-ph .ph-icon {
  font-size: 56px;
  opacity: 0.5;
}

.mfg-hero-img-ph .ph-lbl {
  font-family: var(--mono);
  font-size: 11px;
  letter-spacing: 0.1em;
  color: rgba(255, 255, 255, 0.4);
  text-transform: uppercase;
  text-align: center;
  max-width: 200px;
  line-height: 1.5;
}

.mfg-hero-img-caption {
  background: rgba(255, 255, 255, 0.06);
  border: 1px solid rgba(255, 255, 255, 0.1);
  border-top: 2px solid var(--orange);
  padding: 14px 20px;
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.mfg-hero-img-caption .cap-title {
  font-family: var(--cond);
  font-size: 15px;
  font-weight: 700;
  color: #fff;
}

.mfg-hero-img-caption .cap-sub {
  font-family: var(--mono);
  font-size: 10px;
  color: rgba(255, 255, 255, 0.5);
  letter-spacing: 0.06em;
}

.cap-sub-right {
  text-align: right;
}

.mfg-page .cert-strip {
  background: var(--navy);
  padding: 18px 0;
}

.mfg-page .cert-strip .wrap {
  display: flex;
  align-items: center;
  gap: 32px;
}

.mfg-page .cs-label {
  font-family: var(--mono);
  font-size: 10px;
  letter-spacing: 0.18em;
  text-transform: uppercase;
  color: rgba(255, 255, 255, 0.45);
  white-space: nowrap;
  flex-shrink: 0;
}

.mfg-page .cs-badges {
  display: flex;
  gap: 20px;
  flex-wrap: wrap;
}

.mfg-page .cs-badges span {
  font-family: var(--mono);
  font-size: 12px;
  letter-spacing: 0.06em;
  color: rgba(255, 255, 255, 0.8);
  padding: 5px 14px;
  border: 1px solid rgba(255, 255, 255, 0.2);
}

.mfg-page .cs-badges span::before {
  content: '✓ ';
  color: var(--gold);
}

.cap-band {
  background: var(--bg-soft);
  padding: 64px 0;
  border-top: 1px solid var(--line);
  border-bottom: 1px solid var(--line);
}

.sec-num {
  font-family: var(--mono);
  font-size: 11px;
  letter-spacing: 0.2em;
  color: var(--orange);
  text-transform: uppercase;
  font-weight: 500;
  margin-bottom: 14px;
}

.sec-num-center {
  text-align: center;
}

.mfg-page h2 {
  font-family: var(--cond);
  font-size: 40px;
  font-weight: 800;
  letter-spacing: -0.02em;
  color: var(--navy);
  line-height: 1.08;
  margin-bottom: 16px;
}

.mfg-page h2 .accent {
  color: var(--orange);
}

.sec-lead {
  font-size: 17px;
  color: var(--ink-soft);
  line-height: 1.65;
  max-width: 700px;
  margin-bottom: 48px;
}

.cap-grid {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 2px;
  margin-top: 40px;
}

.cap-item {
  background: #fff;
  padding: 32px 28px;
  border-right: 1px solid var(--line);
}

.cap-item:last-child {
  border-right: none;
}

.cap-num {
  font-family: var(--cond);
  font-size: 52px;
  font-weight: 800;
  color: var(--navy);
  line-height: 1;
  letter-spacing: -0.02em;
}

.cap-num span {
  color: var(--orange);
}

.cap-unit {
  font-family: var(--mono);
  font-size: 11px;
  letter-spacing: 0.12em;
  color: var(--orange);
  text-transform: uppercase;
  margin-top: 6px;
}

.cap-desc {
  font-size: 14px;
  color: var(--ink-soft);
  margin-top: 8px;
  line-height: 1.5;
}

.s {
  padding: 80px 0;
}

.bg-white {
  background: #fff;
}

.bg-soft {
  background: var(--bg-soft);
}

.mb-4 {
  margin-bottom: 4px;
}

.photo-grid-3 {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 4px;
}

.photo-grid-2 {
  display: grid;
  grid-template-columns: 2fr 1fr;
  gap: 4px;
}

.ph-card {
  position: relative;
  overflow: hidden;
}

.ph-card .ph-img {
  width: 100%;
  height: 100%;
  min-height: 280px;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  gap: 12px;
  background: linear-gradient(145deg, #e8edf5 0%, #d4dce8 100%);
}

.ph-img-tall {
  min-height: 460px !important;
}

.ph-img-md {
  min-height: 320px !important;
}

.ph-card.hero-img .ph-img {
  min-height: 420px;
  background: linear-gradient(145deg, #1a2d45 0%, #0d1e33 100%);
}

.ph-card .ph-img .icon {
  font-size: 44px;
  opacity: 0.4;
}

.icon-light {
  color: rgba(255, 255, 255, 0.4);
}

.ph-card .ph-img .label {
  font-family: var(--mono);
  font-size: 10px;
  letter-spacing: 0.1em;
  color: #8794a6;
  text-transform: uppercase;
  text-align: center;
  max-width: 160px;
  line-height: 1.5;
}

.label-light {
  color: rgba(255, 255, 255, 0.4) !important;
}

.ph-card .ph-img .replace {
  font-family: var(--mono);
  font-size: 9px;
  letter-spacing: 0.07em;
  color: #aab3bf;
  text-transform: uppercase;
  margin-top: 6px;
}

.replace-light {
  color: rgba(255, 255, 255, 0.25) !important;
}

.ph-caption {
  padding: 14px 16px;
  background: #fff;
  border-left: 3px solid var(--orange);
}

.ph-caption-dark {
  background: var(--navy);
}

.ph-caption .cap-num {
  font-family: var(--mono);
  font-size: 10px;
  color: var(--orange);
  letter-spacing: 0.1em;
  margin-bottom: 4px;
}

.cap-num-gold {
  color: var(--gold) !important;
}

.ph-caption .cap-title {
  font-family: var(--cond);
  font-size: 16px;
  font-weight: 700;
  color: var(--navy);
}

.cap-title-light {
  color: #fff !important;
}

.ph-caption .cap-desc {
  font-size: 13px;
  color: var(--ink-soft);
  margin-top: 4px;
  line-height: 1.5;
}

.cap-desc-light {
  color: rgba(255, 255, 255, 0.65) !important;
}

.process-flow {
  display: flex;
  align-items: flex-start;
  gap: 0;
  margin-top: 48px;
  overflow-x: auto;
  padding-bottom: 8px;
}

.pf-step {
  display: flex;
  flex-direction: column;
  align-items: center;
  flex: 1;
  min-width: 120px;
}

.pf-circle {
  width: 64px;
  height: 64px;
  border-radius: 50%;
  background: var(--bg-soft);
  border: 2px solid var(--line);
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 28px;
  position: relative;
  z-index: 1;
  transition: border-color 0.2s;
}

.pf-step:hover .pf-circle {
  border-color: var(--orange);
}

.pf-num {
  position: absolute;
  top: -4px;
  right: -4px;
  width: 20px;
  height: 20px;
  border-radius: 50%;
  background: var(--orange);
  color: #fff;
  font-family: var(--mono);
  font-size: 10px;
  font-weight: 600;
  display: flex;
  align-items: center;
  justify-content: center;
}

.pf-name {
  font-family: var(--cond);
  font-size: 14px;
  font-weight: 700;
  color: var(--navy);
  text-align: center;
  margin-top: 12px;
  line-height: 1.3;
}

.pf-sub {
  font-family: var(--mono);
  font-size: 10px;
  color: var(--ink-faint);
  letter-spacing: 0.05em;
  text-align: center;
  margin-top: 4px;
}

.pf-arrow {
  color: var(--line);
  font-size: 20px;
  margin-top: 22px;
  flex-shrink: 0;
  padding: 0 4px;
}

.prod-line-grid {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  gap: 28px;
  margin-top: 56px;
}

.pl-card {
  border: 1px solid var(--line);
  overflow: hidden;
  transition: border-color 0.15s, transform 0.15s;
}

.pl-card:hover {
  border-color: var(--orange);
  transform: translateY(-3px);
  box-shadow: 0 20px 40px -20px rgba(10, 38, 71, 0.14);
}

.pl-img {
  height: 220px;
  background: linear-gradient(145deg, #e8edf5 0%, #d4dce8 100%);
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  gap: 10px;
  position: relative;
  border-bottom: 1px solid var(--line);
}

.pl-img .icon {
  font-size: 40px;
  opacity: 0.45;
}

.pl-img .lbl {
  font-family: var(--mono);
  font-size: 9.5px;
  letter-spacing: 0.1em;
  color: #8794a6;
  text-transform: uppercase;
  text-align: center;
  max-width: 150px;
}

.pl-img .replace {
  position: absolute;
  bottom: 10px;
  font-family: var(--mono);
  font-size: 9px;
  color: #aab3bf;
  letter-spacing: 0.07em;
  text-transform: uppercase;
}

.pl-body {
  padding: 24px 26px;
}

.pl-step {
  font-family: var(--mono);
  font-size: 10px;
  letter-spacing: 0.15em;
  color: var(--orange);
  text-transform: uppercase;
  margin-bottom: 8px;
}

.pl-title {
  font-family: var(--cond);
  font-size: 22px;
  font-weight: 700;
  color: var(--navy);
  margin-bottom: 10px;
}

.pl-desc {
  font-size: 14px;
  color: var(--ink-soft);
  line-height: 1.6;
  margin-bottom: 16px;
}

.pl-specs {
  display: flex;
  flex-wrap: wrap;
  gap: 8px;
}

.pl-spec {
  font-family: var(--mono);
  font-size: 11px;
  background: var(--bg-soft);
  color: var(--navy);
  padding: 5px 10px;
  letter-spacing: 0.04em;
}

.eq-grid {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 24px;
  margin-top: 40px;
}

.eq-card {
  background: #fff;
  border: 1px solid var(--line);
  overflow: hidden;
}

.eq-card:hover {
  border-color: var(--orange);
}

.eq-img {
  height: 200px;
  background: linear-gradient(145deg, #f0f4f9 0%, #e2eaf5 100%);
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  gap: 10px;
  border-bottom: 1px solid var(--line);
  position: relative;
}

.eq-img .icon {
  font-size: 42px;
  opacity: 0.45;
}

.eq-img .lbl {
  font-family: var(--mono);
  font-size: 10px;
  letter-spacing: 0.08em;
  color: #8794a6;
  text-transform: uppercase;
  text-align: center;
  max-width: 140px;
  line-height: 1.5;
}

.eq-img .replace {
  position: absolute;
  bottom: 8px;
  font-family: var(--mono);
  font-size: 9px;
  color: #b0bbc8;
  letter-spacing: 0.06em;
  text-transform: uppercase;
}

.eq-body {
  padding: 22px 24px;
}

.eq-cat {
  font-family: var(--mono);
  font-size: 10px;
  color: var(--orange);
  letter-spacing: 0.14em;
  text-transform: uppercase;
  margin-bottom: 8px;
}

.eq-name {
  font-family: var(--cond);
  font-size: 20px;
  font-weight: 700;
  color: var(--navy);
  margin-bottom: 8px;
}

.eq-spec {
  font-size: 13.5px;
  color: var(--ink-soft);
  line-height: 1.55;
}

.eq-tag {
  display: inline-block;
  margin-top: 12px;
  font-family: var(--mono);
  font-size: 10px;
  background: var(--bg-soft);
  color: var(--navy);
  padding: 4px 10px;
  letter-spacing: 0.05em;
}

.quality-band {
  background: var(--navy);
  padding: 72px 0;
}

.quality-band .wrap {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 60px;
  align-items: center;
}

.quality-band h2 {
  color: #fff;
}

.quality-band h2 .accent {
  color: var(--gold);
}

.quality-band .sec-num {
  color: var(--gold);
}

.qb-sub {
  font-size: 16px;
  color: rgba(255, 255, 255, 0.75);
  line-height: 1.65;
  margin-top: 16px;
}

.qb-actions {
  margin-top: 32px;
  display: flex;
  gap: 16px;
  flex-wrap: wrap;
}

.qb-certs {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 16px;
}

.qb-cert {
  background: rgba(255, 255, 255, 0.06);
  border: 1px solid rgba(255, 255, 255, 0.1);
  border-left: 3px solid var(--orange);
  padding: 18px 20px;
}

.qb-cert .cert-mark {
  font-family: var(--cond);
  font-size: 28px;
  font-weight: 800;
  color: var(--gold);
  line-height: 1;
  margin-bottom: 6px;
}

.qb-cert .cert-name {
  font-size: 13px;
  color: rgba(255, 255, 255, 0.8);
  line-height: 1.45;
}

.mfg-cta {
  padding: 80px 0;
  text-align: center;
}

.mfg-cta h2 {
  margin-bottom: 16px;
}

.cta-sub {
  font-size: 17px;
  color: var(--ink-soft);
  max-width: 580px;
  margin: 0 auto 36px;
  line-height: 1.6;
}

.cta-row {
  display: flex;
  gap: 16px;
  justify-content: center;
  flex-wrap: wrap;
}

.mfg-page .btn-primary {
  display: inline-block;
  background: var(--orange);
  color: #fff;
  font-family: var(--cond);
  font-size: 16px;
  font-weight: 700;
  letter-spacing: 0.03em;
  padding: 14px 32px;
  transition: background 0.15s;
}

.mfg-page .btn-primary:hover {
  background: var(--orange-deep);
}

.mfg-page .btn-ghost {
  display: inline-block;
  border: 2px solid var(--navy);
  color: var(--navy);
  font-family: var(--cond);
  font-size: 16px;
  font-weight: 700;
  padding: 12px 30px;
  transition: all 0.15s;
}

.mfg-page .btn-ghost:hover {
  background: var(--navy);
  color: #fff;
}

.btn-ghost-light {
  color: #fff !important;
  border-color: rgba(255, 255, 255, 0.4) !important;
  font-size: 15px !important;
  padding: 10px 26px !important;
}

.btn-ghost-light:hover {
  background: rgba(255, 255, 255, 0.1) !important;
  color: #fff !important;
}

.quality-band .btn-primary {
  font-size: 15px;
  padding: 12px 28px;
}

@media (max-width: 1024px) {
  .mfg-hero .wrap {
    grid-template-columns: 1fr;
    gap: 40px;
  }

  .quality-band .wrap {
    grid-template-columns: 1fr;
  }

  .eq-grid {
    grid-template-columns: repeat(2, 1fr);
  }

  .cap-grid {
    grid-template-columns: repeat(2, 1fr);
  }
}

@media (max-width: 680px) {
  .mfg-hero h1 {
    font-size: 38px;
  }

  .mfg-page h2 {
    font-size: 30px;
  }

  .photo-grid-3 {
    grid-template-columns: 1fr;
  }

  .photo-grid-2 {
    grid-template-columns: 1fr;
  }

  .prod-line-grid {
    grid-template-columns: 1fr;
  }

  .eq-grid {
    grid-template-columns: 1fr;
  }

  .cap-grid {
    grid-template-columns: 1fr 1fr;
  }

  .process-flow {
    flex-wrap: nowrap;
  }

  .qb-certs {
    grid-template-columns: 1fr;
  }
}
</style>
