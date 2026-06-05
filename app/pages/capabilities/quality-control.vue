<script setup lang="ts">
useHead({
  title: 'Quality Control & Inspection — 8 Gates, CMM, SEM, XRF, XRD | Ceramitell',
  meta: [{ name: 'description', content: 'Ceramitell' }],
})
</script>

<template>
  <div>
    <div class="breadcrumb">
      <div class="wrap">
        <a href="/">Home</a>
        <span class="sep">/</span>
        <a href="/capabilities">Capabilities</a>
        <span class="sep">/</span>
        <span>Quality Control</span>
      </div>
    </div>

    <section class="page-hero">
      <div class="wrap">
        <div>
          <span class="ph-eyebrow">QMS · Inspection · Metrology</span>
          <div class="formula-display" style="font-size: 56px;">QC</div>
          <h1>Quality control —<br/>what we measure, when, and how.</h1>
          <p class="ph-sub">Quality starts at raw material incoming inspection and continues through every production stage. Every lot ships with documentation. Customer-required acceptance plans (AQL, CTQ-based, statistical sampling) accommodated with no extra lead time. Below is the operational detail behind our <b>ISO 9001 / IATF 16949 / UL Recognition</b> certification stack.</p>
          <div class="ph-quickstats">
            <div class="ph-stat"><div class="num">8</div><div class="lbl">Inspection Gates</div></div>
            <div class="ph-stat"><div class="num">100%</div><div class="lbl">Lot Cert Coverage</div></div>
            <div class="ph-stat"><div class="num">&lt;0.3%</div><div class="lbl">Field Failure Rate</div></div>
            <div class="ph-stat"><div class="num">5 days</div><div class="lbl">RCA Response SLA</div></div>
          </div>
        </div>
        <div class="ph-side">
          <div style="font-family: var(--mono); font-size: 10.5px; letter-spacing: 0.18em; color: var(--gold); text-transform: uppercase; margin-bottom: 14px; font-weight: 600;">Metrology Stack</div>
          <div class="grade-cards">
            <a class="grade-card">
              <div class="grade-label">Dimensional · CMM</div>
              <div class="grade-title">Coordinate Measuring</div>
              <div class="grade-use">±0.001 mm verification</div>
            </a>
            <a class="grade-card">
              <div class="grade-label">Surface · Profilometer</div>
              <div class="grade-title">Surface Finish</div>
              <div class="grade-use">Ra to ±0.005 μm</div>
            </a>
            <a class="grade-card">
              <div class="grade-label">Roundness · Talyrond</div>
              <div class="grade-title">Ball Roundness</div>
              <div class="grade-use">G3-grade verification</div>
            </a>
            <a class="grade-card">
              <div class="grade-label">Composition · XRF / XRD</div>
              <div class="grade-title">Chemical + Phase</div>
              <div class="grade-use">Purity + phase analysis</div>
            </a>
            <a class="grade-card">
              <div class="grade-label">Microscopy · SEM</div>
              <div class="grade-title">SEM Particle Scan</div>
              <div class="grade-use">Semiconductor-grade verification</div>
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
          <span>ISO 9001</span><span>IATF 16949</span><span>CE</span><span>RoHS · REACH</span><span>UL Recognized</span>
        </div>
      </div>
    </section>

    <section class="s">
      <div class="wrap">
        <div class="sec-num">01 · 8 Inspection Gates</div>
        <h2>What we <span class="accent">inspect, when</span>.</h2>
        <p class="sec-lead">Material moves through 8 sequential inspection gates from raw silicon to finished component. Failing any gate triggers either a corrective process step or scrap — never "process exception" or "let it through with a deviation."</p>
        <div class="props-wrap">
          <table class="props">
            <thead>
              <tr>
                <th>Gate</th>
                <th>Unit</th>
                <th>What's Measured</th>
                <th>Decision</th>
              </tr>
            </thead>
            <tbody>
              <tr><th>1 · Incoming Raw Material</th><td class="unit">XRF + sieve</td><td>Purity, particle size</td><td>Accept / reject lot</td></tr>
              <tr><th>2 · Synthesized Powder</th><td class="unit">PSD + BET + XRD</td><td>D50, BET, phase content</td><td>Accept / reject lot</td></tr>
              <tr><th>3 · Forming (Green State)</th><td class="unit">caliper</td><td>Green-state dimensions</td><td>Accept / rework</td></tr>
              <tr><th>4 · Post-Sintering</th><td class="unit">caliper + density</td><td>Shrinkage, density</td><td>Accept / scrap</td></tr>
              <tr><th>5 · Grinding</th><td class="unit">CMM + profilometer</td><td>Tolerance, Ra</td><td>Accept / re-grind</td></tr>
              <tr><th>6 · Lapping (Precision)</th><td class="unit">Talyrond + profilometer</td><td>Roundness, Ra ≤0.02 μm</td><td>Accept / re-lap</td></tr>
              <tr><th>7 · Functional Test</th><td class="unit">electrical, thermal</td><td>Cold/hot resistance, cycle life</td><td>Accept / reject</td></tr>
              <tr><th>8 · Final + Packaging</th><td class="unit">visual + photo</td><td>Visual defects, packaging</td><td>Accept / hold</td></tr>
            </tbody>
          </table>
        </div>
        <div class="props-legend">Sampling rate varies by gate and product family — typical 100% inspection at gates 1, 7, 8; statistical sampling at gates 2-6 with adjustable AQL per customer quality plan.</div>
      </div>
    </section>

    <section class="s" style="background: var(--bg-soft);">
      <div class="wrap">
        <div class="sec-num">02 · What's in Every Lot Cert</div>
        <h2>Lot certification <span class="accent">contents</span>.</h2>
        <p class="sec-lead">Every production lot ships with a Certificate of Conformity (CoC) — the contents vary by product family but follow a consistent template. Below is the typical content for our 5 major product families. Custom CoC formats accommodated for customers with specific quality requirements.</p>
        <div class="app-uses">
          <div class="app-use">
            <div class="app-use-bar"></div>
            <div class="app-use-icon">🔥</div>
            <div class="app-use-title">Hot Surface Igniters</div>
            <p class="app-use-desc">UL Recognition reference + CE marking + per-unit electrical resistance (cold + insulation) + dimensional inspection report + cycle-life qualification data + visual inspection sign-off.</p>
            <div class="app-use-grade"><b>Cert →</b> Electrical + dimensional + UL/CE</div>
          </div>
          <div class="app-use">
            <div class="app-use-bar"></div>
            <div class="app-use-icon">⚪</div>
            <div class="app-use-title">Precision Balls (G3–G60)</div>
            <p class="app-use-desc">ABMA grade verification + per-ball roundness measurement (statistical sampling per ABMA protocol) + dimensional inspection + density verification + Ra surface finish measurement + lot photo.</p>
            <div class="app-use-grade"><b>Cert →</b> ABMA grade + dimensional + finish</div>
          </div>
          <div class="app-use">
            <div class="app-use-bar"></div>
            <div class="app-use-icon">📐</div>
            <div class="app-use-title">Structural Parts</div>
            <p class="app-use-desc">Dimensional inspection per drawing (CMM report) + material grade verification + surface finish + tolerance compliance per spec. Statistical sampling for production lots, 100% inspection for prototype lots.</p>
            <div class="app-use-grade"><b>Cert →</b> Drawing + tolerance + grade</div>
          </div>
          <div class="app-use">
            <div class="app-use-bar"></div>
            <div class="app-use-icon">💎</div>
            <div class="app-use-title">Powders</div>
            <p class="app-use-desc">PSD (D10/D50/D90 via laser diffraction) + BET surface area + chemical purity (XRF) + phase analysis (XRD) + bulk + tap density + loss on ignition.</p>
            <div class="app-use-grade"><b>Cert →</b> PSD + BET + XRF + XRD</div>
          </div>
          <div class="app-use">
            <div class="app-use-bar"></div>
            <div class="app-use-icon">💻</div>
            <div class="app-use-title">Semiconductor Components</div>
            <p class="app-use-desc">Chemical purity certification + particle count (per cm² @ 0.3 μm via SEM scan) + dimensional + surface finish + thermal/electrical characterization where applicable. Optional 3rd-party SGS/TÜV/Intertek verification.</p>
            <div class="app-use-grade"><b>Cert →</b> Purity + particle + 3rd-party</div>
          </div>
          <div class="app-use">
            <div class="app-use-bar"></div>
            <div class="app-use-icon">⚗️</div>
            <div class="app-use-title">Custom / On Request</div>
            <p class="app-use-desc">Customer-specific CoC formats accommodated — including PPAP (Production Part Approval Process) for automotive, ITAR awareness for aerospace, ISO 13356 biocompatibility for medical. No extra lead time for custom CoC.</p>
            <div class="app-use-grade"><b>Cert →</b> Customer-specific quality plan</div>
          </div>
        </div>
      </div>
    </section>

    <section class="s">
      <div class="wrap">
        <div class="sec-num">03 · Failure Analysis SLA</div>
        <h2>When something <span class="accent">goes wrong</span>.</h2>
        <p class="sec-lead">No quality system delivers zero defects forever. What matters is how the supplier responds when a field failure happens. Below is our standard response process — applied across all production customers.</p>
        <div class="vs-grid">
          <div class="vs-card win">
            <div class="vs-card-head"><h3>Standard Failure Response</h3><span class="vs-tag alumina-tag">★ 5-Day SLA</span></div>
            <ul class="vs-points">
              <li><b>Day 1</b> Customer reports failure → initial acknowledgment within 4 hours</li>
              <li><b>Day 2</b> Failed unit ships back (DHL/FedEx) for analysis</li>
              <li><b>Day 3</b> SEM + dimensional + electrical analysis at our QC lab</li>
              <li><b>Day 4</b> Root cause hypothesis documented + supporting evidence</li>
              <li><b>Day 5</b> Written report sent to customer with root cause, corrective action, replacement plan</li>
              <li><b>Day 6+</b> Replacement units ship if needed; preventive action implemented if process gap identified</li>
            </ul>
          </div>
          <div class="vs-card">
            <div class="vs-card-head"><h3>Annual Supply Agreement Extras</h3><span class="vs-tag">Premium service</span></div>
            <ul class="vs-points">
              <li><b>Quarterly performance review</b> — Field failure trends, RCA summary, corrective action status</li>
              <li><b>Dedicated quality liaison</b> — Named contact for the customer's quality engineering team</li>
              <li><b>Annual factory visit</b> — Customer quality team welcomed for in-person audit, no charge</li>
              <li><b>Preventive design review</b> — DFM team reviews customer's new product designs proactively</li>
              <li><b>Priority lot scheduling</b> — Production capacity reserved for the customer's monthly delivery slots</li>
            </ul>
          </div>
        </div>
      </div>
    </section>

    <section class="casecta">
      <div class="wrap">
        <div>
          <div class="casecta-eyebrow">★ Quality Outcome · 7-Year Italian Partnership</div>
          <h2>180K units/year, <span style="color:var(--orange);">&lt;0.3% field failure</span>, zero recalls.</h2>
          <p>Our Italian pellet stove OEM partner has received 7 years of CN-300 igniter supply — 180,000 units/year, zero recall events, field failure rate consistently below 0.3% per year. When quality concerns arise (always less than 10 units in any given batch), root cause analysis is delivered within 5 business days. This is the operational expression of our ISO 9001 + IATF 16949 + UL Recognition certification stack — not paper, but daily work.</p>
          <div class="casecta-ctas">
            <a class="btn-primary" href="/contact">Request Quality Audit →</a>
            <a class="btn-ghost" href="/resources/iso-9001-certification">Certifications →</a>
          </div>
        </div>
        <div class="casecta-side">
          <div class="casecta-side-tag">7-Year Quality Record</div>
          <div class="casecta-side-title">Italian OEM partnership</div>
          <ul class="casecta-side-list">
            <li><b>Zero</b> Recall events</li>
            <li><b>&lt;0.3%</b> Annual field failure rate</li>
            <li><b>5 days</b> RCA response SLA met 100%</li>
            <li><b>100%</b> Lot traceability</li>
          </ul>
        </div>
      </div>
    </section>
  </div>
</template>

<style>
:root {
    --navy: #0A2647; --navy-2: #103A6B; --navy-3: #1B4D8A;
    --bg: #FFFFFF; --bg-soft: #F1F5FA; --bg-soft-2: #E6EEF7;
    --ink: #14233A; --ink-soft: #4A5A70; --ink-faint: #8794A6;
    --orange: #F26419; --orange-deep: #D8530F;
    --gold: #F0A500; --gold-soft: #FFD466;
    --line: #DCE5EF; --line-strong: #C2D0E0;
    --sans: 'Barlow', sans-serif;
    --cond: 'Barlow Condensed', sans-serif;
    --mono: 'IBM Plex Mono', monospace;
  }
  * { box-sizing: border-box; margin: 0; padding: 0; }
  body { background: var(--bg); color: var(--ink); font-family: var(--sans); line-height: 1.6; -webkit-font-smoothing: antialiased; }
  a { color: inherit; text-decoration: none; cursor: pointer; }
  .wrap { max-width: 1260px; margin: 0 auto; padding: 0 40px; }

  /* CHROME */
  .topbar { background: var(--navy); color: #C5D4E6; font-family: var(--mono); font-size: 12px; }
  .topbar .wrap { display: flex; justify-content: space-between; align-items: center; height: 38px; }
  .topbar .left { display: flex; gap: 26px; }
  .topbar .left span { display: flex; align-items: center; gap: 7px; }
  .dot { width: 6px; height: 6px; border-radius: 50%; background: var(--gold); }
  .topbar .right { letter-spacing: 0.05em; color: var(--gold); }
  nav { position: sticky; top: 0; z-index: 100; background: #fff; border-bottom: 3px solid var(--navy); box-shadow: 0 2px 12px rgba(10,38,71,0.06); }
  nav .wrap { display: flex; align-items: center; justify-content: space-between; height: 78px; }
  .logo { display: flex; align-items: center; gap: 12px; }
  .logo-mark { width: 42px; height: 42px; }
  .logo-text { font-weight: 800; font-size: 24px; letter-spacing: -0.02em; color: var(--navy); }
  .logo-text b { color: var(--orange); }
  .logo-text small { display: block; font-family: var(--mono); font-size: 9px; letter-spacing: 0.16em; color: var(--ink-faint); font-weight: 400; margin-top: -2px; }
  .nav-links { display: flex; gap: 32px; align-items: center; }
  .nav-links a { font-size: 14.5px; font-weight: 700; color: var(--navy); padding: 6px 0; letter-spacing: 0.2px; }
  .nav-links a.active { color: var(--orange); border-bottom: 2px solid var(--orange); }
  .nav-links a:hover { color: var(--orange); }
  .nav-cta { background: var(--orange); color: #fff !important; padding: 12px 24px; font-weight: 800; font-size: 13.5px; letter-spacing: 0.5px; transition: background 0.15s; }
  .nav-cta:hover { background: var(--orange-deep); }

  .breadcrumb { background: var(--bg-soft); padding: 14px 0; border-bottom: 1px solid var(--line); }
  .breadcrumb .wrap { display: flex; gap: 10px; align-items: center; font-family: var(--mono); font-size: 12px; color: var(--ink-soft); letter-spacing: 0.05em; }
  .breadcrumb a { color: var(--navy); font-weight: 600; }
  .breadcrumb a:hover { color: var(--orange); }
  .breadcrumb .sep { color: var(--ink-faint); }

  /* HERO */
  .page-hero { background: linear-gradient(135deg, var(--navy) 0%, var(--navy-2) 100%); color: #fff; padding: 70px 0 90px; position: relative; overflow: hidden; }
  .page-hero-stripe { position: absolute; bottom: 0; left: 0; right: 0; height: 4px; background: linear-gradient(90deg, var(--orange) 0%, var(--gold) 50%, var(--orange) 100%); }
  .page-hero .wrap { display: grid; grid-template-columns: 1.4fr 1fr; gap: 60px; align-items: end; position: relative; }
  .ph-eyebrow { display: inline-block; background: var(--orange); color: #fff; font-family: var(--mono); font-size: 11px; letter-spacing: 0.15em; padding: 8px 14px; margin-bottom: 24px; text-transform: uppercase; font-weight: 500; }
  .formula-display { font-family: var(--cond); font-size: 92px; font-weight: 800; line-height: 0.95; letter-spacing: -0.025em; margin-bottom: 12px; }
  .formula-display sub { font-size: 56px; font-weight: 600; }
  .page-hero h1 { font-family: var(--cond); font-size: 52px; line-height: 1.05; font-weight: 700; letter-spacing: -0.02em; margin-bottom: 22px; color: var(--gold); }
  .ph-sub { font-size: 18px; color: rgba(255,255,255,0.85); line-height: 1.55; max-width: 620px; margin-bottom: 32px; }
  .ph-sub b { color: var(--gold-soft); font-weight: 700; }
  .ph-quickstats { display: flex; gap: 40px; }
  .ph-stat .num { font-family: var(--cond); font-size: 44px; font-weight: 800; line-height: 1; color: var(--gold); }
  .ph-stat .lbl { font-family: var(--mono); font-size: 10.5px; letter-spacing: 0.13em; color: rgba(255,255,255,0.7); margin-top: 6px; text-transform: uppercase; }
  .ph-side { padding-bottom: 14px; }
  .grade-cards { display: flex; flex-direction: column; gap: 14px; }
  .grade-card { background: rgba(255,255,255,0.06); border-left: 3px solid var(--orange); padding: 18px 22px; transition: background 0.15s, border-color 0.15s; cursor: pointer; }
  .grade-card:hover { background: rgba(255,255,255,0.1); border-left-color: var(--gold); }
  .grade-card .grade-label { font-family: var(--mono); font-size: 10px; letter-spacing: 0.15em; color: var(--gold); text-transform: uppercase; font-weight: 600; margin-bottom: 4px; }
  .grade-card .grade-title { font-family: var(--cond); font-size: 22px; font-weight: 700; color: #fff; letter-spacing: -0.005em; }
  .grade-card .grade-use { font-family: var(--mono); font-size: 10.5px; color: rgba(255,255,255,0.6); margin-top: 4px; letter-spacing: 0.05em; }

  /* CERT STRIP */
  .cert-strip { background: var(--bg-soft); padding: 24px 0; border-bottom: 1px solid var(--line); }
  .cert-strip .wrap { display: flex; justify-content: space-between; align-items: center; flex-wrap: wrap; gap: 22px; }
  .cs-label { font-family: var(--mono); font-size: 11px; letter-spacing: 0.15em; color: var(--navy); text-transform: uppercase; font-weight: 500; }
  .cs-badges { display: flex; gap: 28px; flex-wrap: wrap; }
  .cs-badges span { font-family: var(--cond); font-size: 16px; font-weight: 700; color: var(--navy); display: flex; align-items: center; gap: 7px; letter-spacing: 0.3px; text-transform: uppercase; }
  .cs-badges span::before { content: '✓'; color: var(--orange); font-weight: 700; }

  /* SECTION */
  section.s { padding: 80px 0; }
  .sec-num { font-family: var(--mono); font-size: 11.5px; letter-spacing: 0.2em; color: var(--orange); text-transform: uppercase; font-weight: 500; margin-bottom: 14px; }
  h2 { font-family: var(--cond); font-size: 48px; font-weight: 800; line-height: 1.05; letter-spacing: -0.02em; color: var(--ink); margin-bottom: 16px; }
  h2 .accent { color: var(--orange); }
  .sec-lead { color: var(--ink-soft); font-size: 16.5px; max-width: 720px; line-height: 1.6; margin-bottom: 44px; }
  .sec-lead b { color: var(--navy); font-weight: 700; }

  /* PROPERTIES TABLE */
  .props-wrap { background: var(--navy); color: #fff; padding: 8px; overflow-x: auto; }
  table.props { width: 100%; border-collapse: collapse; }
  table.props th, table.props td { padding: 16px 18px; text-align: left; font-size: 14px; border-bottom: 1px solid rgba(255,255,255,0.08); }
  table.props thead th { font-family: var(--mono); font-size: 11px; letter-spacing: 0.13em; color: var(--gold); text-transform: uppercase; font-weight: 500; padding-top: 22px; padding-bottom: 14px; border-bottom: 2px solid rgba(255,255,255,0.15); background: var(--navy-2); }
  table.props tbody th { font-family: var(--cond); font-size: 18px; font-weight: 700; color: #fff; }
  table.props tbody td { color: rgba(255,255,255,0.85); font-family: var(--cond); font-size: 18px; font-weight: 700; }
  table.props tbody td.unit { font-family: var(--mono); font-size: 11px; color: rgba(255,255,255,0.55); font-weight: 400; letter-spacing: 0.05em; }
  table.props tbody tr:hover { background: rgba(255,255,255,0.03); }
  .props-legend { font-family: var(--mono); font-size: 11px; color: var(--ink-soft); margin-top: 16px; letter-spacing: 0.05em; }

  /* APPLICATIONS GRID */
  .app-uses { display: grid; grid-template-columns: repeat(3, 1fr); gap: 22px; }
  .app-use { background: #fff; border: 1px solid var(--line); padding: 28px; position: relative; display: flex; flex-direction: column; gap: 14px; transition: border-color 0.15s, transform 0.15s; }
  .app-use:hover { border-color: var(--orange); transform: translateY(-3px); box-shadow: 0 20px 40px -20px rgba(10,38,71,0.15); }
  .app-use-bar { position: absolute; top: -1px; left: 28px; width: 40px; height: 3px; background: var(--orange); }
  .app-use-icon { font-size: 32px; line-height: 1; margin-top: 8px; }
  .app-use-title { font-family: var(--cond); font-size: 22px; font-weight: 700; color: var(--navy); line-height: 1.15; letter-spacing: -0.005em; }
  .app-use-desc { font-size: 13.5px; color: var(--ink-soft); line-height: 1.55; flex: 1; }
  .app-use-grade { font-family: var(--mono); font-size: 11px; color: var(--orange); letter-spacing: 0.05em; padding-top: 12px; border-top: 1px solid var(--line); font-weight: 600; }
  .app-use-grade b { color: var(--navy); }

  /* COMPARISON CARDS */
  .vs-grid { display: grid; grid-template-columns: 1fr 1fr; gap: 28px; }
  .vs-card { background: #fff; border: 1px solid var(--line); padding: 32px; }
  .vs-card.win { border-color: var(--orange); border-width: 2px; background: linear-gradient(180deg, #fff 0%, var(--bg-soft) 100%); }
  .vs-card-head { display: flex; justify-content: space-between; align-items: baseline; margin-bottom: 16px; padding-bottom: 16px; border-bottom: 1px solid var(--line); }
  .vs-card-head h3 { font-family: var(--cond); font-size: 26px; font-weight: 800; color: var(--navy); letter-spacing: -0.01em; }
  .vs-tag { font-family: var(--mono); font-size: 10px; letter-spacing: 0.15em; color: var(--orange); text-transform: uppercase; font-weight: 700; background: rgba(242,100,25,0.08); padding: 4px 10px; }
  .vs-tag.alumina-tag { background: var(--orange); color: #fff; }
  .vs-points { list-style: none; display: flex; flex-direction: column; gap: 10px; }
  .vs-points li { display: flex; gap: 10px; align-items: baseline; font-size: 14px; color: var(--ink-soft); line-height: 1.5; }
  .vs-points li::before { content: '→'; color: var(--orange); flex-shrink: 0; font-weight: 700; }
  .vs-points li b { color: var(--navy); font-weight: 700; }

  /* CTA BAND */
  .casecta { background: var(--bg-soft); padding: 60px 0; border-top: 1px solid var(--line); border-bottom: 1px solid var(--line); }
  .casecta .wrap { display: grid; grid-template-columns: 1.3fr 1fr; gap: 50px; align-items: center; }
  .casecta-eyebrow { font-family: var(--mono); font-size: 11px; letter-spacing: 0.18em; color: var(--orange); text-transform: uppercase; font-weight: 600; margin-bottom: 14px; }
  .casecta h2 { font-size: 38px; line-height: 1.08; margin-bottom: 18px; }
  .casecta p { font-size: 16px; color: var(--ink-soft); margin-bottom: 26px; line-height: 1.6; }
  .casecta-ctas { display: flex; gap: 12px; flex-wrap: wrap; }
  .btn-primary { background: var(--orange); color: #fff; padding: 16px 28px; font-weight: 800; font-size: 14px; letter-spacing: 0.2px; border: none; cursor: pointer; transition: background 0.15s; display: inline-flex; align-items: center; gap: 8px; }
  .btn-primary:hover { background: var(--orange-deep); }
  .btn-ghost { background: transparent; color: var(--navy); padding: 16px 26px; font-weight: 700; font-size: 14px; letter-spacing: 0.2px; border: 2px solid var(--navy); cursor: pointer; display: inline-flex; align-items: center; gap: 8px; }
  .btn-ghost:hover { border-color: var(--orange); color: var(--orange); }
  .casecta-side { background: #fff; border: 1px solid var(--line); padding: 28px; position: relative; }
  .casecta-side::before { content: ''; position: absolute; top: -1px; left: 0; width: 70px; height: 4px; background: var(--orange); }
  .casecta-side-tag { font-family: var(--mono); font-size: 10px; letter-spacing: 0.15em; color: var(--orange); text-transform: uppercase; margin-bottom: 12px; font-weight: 600; }
  .casecta-side-title { font-family: var(--cond); font-size: 22px; font-weight: 700; color: var(--navy); margin-bottom: 16px; line-height: 1.2; }
  .casecta-side-list { list-style: none; display: flex; flex-direction: column; gap: 10px; }
  .casecta-side-list li { font-size: 13.5px; color: var(--ink-soft); display: flex; gap: 10px; align-items: baseline; padding-bottom: 10px; border-bottom: 1px dashed var(--line); }
  .casecta-side-list li:last-child { border-bottom: none; padding-bottom: 0; }
  .casecta-side-list li b { font-family: var(--cond); font-size: 15px; font-weight: 700; color: var(--navy); min-width: 70px; }

  /* FAQ */
  .faq-grid { display: grid; grid-template-columns: 1fr 1fr; gap: 18px 50px; }
  .faq-item { padding: 18px 0; border-bottom: 1px solid var(--line); }
  .faq-item:last-child, .faq-item:nth-last-child(2) { border-bottom: none; }
  .faq-q { font-family: var(--cond); font-size: 19px; font-weight: 700; color: var(--navy); margin-bottom: 10px; letter-spacing: -0.005em; line-height: 1.25; }
  .faq-q::before { content: 'Q'; display: inline-block; width: 24px; height: 24px; background: var(--orange); color: #fff; font-family: var(--mono); font-size: 12px; line-height: 24px; text-align: center; margin-right: 10px; vertical-align: middle; font-weight: 700; }
  .faq-a { font-size: 14px; color: var(--ink-soft); line-height: 1.6; padding-left: 34px; }

  footer { background: var(--navy); color: #C5D4E6; padding: 70px 0 30px; }
  .foot-grid { display: grid; grid-template-columns: 1.5fr 1fr 1fr 1fr 1.2fr; gap: 40px; margin-bottom: 50px; }
  .foot-col h5 { font-family: var(--cond); font-size: 16px; font-weight: 700; color: #fff; letter-spacing: 0.05em; margin-bottom: 16px; text-transform: uppercase; }
  .foot-col a { display: block; font-size: 13.5px; color: rgba(255,255,255,0.65); margin-bottom: 9px; transition: color 0.15s; }
  .foot-col a:hover { color: var(--gold); }
  .fb-right p { font-size: 13.5px; color: rgba(255,255,255,0.65); margin-bottom: 10px; line-height: 1.55; }
  .fb-right p b { color: #fff; font-weight: 600; }
  .foot-bottom { padding-top: 24px; border-top: 1px solid rgba(255,255,255,0.1); font-family: var(--mono); font-size: 11.5px; color: rgba(255,255,255,0.5); display: flex; justify-content: space-between; flex-wrap: wrap; gap: 14px; }
  .foot-bottom span { display: flex; gap: 22px; }

  @media (max-width: 1024px) {
    .page-hero .wrap { grid-template-columns: 1fr; gap: 40px; }
    .app-uses { grid-template-columns: 1fr 1fr; }
    .vs-grid { grid-template-columns: 1fr; }
    .casecta .wrap { grid-template-columns: 1fr; }
    .faq-grid { grid-template-columns: 1fr; gap: 0; }
    .foot-grid { grid-template-columns: 1fr 1fr; }
  }
  @media (max-width: 640px) {
    .wrap { padding: 0 20px; }
    .formula-display { font-size: 72px; }
    .page-hero h1 { font-size: 38px; }
    .app-uses { grid-template-columns: 1fr; }
    .topbar .left, .nav-links { display: none; }
  }
</style>
