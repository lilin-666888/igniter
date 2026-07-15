<script setup lang="ts">
useHead({
  title: "Ceramic Engineering Guides, Resources & Technical Data",
  meta: [
    {
      name: "description",
      content:
        "Engineering guides for ceramic material selection, application design, failure analysis, and technical troubleshooting, plus datasheets and certification files.",
    },
  ],
});
</script>

<template>
  <div>
    <div class="breadcrumb">
      <div class="wrap">
        <a href="/">Home</a><span>/</span><span>Resources</span>
      </div>
    </div>

    <section class="page-hero">
      <div class="wrap">
        <div class="page-hero-content">
          <span class="ph-eyebrow">Engineering Resources</span>
          <h1>
            The reference manual<br />our
            <span class="accent">engineers use</span>.
          </h1>
          <p class="ph-sub">
            Material selection guides, application notes, technical FAQs,
            failure analysis, and downloadable datasheets — built from 11+ years
            of OEM field data. All free, no signup, no gatekeeping.
          </p>
        </div>
      </div>
    </section>

    <section class="s">
      <div class="wrap">
        <div class="sec-num">01 · Material Selection Guides</div>
        <h2>Pick the <span class="accent">right ceramic</span>, first time.</h2>
        <p class="sec-lead">
          Side-by-side comparisons and engineering decision frameworks. Built
          from field data across pellet stove, semiconductor, and aerospace
          applications.
        </p>
        <div class="res-grid">
          <a href="/resources/silicon-nitride-vs-alumina" class="res-card"
            ><div class="res-bar"></div>
            <div class="res-tag">Selection Guide · 8 min</div>
            <div class="res-title">
              Si₃N₄ vs Alumina · Choosing the Right Igniter Substrate
            </div>
            <div class="res-excerpt">
              Side-by-side across thermal shock, lifecycle, cost, and lead time
              — with field data from 10M shipped units.
            </div>
            <div class="res-meta">
              <span>PDF · 12 pages</span><span class="read">Read →</span>
            </div></a
          >
          <a href="/resources/ceramic-grade-selection-guide" class="res-card"
            ><div class="res-bar"></div>
            <div class="res-tag">Selection Guide · 6 min</div>
            <div class="res-title">
              Alumina Purity Guide · 95% vs 99.5% vs 99.7%
            </div>
            <div class="res-excerpt">
              When wear-grade 95% is enough, when you need semiconductor-grade
              99.7%, and the cost differential.
            </div>
            <div class="res-meta">
              <span>PDF · 8 pages</span><span class="read">Read →</span>
            </div></a
          >
          <a href="/materials#zirconia" class="res-card"
            ><div class="res-bar"></div>
            <div class="res-tag">Selection Guide · 10 min</div>
            <div class="res-title">Choosing Ceramic Balls for Bearings</div>
            <div class="res-excerpt">
              Si₃N₄ vs ZrO₂ vs steel — load capacity, RPM ceiling, lifetime cost
              analysis for hybrid bearings.
            </div>
            <div class="res-meta">
              <span>PDF · 14 pages</span><span class="read">Read →</span>
            </div></a
          >
        </div>
      </div>
    </section>

    <section
      class="s"
      style="
        background: var(--bg-soft);
        border-top: 1px solid var(--line);
        border-bottom: 1px solid var(--line);
      "
    >
      <div class="wrap">
        <div class="sec-num">02 · Application Notes</div>
        <h2>Real <span class="accent">field cases</span>, real outcomes.</h2>
        <p class="sec-lead">
          Engineering walk-throughs of how we've solved specific application
          problems for OEM partners. Anonymized where required, technical where
          it matters.
        </p>
        <div class="res-grid">
          <a href="/applications#combustion" class="res-card"
            ><div class="res-bar"></div>
            <div class="res-tag">Case Study · 8 min</div>
            <div class="res-title">Italian Pellet Stove OEM Case</div>
            <div class="res-excerpt">
              How a switch from European-supplied alumina to Si₃N₄ BLK cut
              warranty returns 38% in year one. Real numbers, real timeline.
            </div>
            <div class="res-meta">
              <span>PDF · 10 pages</span><span class="read">Read →</span>
            </div></a
          >
          <a href="/applications#lab" class="res-card"
            ><div class="res-bar"></div>
            <div class="res-tag">Application Note · 5 min</div>
            <div class="res-title">Laboratory Furnace Design Note</div>
            <div class="res-excerpt">
              99.7% Al₂O₃ tube selection for 1600°C continuous service — wall
              thickness, support design, thermal cycling.
            </div>
            <div class="res-meta">
              <span>PDF · 6 pages</span><span class="read">Read →</span>
            </div></a
          >
          <a href="/applications#aerospace" class="res-card"
            ><div class="res-bar"></div>
            <div class="res-tag">Application Note · 12 min</div>
            <div class="res-title">Custom Bearing for EV Motor</div>
            <div class="res-excerpt">
              Si₃N₄ hybrid bearing for 18,000 RPM EV traction motor — material
              selection, precision class, validation testing.
            </div>
            <div class="res-meta">
              <span>PDF · 14 pages</span><span class="read">Read →</span>
            </div></a
          >
        </div>
      </div>
    </section>

    <section class="s">
      <div class="wrap">
        <div class="sec-num">03 · Technical FAQ</div>
        <h2>The questions <span class="accent">we get most</span>.</h2>
        <p class="sec-lead">
          Direct answers from our application engineers. No marketing fluff,
          just the technical reality.
        </p>
        <div class="res-grid">
          <a href="/materials#silicon-nitride" class="res-card"
            ><div class="res-bar"></div>
            <div class="res-tag">Technical FAQ · 5 min</div>
            <div class="res-title">
              How Long Should a Ceramic Hot Surface Igniter Last?
            </div>
            <div class="res-excerpt">
              Industry benchmarks for cycle life, design choices that drive
              longevity, how to spec for your duty cycle.
            </div>
            <div class="res-meta">
              <span>Web article</span><span class="read">Read →</span>
            </div></a
          >
          <a href="/products#balls" class="res-card"
            ><div class="res-bar"></div>
            <div class="res-tag">Technical FAQ · 4 min</div>
            <div class="res-title">
              G5 vs G20 Balls · What's the Real Difference?
            </div>
            <div class="res-excerpt">
              Roundness, surface, dimension tolerance — what each grade means in
              numbers and which applications actually need G5.
            </div>
            <div class="res-meta">
              <span>Web article</span><span class="read">Read →</span>
            </div></a
          >
          <a href="/contact" class="res-card"
            ><div class="res-bar"></div>
            <div class="res-tag">Technical FAQ · 6 min</div>
            <div class="res-title">Can You Match a Competitor's Drawing?</div>
            <div class="res-excerpt">
              Our process for drop-in replacements — sending a competitor's PDF,
              what we need from you, what to expect.
            </div>
            <div class="res-meta">
              <span>Web article</span><span class="read">Read →</span>
            </div></a
          >
        </div>
      </div>
    </section>

    <section
      class="s"
      style="
        background: var(--bg-soft);
        border-top: 1px solid var(--line);
        border-bottom: 1px solid var(--line);
      "
    >
      <div class="wrap">
        <div class="sec-num">04 · Failure Analysis</div>
        <h2>
          Why ceramics fail — and
          <span class="accent">how to design them out</span>.
        </h2>
        <p class="sec-lead">
          Engineering walk-throughs of common failure modes, with photos from
          field returns and design recommendations.
        </p>
        <div class="res-grid">
          <a href="/resources/iso-9001-certification" class="res-card"
            ><div class="res-bar"></div>
            <div class="res-tag">Certifications · 6 min</div>
            <div class="res-title">
              ISO 9001 + UL Recognition · Quality System
            </div>
            <div class="res-excerpt">
              Thermal cycling cracks, electrode oxidation, moisture ingress —
              what your warranty data really tells you.
            </div>
            <div class="res-meta">
              <span>PDF · 16 pages</span><span class="read">Read →</span>
            </div></a
          >
          <a href="/materials#silicon-nitride" class="res-card"
            ><div class="res-bar"></div>
            <div class="res-tag">Failure Analysis · 8 min</div>
            <div class="res-title">Thermal Shock Crack Analysis</div>
            <div class="res-excerpt">
              How thermal expansion mismatch causes cracking, and why Si₃N₄
              outperforms alumina by 2.5× on this axis.
            </div>
            <div class="res-meta">
              <span>PDF · 10 pages</span><span class="read">Read →</span>
            </div></a
          >
          <a href="/products#ceramic-igniters" class="res-card"
            ><div class="res-bar"></div>
            <div class="res-tag">Failure Analysis · 6 min</div>
            <div class="res-title">Electrode Oxidation Prevention</div>
            <div class="res-excerpt">
              Why electrode connection design matters more than the ceramic
              substrate — and 4 design rules to follow.
            </div>
            <div class="res-meta">
              <span>PDF · 8 pages</span><span class="read">Read →</span>
            </div></a
          >
        </div>
      </div>
    </section>

    <section class="s">
      <div class="wrap">
        <div class="sec-num">05 · Downloads Center</div>
        <h2>Datasheets, brochures, <span class="accent">cert files</span>.</h2>
        <p class="sec-lead">
          All available for direct download — no email gating, no sign-up. We
          respect your time.
        </p>
        <div class="res-grid">
          <a href="/materials" class="res-card"
            ><div class="res-bar"></div>
            <div class="res-tag">Downloads</div>
            <div class="res-title">All Material Datasheets · 7 PDFs</div>
            <div class="res-excerpt">
              Si₃N₄, Al₂O₃, ZrO₂, SiC, B₄C, AlN, BN — typical values, grade
              variants, and test conditions.
            </div>
            <div class="res-meta">
              <span>ZIP · ~4MB</span><span class="read">Download →</span>
            </div></a
          >
          <a href="/capabilities" class="res-card"
            ><div class="res-bar"></div>
            <div class="res-tag">Downloads</div>
            <div class="res-title">Capability Brochure 2026</div>
            <div class="res-excerpt">
              68-page company catalog — capabilities, all 8 product categories,
              applications, certifications, contact.
            </div>
            <div class="res-meta">
              <span>PDF · 68 pages</span><span class="read">Download →</span>
            </div></a
          >
          <a href="/about" class="res-card"
            ><div class="res-bar"></div>
            <div class="res-tag">Downloads</div>
            <div class="res-title">All Certification Files</div>
            <div class="res-excerpt">
              ISO 9001 · IATF 16949 · CE · RoHS · REACH · UL — scanned cert PDFs
              in one bundle.
            </div>
            <div class="res-meta">
              <span>ZIP · ~2MB</span><span class="read">Download →</span>
            </div></a
          >
        </div>
      </div>
    </section>
  </div>
</template>

<style scoped>
:root {
  --navy: #0a2647;
  --navy-2: #103a6b;
  --bg: #ffffff;
  --bg-soft: #f1f5fa;
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
}
a {
  color: inherit;
  text-decoration: none;
}
.wrap {
  max-width: 1260px;
  margin: 0 auto;
  padding: 0 40px;
}
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
}
.breadcrumb a {
  color: var(--navy);
  font-weight: 600;
}
.page-hero {
  background: linear-gradient(135deg, var(--navy) 0%, var(--navy-2) 100%);
  color: #fff;
  padding: 70px 0 90px;
  position: relative;
}
.page-hero::after {
  content: "";
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
.ph-eyebrow {
  display: inline-block;
  background: var(--orange);
  color: #fff;
  font-family: var(--mono);
  font-size: 11px;
  letter-spacing: 0.15em;
  padding: 8px 14px;
  margin-bottom: 22px;
  text-transform: uppercase;
}
.page-hero h1 {
  font-family: var(--cond);
  font-size: 78px;
  line-height: 0.95;
  font-weight: 800;
  letter-spacing: -0.02em;
  margin-bottom: 22px;
}
.page-hero h1 .accent {
  color: var(--gold);
}
.ph-sub {
  font-size: 18px;
  color: rgba(255, 255, 255, 0.85);
  max-width: 700px;
  line-height: 1.55;
}

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
  font-size: 44px;
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
  font-size: 16px;
  max-width: 700px;
  line-height: 1.6;
  margin-bottom: 40px;
}

.res-grid {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 22px;
}
.res-card {
  background: #fff;
  border: 1px solid var(--line);
  padding: 28px;
  position: relative;
  transition: all 0.15s;
  cursor: pointer;
  display: flex;
  flex-direction: column;
  gap: 12px;
}
.res-card:hover {
  border-color: var(--orange);
  transform: translateY(-3px);
  box-shadow: 0 20px 40px -20px rgba(10, 38, 71, 0.15);
}
.res-bar {
  position: absolute;
  top: -1px;
  left: 28px;
  width: 40px;
  height: 3px;
  background: var(--orange);
}
.res-tag {
  font-family: var(--mono);
  font-size: 10.5px;
  letter-spacing: 0.15em;
  color: var(--orange);
  text-transform: uppercase;
  font-weight: 600;
  margin-top: 8px;
}
.res-title {
  font-family: var(--cond);
  font-size: 22px;
  font-weight: 700;
  color: var(--navy);
  line-height: 1.2;
  letter-spacing: -0.01em;
}
.res-excerpt {
  font-size: 13.5px;
  color: var(--ink-soft);
  line-height: 1.6;
  flex: 1;
}
.res-meta {
  font-family: var(--mono);
  font-size: 11px;
  color: var(--ink-faint);
  letter-spacing: 0.05em;
  padding-top: 12px;
  border-top: 1px solid var(--line);
  display: flex;
  justify-content: space-between;
}
.res-meta .read {
  color: var(--orange);
  font-weight: 600;
}

.cat-divider {
  background: var(--bg-soft);
  padding: 60px 0 0;
  border-top: 1px solid var(--line);
}

footer {
  background: var(--navy);
  color: #c5d4e6;
  padding: 70px 0 30px;
  margin-top: 60px;
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
}
.foot-col a:hover {
  color: var(--gold);
}
.fb-right p {
  font-size: 13.5px;
  color: rgba(255, 255, 255, 0.65);
  margin-bottom: 10px;
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
  gap: 14px;
}
@media (max-width: 1024px) {
  .res-grid {
    grid-template-columns: 1fr 1fr;
  }
  .foot-grid {
    grid-template-columns: 1fr 1fr;
  }
}
@media (max-width: 640px) {
  .wrap {
    padding: 0 20px;
  }
  .page-hero h1 {
    font-size: 50px;
  }
  .res-grid {
    grid-template-columns: 1fr;
  }
  .topbar .left,
  .nav-links {
    display: none;
  }
}
</style>
