<script setup lang="ts">
useHead({
  title: 'Contact Ceramitell — Quick Quote & Office Information',
  meta: [{ name: 'description', content: 'Request a quote in 60 seconds. Free samples · 48h dispatch · 24h reply commitment. Shanghai office: No.568 Tianyi Road, Qingpu District. sales@ceramitell.com · WhatsApp/WeChat: +86 151 9017 9780.' }],
})

const form = reactive({ name: '', email: '', phone: '', message: '' })
const submitting = ref(false)

async function onSubmit() {
  submitting.value = true
  try {
    await submitInquiry({
      name: form.name,
      email: form.email,
      phone: form.phone || undefined,
      message: form.message || undefined,
    })
    alert('Submitted — we will reply within 24 hours.')
    form.name = ''
    form.email = ''
    form.phone = ''
    form.message = ''
  } catch {
    alert('Submission failed. Please email sales@ceramitell.com directly.')
  } finally {
    submitting.value = false
  }
}
</script>

<template>
  <div>
    <div class="breadcrumb">
      <div class="wrap">
        <a href="/">Home</a>
        <span class="sep">/</span>
        <span>Contact</span>
      </div>
    </div>

    <section class="page-hero">
      <div class="wrap">
        <div class="page-hero-content">
          <span class="ph-eyebrow">Get in Touch · Reply Within 24h</span>
          <h1>Let's <span class="accent">talk specs</span>.</h1>
          <p class="ph-sub">Whether you have a part number to quote, a drawing to review, or you just want a free sample to evaluate against your current supplier — fill the form below or reach out directly. <b>We reply within 24 hours, every business day.</b></p>
        </div>
      </div>
      <div class="page-hero-stripe" />
    </section>

    <!-- MAIN CONTACT GRID -->
    <section class="contact-section">
      <div class="wrap">
        <div class="contact-grid">

          <!-- LEFT: QUICK QUOTE FORM -->
          <div class="qq-card">
            <div class="qq-eyebrow">Quick Quote · 60 seconds</div>
            <h2 class="qq-title">Get a quote in <span class="accent">24 hours</span>.</h2>
            <p class="qq-lead">Fill in four fields. We'll reply with a quote and free-sample shipping schedule within 24 hours — every business day, even Saturdays during peak season.</p>

            <form class="qq-form" @submit.prevent="onSubmit">

              <div class="qq-field">
                <label>Your Name <span class="req">*</span></label>
                <input v-model="form.name" type="text" placeholder="e.g. Marco Rossi" required />
              </div>

              <div class="qq-row">
                <div class="qq-field">
                  <label>Email <span class="req">*</span></label>
                  <input v-model="form.email" type="email" placeholder="you@company.com" required />
                </div>
                <div class="qq-field">
                  <label>Phone / WhatsApp</label>
                  <input v-model="form.phone" type="tel" placeholder="+1 / +39 / +86 ..." />
                </div>
              </div>

              <div class="qq-field">
                <label>What do you need? <span style="color: var(--ink-faint); font-weight: 400;">(optional)</span></label>
                <textarea v-model="form.message" placeholder="Example:&#10;'Looking for Si₃N₄ hot surface igniters, 120V, similar to Norton 271N. Need 5,000 units/year. Can you quote against the attached datasheet?'&#10;&#10;Tip: more detail = faster, more accurate quote."></textarea>
              </div>

              <button type="submit" class="qq-submit" :disabled="submitting">{{ submitting ? 'Sending…' : 'Send Quote Request →' }}</button>

              <div class="qq-promise">
                <div class="qq-promise-item">
                  <div class="num">24h</div>
                  <div class="lbl">Reply Time</div>
                </div>
                <div class="qq-promise-item">
                  <div class="num">Free</div>
                  <div class="lbl">Samples</div>
                </div>
                <div class="qq-promise-item">
                  <div class="num">48h</div>
                  <div class="lbl">Sample Dispatch</div>
                </div>
                <div class="qq-promise-item">
                  <div class="num">NDA</div>
                  <div class="lbl">On Request</div>
                </div>
              </div>
            </form>
          </div>

          <!-- RIGHT: OFFICE INFORMATION -->
          <div class="office-card">

            <div class="office-block">
              <div class="office-block-eyebrow">Office Information</div>
              <h3>Reach us directly.</h3>

              <div class="office-line">
                <div class="office-line-icon">@</div>
                <div class="office-line-body">
                  <div class="l">Sales Email</div>
                  <div class="v"><a href="mailto:sales@ceramitell.com">sales@ceramitell.com</a></div>
                </div>
              </div>

              <div class="office-line">
                <div class="office-line-icon">W</div>
                <div class="office-line-body">
                  <div class="l">WhatsApp</div>
                  <div class="v">+86 151 9017 9780</div>
                </div>
              </div>

              <div class="office-line">
                <div class="office-line-icon">微</div>
                <div class="office-line-body">
                  <div class="l">WeChat</div>
                  <div class="v">+86 151 9017 9780</div>
                </div>
              </div>

              <div class="office-line">
                <div class="office-line-icon">in</div>
                <div class="office-line-body">
                  <div class="l">LinkedIn</div>
                  <div class="v">Ceramitell Industrial Ceramics</div>
                </div>
              </div>
            </div>

            <div class="office-block" style="border-left-color: var(--gold);">
              <div class="office-block-eyebrow" style="color: var(--navy);">Shanghai Office</div>
              <h3>Company Address.</h3>

              <div class="office-line">
                <div class="office-line-icon">📍</div>
                <div class="office-line-body">
                  <div class="l">Address</div>
                  <div class="v small">No.568, Tianyi Road,<br/>Qingpu District, Shanghai 201712,<br/>China</div>
                </div>
              </div>

              <div class="office-line">
                <div class="office-line-icon">🏭</div>
                <div class="office-line-body">
                  <div class="l">Factory Location</div>
                  <div class="v small">Pingxiang, Jiangxi, China<br/>(Visit by appointment)</div>
                </div>
              </div>

              <div class="office-line">
                <div class="office-line-icon">🕐</div>
                <div class="office-line-body">
                  <div class="l">Business Hours</div>
                  <div class="v small">Mon–Fri 09:00–18:00 CST (UTC+8)<br/>Sat by appointment</div>
                </div>
              </div>
            </div>

          </div>

        </div>
      </div>
    </section>

    <!-- WHY CHOOSE US STRIP -->
    <section class="why-strip">
      <div class="wrap">
        <div class="why-grid">
          <div class="why-item">
            <div class="num">11+ yrs</div>
            <div class="lbl">OEM Experience</div>
            <div class="desc">Manufacturer since 2014 — Italian, German, US partnerships.</div>
          </div>
          <div class="why-item">
            <div class="num">42</div>
            <div class="lbl">Countries Shipped</div>
            <div class="desc">EU · North America · Southeast Asia · Middle East.</div>
          </div>
          <div class="why-item">
            <div class="num">100K+</div>
            <div class="lbl">CN-300 Cycle Life</div>
            <div class="desc">Field-proven Si₃N₄ igniters in 180K-unit OEM runs.</div>
          </div>
          <div class="why-item">
            <div class="num">ISO</div>
            <div class="lbl">9001 + IATF 16949</div>
            <div class="desc">Audited quality system, lot certs on every shipment.</div>
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

  /* COMPACT HERO (smaller than other pages — contact should feel actionable not promotional) */
  .page-hero { background: linear-gradient(135deg, var(--navy) 0%, var(--navy-2) 100%); color: #fff; padding: 60px 0 70px; position: relative; overflow: hidden; }
  .page-hero-stripe { position: absolute; bottom: 0; left: 0; right: 0; height: 4px; background: linear-gradient(90deg, var(--orange) 0%, var(--gold) 50%, var(--orange) 100%); }
  .ph-eyebrow { display: inline-block; background: var(--orange); color: #fff; font-family: var(--mono); font-size: 11px; letter-spacing: 0.15em; padding: 8px 14px; margin-bottom: 22px; text-transform: uppercase; font-weight: 500; }
  .page-hero h1 { font-family: var(--cond); font-size: 64px; line-height: 1; font-weight: 800; letter-spacing: -0.02em; margin-bottom: 18px; }
  .page-hero h1 .accent { color: var(--gold); }
  .ph-sub { font-size: 17px; color: rgba(255,255,255,0.85); line-height: 1.55; max-width: 700px; }
  .ph-sub b { color: var(--gold-soft); font-weight: 700; }

  /* CONTACT GRID — 2 columns: Quick Quote form + Office Info */
  .contact-section { padding: 90px 0; }
  .contact-grid { display: grid; grid-template-columns: 1.3fr 1fr; gap: 50px; }

  /* QUICK QUOTE FORM */
  .qq-card { background: #fff; border: 1px solid var(--line); padding: 50px; position: relative; }
  .qq-card::before { content: ''; position: absolute; top: -1px; left: 50px; right: 50px; height: 5px; background: linear-gradient(90deg, var(--orange) 0%, var(--gold) 100%); }
  .qq-eyebrow { font-family: var(--mono); font-size: 11.5px; letter-spacing: 0.2em; color: var(--orange); text-transform: uppercase; font-weight: 600; margin-bottom: 14px; }
  .qq-title { font-family: var(--cond); font-size: 44px; font-weight: 800; color: var(--navy); letter-spacing: -0.02em; line-height: 1.05; margin-bottom: 14px; }
  .qq-title .accent { color: var(--orange); }
  .qq-lead { font-size: 15.5px; color: var(--ink-soft); line-height: 1.6; margin-bottom: 30px; }
  .qq-lead b { color: var(--navy); font-weight: 700; }

  .qq-form { display: flex; flex-direction: column; gap: 18px; }
  .qq-field { display: flex; flex-direction: column; gap: 6px; }
  .qq-field label { font-family: var(--mono); font-size: 11px; letter-spacing: 0.15em; color: var(--navy); text-transform: uppercase; font-weight: 600; }
  .qq-field label .req { color: var(--orange); }
  .qq-field input, .qq-field textarea, .qq-field select { padding: 14px 16px; border: 1px solid var(--line-strong); font-family: var(--sans); font-size: 14.5px; color: var(--ink); background: #fff; transition: border-color 0.15s; }
  .qq-field input:focus, .qq-field textarea:focus, .qq-field select:focus { outline: none; border-color: var(--orange); }
  .qq-field textarea { min-height: 130px; resize: vertical; line-height: 1.5; font-family: var(--sans); }

  .qq-row { display: grid; grid-template-columns: 1fr 1fr; gap: 16px; }

  .qq-submit { background: var(--orange); color: #fff; padding: 18px 30px; font-weight: 800; font-size: 15px; letter-spacing: 0.3px; border: none; cursor: pointer; transition: background 0.15s; display: inline-flex; align-items: center; justify-content: center; gap: 8px; margin-top: 8px; font-family: var(--sans); }
  .qq-submit:hover { background: var(--orange-deep); }

  .qq-promise { display: flex; gap: 18px; padding-top: 20px; margin-top: 6px; border-top: 1px solid var(--line); }
  .qq-promise-item { flex: 1; }
  .qq-promise-item .num { font-family: var(--cond); font-size: 24px; font-weight: 800; color: var(--orange); letter-spacing: -0.01em; }
  .qq-promise-item .lbl { font-family: var(--mono); font-size: 10px; letter-spacing: 0.1em; color: var(--ink-soft); text-transform: uppercase; margin-top: 2px; font-weight: 600; }

  /* OFFICE INFORMATION SIDE */
  .office-card { display: flex; flex-direction: column; gap: 24px; }
  .office-block { background: var(--bg-soft); padding: 36px; border-left: 4px solid var(--orange); }
  .office-block-eyebrow { font-family: var(--mono); font-size: 10.5px; letter-spacing: 0.2em; color: var(--orange); text-transform: uppercase; font-weight: 600; margin-bottom: 12px; }
  .office-block h3 { font-family: var(--cond); font-size: 26px; font-weight: 700; color: var(--navy); letter-spacing: -0.01em; line-height: 1.15; margin-bottom: 16px; }
  .office-line { display: flex; gap: 14px; align-items: flex-start; padding: 12px 0; border-bottom: 1px dashed var(--line-strong); }
  .office-line:last-child { border-bottom: none; }
  .office-line-icon { width: 32px; height: 32px; background: var(--navy); color: var(--gold); display: flex; align-items: center; justify-content: center; flex-shrink: 0; font-family: var(--mono); font-size: 13px; font-weight: 700; }
  .office-line-body .l { font-family: var(--mono); font-size: 10px; letter-spacing: 0.13em; color: var(--ink-faint); text-transform: uppercase; font-weight: 600; margin-bottom: 4px; }
  .office-line-body .v { font-family: var(--cond); font-size: 18px; font-weight: 700; color: var(--navy); letter-spacing: -0.005em; line-height: 1.3; }
  .office-line-body .v a { color: var(--navy); }
  .office-line-body .v a:hover { color: var(--orange); }
  .office-line-body .v.small { font-family: var(--sans); font-size: 14.5px; font-weight: 500; line-height: 1.5; color: var(--ink); }

  /* WHY CHOOSE US STRIP */
  .why-strip { background: var(--bg-soft); padding: 50px 0; border-top: 1px solid var(--line); border-bottom: 1px solid var(--line); }
  .why-grid { display: grid; grid-template-columns: repeat(4, 1fr); gap: 24px; }
  .why-item { display: flex; flex-direction: column; gap: 6px; }
  .why-item .num { font-family: var(--cond); font-size: 44px; font-weight: 800; color: var(--orange); line-height: 1; letter-spacing: -0.02em; }
  .why-item .lbl { font-family: var(--mono); font-size: 11px; letter-spacing: 0.13em; color: var(--navy); text-transform: uppercase; font-weight: 600; margin-top: 4px; }
  .why-item .desc { font-size: 13.5px; color: var(--ink-soft); line-height: 1.55; margin-top: 6px; }

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
    .contact-grid { grid-template-columns: 1fr; }
    .why-grid { grid-template-columns: 1fr 1fr; gap: 30px; }
    .foot-grid { grid-template-columns: 1fr 1fr; }
  }
  @media (max-width: 640px) {
    .wrap { padding: 0 20px; }
    .page-hero h1 { font-size: 42px; }
    .qq-card { padding: 30px 22px; }
    .qq-row { grid-template-columns: 1fr; }
    .topbar .left, .nav-links { display: none; }
  }
</style>
