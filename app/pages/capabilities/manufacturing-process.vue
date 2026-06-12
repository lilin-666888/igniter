<script setup lang="ts">
useHead({
  title: 'Ceramic Manufacturing Process — Forming, Sintering, Grinding, Lapping | Ceramitell',
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
        <span>Manufacturing Process</span>
      </div>
    </div>

    <section class="page-hero">
      <div class="wrap">
        <div>
          <span class="ph-eyebrow">Forming · Sintering · Grinding · Lapping</span>
          <div class="formula-display" style="font-size: 56px;">Process</div>
          <h1>Manufacturing process —<br/>how we make every ceramic part.</h1>
          <p class="ph-sub">Ceramic component manufacturing is a <b>sequential process with no shortcuts</b>. Raw powder → forming → sintering → grinding → finishing. Each stage has multiple route options optimized for different geometries and materials. Below is the full process map — what runs in our Pingxiang facility and how the choices shape your finished part's properties and cost.</p>
          <div class="ph-quickstats">
            <div class="ph-stat"><div class="num">5</div><div class="lbl">Process Stages</div></div>
            <div class="ph-stat"><div class="num">4</div><div class="lbl">Forming Routes</div></div>
            <div class="ph-stat"><div class="num">3</div><div class="lbl">Sintering Methods</div></div>
            <div class="ph-stat"><div class="num">±0.005</div><div class="lbl">mm Tolerance</div></div>
          </div>
        </div>
        <div class="ph-side">
          <div style="font-family: var(--mono); font-size: 10.5px; letter-spacing: 0.18em; color: var(--gold); text-transform: uppercase; margin-bottom: 14px; font-weight: 600;">5 Process Stages</div>
          <div class="grade-cards">
            <a href="#stage-powder" class="grade-card">
              <div class="grade-label">Stage 1 · Powder Prep</div>
              <div class="grade-title">Powder + Binder Mix</div>
              <div class="grade-use">Synthesis + classification</div>
            </a>
            <a href="#stage-forming" class="grade-card">
              <div class="grade-label">Stage 2 · Forming</div>
              <div class="grade-title">Green-State Shape</div>
              <div class="grade-use">CIP / slip / injection / press</div>
            </a>
            <a href="#stage-sintering" class="grade-card">
              <div class="grade-label">Stage 3 · Sintering</div>
              <div class="grade-title">Densification</div>
              <div class="grade-use">Pressureless / HP / HIP</div>
            </a>
            <a href="#stage-grinding" class="grade-card">
              <div class="grade-label">Stage 4 · Grinding</div>
              <div class="grade-title">Diamond Grind</div>
              <div class="grade-use">±0.005 mm tolerance</div>
            </a>
            <a href="#stage-finishing" class="grade-card">
              <div class="grade-label">Stage 5 · Finishing</div>
              <div class="grade-title">Lap / Polish / Inspect</div>
              <div class="grade-use">Ra ≤0.02 μm + QC</div>
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
        <div class="sec-num">01 · Process Decision Matrix</div>
        <h2>Which route <span class="accent">for which part</span>.</h2>
        <p class="sec-lead">Different product geometries and material grades dictate different process route choices. The matrix below shows the typical forming + sintering route for our 6 major product families. Custom routes available — DFM review identifies the right combination for your part.</p>
        <div class="props-wrap">
          <table class="props">
            <thead>
              <tr>
                <th>Product Family</th>
                <th>Unit</th>
                <th>Forming Route</th>
                <th>Sintering Route</th>
                <th>Finishing</th>
              </tr>
            </thead>
            <tbody>
              <tr><th>Hot Surface Igniters</th><td class="unit">CN-300</td><td>Injection molding</td><td>Pressureless</td><td>Grind + electrical test</td></tr>
              <tr><th>Precision Balls (G3–G10)</th><td class="unit">balls</td><td>Dry press</td><td>HIP</td><td>Lap + Talyrond</td></tr>
              <tr><th>Grinding Media (G40+)</th><td class="unit">balls</td><td>Dry press</td><td>Pressureless</td><td>Tumble + screen</td></tr>
              <tr><th>Structural Parts</th><td class="unit">custom</td><td>CIP or slip</td><td>Pressureless</td><td>Diamond grind + CMM</td></tr>
              <tr><th>Armor Tiles (B₄C)</th><td class="unit">tiles</td><td>Dry press</td><td>Hot press</td><td>Grind + ballistic test</td></tr>
              <tr><th>Semiconductor (CVD-SiC)</th><td class="unit">rings</td><td>CVD deposition</td><td>(deposited)</td><td>Lap + particle scan</td></tr>
            </tbody>
          </table>
        </div>
        <div class="props-legend">CVD-SiC follows a unique chemical-vapor-deposition route rather than the press-and-sinter flow. Custom processes available for non-standard geometries — contact engineering with your spec.</div>
      </div>
    </section>

    <section class="s" style="background: var(--bg-soft);">
      <div class="wrap">
        <div class="sec-num">02 · Stage-by-Stage Detail</div>
        <h2>5 stages, <span class="accent">step by step</span>.</h2>
        <div class="app-uses">
          <div id="stage-powder" class="app-use">
            <div class="app-use-bar"></div>
            <div class="app-use-icon">⚛</div>
            <div class="app-use-title">Stage 1 — Powder Preparation</div>
            <p class="app-use-desc">In-house synthesized Si₃N₄ and ZrO₂ powders, or external high-purity Al₂O₃/SiC/AlN/BN/B₄C powders received via incoming inspection. Powder classified to target PSD, mixed with sintering aids and binder system. Output: ready-to-form powder slurry or granule.</p>
            <div class="app-use-grade"><b>Output →</b> Forming-ready powder system</div>
          </div>
          <div id="stage-forming" class="app-use">
            <div class="app-use-bar"></div>
            <div class="app-use-icon">📐</div>
            <div class="app-use-title">Stage 2 — Forming (4 Routes)</div>
            <p class="app-use-desc"><b>CIP:</b> isotropic pressing for tubes, rods, large parts. <b>Slip casting:</b> complex hollow shapes. <b>Injection molding:</b> complex small parts with high volume. <b>Dry press:</b> simple geometries at high throughput. Route choice depends on geometry, volume, and material.</p>
            <div class="app-use-grade"><b>Output →</b> Green-state ceramic shape</div>
          </div>
          <div id="stage-sintering" class="app-use">
            <div class="app-use-bar"></div>
            <div class="app-use-icon">🔥</div>
            <div class="app-use-title">Stage 3 — Sintering (3 Methods)</div>
            <p class="app-use-desc"><b>Pressureless sintering:</b> default, lowest cost. <b>Hot pressing (HP):</b> higher density, used for armor tiles and dense seal faces. <b>Hot isostatic pressing (HIP):</b> highest density (99.5%+ theoretical), used for precision bearing balls and aerospace structural parts. Each method delivers a different density and strength outcome.</p>
            <div class="app-use-grade"><b>Output →</b> Sintered dense ceramic</div>
          </div>
          <div id="stage-grinding" class="app-use">
            <div class="app-use-bar"></div>
            <div class="app-use-icon">⚙️</div>
            <div class="app-use-title">Stage 4 — Diamond Grinding</div>
            <p class="app-use-desc">Sintered ceramic is too hard for conventional metal-cutting tooling — finishing is exclusively diamond-tool grinding. Cylindrical, surface, and CNC profile grinding available. Standard tolerance ±0.005 mm; tighter tolerances (±0.002 mm) via additional lapping at extra cost.</p>
            <div class="app-use-grade"><b>Output →</b> Dimension-toleranced ceramic part</div>
          </div>
          <div id="stage-finishing" class="app-use">
            <div class="app-use-bar"></div>
            <div class="app-use-icon">✨</div>
            <div class="app-use-title">Stage 5 — Lap + Polish + Inspect</div>
            <p class="app-use-desc">Optional lapping for surface finish to Ra ≤0.02 μm (precision balls, bearing races, semiconductor components). Polishing for optical-grade surfaces. Final inspection: CMM, Talyrond, profilometer, SEM as required by product family. Lot cert generated, packaging.</p>
            <div class="app-use-grade"><b>Output →</b> Finished part + lot cert + packaging</div>
          </div>
          <a href="/contact" class="app-use" style="background:linear-gradient(135deg,#fff 0%,#FFF5EB 100%);border-color:var(--orange);border-width:2px;">
            <div class="app-use-bar" style="background:linear-gradient(90deg,var(--orange) 0%,var(--gold) 100%);height:5px;"></div>
            <div class="app-use-icon">📋</div>
            <div class="app-use-title">DFM for Your Part</div>
            <p class="app-use-desc">Send STEP/PDF/DWG drawing + duty profile. Our DFM team recommends the right process route within 48 hours — forming method, sintering method, finishing steps, and resulting tolerance/finish/cost outcome.</p>
            <div class="app-use-grade"><b>Action →</b> <CmsEmail :link="false" /></div>
          </a>
        </div>
      </div>
    </section>

    <section class="s">
      <div class="wrap">
        <div class="sec-num">03 · Why Process Choice Matters</div>
        <h2>How process choice <span class="accent">drives outcomes</span>.</h2>
        <div class="vs-grid">
          <div class="vs-card win">
            <div class="vs-card-head"><h3>Process Choices Affect Cost</h3><span class="vs-tag alumina-tag">★ Why Tooling Matters</span></div>
            <ul class="vs-points">
              <li><b>Forming choice drives unit cost</b> — Injection molding pays back at 5,000+ units; CIP works at 100 units</li>
              <li><b>Sintering choice drives material cost</b> — HIP costs 3× pressureless but enables G3 bearing balls; only worth it for aerospace</li>
              <li><b>Grinding sets the tolerance bracket</b> — Standard grinding to ±0.005mm is cheap; tighter requires lapping (more cost)</li>
              <li><b>Finishing choice affects performance</b> — Ra 0.02 μm vs 0.2 μm changes friction, wear, and electrical surface properties</li>
              <li><b>QC depth scales with the spec</b> — Semiconductor parts have particle scan; structural parts have CMM only</li>
            </ul>
          </div>
          <div class="vs-card">
            <div class="vs-card-head"><h3>Process Choices Affect Performance</h3><span class="vs-tag">Quality outcomes</span></div>
            <ul class="vs-points">
              <li><b>HIP sintering → 99.5% theoretical density</b> — Eliminates voids that cause crack initiation</li>
              <li><b>Hot press sintering → 98% density + grain control</b> — Armor-grade B₄C requires this route</li>
              <li><b>Pressureless sintering → 95–97% density</b> — Adequate for most engineering applications, cheapest</li>
              <li><b>Lapping → Ra ≤0.02 μm</b> — Critical for bearing races, semiconductor surfaces, optical mounts</li>
              <li><b>Diamond grinding → ±0.005 mm</b> — Standard structural part tolerance, fits 95% of applications</li>
            </ul>
          </div>
        </div>
      </div>
    </section>

    <section class="casecta">
      <div class="wrap">
        <div>
          <div class="casecta-eyebrow">★ Example · Process Optimization for New Customer</div>
          <h2>Forming route change — <span style="color:var(--orange);">−30% unit cost</span>, same finished tolerance.</h2>
          <p>A US OEM was quoting their custom Si₃N₄ structural part via CIP forming (the route that worked in their bench tests). At their target 50K units/year volume, we recommended switching to injection molding instead — the tooling investment paid back in 18 months while delivering the same finished tolerance after grinding. Their unit cost dropped 30% on the full-rate production run. Process choice isn't always obvious from the drawing alone.</p>
          <div class="casecta-ctas">
            <a class="btn-primary" href="/contact">Get Process Recommendation →</a>
            <a class="btn-ghost" href="/capabilities/rapid-prototyping">Rapid Prototyping →</a>
          </div>
        </div>
        <div class="casecta-side">
          <div class="casecta-side-tag">Process Optimization</div>
          <div class="casecta-side-title">CIP → Injection</div>
          <ul class="casecta-side-list">
            <li><b>−30%</b> Unit cost at full volume</li>
            <li><b>18 mo</b> Tooling payback</li>
            <li><b>Same</b> Finished tolerance</li>
            <li><b>50K/yr</b> Production volume</li>
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
