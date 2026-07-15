<script setup lang="ts">
useHead({
  title: "Rapid Ceramic Prototyping | 7–14 Day Custom Parts",
  meta: [
    {
      name: "description",
      content:
        "Custom ceramic prototypes in 7–14 days with 48-hour DFM review. STEP, PDF, and DWG drawings accepted, with lot certificates included.",
    },
  ],
});
</script>

<template>
  <div>
    <div class="breadcrumb">
      <div class="wrap">
        <a href="/">Home</a>
        <span class="sep">/</span>
        <a href="/capabilities">Capabilities</a>
        <span class="sep">/</span>
        <span>Rapid Prototyping</span>
      </div>
    </div>

    <section class="page-hero">
      <div class="wrap">
        <div>
          <span class="ph-eyebrow">★ Industry-Leading Lead Times</span>
          <div class="formula-display" style="font-size: 64px">7–14 days</div>
          <h1>
            Rapid turn-around ceramic parts —<br />5× faster than the industry
            default.
          </h1>
          <p class="ph-sub">
            The legacy ceramic industry quote —
            <b>6 to 12 weeks for a single sample</b> — is the single biggest
            reason engineering teams default to metal or polymer when ceramic
            would actually be the right material. We built our prototype line
            specifically to break that cycle.
            <b
              >Stock geometries dispatch in 48 hours. Custom prototypes ship in
              7–14 days.</b
            >
          </p>
          <div class="ph-quickstats">
            <div class="ph-stat">
              <div class="num">48h</div>
              <div class="lbl">Stock Dispatch</div>
            </div>
            <div class="ph-stat">
              <div class="num">7–14d</div>
              <div class="lbl">Custom Prototype</div>
            </div>
            <div class="ph-stat">
              <div class="num">48h</div>
              <div class="lbl">DFM Review</div>
            </div>
            <div class="ph-stat">
              <div class="num">±5 μm</div>
              <div class="lbl">Tolerance</div>
            </div>
          </div>
        </div>
        <div class="ph-side">
          <div
            style="
              font-family: var(--mono);
              font-size: 10.5px;
              letter-spacing: 0.18em;
              color: var(--gold);
              text-transform: uppercase;
              margin-bottom: 14px;
              font-weight: 600;
            "
          >
            The 5-Step Process
          </div>
          <div class="grade-cards">
            <a href="#step-1" class="grade-card">
              <div class="grade-label">Step · 01</div>
              <div class="grade-title">Drawing Upload</div>
              <div class="grade-use">STEP · PDF · DWG accepted</div>
            </a>
            <a href="#step-2" class="grade-card">
              <div class="grade-label">Step · 02</div>
              <div class="grade-title">DFM Review (48h)</div>
              <div class="grade-use">Dedicated engineer review</div>
            </a>
            <a href="#step-3" class="grade-card">
              <div class="grade-label">Step · 03</div>
              <div class="grade-title">Quote Confirmed</div>
              <div class="grade-use">Price · material · lead time</div>
            </a>
            <a href="#step-4" class="grade-card">
              <div class="grade-label">Step · 04</div>
              <div class="grade-title">Prototype Build</div>
              <div class="grade-use">7–14 days · 1–5 units</div>
            </a>
            <a href="#step-5" class="grade-card">
              <div class="grade-label">Step · 05</div>
              <div class="grade-title">Lot Cert + Ship</div>
              <div class="grade-use">Dimensional + material certs</div>
            </a>
          </div>
        </div>
      </div>
      <div class="page-hero-stripe"></div>
    </section>

    <section class="cert-strip">
      <div class="wrap">
        <div class="cs-label">Certifications & Standards</div>
        <div class="cs-badges">
          <span>ISO 9001</span><span>IATF 16949</span><span>CE</span
          ><span>RoHS · REACH</span><span>UL Recognized</span>
        </div>
      </div>
    </section>

    <section class="s">
      <div class="wrap">
        <div class="sec-num">01 · Lead Time Matrix</div>
        <h2>How fast can you <span class="accent">have it</span>?</h2>
        <p class="sec-lead">
          Lead times depend on (1) whether the geometry is in our existing
          tooling, (2) material grade, and (3) finishing requirements. Stock
          geometries ship from warehouse; custom geometries go through our
          prototype cell.
        </p>
        <div class="props-wrap">
          <table class="props">
            <thead>
              <tr>
                <th>Order Type</th>
                <th>Stock</th>
                <th>Standard Custom</th>
                <th>Complex Custom</th>
                <th>Production Run</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th>Lead Time</th>
                <td>1–3 days</td>
                <td>7–10 days</td>
                <td>14–21 days</td>
                <td>21–35 days</td>
              </tr>
              <tr>
                <th>Sample Quantity</th>
                <td>1–10 units</td>
                <td>1–5 units</td>
                <td>1–3 units</td>
                <td>500+ units</td>
              </tr>
              <tr>
                <th>DFM Reply</th>
                <td>N/A</td>
                <td>48 hours</td>
                <td>48 hours</td>
                <td>48 hours</td>
              </tr>
              <tr>
                <th>Tolerance (ground)</th>
                <td>±0.005 mm</td>
                <td>±0.005 mm</td>
                <td>±0.005 mm</td>
                <td>±0.01 mm</td>
              </tr>
              <tr>
                <th>Material Options</th>
                <td>Stock grade</td>
                <td>All</td>
                <td>All + custom</td>
                <td>All</td>
              </tr>
              <tr>
                <th>Lot Certs</th>
                <td>On request</td>
                <td>Included</td>
                <td>Included</td>
                <td>Included</td>
              </tr>
              <tr>
                <th>NDA</th>
                <td>Not required</td>
                <td>Available</td>
                <td>Recommended</td>
                <td>Standard</td>
              </tr>
            </tbody>
          </table>
        </div>
        <div class="props-legend">
          Complex custom = unusual geometry (thin walls, deep holes, tight
          tolerances) or material grade requiring new tooling.
        </div>
      </div>
    </section>

    <section class="s" style="background: var(--bg-soft)">
      <div class="wrap">
        <div class="sec-num">02 · 5-Step Process</div>
        <h2>
          From drawing to <span class="accent">prototype in your hand</span>.
        </h2>
        <p class="sec-lead">
          Five steps, total elapsed time 7–14 days for most geometries. Every
          step has a named owner on our engineering team — you won't be passed
          between departments.
        </p>
        <div class="app-uses">
          <div class="app-use" id="step-1">
            <div class="app-use-bar"></div>
            <div class="app-use-icon">📐</div>
            <div class="app-use-title">Step 01 — Drawing Upload</div>
            <p class="app-use-desc">
              Send a STEP file (preferred), PDF, or DWG to
              <CmsEmail :link="false" />. Include material preference if you
              have one, target quantity, and end application. Tip: rougher info
              is better than no info — we'd rather see "rough sketch + concept"
              than wait.
            </p>
            <div class="app-use-grade">
              <b>Accept →</b> STEP · PDF · DWG · Hand sketch
            </div>
          </div>
          <div class="app-use" id="step-2">
            <div class="app-use-bar"></div>
            <div class="app-use-icon">🔍</div>
            <div class="app-use-title">Step 02 — DFM Review (48h)</div>
            <p class="app-use-desc">
              Your drawing goes to a dedicated DFM engineer (named, not a
              queue). They check manufacturability, material fit, and
              tolerances. Reply within 48 hours with feedback, alternative
              suggestions, and material recommendations.
            </p>
            <div class="app-use-grade">
              <b>Output →</b> DFM feedback · material rec
            </div>
          </div>
          <div class="app-use" id="step-3">
            <div class="app-use-bar"></div>
            <div class="app-use-icon">💲</div>
            <div class="app-use-title">Step 03 — Quote Confirmed</div>
            <p class="app-use-desc">
              Same 48-hour reply includes quotation for prototype units and
              indicative pricing for production volumes. Quote valid for 30
              days. NDA can be signed before quote if your drawing is
              proprietary.
            </p>
            <div class="app-use-grade">
              <b>Output →</b> Prototype + production quote
            </div>
          </div>
          <div class="app-use" id="step-4">
            <div class="app-use-bar"></div>
            <div class="app-use-icon">🔨</div>
            <div class="app-use-title">Step 04 — Prototype Build (7–14d)</div>
            <p class="app-use-desc">
              On PO receipt, your part enters our prototype cell. Forming →
              sintering → grinding → inspection. For standard custom geometries:
              7–10 days. Complex (thin walls, deep features, tight tolerance):
              14–21 days.
            </p>
            <div class="app-use-grade"><b>Output →</b> 1–5 prototype units</div>
          </div>
          <div class="app-use" id="step-5">
            <div class="app-use-bar"></div>
            <div class="app-use-icon">📦</div>
            <div class="app-use-title">Step 05 — Lot Cert + Ship</div>
            <p class="app-use-desc">
              Each prototype ships with a lot certificate (dimensional
              inspection, material grade verification, surface finish
              measurement). Standard packaging is foam-cradle inside dimensional
              shipping crate. DHL/FedEx Express to anywhere in 42 export
              markets.
            </p>
            <div class="app-use-grade">
              <b>Output →</b> Prototype + lot cert + DHL
            </div>
          </div>
          <a
            href="/contact"
            class="app-use"
            style="
              background: linear-gradient(135deg, #fff 0%, #fff5eb 100%);
              border-color: var(--orange);
              border-width: 2px;
            "
          >
            <div
              class="app-use-bar"
              style="
                background: linear-gradient(
                  90deg,
                  var(--orange) 0%,
                  var(--gold) 100%
                );
                height: 5px;
              "
            ></div>
            <div class="app-use-icon">🚀</div>
            <div class="app-use-title">Start Here · Submit Drawing</div>
            <p class="app-use-desc">
              Ready to submit a drawing? Email STEP/PDF/DWG to
              <CmsEmail :link="false" />, or use our quote form. We'll reply
              within 48 hours with DFM feedback, material recommendation, and
              pricing.
            </p>
            <div class="app-use-grade"><b>Action →</b> Email or quote form</div>
          </a>
        </div>
      </div>
    </section>

    <section class="casecta">
      <div class="wrap">
        <div>
          <div class="casecta-eyebrow">
            ★ Engineering Case · US OEM Custom Igniter Design
          </div>
          <h2>
            From drawing to UL-certifiable prototype in
            <span style="color: var(--orange)">14 days</span>.
          </h2>
          <p>
            A US BBQ grill OEM came to us with a non-standard mounting geometry
            — none of the off-shelf igniters fit their new burner design. They
            had quotes from US-based suppliers ranging from 8–14 weeks for first
            prototype. We received their STEP file on a Monday, returned DFM
            feedback Wednesday, shipped prototype DHL on day 14. They cut their
            product launch timeline by 8 weeks.
          </p>
          <div class="casecta-ctas">
            <a class="btn-primary" href="/contact">Submit Your Drawing →</a>
            <a class="btn-ghost" href="/capabilities">Other Capabilities →</a>
          </div>
        </div>
        <div class="casecta-side">
          <div class="casecta-side-tag">Project Timeline</div>
          <div class="casecta-side-title">14-day prototype delivery</div>
          <ul class="casecta-side-list">
            <li><b>Day 1</b> STEP file received</li>
            <li><b>Day 3</b> DFM feedback delivered</li>
            <li><b>Day 4</b> PO confirmed, build start</li>
            <li><b>Day 13</b> Prototype ground to spec</li>
            <li><b>Day 14</b> Lot cert + DHL dispatch</li>
            <li><b>Day 17</b> Customer receives prototype</li>
          </ul>
        </div>
      </div>
    </section>

    <section class="s">
      <div class="wrap">
        <div class="sec-num">03 · Engineering FAQ</div>
        <h2>Questions about <span class="accent">our process</span>.</h2>
        <p class="sec-lead">
          Direct answers about how the prototype cell works. Email
          <CmsEmail /> with anything we haven't covered.
        </p>
        <div class="faq-grid">
          <div class="faq-item">
            <div class="faq-q">What file formats do you accept?</div>
            <div class="faq-a">
              STEP (preferred), IGES, DWG, DXF, PDF with dimensions, or even a
              hand sketch with critical dimensions called out. For new projects,
              a STEP file always cuts 1–2 days off the DFM cycle vs PDF.
            </div>
          </div>
          <div class="faq-item">
            <div class="faq-q">
              Do I need to know the material before submitting?
            </div>
            <div class="faq-a">
              No — describe the application (operating temperature, mechanical
              load, chemical environment) and we'll recommend a material. About
              30% of incoming projects come to us with the "wrong" material
              spec'd; DFM review catches this before tooling.
            </div>
          </div>
          <div class="faq-item">
            <div class="faq-q">
              Will you sign an NDA before reviewing my drawing?
            </div>
            <div class="faq-a">
              Yes — mutual NDAs are standard for proprietary drawings. We can
              use our template (signed within 1 business day) or your template
              (2–3 days for legal review). NDA signing doesn't delay the 48-hour
              DFM clock.
            </div>
          </div>
          <div class="faq-item">
            <div class="faq-q">
              What's the cost difference between prototype and production?
            </div>
            <div class="faq-a">
              Prototype units are typically 5–10× production unit cost —
              reflecting one-off tooling, manual finishing, and inspection
              effort. Prototype charges credit against the first production
              order if production proceeds within 6 months of prototype
              delivery.
            </div>
          </div>
          <div class="faq-item">
            <div class="faq-q">Can you ship internationally?</div>
            <div class="faq-a">
              Yes — we ship to 42 countries via DHL, FedEx, and UPS Express. EU
              customs handled by our EU-based forwarder (typical 3–5 business
              days door-to-door). North America: 4–7 business days door-to-door.
              Asia Pacific: 2–4 business days.
            </div>
          </div>
          <div class="faq-item">
            <div class="faq-q">
              What's the MOQ for production after prototype approval?
            </div>
            <div class="faq-a">
              MOQ varies by complexity: 50–100 units for standard machined
              parts, 500+ for custom-tooled production runs, 5,000+ for fully
              custom igniter SKUs. We can discuss volume-pricing tier breaks
              during the DFM call.
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<style scoped>
:root {
  --navy: #0a2647;
  --navy-2: #103a6b;
  --navy-3: #1b4d8a;
  --bg: #ffffff;
  --bg-soft: #f1f5fa;
  --bg-soft-2: #e6eef7;
  --ink: #14233a;
  --ink-soft: #4a5a70;
  --ink-faint: #8794a6;
  --orange: #f26419;
  --orange-deep: #d8530f;
  --gold: #f0a500;
  --gold-soft: #ffd466;
  --line: #dce5ef;
  --line-strong: #c2d0e0;
  --sans: "Barlow", sans-serif;
  --cond: "Barlow Condensed", sans-serif;
  --mono: "IBM Plex Mono", monospace;
}
* {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}
body {
  background: var(--bg);
  color: var(--ink);
  font-family: var(--sans);
  line-height: 1.6;
  -webkit-font-smoothing: antialiased;
}
a {
  color: inherit;
  text-decoration: none;
  cursor: pointer;
}
.wrap {
  max-width: 1260px;
  margin: 0 auto;
  padding: 0 40px;
}

/* CHROME */
.topbar {
  background: var(--navy);
  color: #c5d4e6;
  font-family: var(--mono);
  font-size: 12px;
}
.topbar .wrap {
  display: flex;
  justify-content: space-between;
  align-items: center;
  height: 38px;
}
.topbar .left {
  display: flex;
  gap: 26px;
}
.topbar .left span {
  display: flex;
  align-items: center;
  gap: 7px;
}
.dot {
  width: 6px;
  height: 6px;
  border-radius: 50%;
  background: var(--gold);
}
.topbar .right {
  letter-spacing: 0.05em;
  color: var(--gold);
}
nav {
  position: sticky;
  top: 0;
  z-index: 100;
  background: #fff;
  border-bottom: 3px solid var(--navy);
  box-shadow: 0 2px 12px rgba(10, 38, 71, 0.06);
}
nav .wrap {
  display: flex;
  align-items: center;
  justify-content: space-between;
  height: 78px;
}
.logo {
  display: flex;
  align-items: center;
  gap: 12px;
}
.logo-mark {
  width: 42px;
  height: 42px;
}
.logo-text {
  font-weight: 800;
  font-size: 24px;
  letter-spacing: -0.02em;
  color: var(--navy);
}
.logo-text b {
  color: var(--orange);
}
.logo-text small {
  display: block;
  font-family: var(--mono);
  font-size: 9px;
  letter-spacing: 0.16em;
  color: var(--ink-faint);
  font-weight: 400;
  margin-top: -2px;
}
.nav-links {
  display: flex;
  gap: 32px;
  align-items: center;
}
.nav-links a {
  font-size: 14.5px;
  font-weight: 700;
  color: var(--navy);
  padding: 6px 0;
  letter-spacing: 0.2px;
}
.nav-links a.active {
  color: var(--orange);
  border-bottom: 2px solid var(--orange);
}
.nav-links a:hover {
  color: var(--orange);
}
.nav-cta {
  background: var(--orange);
  color: #fff !important;
  padding: 12px 24px;
  font-weight: 800;
  font-size: 13.5px;
  letter-spacing: 0.5px;
  transition: background 0.15s;
}
.nav-cta:hover {
  background: var(--orange-deep);
}

.breadcrumb {
  background: var(--bg-soft);
  padding: 14px 0;
  border-bottom: 1px solid var(--line);
}
.breadcrumb .wrap {
  display: flex;
  gap: 10px;
  align-items: center;
  font-family: var(--mono);
  font-size: 12px;
  color: var(--ink-soft);
  letter-spacing: 0.05em;
}
.breadcrumb a {
  color: var(--navy);
  font-weight: 600;
}
.breadcrumb a:hover {
  color: var(--orange);
}
.breadcrumb .sep {
  color: var(--ink-faint);
}

/* HERO */
.page-hero {
  background: linear-gradient(135deg, var(--navy) 0%, var(--navy-2) 100%);
  color: #fff;
  padding: 70px 0 90px;
  position: relative;
  overflow: hidden;
}
.page-hero-stripe {
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  height: 4px;
  background: linear-gradient(
    90deg,
    var(--orange) 0%,
    var(--gold) 50%,
    var(--orange) 100%
  );
}
.page-hero .wrap {
  display: grid;
  grid-template-columns: 1.4fr 1fr;
  gap: 60px;
  align-items: end;
  position: relative;
}
.ph-eyebrow {
  display: inline-block;
  background: var(--orange);
  color: #fff;
  font-family: var(--mono);
  font-size: 11px;
  letter-spacing: 0.15em;
  padding: 8px 14px;
  margin-bottom: 24px;
  text-transform: uppercase;
  font-weight: 500;
}
.formula-display {
  font-family: var(--cond);
  font-size: 92px;
  font-weight: 800;
  line-height: 0.95;
  letter-spacing: -0.025em;
  margin-bottom: 12px;
}
.formula-display sub {
  font-size: 56px;
  font-weight: 600;
}
.page-hero h1 {
  font-family: var(--cond);
  font-size: 52px;
  line-height: 1.05;
  font-weight: 700;
  letter-spacing: -0.02em;
  margin-bottom: 22px;
  color: var(--gold);
}
.ph-sub {
  font-size: 18px;
  color: rgba(255, 255, 255, 0.85);
  line-height: 1.55;
  max-width: 620px;
  margin-bottom: 32px;
}
.ph-sub b {
  color: var(--gold-soft);
  font-weight: 700;
}
.ph-quickstats {
  display: flex;
  gap: 40px;
}
.ph-stat .num {
  font-family: var(--cond);
  font-size: 44px;
  font-weight: 800;
  line-height: 1;
  color: var(--gold);
}
.ph-stat .lbl {
  font-family: var(--mono);
  font-size: 10.5px;
  letter-spacing: 0.13em;
  color: rgba(255, 255, 255, 0.7);
  margin-top: 6px;
  text-transform: uppercase;
}
.ph-side {
  padding-bottom: 14px;
}
.grade-cards {
  display: flex;
  flex-direction: column;
  gap: 14px;
}
.grade-card {
  background: rgba(255, 255, 255, 0.06);
  border-left: 3px solid var(--orange);
  padding: 18px 22px;
  transition:
    background 0.15s,
    border-color 0.15s;
  cursor: pointer;
}
.grade-card:hover {
  background: rgba(255, 255, 255, 0.1);
  border-left-color: var(--gold);
}
.grade-card .grade-label {
  font-family: var(--mono);
  font-size: 10px;
  letter-spacing: 0.15em;
  color: var(--gold);
  text-transform: uppercase;
  font-weight: 600;
  margin-bottom: 4px;
}
.grade-card .grade-title {
  font-family: var(--cond);
  font-size: 22px;
  font-weight: 700;
  color: #fff;
  letter-spacing: -0.005em;
}
.grade-card .grade-use {
  font-family: var(--mono);
  font-size: 10.5px;
  color: rgba(255, 255, 255, 0.6);
  margin-top: 4px;
  letter-spacing: 0.05em;
}

/* CERT STRIP */
.cert-strip {
  background: var(--bg-soft);
  padding: 24px 0;
  border-bottom: 1px solid var(--line);
}
.cert-strip .wrap {
  display: flex;
  justify-content: space-between;
  align-items: center;
  flex-wrap: wrap;
  gap: 22px;
}
.cs-label {
  font-family: var(--mono);
  font-size: 11px;
  letter-spacing: 0.15em;
  color: var(--navy);
  text-transform: uppercase;
  font-weight: 500;
}
.cs-badges {
  display: flex;
  gap: 28px;
  flex-wrap: wrap;
}
.cs-badges span {
  font-family: var(--cond);
  font-size: 16px;
  font-weight: 700;
  color: var(--navy);
  display: flex;
  align-items: center;
  gap: 7px;
  letter-spacing: 0.3px;
  text-transform: uppercase;
}
.cs-badges span::before {
  content: "✓";
  color: var(--orange);
  font-weight: 700;
}

/* SECTION */
section.s {
  padding: 80px 0;
}
.sec-num {
  font-family: var(--mono);
  font-size: 11.5px;
  letter-spacing: 0.2em;
  color: var(--orange);
  text-transform: uppercase;
  font-weight: 500;
  margin-bottom: 14px;
}
h2 {
  font-family: var(--cond);
  font-size: 48px;
  font-weight: 800;
  line-height: 1.05;
  letter-spacing: -0.02em;
  color: var(--ink);
  margin-bottom: 16px;
}
h2 .accent {
  color: var(--orange);
}
.sec-lead {
  color: var(--ink-soft);
  font-size: 16.5px;
  max-width: 720px;
  line-height: 1.6;
  margin-bottom: 44px;
}
.sec-lead b {
  color: var(--navy);
  font-weight: 700;
}

/* PROPERTIES TABLE */
.props-wrap {
  background: var(--navy);
  color: #fff;
  padding: 8px;
  overflow-x: auto;
}
table.props {
  width: 100%;
  border-collapse: collapse;
}
table.props th,
table.props td {
  padding: 16px 18px;
  text-align: left;
  font-size: 14px;
  border-bottom: 1px solid rgba(255, 255, 255, 0.08);
}
table.props thead th {
  font-family: var(--mono);
  font-size: 11px;
  letter-spacing: 0.13em;
  color: var(--gold);
  text-transform: uppercase;
  font-weight: 500;
  padding-top: 22px;
  padding-bottom: 14px;
  border-bottom: 2px solid rgba(255, 255, 255, 0.15);
  background: var(--navy-2);
}
table.props tbody th {
  font-family: var(--cond);
  font-size: 18px;
  font-weight: 700;
  color: #fff;
}
table.props tbody td {
  color: rgba(255, 255, 255, 0.85);
  font-family: var(--cond);
  font-size: 18px;
  font-weight: 700;
}
table.props tbody td.unit {
  font-family: var(--mono);
  font-size: 11px;
  color: rgba(255, 255, 255, 0.55);
  font-weight: 400;
  letter-spacing: 0.05em;
}
table.props tbody tr:hover {
  background: rgba(255, 255, 255, 0.03);
}
.props-legend {
  font-family: var(--mono);
  font-size: 11px;
  color: var(--ink-soft);
  margin-top: 16px;
  letter-spacing: 0.05em;
}

/* APPLICATIONS GRID */
.app-uses {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 22px;
}
.app-use {
  background: #fff;
  border: 1px solid var(--line);
  padding: 28px;
  position: relative;
  display: flex;
  flex-direction: column;
  gap: 14px;
  transition:
    border-color 0.15s,
    transform 0.15s;
}
.app-use:hover {
  border-color: var(--orange);
  transform: translateY(-3px);
  box-shadow: 0 20px 40px -20px rgba(10, 38, 71, 0.15);
}
.app-use-bar {
  position: absolute;
  top: -1px;
  left: 28px;
  width: 40px;
  height: 3px;
  background: var(--orange);
}
.app-use-icon {
  font-size: 32px;
  line-height: 1;
  margin-top: 8px;
}
.app-use-title {
  font-family: var(--cond);
  font-size: 22px;
  font-weight: 700;
  color: var(--navy);
  line-height: 1.15;
  letter-spacing: -0.005em;
}
.app-use-desc {
  font-size: 13.5px;
  color: var(--ink-soft);
  line-height: 1.55;
  flex: 1;
}
.app-use-grade {
  font-family: var(--mono);
  font-size: 11px;
  color: var(--orange);
  letter-spacing: 0.05em;
  padding-top: 12px;
  border-top: 1px solid var(--line);
  font-weight: 600;
}
.app-use-grade b {
  color: var(--navy);
}

/* COMPARISON CARDS */
.vs-grid {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 28px;
}
.vs-card {
  background: #fff;
  border: 1px solid var(--line);
  padding: 32px;
}
.vs-card.win {
  border-color: var(--orange);
  border-width: 2px;
  background: linear-gradient(180deg, #fff 0%, var(--bg-soft) 100%);
}
.vs-card-head {
  display: flex;
  justify-content: space-between;
  align-items: baseline;
  margin-bottom: 16px;
  padding-bottom: 16px;
  border-bottom: 1px solid var(--line);
}
.vs-card-head h3 {
  font-family: var(--cond);
  font-size: 26px;
  font-weight: 800;
  color: var(--navy);
  letter-spacing: -0.01em;
}
.vs-tag {
  font-family: var(--mono);
  font-size: 10px;
  letter-spacing: 0.15em;
  color: var(--orange);
  text-transform: uppercase;
  font-weight: 700;
  background: rgba(242, 100, 25, 0.08);
  padding: 4px 10px;
}
.vs-tag.alumina-tag {
  background: var(--orange);
  color: #fff;
}
.vs-points {
  list-style: none;
  display: flex;
  flex-direction: column;
  gap: 10px;
}
.vs-points li {
  display: flex;
  gap: 10px;
  align-items: baseline;
  font-size: 14px;
  color: var(--ink-soft);
  line-height: 1.5;
}
.vs-points li::before {
  content: "→";
  color: var(--orange);
  flex-shrink: 0;
  font-weight: 700;
}
.vs-points li b {
  color: var(--navy);
  font-weight: 700;
}

/* CTA BAND */
.casecta {
  background: var(--bg-soft);
  padding: 60px 0;
  border-top: 1px solid var(--line);
  border-bottom: 1px solid var(--line);
}
.casecta .wrap {
  display: grid;
  grid-template-columns: 1.3fr 1fr;
  gap: 50px;
  align-items: center;
}
.casecta-eyebrow {
  font-family: var(--mono);
  font-size: 11px;
  letter-spacing: 0.18em;
  color: var(--orange);
  text-transform: uppercase;
  font-weight: 600;
  margin-bottom: 14px;
}
.casecta h2 {
  font-size: 38px;
  line-height: 1.08;
  margin-bottom: 18px;
}
.casecta p {
  font-size: 16px;
  color: var(--ink-soft);
  margin-bottom: 26px;
  line-height: 1.6;
}
.casecta-ctas {
  display: flex;
  gap: 12px;
  flex-wrap: wrap;
}
.btn-primary {
  background: var(--orange);
  color: #fff;
  padding: 16px 28px;
  font-weight: 800;
  font-size: 14px;
  letter-spacing: 0.2px;
  border: none;
  cursor: pointer;
  transition: background 0.15s;
  display: inline-flex;
  align-items: center;
  gap: 8px;
}
.btn-primary:hover {
  background: var(--orange-deep);
}
.btn-ghost {
  background: transparent;
  color: var(--navy);
  padding: 16px 26px;
  font-weight: 700;
  font-size: 14px;
  letter-spacing: 0.2px;
  border: 2px solid var(--navy);
  cursor: pointer;
  display: inline-flex;
  align-items: center;
  gap: 8px;
}
.btn-ghost:hover {
  border-color: var(--orange);
  color: var(--orange);
}
.casecta-side {
  background: #fff;
  border: 1px solid var(--line);
  padding: 28px;
  position: relative;
}
.casecta-side::before {
  content: "";
  position: absolute;
  top: -1px;
  left: 0;
  width: 70px;
  height: 4px;
  background: var(--orange);
}
.casecta-side-tag {
  font-family: var(--mono);
  font-size: 10px;
  letter-spacing: 0.15em;
  color: var(--orange);
  text-transform: uppercase;
  margin-bottom: 12px;
  font-weight: 600;
}
.casecta-side-title {
  font-family: var(--cond);
  font-size: 22px;
  font-weight: 700;
  color: var(--navy);
  margin-bottom: 16px;
  line-height: 1.2;
}
.casecta-side-list {
  list-style: none;
  display: flex;
  flex-direction: column;
  gap: 10px;
}
.casecta-side-list li {
  font-size: 13.5px;
  color: var(--ink-soft);
  display: flex;
  gap: 10px;
  align-items: baseline;
  padding-bottom: 10px;
  border-bottom: 1px dashed var(--line);
}
.casecta-side-list li:last-child {
  border-bottom: none;
  padding-bottom: 0;
}
.casecta-side-list li b {
  font-family: var(--cond);
  font-size: 15px;
  font-weight: 700;
  color: var(--navy);
  min-width: 70px;
}

/* FAQ */
.faq-grid {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 18px 50px;
}
.faq-item {
  padding: 18px 0;
  border-bottom: 1px solid var(--line);
}
.faq-item:last-child,
.faq-item:nth-last-child(2) {
  border-bottom: none;
}
.faq-q {
  font-family: var(--cond);
  font-size: 19px;
  font-weight: 700;
  color: var(--navy);
  margin-bottom: 10px;
  letter-spacing: -0.005em;
  line-height: 1.25;
}
.faq-q::before {
  content: "Q";
  display: inline-block;
  width: 24px;
  height: 24px;
  background: var(--orange);
  color: #fff;
  font-family: var(--mono);
  font-size: 12px;
  line-height: 24px;
  text-align: center;
  margin-right: 10px;
  vertical-align: middle;
  font-weight: 700;
}
.faq-a {
  font-size: 14px;
  color: var(--ink-soft);
  line-height: 1.6;
  padding-left: 34px;
}

footer {
  background: var(--navy);
  color: #c5d4e6;
  padding: 70px 0 30px;
}
.foot-grid {
  display: grid;
  grid-template-columns: 1.5fr 1fr 1fr 1fr 1.2fr;
  gap: 40px;
  margin-bottom: 50px;
}
.foot-col h5 {
  font-family: var(--cond);
  font-size: 16px;
  font-weight: 700;
  color: #fff;
  letter-spacing: 0.05em;
  margin-bottom: 16px;
  text-transform: uppercase;
}
.foot-col a {
  display: block;
  font-size: 13.5px;
  color: rgba(255, 255, 255, 0.65);
  margin-bottom: 9px;
  transition: color 0.15s;
}
.foot-col a:hover {
  color: var(--gold);
}
.fb-right p {
  font-size: 13.5px;
  color: rgba(255, 255, 255, 0.65);
  margin-bottom: 10px;
  line-height: 1.55;
}
.fb-right p b {
  color: #fff;
  font-weight: 600;
}
.foot-bottom {
  padding-top: 24px;
  border-top: 1px solid rgba(255, 255, 255, 0.1);
  font-family: var(--mono);
  font-size: 11.5px;
  color: rgba(255, 255, 255, 0.5);
  display: flex;
  justify-content: space-between;
  flex-wrap: wrap;
  gap: 14px;
}
.foot-bottom span {
  display: flex;
  gap: 22px;
}

@media (max-width: 1024px) {
  .page-hero .wrap {
    grid-template-columns: 1fr;
    gap: 40px;
  }
  .app-uses {
    grid-template-columns: 1fr 1fr;
  }
  .vs-grid {
    grid-template-columns: 1fr;
  }
  .casecta .wrap {
    grid-template-columns: 1fr;
  }
  .faq-grid {
    grid-template-columns: 1fr;
    gap: 0;
  }
  .foot-grid {
    grid-template-columns: 1fr 1fr;
  }
}
@media (max-width: 640px) {
  .wrap {
    padding: 0 20px;
  }
  .formula-display {
    font-size: 72px;
  }
  .page-hero h1 {
    font-size: 38px;
  }
  .app-uses {
    grid-template-columns: 1fr;
  }
  .topbar .left,
  .nav-links {
    display: none;
  }
}
</style>
