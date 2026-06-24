<script setup lang="ts">
useHead({
  title: 'Silicon Nitride vs Alumina | Material Selection Guide',
  meta: [{ name: 'description', content: 'Compare Si₃N₄ and Al₂O₃ in terms of thermal cycling, high temperatures, wear, bearing performance, and cost. Make the right material choice for your application.' }],
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
        <span>Si₃N₄ vs Al₂O₃</span>
      </div>
    </div>

    <section class="page-hero">
      <div class="wrap">
        <div>
          <span class="ph-eyebrow">Material Comparison · Engineering Guide</span>
          <div class="formula-display" style="font-size: 56px;">Si₃N₄ <span style="color:rgba(255,255,255,0.4);">vs</span> Al₂O₃</div>
          <h1>Silicon Nitride vs Alumina —<br/>which one should you spec?</h1>
          <p class="ph-sub">Si₃N₄ and Al₂O₃ are the two most-used technical ceramics in industrial production. They look similar in a catalog — both are sintered oxide/nitride ceramics with similar hardness numbers. But pick the wrong one and you'll see <b>field failures within 1–2 years</b>. This guide breaks down when each material wins, with the engineering data behind the decision.</p>
          <div class="ph-quickstats">
            <div class="ph-stat"><div class="num">2.5×</div><div class="lbl">Al₂O₃ Thermal Expansion vs Si₃N₄</div></div>
            <div class="ph-stat"><div class="num">100K+</div><div class="lbl">Si₃N₄ Cycles Rated</div></div>
            <div class="ph-stat"><div class="num">1700°C</div><div class="lbl">Al₂O₃ Max Temp</div></div>
            <div class="ph-stat"><div class="num">0.5×</div><div class="lbl">Al₂O₃ Cost per kg</div></div>
          </div>
        </div>
        <div class="ph-side">
          <div style="font-family: var(--mono); font-size: 10.5px; letter-spacing: 0.18em; color: var(--gold); text-transform: uppercase; margin-bottom: 14px; font-weight: 600;">Quick Decision</div>
          <div class="grade-cards">
            <a href="#thermal-cycling" class="grade-card">
              <div class="grade-label">If · Thermal Cycling</div>
              <div class="grade-title">→ Pick Si₃N₄</div>
              <div class="grade-use">100K+ cycle life · 3 sec heat-up</div>
            </a>
            <a href="#static-hightemp" class="grade-card">
              <div class="grade-label">If · Static High Temp</div>
              <div class="grade-title">→ Pick Al₂O₃</div>
              <div class="grade-use">1700°C · half the cost</div>
            </a>
            <a href="#cost" class="grade-card">
              <div class="grade-label">If · Cost Sensitive</div>
              <div class="grade-title">→ Pick Al₂O₃</div>
              <div class="grade-use">Stock geometries · 95% / 99% grades</div>
            </a>
            <a href="#rpm" class="grade-card">
              <div class="grade-label">If · High RPM Bearing</div>
              <div class="grade-title">→ Pick Si₃N₄</div>
              <div class="grade-use">60% lighter · 60K RPM ceiling</div>
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
        <div class="sec-num">01 · Property Comparison</div>
        <h2>Side-by-side <span class="accent">material properties</span>.</h2>
        <p class="sec-lead">The single biggest difference between Si₃N₄ and Al₂O₃ isn't visible in a catalog spec line — it's the <b>2.5× difference in thermal expansion</b>. That property cascades through every other behavior: thermal shock, cycle life, RPM ceiling, lubrication need. Below are the raw numbers.</p>
        <div class="props-wrap">
          <table class="props">
            <thead>
              <tr>
                <th>Property</th>
                <th>Unit</th>
                <th>Si₃N₄</th>
                <th>99% Al₂O₃</th>
                <th>Si₃N₄ Advantage</th>
              </tr>
            </thead>
            <tbody>
              <tr><th>Density</th><td class="unit">g/cm³</td><td>3.20</td><td>3.85</td><td>20% lighter</td></tr>
              <tr><th>Hardness (HV)</th><td class="unit">Vickers</td><td>1500</td><td>1700</td><td>Al₂O₃ harder</td></tr>
              <tr><th>Flexural Strength</th><td class="unit">MPa</td><td>900</td><td>360</td><td>2.5× stronger</td></tr>
              <tr><th>Fracture Toughness</th><td class="unit">MPa·m½</td><td>7.5</td><td>4.2</td><td>1.8× tougher</td></tr>
              <tr><th>Thermal Expansion</th><td class="unit">×10⁻⁶/K</td><td>3.2</td><td>7.8</td><td>2.4× lower (better)</td></tr>
              <tr><th>Thermal Conductivity</th><td class="unit">W/m·K</td><td>28</td><td>27</td><td>Essentially same</td></tr>
              <tr><th>Max Service Temp (air)</th><td class="unit">°C</td><td>1300</td><td>1650</td><td>Al₂O₃ higher</td></tr>
              <tr><th>Thermal Shock ΔT</th><td class="unit">°C</td><td>900</td><td>200</td><td>4.5× better shock</td></tr>
              <tr><th>Thermal Cycle Life</th><td class="unit">cycles</td><td>100K+</td><td>20K–40K</td><td>2.5–5× longer</td></tr>
              <tr><th>Dielectric Strength</th><td class="unit">kV/mm</td><td>12</td><td>13</td><td>Al₂O₃ slightly better</td></tr>
              <tr><th>Cost per kg (production)</th><td class="unit">USD</td><td>~$80</td><td>~$40</td><td>Al₂O₃ half the cost</td></tr>
            </tbody>
          </table>
        </div>
        <div class="props-legend">Cost figures are indicative production-volume pricing for standard grades. Custom specifications, tight tolerances, and small order quantities all push pricing higher. Contact us for specific quotes.</div>
      </div>
    </section>

    <section class="s" style="background: var(--bg-soft);">
      <div class="wrap">
        <div class="sec-num">02 · The Decision Matrix</div>
        <h2>Which one <span class="accent">when</span>.</h2>
        <p class="sec-lead">Below is the decision framework we use most often when guiding customers between Si₃N₄ and Al₂O₃ for a new application. Most decisions come down to thermal cycling vs cost.</p>
        <div class="app-uses">
          <div id="thermal-cycling" class="app-use">
            <div class="app-use-bar"></div>
            <div class="app-use-icon">🔥</div>
            <div class="app-use-title">Pick Si₃N₄ — Thermal Cycling</div>
            <p class="app-use-desc">If your application thermal-cycles repeatedly (heating element, hot surface igniter, glow plug, foundry tool), Si₃N₄ wins. Lower thermal expansion = less cracking from repeated thermal stress. 100K+ rated cycles vs 20–40K for Al₂O₃.</p>
            <div class="app-use-grade"><b>Examples →</b> Igniters · glow plugs · lift tubes · turbo rotors</div>
          </div>
          <div id="static-hightemp" class="app-use">
            <div class="app-use-bar"></div>
            <div class="app-use-icon">🌡️</div>
            <div class="app-use-title">Pick Al₂O₃ — Static High Temp</div>
            <p class="app-use-desc">If your application sits at high temperature without thermal cycling (lab tube furnace, kiln furniture, continuous-fire industrial heater), Al₂O₃ wins. Higher max service temp (1700°C vs 1300°C in air), half the cost.</p>
            <div class="app-use-grade"><b>Examples →</b> Lab crucibles · kiln furniture · continuous heaters · insulators</div>
          </div>
          <div id="cost" class="app-use">
            <div class="app-use-bar"></div>
            <div class="app-use-icon">💰</div>
            <div class="app-use-title">Pick Al₂O₃ — Cost Sensitive</div>
            <p class="app-use-desc">If your volume is high and the duty profile doesn't specifically require Si₃N₄'s thermal cycling capability, Al₂O₃ saves substantial material cost. 95% and 99% Al₂O₃ grades both offer cost-effective options.</p>
            <div class="app-use-grade"><b>Examples →</b> Pump liners · wear plates · electrical insulators · grinding media</div>
          </div>
          <div id="rpm" class="app-use">
            <div class="app-use-bar"></div>
            <div class="app-use-icon">⚪</div>
            <div class="app-use-title">Pick Si₃N₄ — High RPM Bearings</div>
            <p class="app-use-desc">For high-speed hybrid bearings, Si₃N₄'s lower density (3.2 vs 3.85 g/cm³, 60% lighter than steel) reduces centrifugal load at high RPM. Standard for machine tool spindles, dental drills, electric motor bearings above 18,000 RPM.</p>
            <div class="app-use-grade"><b>Examples →</b> Hybrid bearings · precision balls G3–G10 · aerospace gyros</div>
          </div>
          <div class="app-use">
            <div class="app-use-bar"></div>
            <div class="app-use-icon">⚡</div>
            <div class="app-use-title">Pick Al₂O₃ — Electrical Insulation</div>
            <p class="app-use-desc">For pure electrical insulator applications without thermal cycling stress, Al₂O₃ matches Si₃N₄ on dielectric strength while costing half as much. The default substrate for high-voltage insulators in air-cooled service.</p>
            <div class="app-use-grade"><b>Examples →</b> HV insulators · RF substrates · standoff insulators · feedthroughs</div>
          </div>
          <div class="app-use">
            <div class="app-use-bar"></div>
            <div class="app-use-icon">⚖️</div>
            <div class="app-use-title">Pick Si₃N₄ — Strength + Toughness</div>
            <p class="app-use-desc">Si₃N₄ delivers 2.5× the flexural strength and 1.8× the fracture toughness of Al₂O₃. For structural parts under mechanical load (shafts, cutting tools, turbine rotors), Si₃N₄ is the more reliable choice.</p>
            <div class="app-use-grade"><b>Examples →</b> Shafts · cutting tools · turbine rotors · structural parts</div>
          </div>
        </div>
      </div>
    </section>

    <section class="s">
      <div class="wrap">
        <div class="sec-num">03 · The 5 Most Common Mistakes</div>
        <h2>Where engineers <span class="accent">spec wrong</span>.</h2>
        <p class="sec-lead">About 30% of incoming drawings we receive have the "wrong material" spec'd for the application. Below are the 5 mistakes we see most often — flagged here so you can avoid them before drawing review.</p>
        <div class="vs-grid">
          <div class="vs-card win">
            <div class="vs-card-head"><h3>Common Mis-specs</h3><span class="vs-tag alumina-tag">Engineering review catches</span></div>
            <ul class="vs-points">
              <li><b>"Al₂O₃" spec for hot surface igniters</b> → Should be Si₃N₄. Thermal cycling at 100K+ cycles breaks alumina, not Si₃N₄</li>
              <li><b>"Si₃N₄" spec for static lab furnace tubes at 1500°C</b> → Should be Al₂O₃. Si₃N₄ tops out at 1300°C in air; Al₂O₃ runs to 1700°C</li>
              <li><b>"Si₃N₄" spec for low-cost wear plates</b> → Should be Al₂O₃. No thermal cycling = no Si₃N₄ benefit, just 2× the cost</li>
              <li><b>"Al₂O₃" spec for high-RPM bearings</b> → Should be Si₃N₄. Lower density essential for centrifugal-load management above 20,000 RPM</li>
              <li><b>"Si₃N₄" spec for HV electrical insulator</b> → Should be Al₂O₃. Equivalent dielectric strength at half the material cost</li>
            </ul>
          </div>
          <div class="vs-card">
            <div class="vs-card-head"><h3>Why This Matters</h3><span class="vs-tag">Cost of being wrong</span></div>
            <ul class="vs-points">
              <li><b>Wrong material costs more</b> — Either the unit material cost is too high (over-spec'd) or the field failure rate is too high (under-spec'd)</li>
              <li><b>Wrong material costs time</b> — Discovering the issue in field testing means redesign + recertification cycle</li>
              <li><b>Wrong material costs reputation</b> — Field failures damage your customer relationships</li>
              <li><b>Our DFM review catches this for free</b> — Send drawing + duty profile, 48-hour reply with material recommendation</li>
              <li><b>We have no incentive to over-spec</b> — We make both materials; we recommend what works for your application</li>
            </ul>
          </div>
        </div>
      </div>
    </section>

    <section class="casecta">
      <div class="wrap">
        <div>
          <div class="casecta-eyebrow">★ Real-World Example · Italian Pellet Stove OEM</div>
          <h2>Switching from Al₂O₃ to Si₃N₄ —<br/><span style="color:var(--orange);">−38% warranty returns</span> in year 1.</h2>
          <p>Our Italian pellet stove OEM partner was buying alumina hot surface igniters from a European supplier in 2018. Field returns were running 8–12% at year 2 due to cracked igniters in cold Northern Italian climates — classic thermal-shock failure on Al₂O₃ substrate. Switching their full production line to Si₃N₄ BLK series dropped warranty returns 38% in year 1, cold-start failures 32%. They're now in year 7 of supply.</p>
          <p style="margin-top:12px;"><b>The takeaway:</b> when your application thermal-cycles, Si₃N₄ pays for its higher unit cost many times over in reduced field failure rate.</p>
          <div class="casecta-ctas">
            <a class="btn-primary" href="/contact">Request DFM Review →</a>
            <a class="btn-ghost" href="/materials/silicon-nitride">Si₃N₄ Datasheet →</a>
          </div>
        </div>
        <div class="casecta-side">
          <div class="casecta-side-tag">Al₂O₃ → Si₃N₄ Outcome</div>
          <div class="casecta-side-title">Italian pellet stove OEM</div>
          <ul class="casecta-side-list">
            <li><b>−38%</b> Warranty returns year 1</li>
            <li><b>−32%</b> Cold-start failures</li>
            <li><b>+22%</b> Igniter service life</li>
            <li><b>180K/yr</b> Current production</li>
          </ul>
        </div>
      </div>
    </section>

    <section class="s">
      <div class="wrap">
        <div class="sec-num">04 · FAQ</div>
        <h2>Engineer's <span class="accent">FAQ</span>.</h2>
        <div class="faq-grid">
          <div class="faq-item">
            <div class="faq-q">If Al₂O₃ has higher hardness (HV 1700 vs 1500), why isn't it always better for wear?</div>
            <div class="faq-a">Hardness alone doesn't determine wear life. In thermal-cycling wear (igniters, sliding contact with thermal variation), Si₃N₄'s lower thermal expansion prevents microcrack formation that eventually causes wear failure. In pure abrasive wear (static high-load grinding), alumina's higher hardness does win.</div>
          </div>
          <div class="faq-item">
            <div class="faq-q">Is Si₃N₄ really 2× the cost of Al₂O₃?</div>
            <div class="faq-a">For comparable geometries at production volume, yes — roughly 2× the unit cost. The cost gap narrows for very small parts (precision balls, small inserts) where material cost is a smaller fraction of total. It widens for large geometries (lift tubes, kiln plates) where Al₂O₃'s easier forming gives extra cost advantages.</div>
          </div>
          <div class="faq-item">
            <div class="faq-q">Can I machine Al₂O₃ or Si₃N₄ after sintering?</div>
            <div class="faq-a">Diamond grinding only — both materials are too hard for conventional carbide tooling after sintering. Pre-sintering ("green machining") is possible for rough-shape forming. For machinable ceramics post-sintering, we offer BN (h-BN) — fully machinable with conventional carbide tools.</div>
          </div>
          <div class="faq-item">
            <div class="faq-q">What about ZrO₂? When does it beat both Si₃N₄ and Al₂O₃?</div>
            <div class="faq-a">ZrO₂ wins when fracture toughness is the dominant requirement — impact-loaded service, medical/dental, ball valve seats. Fracture toughness 10 MPa·m½ vs Si₃N₄ 7.5 and Al₂O₃ 4.2. But ZrO₂ has higher thermal expansion (10.5) and lower service temp (1000°C), so it's not a thermal-cycling or high-temp choice.</div>
          </div>
          <div class="faq-item">
            <div class="faq-q">Can you supply both materials from the same factory?</div>
            <div class="faq-a">Yes — both Si₃N₄ and Al₂O₃ are core production materials at Ceramitell, manufactured in the same Hangzhou facility. Customers regularly buy both materials for different product lines. Combined-material supply agreements simplify procurement and provide consolidated freight savings.</div>
          </div>
          <div class="faq-item">
            <div class="faq-q">How do I get a material recommendation for my specific application?</div>
            <div class="faq-a">Email your drawing (STEP/PDF/DWG) plus a description of duty profile (operating temperature, cycle count, mechanical load, environment) to <CmsEmail :link="false" />. 48-hour reply with material recommendation, DFM feedback, and prototype pricing. Mutual NDA available if your application is proprietary.</div>
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
