<script setup lang="ts">
useHead({
  title: 'Manufacturing Capabilities — Rapid Prototyping, Quality Control, Vertical Integration | Ceramitell',
  meta: [{ name: 'description', content: 'Vertically integrated ceramic manufacturer: in-house powder synthesis, forming, sintering, machining. Rapid prototyping in 5–20 days, ISO 9001 / IATF 16949 quality systems, lot-specific certs included.' }],
})
</script>

<template>
  <div>
    <div class="breadcrumb">
      <div class="wrap">
        <a href="/">Home</a>
        <span class="sep">/</span>
        <span>Capabilities</span>
      </div>
    </div>

    <section class="page-hero">
      <div class="wrap">
        <div>
          <span class="ph-eyebrow">Vertically Integrated · Powder to Part</span>
          <h1>Built In-House,<br/><span class="accent">From Powder to Part</span>.</h1>
          <p class="ph-sub">We synthesize our own Si₃N₄ and ZrO₂ powders, dry-press / iso-press / slip-cast / injection-mold to near-net shape, sinter at <b>1700°C</b>, and finish-grind to <b>±0.005 mm</b> tolerance — all under one roof. No subcontracting. No surprises.</p>
          <div class="ph-quickstats">
            <div class="ph-stat"><div class="num">4</div><div class="lbl">Capability Pillars</div></div>
            <div class="ph-stat"><div class="num">48h</div><div class="lbl">DFM Reply</div></div>
            <div class="ph-stat"><div class="num">7–14d</div><div class="lbl">Prototype</div></div>
            <div class="ph-stat"><div class="num">±5 μm</div><div class="lbl">Tolerance</div></div>
          </div>
        </div>
        <div class="ph-side">
          <div class="ph-toc">
            <div class="ph-toc-label">Jump to Capability</div>
            <ul>
              <li><a href="/capabilities/vertical-integration">Vertical Integration <span>Powder → Part</span></a></li>
              <li><a href="#rapid-prototyping">Rapid Prototyping <span>⭐ 5–20 days</span></a></li>
              <li><a href="/capabilities/quality-control">Quality Control <span>ISO · IATF</span></a></li>
              <li><a href="/capabilities/manufacturing-process">Manufacturing Process <span>4 stages</span></a></li>
            </ul>
          </div>
        </div>
      </div>
      <div class="page-hero-stripe"></div>
    </section>

    <section class="cert-strip">
      <div class="wrap">
        <div class="cs-label">Certifications & Standards</div>
        <div class="cs-badges">
          <span>ISO 9001</span>
          <span>IATF 16949</span>
          <span>CE</span>
          <span>RoHS · REACH</span>
          <span>UL Recognized</span>
        </div>
      </div>
    </section>

    <!-- 4 CAPABILITY CARDS -->
    <section class="s">
      <div class="wrap">
        <div class="sec-head">
          <div class="sec-head-left">
            <div class="sec-num">01 · 4 Capability Pillars</div>
            <h2>What we control, <span class="accent">in-house</span>.</h2>
            <p class="sec-lead">Most ceramic component vendors trade. We make. Every ceramic component we ship is the result of these four capability pillars operating under one factory roof — which is why we can quote DFM in 48 hours and ship samples in 7–14 days.</p>
          </div>
        </div>

        <div class="cap-grid">

          <!-- Vertical Integration -->
          <a id="vertical-integration" href="#" class="cap-card">
            <div class="cap-bar"></div>
            <div class="cap-head">
              <div>
                <div class="cap-num">PILLAR 01</div>
                <div class="cap-icon">🔗</div>
                <div class="cap-title">Vertical Integration</div>
              </div>
              <span class="cap-tag">Powder → Part</span>
            </div>
            <p class="cap-desc">We synthesize our own Si₃N₄ and ZrO₂ ceramic powders, then forming, sintering, and machining happen on lines we operate ourselves. No third-party powder dependency. Full lot traceability from raw nitrogen and silicon feedstock through finished SKU.</p>
            <ul class="cap-points">
              <li><b>In-house powder synthesis</b> — Si₃N₄ and ZrO₂ to ≥99.5% purity</li>
              <li><b>Full process traceability</b> — Lot certs link back to raw material batch</li>
              <li><b>No subcontracting</b> — Every step performed by our team</li>
            </ul>
            <div class="cap-cta">
              <span class="cap-cta-main">See Manufacturing →</span>
              <span class="cap-cta-sub">Powder line · sintering · grinding</span>
            </div>
          </a>

          <!-- Rapid Prototyping (Featured) -->
          <a id="rapid-prototyping" href="/capabilities/rapid-prototyping" class="cap-card featured">
            <div class="cap-bar"></div>
            <div class="cap-head">
              <div>
                <div class="cap-num">PILLAR 02</div>
                <div class="cap-icon">⚡</div>
                <div class="cap-title">Rapid Prototyping</div>
              </div>
              <span class="cap-tag flag">★ Industry Lead</span>
            </div>
            <p class="cap-desc">Most ceramic suppliers quote 6–12 weeks for a single prototype. We do <b>stock geometries in 1–3 working days</b>, <b>custom drawings in 5–20 days</b> — backed by dedicated DFM engineers who review your STEP / PDF / DWG within 48 hours and reply with feedback before quoting.</p>
            <ul class="cap-points">
              <li><b>Stock samples</b> — 1–3 working days dispatch</li>
              <li><b>Custom prototypes</b> — 5–20 working days (geometry-dependent)</li>
              <li><b>DFM engineer support</b> — 48-hour drawing review with feedback</li>
              <li><b>NDA available</b> — Signed before drawing review on request</li>
            </ul>
            <div class="cap-cta">
              <span class="cap-cta-main">Submit Drawing →</span>
              <span class="cap-cta-sub">STEP / PDF / DWG</span>
            </div>
          </a>

          <!-- Quality Control -->
          <a id="quality-control" href="#" class="cap-card">
            <div class="cap-bar"></div>
            <div class="cap-head">
              <div>
                <div class="cap-num">PILLAR 03</div>
                <div class="cap-icon">✓</div>
                <div class="cap-title">Quality Control</div>
              </div>
              <span class="cap-tag">ISO · IATF</span>
            </div>
            <p class="cap-desc">ISO 9001:2015 quality management baseline, IATF 16949:2016 for automotive-grade production runs. Lot-specific test certificates issued on every production shipment — covering density, dimension, surface finish, and electrical/thermal properties as applicable.</p>
            <ul class="cap-points">
              <li><b>ISO 9001:2015</b> certified quality system</li>
              <li><b>IATF 16949:2016</b> for automotive production</li>
              <li><b>Lot certs included</b> — Density · dimension · property tests</li>
              <li><b>Failure mode analysis</b> — Available on request</li>
            </ul>
            <div class="cap-cta">
              <span class="cap-cta-main">See QC System →</span>
              <span class="cap-cta-sub">Cert scans · ZIP</span>
            </div>
          </a>

          <!-- Manufacturing -->
          <a id="manufacturing" href="/capabilities/manufacturing-process" class="cap-card">
            <div class="cap-bar"></div>
            <div class="cap-head">
              <div>
                <div class="cap-num">PILLAR 04</div>
                <div class="cap-icon">🏭</div>
                <div class="cap-title">Manufacturing Process</div>
              </div>
              <span class="cap-tag">4 Stages</span>
            </div>
            <p class="cap-desc">Four production stages: powder preparation, near-net forming (dry press / iso press / slip cast / injection molding / tape casting), high-temperature sintering (1600°C+ for structural ceramics), and post-sinter finishing (grinding, drilling, polishing).</p>
            <ul class="cap-points">
              <li><b>Powder Preparation</b> — Synthesis · blending · drying</li>
              <li><b>Forming</b> — Dry press · iso press · slip cast · injection · tape cast</li>
              <li><b>Sintering</b> — 1600°C+ electric, gas, oil furnaces</li>
              <li><b>Finishing</b> — Diamond grinding, drilling, lapping, polishing</li>
            </ul>
            <div class="cap-cta">
              <span class="cap-cta-main">See 4-Stage Process →</span>
              <span class="cap-cta-sub">Detailed below</span>
            </div>
          </a>

        </div>
      </div>
    </section>

    <!-- RAPID PROTOTYPING FEATURED SECTION -->
    <section class="rapid-section" id="rapid-section">
      <div class="wrap">
        <div class="sec-head">
          <div class="sec-head-left">
            <div class="sec-num">02 · Rapid Turn-Around Ceramic Parts</div>
            <h2>Built for <span class="accent">rapid turn-around</span>.</h2>
            <p class="sec-lead">The legacy ceramic industry quote — 6 to 12 weeks for a sample — is the single biggest reason engineering teams default to metal or polymer when ceramic would actually be the right material. We built our prototype line specifically to break that cycle.</p>
          </div>
        </div>

        <div class="rapid-grid">

          <div class="rapid-card">
            <div class="rapid-card-num">1–3</div>
            <div class="rapid-card-unit">Working Days</div>
            <h3>Stock Sample Dispatch</h3>
            <p>For any geometry already in our SKU catalog — igniters, balls, rods, plates, standard bearings — we dispatch from Pingxiang warehouse within 1–3 working days of order confirmation.</p>
          </div>

          <div class="rapid-card">
            <div class="rapid-card-num">5–20</div>
            <div class="rapid-card-unit">Working Days</div>
            <h3>Custom Prototype</h3>
            <p>For drawings (STEP / PDF / DWG), our prototype line produces 1–5 units in 5–20 working days depending on geometry complexity, material selection, and finishing requirements.</p>
          </div>

          <div class="rapid-card">
            <div class="rapid-card-num">48h</div>
            <div class="rapid-card-unit">Engineer Response</div>
            <h3>DFM Engineer Support</h3>
            <p>Every drawing goes to a dedicated DFM engineer who reviews manufacturability, material selection, and tolerances — replying with feedback and quote within 48 hours of receipt.</p>
          </div>

        </div>

        <div class="rapid-ctas">
          <a class="btn-primary" href="/contact">Submit a Drawing →</a>
          <a class="btn-ghost-dark" href="/contact">Request Stock Sample →</a>
        </div>
      </div>
    </section>

    <!-- MANUFACTURING 4-STAGE PROCESS -->
    <section class="s" style="background: var(--bg-soft);" id="manufacturing-process">
      <div class="wrap">
        <div class="sec-head">
          <div class="sec-head-left">
            <div class="sec-num">03 · Manufacturing</div>
            <h2>From raw powder to <span class="accent">finished part</span>.</h2>
            <p class="sec-lead">Four production stages, all in-house. The forming method we pick depends on geometry — small precision parts go through injection molding, large rotational parts through iso pressing, thin substrates through tape casting.</p>
          </div>
        </div>

        <div class="process-grid">

          <div class="process-card">
            <div class="process-step">STAGE 01</div>
            <div class="process-icon">⚗️</div>
            <div class="process-title">Powder Preparation</div>
            <p class="process-desc">Si₃N₄ and ZrO₂ synthesis, plus blending of additives and binders. Particle size distribution and surface area controlled to spec.</p>
            <div class="process-tech">Synthesis · blending · drying</div>
          </div>

          <div class="process-card">
            <div class="process-step">STAGE 02</div>
            <div class="process-icon">🔨</div>
            <div class="process-title">Forming</div>
            <p class="process-desc">Near-net shape forming via dry pressing, isostatic pressing, slip casting, tape casting, or injection molding — chosen to match geometry.</p>
            <div class="process-tech">Dry / iso press · slip · tape · injection</div>
          </div>

          <div class="process-card">
            <div class="process-step">STAGE 03</div>
            <div class="process-icon">🔥</div>
            <div class="process-title">Sintering</div>
            <p class="process-desc">High-temperature densification. Structural ceramics typically sintered at 1600°C; functional ceramics at precision-controlled lower temperatures.</p>
            <div class="process-tech">Electric · gas · oil-fired furnaces</div>
          </div>

          <div class="process-card">
            <div class="process-step">STAGE 04</div>
            <div class="process-icon">💎</div>
            <div class="process-title">Finishing</div>
            <p class="process-desc">Post-sinter machining — diamond grinding to tolerance, drilling, lapping, and polishing to final surface finish specifications.</p>
            <div class="process-tech">Grind · drill · lap · polish (Ra 0.2 μm)</div>
          </div>

        </div>
      </div>
    </section>

    <!-- QC STATS BAND -->
    <section class="qc-band">
      <div class="wrap">
        <div>
          <div class="casecta-eyebrow" style="font-family: var(--mono); font-size: 11.5px; letter-spacing: 0.18em; color: var(--orange); text-transform: uppercase; font-weight: 600; margin-bottom: 14px;">★ Quality Numbers · 2025 Production</div>
          <h2 style="font-family: var(--cond); font-size: 44px; font-weight: 800; line-height: 1.08; letter-spacing: -0.02em; color: var(--ink); margin-bottom: 20px;">Quality you can <span style="color:var(--orange);">audit</span>.</h2>
          <p style="font-size: 16.5px; color: var(--ink-soft); line-height: 1.6; margin-bottom: 24px;">A ceramic manufacturer's real quality is in lot rejection rates, on-time delivery, and how fast field issues get root-caused. Here's what 2025 looked like for our top-100 OEM accounts.</p>
          <a class="btn-primary" href="/contact">Request Audit Report →</a>
        </div>
        <div class="qc-stats">
          <div class="qc-stat">
            <div class="num">99.4%</div>
            <div class="lbl">First-pass Yield</div>
            <div class="desc">2025 production-line average across all Si₃N₄ igniter SKUs</div>
          </div>
          <div class="qc-stat">
            <div class="num">98.7%</div>
            <div class="lbl">On-Time Delivery</div>
            <div class="desc">2025 OEM accounts, vs. originally promised dispatch date</div>
          </div>
          <div class="qc-stat">
            <div class="num">12h</div>
            <div class="lbl">Avg. Issue Response</div>
            <div class="desc">From field-issue report to engineering reply, 2025</div>
          </div>
          <div class="qc-stat">
            <div class="num">100%</div>
            <div class="lbl">Lot Certs Issued</div>
            <div class="desc">Production lots ship with material + dimension cert</div>
          </div>
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

  .page-hero { background: linear-gradient(135deg, var(--navy) 0%, var(--navy-2) 100%); color: #fff; padding: 80px 0 100px; position: relative; overflow: hidden; }
  .page-hero-stripe { position: absolute; bottom: 0; left: 0; right: 0; height: 4px; background: linear-gradient(90deg, var(--orange) 0%, var(--gold) 50%, var(--orange) 100%); }
  .page-hero .wrap { display: grid; grid-template-columns: 1.4fr 1fr; gap: 70px; align-items: end; position: relative; }
  .ph-eyebrow { display: inline-block; background: var(--orange); color: #fff; font-family: var(--mono); font-size: 11px; letter-spacing: 0.15em; padding: 8px 14px; margin-bottom: 28px; text-transform: uppercase; font-weight: 500; }
  .page-hero h1 { font-family: var(--cond); font-size: 84px; line-height: 0.95; font-weight: 800; letter-spacing: -0.02em; margin-bottom: 24px; }
  .page-hero h1 .accent { color: var(--gold); }
  .ph-sub { font-size: 19px; color: rgba(255,255,255,0.85); line-height: 1.55; max-width: 620px; margin-bottom: 38px; }
  .ph-sub b { color: var(--gold-soft); font-weight: 700; }
  .ph-quickstats { display: flex; gap: 50px; }
  .ph-stat .num { font-family: var(--cond); font-size: 52px; font-weight: 800; line-height: 1; color: var(--gold); }
  .ph-stat .lbl { font-family: var(--mono); font-size: 11px; letter-spacing: 0.13em; color: rgba(255,255,255,0.7); margin-top: 8px; text-transform: uppercase; }
  .ph-side { padding-bottom: 14px; }
  .ph-toc { background: rgba(255,255,255,0.06); border-left: 3px solid var(--orange); padding: 24px 28px; }
  .ph-toc-label { font-family: var(--mono); font-size: 10.5px; letter-spacing: 0.18em; color: var(--gold); text-transform: uppercase; margin-bottom: 16px; }
  .ph-toc ul { list-style: none; display: flex; flex-direction: column; gap: 10px; }
  .ph-toc li a { display: flex; justify-content: space-between; align-items: center; padding: 6px 0; font-family: var(--cond); font-size: 19px; font-weight: 600; color: #fff; border-bottom: 1px dashed rgba(255,255,255,0.15); transition: color 0.15s; }
  .ph-toc li a:hover { color: var(--gold); border-bottom-color: var(--gold); }
  .ph-toc li a span { font-family: var(--mono); font-size: 10px; color: var(--ink-faint); letter-spacing: 0.1em; }

  .cert-strip { background: var(--bg-soft); padding: 24px 0; border-bottom: 1px solid var(--line); }
  .cert-strip .wrap { display: flex; justify-content: space-between; align-items: center; flex-wrap: wrap; gap: 22px; }
  .cs-label { font-family: var(--mono); font-size: 11px; letter-spacing: 0.15em; color: var(--navy); text-transform: uppercase; font-weight: 500; }
  .cs-badges { display: flex; gap: 28px; flex-wrap: wrap; }
  .cs-badges span { font-family: var(--cond); font-size: 16px; font-weight: 700; color: var(--navy); display: flex; align-items: center; gap: 7px; letter-spacing: 0.3px; text-transform: uppercase; }
  .cs-badges span::before { content: '✓'; color: var(--orange); font-weight: 700; }

  section.s { padding: 90px 0; }
  .sec-head { display: flex; justify-content: space-between; align-items: flex-end; margin-bottom: 50px; gap: 40px; }
  .sec-head-left { max-width: 720px; }
  .sec-num { font-family: var(--mono); font-size: 11.5px; letter-spacing: 0.2em; color: var(--orange); text-transform: uppercase; font-weight: 500; margin-bottom: 14px; }
  h2 { font-family: var(--cond); font-size: 54px; font-weight: 800; line-height: 1.05; letter-spacing: -0.02em; color: var(--ink); }
  h2 .accent { color: var(--orange); }
  .sec-lead { color: var(--ink-soft); font-size: 17px; margin-top: 18px; max-width: 680px; line-height: 1.6; }

  /* CAPABILITY CARDS */
  .cap-grid { display: grid; grid-template-columns: repeat(2, 1fr); gap: 32px; }
  .cap-card { background: #fff; border: 1px solid var(--line); padding: 40px 36px; position: relative; display: flex; flex-direction: column; gap: 22px; transition: all 0.15s; }
  .cap-card:hover { border-color: var(--orange); transform: translateY(-3px); box-shadow: 0 20px 40px -20px rgba(10,38,71,0.15); }
  .cap-card.featured { border-color: var(--orange); border-width: 2px; background: linear-gradient(180deg, #fff 0%, var(--bg-soft) 100%); }
  .cap-bar { position: absolute; top: -1px; left: 36px; right: 36px; height: 4px; background: var(--orange); }
  .cap-card.featured .cap-bar { background: linear-gradient(90deg, var(--orange) 0%, var(--gold) 100%); height: 5px; }
  .cap-head { display: flex; justify-content: space-between; align-items: flex-start; gap: 16px; }
  .cap-num { font-family: var(--mono); font-size: 11px; color: var(--ink-faint); letter-spacing: 0.15em; font-weight: 600; margin-bottom: 8px; }
  .cap-icon { font-size: 40px; line-height: 1; margin-bottom: 4px; }
  .cap-tag { font-family: var(--mono); font-size: 10px; letter-spacing: 0.15em; color: var(--orange); padding: 5px 10px; background: rgba(242,100,25,0.08); text-transform: uppercase; font-weight: 600; }
  .cap-tag.flag { background: var(--orange); color: #fff; }
  .cap-title { font-family: var(--cond); font-size: 34px; font-weight: 800; color: var(--navy); letter-spacing: -0.02em; line-height: 1.1; }
  .cap-desc { font-size: 15px; color: var(--ink-soft); line-height: 1.65; }
  .cap-points { display: flex; flex-direction: column; gap: 10px; padding: 14px 0; border-top: 1px solid var(--line); border-bottom: 1px solid var(--line); }
  .cap-points li { list-style: none; font-size: 14px; color: var(--ink-soft); display: flex; gap: 10px; align-items: baseline; }
  .cap-points li::before { content: '→'; color: var(--orange); font-weight: 700; flex-shrink: 0; }
  .cap-points li b { color: var(--navy); font-weight: 600; }
  .cap-cta { display: flex; justify-content: space-between; align-items: center; padding-top: 4px; }
  .cap-cta-main { font-family: var(--mono); font-size: 12px; letter-spacing: 0.1em; color: var(--orange); font-weight: 700; text-transform: uppercase; }
  .cap-cta-sub { font-family: var(--mono); font-size: 11px; color: var(--ink-faint); letter-spacing: 0.05em; }

  /* RAPID PROTOTYPING FEATURED SECTION */
  .rapid-section { background: linear-gradient(135deg, var(--navy) 0%, var(--navy-2) 100%); color: #fff; padding: 100px 0; position: relative; overflow: hidden; }
  .rapid-section::before { content: ''; position: absolute; top: 0; right: 0; width: 400px; height: 400px; background: radial-gradient(circle, rgba(240,165,0,0.15) 0%, transparent 70%); pointer-events: none; }
  .rapid-section h2 { color: #fff; }
  .rapid-section .sec-num { color: var(--gold); }
  .rapid-section .sec-lead { color: rgba(255,255,255,0.75); }
  .rapid-grid { display: grid; grid-template-columns: repeat(3, 1fr); gap: 24px; position: relative; }
  .rapid-card { background: rgba(255,255,255,0.06); border-left: 3px solid var(--orange); padding: 32px 28px; }
  .rapid-card-num { font-family: var(--cond); font-size: 64px; font-weight: 800; color: var(--gold); line-height: 1; letter-spacing: -0.02em; margin-bottom: 10px; }
  .rapid-card-unit { font-family: var(--mono); font-size: 11px; letter-spacing: 0.15em; color: var(--gold); text-transform: uppercase; font-weight: 600; margin-bottom: 18px; }
  .rapid-card h3 { font-family: var(--cond); font-size: 22px; font-weight: 700; color: #fff; line-height: 1.2; margin-bottom: 10px; }
  .rapid-card p { font-size: 14px; color: rgba(255,255,255,0.75); line-height: 1.55; }
  .rapid-ctas { display: flex; gap: 14px; margin-top: 40px; }
  .btn-primary { background: var(--orange); color: #fff; padding: 16px 30px; font-weight: 800; font-size: 14.5px; letter-spacing: 0.2px; border: none; cursor: pointer; transition: background 0.15s; display: inline-flex; align-items: center; gap: 8px; }
  .btn-primary:hover { background: var(--orange-deep); }
  .btn-ghost-dark { background: transparent; color: #fff; padding: 16px 28px; font-weight: 700; font-size: 14.5px; letter-spacing: 0.2px; border: 2px solid rgba(255,255,255,0.4); cursor: pointer; display: inline-flex; align-items: center; gap: 8px; }
  .btn-ghost-dark:hover { border-color: var(--gold); color: var(--gold); }

  /* MANUFACTURING PROCESS */
  .process-grid { display: grid; grid-template-columns: repeat(4, 1fr); gap: 20px; }
  .process-card { background: #fff; border: 1px solid var(--line); padding: 30px 26px; position: relative; display: flex; flex-direction: column; gap: 14px; }
  .process-step { position: absolute; top: -16px; left: 26px; background: var(--navy); color: var(--gold); font-family: var(--mono); font-size: 11px; letter-spacing: 0.15em; padding: 5px 10px; font-weight: 700; }
  .process-icon { font-size: 32px; line-height: 1; margin-top: 12px; }
  .process-title { font-family: var(--cond); font-size: 22px; font-weight: 700; color: var(--navy); line-height: 1.2; letter-spacing: -0.01em; }
  .process-desc { font-size: 13.5px; color: var(--ink-soft); line-height: 1.6; }
  .process-tech { font-family: var(--mono); font-size: 11px; color: var(--orange); letter-spacing: 0.05em; padding-top: 12px; border-top: 1px solid var(--line); }

  /* QC STATS BAND */
  .qc-band { background: var(--bg-soft); padding: 70px 0; border-top: 1px solid var(--line); border-bottom: 1px solid var(--line); }
  .qc-band .wrap { display: grid; grid-template-columns: 1fr 1fr; gap: 60px; align-items: center; }
  .qc-stats { display: grid; grid-template-columns: 1fr 1fr; gap: 30px; }
  .qc-stat .num { font-family: var(--cond); font-size: 56px; font-weight: 800; line-height: 1; color: var(--orange); letter-spacing: -0.02em; }
  .qc-stat .lbl { font-family: var(--mono); font-size: 11px; letter-spacing: 0.13em; color: var(--ink-soft); margin-top: 8px; text-transform: uppercase; font-weight: 600; }
  .qc-stat .desc { font-size: 13.5px; color: var(--ink-soft); margin-top: 6px; line-height: 1.5; }

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
    .cap-grid { grid-template-columns: 1fr; }
    .rapid-grid { grid-template-columns: 1fr; }
    .process-grid { grid-template-columns: 1fr 1fr; }
    .qc-band .wrap { grid-template-columns: 1fr; }
    .foot-grid { grid-template-columns: 1fr 1fr; }
  }
  @media (max-width: 640px) {
    .wrap { padding: 0 20px; }
    .page-hero h1 { font-size: 54px; }
    h2 { font-size: 38px; }
    .topbar .left, .nav-links { display: none; }
    .process-grid { grid-template-columns: 1fr; }
    .qc-stats { grid-template-columns: 1fr 1fr; }
  }
</style>
