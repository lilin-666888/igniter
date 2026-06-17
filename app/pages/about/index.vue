<script setup lang="ts">
useHead({
  title: 'About Ceramitell — OEM Ceramic Manufacturer Since 2014',
  meta: [{ name: 'description', content: 'Ceramitell — direct manufacturer of industrial ceramic components based in Shanghai and Hangzhou, Zhejiang. Founded 2014, 11+ years OEM experience across heating, semiconductor, and precision industries.' }],
})
</script>

<template>
  <div>
    <div class="breadcrumb">
      <div class="wrap">
        <NuxtLink to="/">Home</NuxtLink>
        <span>/</span>
        <span>About</span>
      </div>
    </div>

    <section class="page-hero">
      <div class="wrap">
        <div class="page-hero-content">
          <span class="ph-eyebrow">Founded 2014 · 11+ Years OEM Experience</span>
          <h1>Direct ceramic <span class="accent">manufacturer</span>,<br>not a trader.</h1>
          <p class="ph-sub">Ceramitell is an advanced industrial ceramic manufacturer based in Shanghai and Hangzhou, Zhejiang. We synthesize our own ceramic powders, sinter on our own lines, and ship to OEM customers in 42 countries. No subcontracting. No surprises.</p>
        </div>
      </div>
    </section>

    <section>
      <div class="wrap">
        <div class="grid-2">
          <div>
            <div class="sec-num">01 · Company Story</div>
            <h2>From a single powder line to <span class="accent">42 export markets</span>.</h2>
            <p class="body-p">Founded in <b>2014</b> in Hangzhou, Zhejiang — with a production base covering about 13 acres and more than 6,000 m² of building area. We started with a single silicon nitride powder synthesis line and a focus on hot surface igniters for Chinese appliance OEMs.</p>
            <p class="body-p">In <b>2018</b>, we shipped our first 50,000-unit run to an Italian pellet stove OEM — a partnership that grew to 180,000 units/year by 2023 and remains one of our largest accounts. Today we ship to <b>42 countries</b> across heating, semiconductor, aerospace, and precision-machinery verticals.</p>
            <p class="body-p">In <b>2024</b>, we opened our Shanghai office in Qingpu District to better serve European and North American clients — bringing engineering, sales, and customer-success staff closer to international time zones.</p>
          </div>
          <div class="stats-box">
            <div class="stats-box-tag">★ Ceramitell at a glance</div>
            <ul>
              <li><span class="num">2014</span><span class="desc">Founded in Hangzhou, Zhejiang — fine ceramics production base</span></li>
              <li><span class="num">11+ yrs</span><span class="desc">OEM manufacturing experience across heating, electronics, precision</span></li>
              <li><span class="num">42</span><span class="desc">Export countries — EU, North America, SE Asia, Middle East</span></li>
              <li><span class="num">180K</span><span class="desc">Largest single OEM annual run (Italian pellet stove partner)</span></li>
              <li><span class="num">6,000+ m²</span><span class="desc">Building area · ~13-acre Hangzhou production base</span></li>
            </ul>
          </div>
        </div>
      </div>
    </section>

    <section style="background: var(--bg-soft);">
      <div class="wrap">
        <div class="sec-num">02 · Team</div>
        <h2>Engineering-led, <span class="accent">customer-direct</span>.</h2>
        <p class="body-p" style="max-width: 720px; margin-bottom: 40px;">Our team structure is engineering-heavy by design — we believe ceramic component decisions are won or lost on technical fit, not commercial polish. Every customer-facing conversation has a DFM engineer one step away.</p>
        <div class="team-grid">
          <div class="team-card">
            <h3>Founder & CEO</h3>
            <div class="role">★ Leadership · Strategy</div>
            <p>Materials engineer by training. Founded Ceramitell in 2014 after working at major Chinese ceramic OEMs. Personally reviews every new strategic partnership.</p>
          </div>
          <div class="team-card">
            <h3>Engineering Director</h3>
            <div class="role">DFM · Material Selection</div>
            <p>Leads the DFM and customer-engineering team. 15+ years in advanced ceramics — Si₃N₄, ZrO₂, AlN. Owner of our 48-hour drawing-review commitment.</p>
          </div>
          <div class="team-card">
            <h3>Sales & Customer Success</h3>
            <div class="role">EU · NA · Asia Pacific</div>
            <p>Multi-lingual sales team based in Shanghai, covering Europe, North America, and Asia-Pacific markets. Engineering-trained, not just commercial.</p>
          </div>
        </div>
      </div>
    </section>

    <section>
      <div class="wrap">
        <div class="sec-num">03 · Quality & Certifications</div>
        <h2>Audited quality, <span class="accent">lot certs included</span>.</h2>
        <p class="body-p" style="max-width: 720px; margin-bottom: 40px;">Our quality system is built around ISO 9001:2015 and audited to IATF 16949:2016 for automotive-grade production runs. Lot-specific test certificates are issued on every production shipment — density, dimension, surface finish, and electrical/thermal properties as applicable.</p>
        <div class="cert-grid">
          <div class="cert-card">
            <div class="cert-icon">📋</div>
            <div class="cert-name">ISO 9001:2015</div>
            <div class="cert-num">Quality Management</div>
          </div>
          <div class="cert-card">
            <div class="cert-icon">🚗</div>
            <div class="cert-name">IATF 16949</div>
            <div class="cert-num">Automotive QMS</div>
          </div>
          <div class="cert-card">
            <div class="cert-icon">🇪🇺</div>
            <div class="cert-name">CE Marking</div>
            <div class="cert-num">EU Conformity</div>
          </div>
          <div class="cert-card">
            <div class="cert-icon">♻️</div>
            <div class="cert-name">RoHS · REACH</div>
            <div class="cert-num">EU Substance Compliance</div>
          </div>
        </div>
      </div>
    </section>

    <section class="cta-band">
      <div class="wrap">
        <h2>Ready to <span class="accent">see if we fit</span>?</h2>
        <p>Send us a part number, a drawing, or just describe what you need. We reply within 24 hours, free samples ship in 48 hours.</p>
        <a href="/contact">Request a Quote →</a>
      </div>
    </section>
  </div>
</template>

<style>
.breadcrumb { background: var(--bg-soft); padding: 14px 0; border-bottom: 1px solid var(--line); }
  .breadcrumb .wrap { display: flex; gap: 10px; align-items: center; font-family: var(--mono); font-size: 12px; color: var(--ink-soft); }
  .breadcrumb a { color: var(--navy); font-weight: 600; }
  .page-hero { background: linear-gradient(135deg, var(--navy) 0%, var(--navy-2) 100%); color: #fff; padding: 70px 0 90px; position: relative; }
  .page-hero::after { content: ''; position: absolute; bottom: 0; left: 0; right: 0; height: 4px; background: linear-gradient(90deg, var(--orange) 0%, var(--gold) 50%, var(--orange) 100%); }
  .ph-eyebrow { display: inline-block; background: var(--orange); color: #fff; font-family: var(--mono); font-size: 11px; letter-spacing: 0.15em; padding: 8px 14px; margin-bottom: 22px; text-transform: uppercase; }
  .page-hero h1 { font-family: var(--cond); font-size: 78px; line-height: 0.95; font-weight: 800; letter-spacing: -0.02em; margin-bottom: 22px; }
  .page-hero h1 .accent { color: var(--gold); }
  .ph-sub { font-size: 18px; color: rgba(255,255,255,0.85); max-width: 700px; line-height: 1.55; }
  section { padding: 80px 0; }
  .grid-2 { display: grid; grid-template-columns: 1fr 1fr; gap: 50px; align-items: start; }
  .sec-num { font-family: var(--mono); font-size: 11.5px; letter-spacing: 0.2em; color: var(--orange); text-transform: uppercase; font-weight: 500; margin-bottom: 14px; }
  h2 { font-family: var(--cond); font-size: 48px; font-weight: 800; line-height: 1.05; letter-spacing: -0.02em; color: var(--ink); margin-bottom: 18px; }
  h2 .accent { color: var(--orange); }
  .body-p { font-size: 16px; color: var(--ink-soft); line-height: 1.65; margin-bottom: 18px; }
  .body-p b { color: var(--navy); font-weight: 600; }
  .stats-box { background: var(--bg-soft); border-left: 4px solid var(--orange); padding: 36px; }
  .stats-box-tag { font-family: var(--mono); font-size: 11px; letter-spacing: 0.15em; color: var(--orange); text-transform: uppercase; font-weight: 600; margin-bottom: 14px; }
  .stats-box ul { list-style: none; display: flex; flex-direction: column; gap: 16px; }
  .stats-box li { display: flex; gap: 18px; align-items: baseline; padding-bottom: 16px; border-bottom: 1px dashed var(--line-strong); }
  .stats-box li:last-child { border-bottom: none; padding-bottom: 0; }
  .stats-box li .num { font-family: var(--cond); font-size: 32px; font-weight: 800; color: var(--navy); min-width: 100px; letter-spacing: -0.01em; }
  .stats-box li .desc { font-size: 14.5px; color: var(--ink-soft); line-height: 1.55; }
  .team-grid { display: grid; grid-template-columns: repeat(3, 1fr); gap: 24px; }
  .team-card { background: #fff; border: 1px solid var(--line); padding: 30px; }
  .team-card h3 { font-family: var(--cond); font-size: 24px; font-weight: 700; color: var(--navy); margin-bottom: 6px; letter-spacing: -0.01em; }
  .team-card .role { font-family: var(--mono); font-size: 11px; letter-spacing: 0.13em; color: var(--orange); text-transform: uppercase; font-weight: 600; margin-bottom: 14px; }
  .team-card p { font-size: 13.5px; color: var(--ink-soft); line-height: 1.6; }
  .cert-grid { display: grid; grid-template-columns: repeat(4, 1fr); gap: 18px; }
  .cert-card { background: #fff; border: 1px solid var(--line); padding: 26px 22px; text-align: center; transition: border-color 0.15s; }
  .cert-card:hover { border-color: var(--orange); }
  .cert-card .cert-icon { font-size: 28px; margin-bottom: 8px; }
  .cert-card .cert-name { font-family: var(--cond); font-size: 20px; font-weight: 700; color: var(--navy); margin-bottom: 4px; }
  .cert-card .cert-num { font-family: var(--mono); font-size: 10px; color: var(--ink-faint); letter-spacing: 0.1em; }
  .cta-band { background: linear-gradient(135deg, var(--navy) 0%, var(--navy-2) 100%); color: #fff; padding: 80px 0; text-align: center; }
  .cta-band h2 { color: #fff; margin-bottom: 18px; }
  .cta-band h2 .accent { color: var(--gold); }
  .cta-band p { font-size: 17px; color: rgba(255,255,255,0.8); max-width: 580px; margin: 0 auto 30px; }
  .cta-band a { display: inline-block; background: var(--orange); color: #fff; padding: 18px 36px; font-weight: 800; font-size: 15px; letter-spacing: 0.3px; }
  .cta-band a:hover { background: var(--orange-deep); }
  footer { background: var(--navy); color: #C5D4E6; padding: 70px 0 30px; }
  .foot-grid { display: grid; grid-template-columns: 1.5fr 1fr 1fr 1fr 1.2fr; gap: 40px; margin-bottom: 50px; }
  .foot-col h5 { font-family: var(--cond); font-size: 16px; font-weight: 700; color: #fff; letter-spacing: 0.05em; margin-bottom: 16px; text-transform: uppercase; }
  .foot-col a { display: block; font-size: 13.5px; color: rgba(255,255,255,0.65); margin-bottom: 9px; }
  .foot-col a:hover { color: var(--gold); }
  .fb-right p { font-size: 13.5px; color: rgba(255,255,255,0.65); margin-bottom: 10px; }
  .fb-right p b { color: #fff; font-weight: 600; }
  .foot-bottom { padding-top: 24px; border-top: 1px solid rgba(255,255,255,0.1); font-family: var(--mono); font-size: 11.5px; color: rgba(255,255,255,0.5); display: flex; justify-content: space-between; gap: 14px; }
  .foot-bottom span { display: flex; gap: 22px; }
  @media (max-width: 1024px) { .grid-2 { grid-template-columns: 1fr; } .team-grid { grid-template-columns: 1fr 1fr; } .cert-grid { grid-template-columns: 1fr 1fr; } .foot-grid { grid-template-columns: 1fr 1fr; } }
  @media (max-width: 640px) { .wrap { padding: 0 20px; } .page-hero h1 { font-size: 50px; } }
</style>
