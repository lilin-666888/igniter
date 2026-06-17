<script setup lang="ts">
useHead({
  title: 'Ceramic Grade Selection Guide — Si₃N₄, Al₂O₃, ZrO₂, SiC, AlN, B₄C, BN | Ceramitell',
  meta: [{ name: 'description', content: 'Engineering guide to ceramic grade selection across 7 materials and 25+ production grades. Decision trees for Si₃N₄, alumina purity grades, zirconia variants, SiC sintering routes, AlN substrate forms. Avoid over-spec' }],
})
</script>

<template>
  <div>
    <div class="breadcrumb">
      <div class="wrap">
        <a href="/">Home</a>
        <span class="sep">/</span>
        <a href="/resources">Resources</a>
        <span class="sep">/</span>
        <span>Grade Selection Guide</span>
      </div>
    </div>

    <section class="page-hero">
      <div class="wrap">
        <div>
          <span class="ph-eyebrow">Engineering Guide · 7 Materials · Grade Selection</span>
          <div class="formula-display" style="font-size: 56px;">Grade Guide</div>
          <h1>Ceramic grade selection —<br/>the engineer's quick-reference.</h1>
          <p class="ph-sub">Across our 7 ceramic materials, we offer <b>25+ production grades</b> covering different purity levels, sintering routes, and application-specific optimizations. This guide explains <b>what each grade is optimized for</b> and gives you a quick decision framework — so you spec the right grade the first time and don't pay for performance you don't need.</p>
          <div class="ph-quickstats">
            <div class="ph-stat"><div class="num">7</div><div class="lbl">Materials</div></div>
            <div class="ph-stat"><div class="num">25+</div><div class="lbl">Grades</div></div>
            <div class="ph-stat"><div class="num">48h</div><div class="lbl">DFM Reply</div></div>
            <div class="ph-stat"><div class="num">Free</div><div class="lbl">Spec Review</div></div>
          </div>
        </div>
        <div class="ph-side">
          <div style="font-family: var(--mono); font-size: 10.5px; letter-spacing: 0.18em; color: var(--gold); text-transform: uppercase; margin-bottom: 14px; font-weight: 600;">Jump to Material</div>
          <div class="grade-cards">
            <a href="#si3n4-grades" class="grade-card">
              <div class="grade-label">Si₃N₄</div>
              <div class="grade-title">4 Grades</div>
              <div class="grade-use">Standard · HIP · Igniter · Cutting</div>
            </a>
            <a href="#al2o3-grades" class="grade-card">
              <div class="grade-label">Al₂O₃</div>
              <div class="grade-title">3 Purity Grades</div>
              <div class="grade-use">95% · 99% · 99.7%</div>
            </a>
            <a href="#zro2-grades" class="grade-card">
              <div class="grade-label">ZrO₂</div>
              <div class="grade-title">3 Variants</div>
              <div class="grade-use">Y-TZP · Mg-PSZ · Ce-TZP</div>
            </a>
            <a href="#sic-grades" class="grade-card">
              <div class="grade-label">SiC</div>
              <div class="grade-title">3 Routes</div>
              <div class="grade-use">SSiC · RBSiC · CVD-SiC</div>
            </a>
            <a href="#aln-grades" class="grade-card">
              <div class="grade-label">AlN</div>
              <div class="grade-title">3 Forms</div>
              <div class="grade-use">Standard · High-K · DBC</div>
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
        <div class="sec-num">01 · Why Grade Selection Matters</div>
        <h2>One material, <span class="accent">multiple recipes</span>.</h2>
        <p class="sec-lead">When buyers spec "silicon nitride" or "alumina" on a drawing, they usually have no idea that the same material name covers <b>3–5 different production grades</b>, each optimized for a different application family and priced 30–200% apart. Picking the right grade for your duty profile is the single biggest cost-optimization lever on a ceramic specification.</p>
        <div class="props-wrap">
          <table class="props">
            <thead>
              <tr>
                <th>Material</th>
                <th>Unit</th>
                <th>Grade Count</th>
                <th>Price Range</th>
                <th>Most-Used Grade</th>
              </tr>
            </thead>
            <tbody>
              <tr><th>Silicon Nitride (Si₃N₄)</th><td class="unit">grades</td><td>4</td><td>1× to 3×</td><td>Igniter Grade (BLK)</td></tr>
              <tr><th>Alumina (Al₂O₃)</th><td class="unit">purity</td><td>3</td><td>1× to 4×</td><td>99% Engineering</td></tr>
              <tr><th>Zirconia (ZrO₂)</th><td class="unit">variants</td><td>3</td><td>1× to 1.5×</td><td>Y-TZP (default)</td></tr>
              <tr><th>Silicon Carbide (SiC)</th><td class="unit">routes</td><td>3</td><td>1× to 10×</td><td>SSiC (default)</td></tr>
              <tr><th>Aluminum Nitride (AlN)</th><td class="unit">forms</td><td>3</td><td>1× to 5×</td><td>Standard substrate</td></tr>
              <tr><th>Boron Carbide (B₄C)</th><td class="unit">routes</td><td>3</td><td>1× to 2×</td><td>Hot-Pressed (armor)</td></tr>
              <tr><th>Boron Nitride (BN)</th><td class="unit">types</td><td>2</td><td>1× to 5×</td><td>h-BN (default)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="props-legend">Price range shows the multiplier from cheapest to most expensive grade within each material family. CVD-SiC's 10× premium reflects its semiconductor-grade purity vs SSiC.</div>
      </div>
    </section>

    <section class="s" style="background: var(--bg-soft);">
      <div class="wrap">
        <div class="sec-num">02 · Material-by-Material Grade Guide</div>
        <h2>Grade <span class="accent">decision trees</span>.</h2>
        <p class="sec-lead">Below are the standard grade picks for each material, with the duty-profile question that determines the choice. If your application doesn't fit any of these, contact our engineering team — most "edge case" specs we see are actually one of these standard grades plus a custom finishing step.</p>
        <div class="app-uses">
          <a id="si3n4-grades" href="/materials/silicon-nitride" class="app-use">
            <div class="app-use-bar"></div>
            <div class="app-use-icon">🔥</div>
            <div class="app-use-title">Si₃N₄ — 4 Grades</div>
            <p class="app-use-desc"><b>Standard:</b> general structural. <b>HIP-Processed:</b> precision balls G3–G5. <b>Igniter Grade (BLK):</b> 100K+ thermal cycle. <b>Cutting Grade:</b> high-speed machining inserts. Most customers want Standard or Igniter Grade — HIP is reserved for aerospace bearings.</p>
            <div class="app-use-grade"><b>Decision →</b> Cycling? BLK / Bearing? HIP / Otherwise? Standard</div>
          </a>
          <a id="al2o3-grades" href="/materials/alumina" class="app-use">
            <div class="app-use-bar"></div>
            <div class="app-use-icon">⚙️</div>
            <div class="app-use-title">Al₂O₃ — 3 Purity Grades</div>
            <p class="app-use-desc"><b>95%:</b> industrial wear, grinding media, low-V insulators. <b>99%:</b> engineering default — heating rods, thermocouple sheaths. <b>99.7%:</b> semiconductor wafer fixtures, lab crucibles, spectral analysis tubes. Most customers want 99%.</p>
            <div class="app-use-grade"><b>Decision →</b> Wafer/spectral? 99.7% / Wear? 95% / Otherwise? 99%</div>
          </a>
          <a id="zro2-grades" href="/materials/zirconia" class="app-use">
            <div class="app-use-bar"></div>
            <div class="app-use-icon">💎</div>
            <div class="app-use-title">ZrO₂ — 3 Variants</div>
            <p class="app-use-desc"><b>Y-TZP:</b> default — biomed, cutting tools, balls. <b>Mg-PSZ:</b> higher service temp (1400°C). <b>Ce-TZP:</b> better wet/steam resistance. 90% of orders go to Y-TZP. Mg-PSZ for extrusion dies, Ce-TZP for steam-cycled environments.</p>
            <div class="app-use-grade"><b>Decision →</b> Steam? Ce-TZP / 1000°C+ ? Mg-PSZ / Otherwise? Y-TZP</div>
          </a>
          <a id="sic-grades" href="/materials/silicon-carbide" class="app-use">
            <div class="app-use-bar"></div>
            <div class="app-use-icon">⚛</div>
            <div class="app-use-title">SiC — 3 Sintering Routes</div>
            <p class="app-use-desc"><b>SSiC (Pressureless):</b> default — pump seals, structural. <b>RBSiC (Reaction-Bonded):</b> lower cost, complex shapes, kiln furniture. <b>CVD-SiC:</b> semiconductor purity (10× cost). Most customers want SSiC; RBSiC only for kiln furniture; CVD-SiC only for wafer fab.</p>
            <div class="app-use-grade"><b>Decision →</b> Wafer fab? CVD / Kiln furniture? RBSiC / Otherwise? SSiC</div>
          </a>
          <a id="aln-grades" href="/materials/aluminum-nitride" class="app-use">
            <div class="app-use-bar"></div>
            <div class="app-use-icon">💻</div>
            <div class="app-use-title">AlN — 3 Forms</div>
            <p class="app-use-desc"><b>Standard:</b> 170 W/m·K, most heater and substrate applications. <b>High-K:</b> 200 W/m·K, power-density-critical electronics. <b>DBC/DBA-Metallized:</b> pre-bonded copper or aluminum for direct power module assembly. Standard covers 70% of orders.</p>
            <div class="app-use-grade"><b>Decision →</b> Power module? DBC / Max thermal? High-K / Otherwise? Standard</div>
          </a>
          <a href="/materials/boron-carbide" class="app-use">
            <div class="app-use-bar"></div>
            <div class="app-use-icon">🛡️</div>
            <div class="app-use-title">B₄C — 3 Routes</div>
            <p class="app-use-desc"><b>Hot-Pressed:</b> armor tiles, high-density. <b>Pressureless Sintered:</b> lower cost, complex shapes. <b>Reaction-Bonded:</b> cost-effective for wear applications. Armor work always uses Hot-Pressed (98%+ density required).</p>
            <div class="app-use-grade"><b>Decision →</b> Armor? Hot-Pressed / Wear? RBBC / Complex shape? PLS</div>
          </a>
          <a href="/materials/boron-nitride" class="app-use">
            <div class="app-use-bar"></div>
            <div class="app-use-icon">📐</div>
            <div class="app-use-title">BN — 2 Types</div>
            <p class="app-use-desc"><b>Hot-Pressed h-BN:</b> machinable, general crucibles and machined parts. <b>Pyrolytic (PBN):</b> ultra-pure, anisotropic thermal, semiconductor plasma chambers (3–5× h-BN cost). Use h-BN unless your application is semiconductor or aerospace insulator.</p>
            <div class="app-use-grade"><b>Decision →</b> Plasma chamber? PBN / Otherwise? h-BN</div>
          </a>
          <a href="/contact" class="app-use" style="background:linear-gradient(135deg,#fff 0%,#FFF5EB 100%);border-color:var(--orange);border-width:2px;">
            <div class="app-use-bar" style="background:linear-gradient(90deg,var(--orange) 0%,var(--gold) 100%);height:5px;"></div>
            <div class="app-use-icon">🚀</div>
            <div class="app-use-title">Not Sure? Submit Drawing</div>
            <p class="app-use-desc">If you're not sure which grade fits — that's fine, most customers aren't. Send your drawing and a description of your duty profile (temperature, cycles, environment). We'll recommend the right grade within 48 hours, with our reasoning.</p>
            <div class="app-use-grade"><b>Action →</b> <CmsEmail :link="false" /></div>
          </a>
        </div>
      </div>
    </section>

    <section class="s">
      <div class="wrap">
        <div class="sec-num">03 · The 3 Grade-Selection Rules</div>
        <h2>Quick rules <span class="accent">that always work</span>.</h2>
        <p class="sec-lead">If you don't have time to read the full guide, these three rules cover 80% of grade decisions correctly. Apply them in order.</p>
        <div class="vs-grid">
          <div class="vs-card win">
            <div class="vs-card-head"><h3>The 3 Rules</h3><span class="vs-tag alumina-tag">★ Quick-Pick</span></div>
            <ul class="vs-points">
              <li><b>Rule 1: Start with the cheapest grade that meets your spec.</b> Don't over-spec. Most failures we see come from buyers over-spec'ing because they want margin — but the price difference is real, and the lower grade usually works.</li>
              <li><b>Rule 2: If the application thermally cycles, jump to Si₃N₄ or Igniter Grade.</b> No matter what alumina spec sheet says about cycle life, in real thermal cycling, Si₃N₄ is the reliable choice past 50K cycles.</li>
              <li><b>Rule 3: For semiconductor and aerospace, never go below the second-highest purity grade.</b> Lot-to-lot contamination control matters more than the spec sheet shows. We've seen this for Al₂O₃ (99.7% required), SiC (CVD), and BN (PBN) applications.</li>
            </ul>
          </div>
          <div class="vs-card">
            <div class="vs-card-head"><h3>Edge Cases We See</h3><span class="vs-tag">Custom needed</span></div>
            <ul class="vs-points">
              <li><b>"Pharmaceutical grade"</b> — Usually means USP <88> Class VI biocompatibility. Available for Y-TZP and 99.7% Al₂O₃.</li>
              <li><b>"Food grade"</b> — FDA-compatible Y-TZP available, primary market for chocolate refining and food powder grinding.</li>
              <li><b>"Vacuum grade"</b> — Means low outgassing for vacuum equipment. PBN and CVD-SiC are vacuum-default.</li>
              <li><b>"Aerospace grade"</b> — Usually means ITAR-aware supply chain + lot lineage. Available for Si₃N₄ structural and B₄C armor.</li>
              <li><b>"Custom isotope"</b> — B-10 enriched B₄C available for nuclear applications, requires export-license review.</li>
            </ul>
          </div>
        </div>
      </div>
    </section>

    <section class="casecta">
      <div class="wrap">
        <div>
          <div class="casecta-eyebrow">★ Example · German Lab Equipment Manufacturer</div>
          <h2>From 99.7% spec to 99% — <span style="color:var(--orange);">−35% material cost</span>, same lab performance.</h2>
          <p>A German lab equipment manufacturer was spec'ing 99.7% alumina for all their lab tube furnace components. After DFM review of their actual operating spec (1200°C lab service, no plasma or wafer contact), we recommended 99% engineering grade for everything except the spectral analysis tubes. Material cost dropped 35% across the product line with no measurable performance change. They've expanded the right-sizing exercise across their full ceramic component bill of materials.</p>
          <div class="casecta-ctas">
            <a class="btn-primary" href="/contact">Request Grade Review →</a>
            <a class="btn-ghost" href="/materials">All Materials →</a>
          </div>
        </div>
        <div class="casecta-side">
          <div class="casecta-side-tag">Right-Sized Grade</div>
          <div class="casecta-side-title">99.7% → 99% outcome</div>
          <ul class="casecta-side-list">
            <li><b>−35%</b> Material cost</li>
            <li><b>Same</b> Lab performance</li>
            <li><b>Same</b> Lead time</li>
            <li><b>Free</b> Grade review by our team</li>
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
