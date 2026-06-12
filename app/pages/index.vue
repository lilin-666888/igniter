<script setup lang="ts">
const {
  catalogItems,
  certifications,
  contactPromises,
  entryCards,
  heroStats,
  quoteOutcomes,
  resourceCards,
  specCardSpecs,
  spotlightStats,
  techmanCards,
  testimonials,
} = useHomepageCms()
const { email, phone } = useContact()

useHead({
  title:
    "Ceramitell — OEM Ceramic Igniters & Industrial Ceramics from China Manufacturer",
  meta: [
    {
      name: "description",
      content:
        "Direct manufacturer of silicon nitride igniters, alumina heating rods, ceramic balls and bearings. CE/UL certified, 100K+ cycle life, free samples, 11+ years OEM experience.",
    },
  ],
});
</script>

<template>
  <div>
    <header class="hero">
      <div class="wrap">
        <div>
          <div class="hero-eyebrow">
            CE / UL / ROHS · CHINA MANUFACTURER · OEM SINCE 2014
          </div>
          <h1>Five Ceramics.<br /><span class="accent">One Factory.</span></h1>
          <p class="hero-sub">
            Direct manufacturer of silicon nitride, alumina, zirconia, silicon
            carbide and aluminum nitride components. Heating elements, balls,
            bearings, structural parts, custom geometries. Trusted by
            <b
              >180+ OEM brands across heating, semiconductor, and industrial
              precision</b
            >.
          </p>
          <div class="hero-ctas">
            <a class="btn-primary" href="/contact">Request Free Sample →</a>
            <a class="btn-ghost" href="/products">View Catalog</a>
          </div>
          <div class="hero-stats">
            <div v-for="stat in heroStats" :key="stat.lbl" class="hero-stat">
              <div
                class="num"
                :style="stat.nowrap ? 'white-space: nowrap;' : undefined"
              >
                {{ stat.num }}
              </div>
              <div class="lbl">{{ stat.lbl }}</div>
            </div>
          </div>
        </div>
        <div>
          <div class="spec-card">
            <div class="sc-img">
              <div class="sc-tag">CN-300 SERIES</div>
              <div class="sc-live">FACTORY TEST</div>
              <div class="sc-rod"></div>
            </div>
            <div class="sc-title">Silicon Nitride Igniter</div>
            <div class="sc-sku">MODEL · CN-300 · HSI</div>
            <div class="sc-specs">
              <div
                v-for="spec in specCardSpecs"
                :key="spec.label"
                class="sc-spec"
              >
                <div class="l">{{ spec.label }}</div>
                <div class="v">{{ spec.value }}</div>
              </div>
            </div>
            <div class="sc-cta">
              <a class="pri" href="/materials#silicon-nitride">Datasheet</a>
              <a class="sec" href="/contact">Quote Now</a>
            </div>
          </div>
        </div>
      </div>
      <div class="hero-stripe"></div>
    </header>

    <div class="cert-strip">
      <div class="wrap">
        <div class="cs-label">CERTIFICATIONS & STANDARDS</div>
        <div class="cs-badges">
          <span v-for="cert in certifications" :key="cert">{{ cert }}</span>
        </div>
      </div>
    </div>

    <section class="entry-section">
      <div class="wrap">
        <div class="entry-head">
          <div class="entry-eyebrow">Find what you need · 3 ways</div>
          <h2>How would you like to <span class="accent">explore</span>?</h2>
          <p class="entry-lead">
            Three entry points to our catalog — pick the one that matches how
            your team buys. All three lead to the same engineering team and the
            same factory floor.
          </p>
        </div>
        <div class="entry-grid">
          <NuxtLink
            v-for="card in entryCards"
            :key="card.href"
            :to="card.href"
            class="entry-card"
          >
            <div class="entry-card-bar" />
            <div class="entry-icon">{{ card.icon }}</div>
            <div class="entry-card-eyebrow">{{ card.eyebrow }}</div>
            <h3>{{ card.title }}</h3>
            <p class="entry-card-desc">{{ card.desc }}</p>
            <div class="entry-card-link">
              <span>{{ card.linkMain }}</span>
              <span>{{ card.linkSub }}</span>
            </div>
          </NuxtLink>
        </div>
      </div>
    </section>

    <section>
      <div class="wrap">
        <div class="sec-head">
          <div>
            <div class="sec-num">01 · OUR CATALOG</div>
            <h2>What We <span class="accent">Manufacture</span>.</h2>
          </div>
          <a class="sec-link" href="/products">See Full Catalog →</a>
        </div>
        <div class="apps-grid">
          <div v-for="item in catalogItems" :key="item.title" class="app-card">
            <div class="ac-icon-bar" />
            <div class="ac-emoji">{{ item.emoji }}</div>
            <div class="ac-title">{{ item.title }}</div>
            <div class="ac-desc">{{ item.desc }}</div>
            <div class="ac-meta">{{ item.meta }}</div>
          </div>
        </div>
      </div>
    </section>

    <section class="spotlight">
      <div class="wrap">
        <div class="spot-grid">
          <div>
            <div class="spot-eyebrow">
              ★ FLAGSHIP MATERIAL · SILICON NITRIDE
            </div>
            <h3>
              Si₃N₄ proves us.
              <span class="accent">The other four scale us.</span>
            </h3>
            <div class="spot-lead">
              Our silicon nitride hot surface igniters are tested to 100,000+
              ignition cycles — that's 5× the industry baseline. The same Si₃N₄
              formulations also drive bearings, structural parts and wear
              components. And the same vertical integration goes for Al₂O₃,
              ZrO₂, SiC, and AlN.
            </div>
            <a class="btn-primary" href="/materials">Explore 7 Materials →</a>
          </div>
          <div>
            <div class="spot-stats">
              <div
                v-for="stat in spotlightStats"
                :key="stat.value"
                class="ss-card"
              >
                <div class="v">{{ stat.value }}</div>
                <div class="l">{{ stat.label }}</div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="testimonials">
      <div class="wrap">
        <div class="testim-head">
          <div>
            <div class="sec-num">02 · OEM PARTNERS SPEAK</div>
            <h2>What our customers <span class="accent">say</span>.</h2>
          </div>
          <a class="sec-link" href="/applications">See All Case Studies →</a>
        </div>
        <div class="testim-grid">
          <div
            v-for="item in testimonials"
            :key="item.name"
            class="testim-card"
          >
            <div class="testim-stars">★★★★★</div>
            <p class="testim-quote">{{ item.quote }}</p>
            <div class="testim-attr">
              <div class="testim-avatar">{{ item.avatar }}</div>
              <div>
                <div class="testim-name">{{ item.name }}</div>
                <div class="testim-role">
                  {{ item.role }}<br />{{ item.company }}
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="resources-section">
      <div class="wrap">
        <div class="sec-head">
          <div>
            <div class="sec-num">03 · ENGINEERING DESK</div>
            <h2>Technical <span class="accent">Resources</span>.</h2>
          </div>
          <a class="sec-link" href="/resources">ALL ARTICLES →</a>
        </div>
        <div class="res-grid">
          <NuxtLink
            v-for="card in resourceCards"
            :key="card.title"
            :to="card.href"
            class="res-card"
          >
            <div class="res-tag">{{ card.tag }}</div>
            <div class="res-title">{{ card.title }}</div>
            <div class="res-excerpt">{{ card.excerpt }}</div>
          </NuxtLink>
        </div>
      </div>
    </section>

    <section class="techman">
      <div class="wrap">
        <div class="techman-head">
          <div>
            <div class="techman-eyebrow">04 · REFERENCE LIBRARY</div>
            <h2>
              The <span class="accent">technical reference manual</span> our
              engineers use.
            </h2>
            <p class="techman-lead">
              Datasheets, material guides, design notes, and lot certs — the
              full reference library is one click from your desk. PDF and
              email-ready, no signup required.
            </p>
          </div>
          <a class="techman-link" href="/resources">Open Full Library →</a>
        </div>
        <div class="techman-grid">
          <NuxtLink
            v-for="card in techmanCards"
            :key="card.title"
            to="/resources"
            class="techman-card"
          >
            <div class="techman-icon">{{ card.icon }}</div>
            <div class="techman-tag">{{ card.tag }}</div>
            <h4>{{ card.title }}</h4>
            <div class="techman-meta">
              <span>{{ card.meta }}</span>
              <span class="techman-dl">{{ card.action }}</span>
            </div>
          </NuxtLink>
        </div>
      </div>
    </section>

    <section class="quote-band">
      <div class="wrap">
        <div>
          <div class="big-quote">
            "Field failure dropped <span class="accent">38%</span> in year one.
            Their engineers reply within 12 hours."
          </div>
          <div class="quote-attr">
            — Engineering Director · Italian Pellet Stove OEM · 180,000 units/yr
          </div>
        </div>
        <div class="quote-outcomes">
          <div class="qo-grid">
            <div v-for="outcome in quoteOutcomes" :key="outcome.lbl">
              <div class="qo-num">{{ outcome.num }}</div>
              <div class="qo-lbl">{{ outcome.lbl }}</div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="contact-section">
      <div class="wrap">
        <div class="contact-inner">
          <!-- Left: value prop -->
          <div class="contact-left">
            <div>
              <div class="sec-num">05 · GET A QUOTE</div>
              <h2 style="margin-top: 12px">
                Get a Quote.<br /><span class="accent">30 Seconds.</span>
              </h2>
            </div>
            <div class="contact-promise">
              <div
                v-for="(promise, i) in contactPromises"
                :key="i"
                class="promise-item"
              >
                <div class="promise-dot" />
                <div class="promise-text">
                  <strong>{{ promise.strong }}</strong
                  >{{ promise.text }}
                </div>
              </div>
            </div>
            <div
              style="
                padding-top: 8px;
                border-top: 1px solid rgba(255, 255, 255, 0.12);
              "
            >
              <div
                style="
                  font-family: var(--mono);
                  font-size: 12px;
                  color: rgba(255, 255, 255, 0.55);
                  letter-spacing: 0.06em;
                  margin-bottom: 6px;
                "
              >
                OR REACH US DIRECTLY
              </div>
              <div
                style="
                  font-family: var(--mono);
                  font-size: 13px;
                  color: var(--gold);
                  letter-spacing: 0.04em;
                "
              >
                {{ email }}
              </div>
              <div
                style="
                  font-family: var(--mono);
                  font-size: 13px;
                  color: var(--gold);
                  letter-spacing: 0.04em;
                  margin-top: 4px;
                "
              >
                {{ phone }} · WhatsApp / WeChat
              </div>
            </div>
          </div>

          <!-- Right: form -->
          <div class="contact-right">
            <div class="contact-eyebrow">Quick Quote Form</div>
            <h3>Tell us what you need</h3>
            <QuoteInquiryForm
              variant="homepage"
              submit-label="Request Quote + Free Sample →"
              message-label="Requirements / Notes"
              message-placeholder="Quantity, voltage, dimensions, certifications needed, or paste your drawing reference…"
            />
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<style>
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
  --ok: #1e8a4c;
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
  overflow: visible;
}

/* Topbar + nav styles live in ~/assets/css/chrome.css (AppHeader) */

/* Hero */
.hero {
  background: linear-gradient(135deg, var(--navy) 0%, var(--navy-2) 100%);
  color: #fff;
  padding: 70px 0 90px;
  position: relative;
  overflow: hidden;
}
.hero-stripe {
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  height: 6px;
  background: linear-gradient(
    90deg,
    var(--orange) 0%,
    var(--gold) 50%,
    var(--orange) 100%
  );
}
.hero .wrap {
  display: grid;
  grid-template-columns: 1.2fr 1fr;
  gap: 60px;
  align-items: center;
  position: relative;
}
.hero-eyebrow {
  display: inline-block;
  background: var(--orange);
  color: #fff;
  font-family: var(--mono);
  font-size: 11px;
  letter-spacing: 0.15em;
  padding: 8px 14px;
  margin-bottom: 28px;
  text-transform: uppercase;
  font-weight: 500;
}
h1 {
  font-family: var(--cond);
  font-size: 78px;
  line-height: 0.95;
  font-weight: 800;
  letter-spacing: -0.02em;
  margin-bottom: 24px;
}
h1 .accent {
  color: var(--gold);
}
.hero-sub {
  font-size: 18px;
  color: rgba(255, 255, 255, 0.82);
  line-height: 1.55;
  max-width: 540px;
  margin-bottom: 32px;
}
.hero-sub b {
  font-weight: 700;
  color: var(--gold-soft);
}
.hero-ctas {
  display: flex;
  gap: 14px;
  margin-bottom: 42px;
}
.btn-primary {
  background: var(--orange);
  color: #fff;
  padding: 16px 30px;
  font-weight: 800;
  font-size: 14.5px;
  letter-spacing: 0.2px;
  border: none;
  cursor: pointer;
  transition: background 0.15s;
  display: inline-block;
}
.btn-primary:hover {
  background: var(--orange-deep);
}
.btn-ghost {
  background: transparent;
  color: #fff;
  padding: 16px 28px;
  font-weight: 700;
  font-size: 14.5px;
  letter-spacing: 0.2px;
  border: 2px solid rgba(255, 255, 255, 0.4);
  cursor: pointer;
  display: inline-block;
}
.btn-ghost:hover {
  border-color: var(--gold);
  color: var(--gold);
}
.hero-stats {
  display: flex;
  gap: 50px;
  flex-wrap: wrap;
}
.hero-stat .num {
  font-family: var(--cond);
  font-size: 56px;
  font-weight: 800;
  line-height: 1;
  color: var(--gold);
}
.hero-stat .lbl {
  font-family: var(--mono);
  font-size: 11px;
  letter-spacing: 0.13em;
  color: rgba(255, 255, 255, 0.7);
  margin-top: 8px;
  text-transform: uppercase;
}

/* Hero spec card */
.spec-card {
  background: #fff;
  color: var(--ink);
  border-top: 4px solid var(--orange);
  padding: 32px;
  box-shadow: 0 30px 60px -20px rgba(0, 0, 0, 0.4);
  max-width: 440px;
  margin-left: auto;
}
.sc-img {
  background: linear-gradient(135deg, var(--navy) 0%, #061730 100%);
  height: 200px;
  margin: -32px -32px 24px;
  position: relative;
  display: flex;
  align-items: center;
  justify-content: center;
}
.sc-rod {
  width: 75%;
  height: 22px;
  background: linear-gradient(
    90deg,
    var(--orange) 0%,
    var(--gold) 50%,
    var(--orange) 100%
  );
  border-radius: 11px;
  box-shadow: 0 0 80px rgba(255, 140, 0, 0.5);
}
.sc-tag {
  position: absolute;
  top: 14px;
  left: 14px;
  font-family: var(--mono);
  font-size: 10px;
  letter-spacing: 0.15em;
  color: var(--gold);
  padding: 4px 10px;
  background: rgba(0, 0, 0, 0.4);
}
.sc-live {
  position: absolute;
  top: 14px;
  right: 14px;
  font-family: var(--mono);
  font-size: 10px;
  letter-spacing: 0.13em;
  color: var(--gold-soft);
  display: flex;
  align-items: center;
  gap: 6px;
}
.sc-live::before {
  content: "";
  width: 6px;
  height: 6px;
  background: var(--gold-soft);
  border-radius: 50%;
}
.sc-title {
  font-family: var(--cond);
  font-size: 28px;
  font-weight: 700;
  color: var(--navy);
  margin-bottom: 4px;
  letter-spacing: -0.01em;
}
.sc-sku {
  font-family: var(--mono);
  font-size: 10.5px;
  color: var(--ink-faint);
  margin-bottom: 18px;
  letter-spacing: 0.1em;
}
.sc-specs {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 10px;
  margin-bottom: 18px;
  padding-bottom: 18px;
  border-bottom: 1px solid var(--line);
}
.sc-spec .l {
  font-family: var(--mono);
  font-size: 10px;
  letter-spacing: 0.1em;
  color: var(--ink-faint);
  margin-bottom: 3px;
  text-transform: uppercase;
}
.sc-spec .v {
  font-family: var(--cond);
  font-size: 22px;
  font-weight: 700;
  color: var(--navy);
}
.sc-cta {
  display: flex;
  gap: 8px;
}
.sc-cta a {
  flex: 1;
  padding: 12px;
  font-size: 12.5px;
  font-weight: 800;
  text-align: center;
  letter-spacing: 0.2px;
}
.sc-cta .pri {
  background: var(--navy);
  color: #fff;
}
.sc-cta .sec {
  background: var(--bg-soft);
  color: var(--navy);
  border: 1px solid var(--line-strong);
}

/* Cert strip */
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

/* Sections */
section {
  padding: 80px 0;
}
.sec-head {
  display: flex;
  justify-content: space-between;
  align-items: end;
  margin-bottom: 50px;
}

.sec-num {
  font-family: var(--mono);
  font-size: 11.5px;
  letter-spacing: 0.16em;
  color: var(--orange);
  margin-bottom: 12px;
  text-transform: uppercase;
}
h2 {
  font-family: var(--cond);
  font-size: 54px;
  font-weight: 700;
  line-height: 1;
  letter-spacing: -0.02em;
  color: var(--navy);
}
h2 .accent {
  color: var(--orange);
}
.sec-link {
  font-family: var(--cond);
  font-size: 16px;
  letter-spacing: 0.06em;
  color: var(--orange);
  font-weight: 700;
  padding-bottom: 4px;
  border-bottom: 2px solid var(--orange);
  white-space: nowrap;
}

/* Industries grid */
.apps-grid {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 16px;
}
.app-card {
  background: #fff;
  border: 2px solid var(--line);
  padding: 26px 22px;
  transition: all 0.18s;
  cursor: pointer;
}
.app-card:hover {
  border-color: var(--orange);
  transform: translateY(-3px);
  box-shadow: 0 14px 32px -18px rgba(10, 38, 71, 0.18);
}
.ac-icon-bar {
  width: 52px;
  height: 4px;
  background: var(--orange);
  margin-bottom: 18px;
}
.ac-emoji {
  font-size: 28px;
  margin-bottom: 12px;
}
.ac-title {
  font-family: var(--cond);
  font-size: 24px;
  font-weight: 700;
  margin-bottom: 8px;
  color: var(--navy);
  letter-spacing: -0.01em;
  line-height: 1.05;
}
.ac-desc {
  font-size: 13.5px;
  color: var(--ink-soft);
  line-height: 1.55;
  margin-bottom: 14px;
  min-height: 64px;
}
.ac-meta {
  font-family: var(--mono);
  font-size: 11px;
  letter-spacing: 0.1em;
  color: var(--orange);
  text-transform: uppercase;
  font-weight: 500;
}

/* Spotlight band */
.spotlight {
  background: var(--navy);
  color: #fff;
  padding: 80px 0;
  position: relative;
  overflow: hidden;
}
.spotlight::before {
  content: "";
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  height: 6px;
  background: linear-gradient(
    90deg,
    var(--orange) 0%,
    var(--gold) 50%,
    var(--orange) 100%
  );
}
.spot-grid {
  display: grid;
  grid-template-columns: 1fr 1.2fr;
  gap: 60px;
  align-items: center;
}
.spot-eyebrow {
  display: inline-block;
  background: var(--orange);
  color: #fff;
  font-family: var(--mono);
  font-size: 11px;
  letter-spacing: 0.13em;
  padding: 6px 12px;
  margin-bottom: 22px;
  text-transform: uppercase;
}
.spot-grid h3 {
  font-family: var(--cond);
  font-size: 48px;
  font-weight: 800;
  line-height: 0.98;
  letter-spacing: -0.02em;
  margin-bottom: 22px;
}
.spot-grid h3 .accent {
  color: var(--gold);
}
.spot-lead {
  font-size: 15.5px;
  color: rgba(255, 255, 255, 0.78);
  line-height: 1.7;
  margin-bottom: 30px;
}
.spot-stats {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 14px;
  margin-bottom: 30px;
}
.ss-card {
  background: rgba(255, 255, 255, 0.06);
  border-left: 3px solid var(--orange);
  padding: 16px 18px;
}
.ss-card .v {
  font-family: var(--cond);
  font-size: 32px;
  font-weight: 800;
  color: var(--gold);
  letter-spacing: -0.01em;
  line-height: 1.05;
}
.ss-card .l {
  font-family: var(--mono);
  font-size: 11px;
  letter-spacing: 0.1em;
  color: rgba(255, 255, 255, 0.6);
  margin-top: 4px;
  text-transform: uppercase;
}

/* ===== FIX 1: Resources — res-card must be display:block ===== */
.resources-section {
  background: var(--bg-soft);
}
.res-grid {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 20px;
}
.res-card {
  display: block;
  background: #fff;
  border-top: 4px solid var(--orange);
  padding: 28px;
  cursor: pointer;
  transition:
    transform 0.18s,
    box-shadow 0.18s;
}
.res-card:hover {
  transform: translateY(-3px);
  box-shadow: 0 16px 32px -16px rgba(10, 38, 71, 0.15);
}
.res-tag {
  font-family: var(--mono);
  font-size: 11px;
  letter-spacing: 0.13em;
  color: var(--orange);
  margin-bottom: 14px;
  text-transform: uppercase;
}
.res-title {
  font-family: var(--cond);
  font-size: 24px;
  font-weight: 700;
  line-height: 1.1;
  margin-bottom: 12px;
  letter-spacing: -0.01em;
  color: var(--navy);
}
.res-excerpt {
  font-size: 13.5px;
  color: var(--ink-soft);
  line-height: 1.65;
}

/* Quote band */
.quote-band {
  background: linear-gradient(135deg, var(--navy) 0%, var(--navy-2) 100%);
  color: #fff;
  padding: 80px 0;
  position: relative;
}
.quote-band::before {
  content: '"';
  position: absolute;
  top: 30px;
  left: 50px;
  font-family: var(--cond);
  font-size: 200px;
  color: rgba(240, 165, 0, 0.18);
  line-height: 1;
  font-weight: 700;
}
.quote-band .wrap {
  display: grid;
  grid-template-columns: 1.5fr 1fr;
  gap: 60px;
  align-items: center;
  position: relative;
}
.big-quote {
  font-family: var(--cond);
  font-size: 38px;
  font-weight: 700;
  line-height: 1.15;
  margin-bottom: 22px;
  letter-spacing: -0.02em;
}
.big-quote .accent {
  color: var(--gold);
}
.quote-attr {
  font-family: var(--mono);
  font-size: 12.5px;
  letter-spacing: 0.08em;
  color: rgba(255, 255, 255, 0.55);
  text-transform: uppercase;
}
.quote-outcomes {
  background: rgba(0, 0, 0, 0.2);
  border-top: 4px solid var(--orange);
  padding: 28px;
}
.qo-grid {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 22px;
}
.qo-num {
  font-family: var(--cond);
  font-size: 42px;
  font-weight: 800;
  color: var(--gold);
  letter-spacing: -0.02em;
  line-height: 1;
}
.qo-lbl {
  font-family: var(--mono);
  font-size: 10.5px;
  letter-spacing: 0.1em;
  color: rgba(255, 255, 255, 0.55);
  margin-top: 6px;
  text-transform: uppercase;
}

/* RFQ section */
.rfq-section {
  padding: 80px 0;
  background: #fff;
}
.rfq-grid {
  display: grid;
  grid-template-columns: 1fr 1fr 1fr;
  gap: 20px;
}
.rfq-card {
  background: var(--bg-soft);
  border: 2px solid var(--line);
  padding: 32px 28px;
  transition: all 0.18s;
  cursor: pointer;
}
.rfq-card:hover {
  border-color: var(--orange);
  transform: translateY(-3px);
}
.rfq-card.primary {
  background: var(--navy);
  color: #fff;
  border-color: var(--navy);
}
.rfq-card.primary:hover {
  background: var(--navy-2);
  border-color: var(--orange);
}
.rfq-num {
  font-family: var(--cond);
  font-size: 42px;
  font-weight: 800;
  color: var(--orange);
  letter-spacing: -0.02em;
  line-height: 1;
  margin-bottom: 14px;
}
.rfq-card.primary .rfq-num {
  color: var(--gold);
}
.rfq-title {
  font-family: var(--cond);
  font-size: 26px;
  font-weight: 700;
  margin-bottom: 10px;
  color: var(--navy);
  letter-spacing: -0.01em;
}
.rfq-card.primary .rfq-title {
  color: #fff;
}
.rfq-desc {
  font-size: 13.5px;
  line-height: 1.65;
  margin-bottom: 18px;
  color: var(--ink-soft);
}
.rfq-card.primary .rfq-desc {
  color: rgba(255, 255, 255, 0.75);
}
.rfq-btn {
  background: var(--orange);
  color: #fff;
  padding: 12px 18px;
  font-weight: 800;
  font-size: 12.5px;
  text-align: center;
  letter-spacing: 0.2px;
  display: block;
  transition: background 0.15s;
}
.rfq-btn:hover {
  background: var(--orange-deep);
}
.rfq-btn.out {
  background: transparent;
  color: var(--navy);
  border: 2px solid var(--navy);
}
.rfq-card.primary .rfq-btn.out {
  color: #fff;
  border-color: #fff;
}

/* Footer */
footer {
  background: var(--navy);
  color: #c5d4e6;
  padding: 60px 0 24px;
}
.foot-grid {
  display: grid;
  grid-template-columns: 1.5fr 1fr 1fr 1fr;
  gap: 50px;
  padding-bottom: 36px;
  border-bottom: 1px solid rgba(255, 255, 255, 0.1);
}
.foot-col h5 {
  font-family: var(--cond);
  font-size: 16px;
  letter-spacing: 0.05em;
  color: var(--gold);
  text-transform: uppercase;
  margin-bottom: 18px;
  font-weight: 700;
}
.foot-col a {
  display: block;
  font-size: 13.5px;
  color: #c5d4e6;
  margin-bottom: 11px;
}
.foot-col a:hover {
  color: var(--gold);
}
.foot-bottom {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding-top: 26px;
  font-family: var(--mono);
  font-size: 11.5px;
  color: rgba(255, 255, 255, 0.4);
}
.fb-right {
  display: flex;
  gap: 22px;
}

/* Entry Cards */
.entry-section {
  background: var(--bg-soft);
  padding: 80px 0;
  border-bottom: 1px solid var(--line);
}
.entry-head {
  text-align: center;
  margin-bottom: 50px;
}
.entry-eyebrow {
  font-family: var(--mono);
  font-size: 11.5px;
  letter-spacing: 0.2em;
  color: var(--orange);
  text-transform: uppercase;
  font-weight: 500;
  margin-bottom: 14px;
}
.entry-section h2 {
  font-family: var(--cond);
  font-size: 48px;
  font-weight: 800;
  line-height: 1.05;
  letter-spacing: -0.02em;
  color: var(--ink);
}
.entry-section h2 .accent {
  color: var(--orange);
}
.entry-lead {
  color: var(--ink-soft);
  font-size: 16px;
  margin-top: 14px;
  max-width: 620px;
  margin-left: auto;
  margin-right: auto;
}
.entry-grid {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 24px;
}
.entry-card {
  display: flex;
  flex-direction: column;
  gap: 16px;
  background: #fff;
  border: 1px solid var(--line);
  padding: 36px 32px;
  position: relative;
  transition:
    transform 0.15s,
    border-color 0.15s,
    box-shadow 0.15s;
  min-height: 280px;
}
.entry-card:hover {
  transform: translateY(-4px);
  border-color: var(--orange);
  box-shadow: 0 20px 40px -20px rgba(10, 38, 71, 0.15);
}
.entry-card-bar {
  position: absolute;
  top: -1px;
  left: 32px;
  width: 60px;
  height: 4px;
  background: var(--orange);
}
.entry-icon {
  font-size: 32px;
  margin-bottom: 4px;
}
.entry-card-eyebrow {
  font-family: var(--mono);
  font-size: 10.5px;
  letter-spacing: 0.18em;
  color: var(--orange);
  text-transform: uppercase;
  font-weight: 600;
}
.entry-card h3 {
  font-family: var(--cond);
  font-size: 28px;
  font-weight: 700;
  color: var(--navy);
  letter-spacing: -0.01em;
  line-height: 1.1;
}
.entry-card-desc {
  font-size: 14.5px;
  color: var(--ink-soft);
  line-height: 1.6;
  flex: 1;
}
.entry-card-link {
  font-family: var(--mono);
  font-size: 12px;
  letter-spacing: 0.1em;
  color: var(--orange);
  font-weight: 700;
  text-transform: uppercase;
  border-top: 1px solid var(--line);
  padding-top: 16px;
  display: flex;
  justify-content: space-between;
  align-items: center;
}
.entry-card-link span:last-child {
  color: var(--ink-faint);
  font-weight: 400;
  letter-spacing: 0.05em;
}

/* Customer Testimonials */
.testimonials {
  padding: 80px 0;
  background: #fff;
}
.testim-head {
  display: flex;
  justify-content: space-between;
  align-items: flex-end;
  margin-bottom: 44px;
  gap: 40px;
}
.testim-grid {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 24px;
}
.testim-card {
  background: var(--bg-soft);
  border-left: 3px solid var(--orange);
  padding: 30px 28px;
  display: flex;
  flex-direction: column;
  gap: 18px;
}
.testim-stars {
  font-family: var(--mono);
  font-size: 14px;
  color: var(--orange);
  letter-spacing: 2px;
}
.testim-quote {
  font-size: 15px;
  color: var(--ink);
  line-height: 1.6;
  font-weight: 500;
}
.testim-quote::before {
  content: '"';
  font-family: var(--cond);
  font-size: 38px;
  line-height: 0.6;
  color: var(--orange);
  font-weight: 800;
  margin-right: 4px;
  vertical-align: -8px;
}
.testim-attr {
  display: flex;
  gap: 14px;
  align-items: center;
  padding-top: 14px;
  border-top: 1px solid var(--line);
  margin-top: auto;
}
.testim-avatar {
  width: 44px;
  height: 44px;
  background: var(--navy);
  color: var(--gold);
  font-family: var(--cond);
  font-weight: 700;
  font-size: 18px;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-shrink: 0;
  letter-spacing: 0.5px;
}
.testim-name {
  font-family: var(--cond);
  font-size: 16px;
  font-weight: 700;
  color: var(--navy);
  line-height: 1.2;
}
.testim-role {
  font-family: var(--mono);
  font-size: 10.5px;
  color: var(--ink-faint);
  letter-spacing: 0.05em;
  margin-top: 3px;
  line-height: 1.3;
}

/* ===== FIX 2: Technical Reference Manual — constrain h2 width, fix flex alignment ===== */
.techman {
  background: linear-gradient(135deg, var(--navy) 0%, var(--navy-2) 100%);
  color: #fff;
  padding: 90px 0;
  position: relative;
  overflow: hidden;
}
.techman::before {
  content: "";
  position: absolute;
  top: 0;
  right: 0;
  width: 280px;
  height: 280px;
  background: radial-gradient(
    circle,
    rgba(240, 165, 0, 0.15) 0%,
    transparent 70%
  );
  pointer-events: none;
}
.techman .wrap {
  position: relative;
}
.techman-head {
  display: flex;
  justify-content: space-between;
  align-items: flex-start;
  margin-bottom: 50px;
  gap: 40px;
}
.techman-head > div {
  flex: 1;
  max-width: 700px;
}
.techman-eyebrow {
  font-family: var(--mono);
  font-size: 11.5px;
  letter-spacing: 0.2em;
  color: var(--gold);
  text-transform: uppercase;
  font-weight: 500;
  margin-bottom: 14px;
}
.techman h2 {
  font-family: var(--cond);
  font-size: 46px;
  font-weight: 800;
  line-height: 1.05;
  letter-spacing: -0.02em;
  color: #fff;
}
.techman h2 .accent {
  color: var(--gold);
}
.techman-lead {
  color: rgba(255, 255, 255, 0.75);
  font-size: 15px;
  margin-top: 14px;
  max-width: 580px;
}
.techman-link {
  font-family: var(--mono);
  font-size: 13px;
  letter-spacing: 0.1em;
  color: var(--gold);
  font-weight: 600;
  text-transform: uppercase;
  border-bottom: 2px solid var(--gold);
  padding-bottom: 4px;
  white-space: nowrap;
  flex-shrink: 0;
  align-self: flex-end;
  margin-bottom: 6px;
}
.techman-link:hover {
  color: #fff;
  border-bottom-color: #fff;
}
.techman-grid {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 20px;
}
.techman-card {
  display: flex;
  flex-direction: column;
  gap: 14px;
  background: rgba(255, 255, 255, 0.05);
  border: 1px solid rgba(255, 255, 255, 0.1);
  padding: 28px 24px;
  transition:
    background 0.15s,
    border-color 0.15s,
    transform 0.15s;
  cursor: pointer;
}
.techman-card:hover {
  background: rgba(255, 255, 255, 0.09);
  border-color: var(--gold);
  transform: translateY(-3px);
}
.techman-icon {
  font-size: 28px;
}
.techman-tag {
  font-family: var(--mono);
  font-size: 10px;
  letter-spacing: 0.15em;
  color: var(--gold);
  text-transform: uppercase;
  font-weight: 600;
}
.techman-card h4 {
  font-family: var(--cond);
  font-size: 19px;
  font-weight: 700;
  color: #fff;
  line-height: 1.2;
  letter-spacing: -0.005em;
}
.techman-meta {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding-top: 14px;
  border-top: 1px solid rgba(255, 255, 255, 0.1);
  margin-top: auto;
  font-family: var(--mono);
  font-size: 11px;
  color: rgba(255, 255, 255, 0.55);
  letter-spacing: 0.05em;
}
.techman-dl {
  color: var(--gold);
  font-weight: 600;
}

@media (max-width: 1100px) {
  .hero .wrap {
    grid-template-columns: 1fr;
    gap: 50px;
  }
  .spec-card {
    max-width: 100%;
    margin: 0 auto;
  }
  h1 {
    font-size: 56px;
  }
  .apps-grid {
    grid-template-columns: repeat(2, 1fr);
  }
  .spot-grid,
  .quote-band .wrap,
  .rfq-grid {
    grid-template-columns: 1fr;
  }
  .foot-grid {
    grid-template-columns: 1fr 1fr;
    gap: 36px;
  }
  .entry-grid {
    grid-template-columns: 1fr;
  }
  .testim-grid {
    grid-template-columns: 1fr;
  }
  .techman-grid {
    grid-template-columns: 1fr 1fr;
  }
  .techman-head {
    flex-direction: column;
    align-items: flex-start;
  }
}
@media (max-width: 680px) {
  .wrap {
    padding: 0 22px;
  }
  h1 {
    font-size: 38px;
  }
  h2 {
    font-size: 36px;
  }
  .techman h2 {
    font-size: 32px;
  }
  .hero {
    padding: 50px 0 60px;
  }
  section {
    padding: 60px 0;
  }
  .apps-grid,
  .res-grid {
    grid-template-columns: 1fr;
  }
}

.contact-section {
  padding: 80px 0;
  background: #fff;
}
.contact-inner {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 0;
  border: 2px solid var(--navy);
  overflow: hidden;
}
.contact-left {
  background: var(--navy);
  color: #fff;
  padding: 56px 52px;
  display: flex;
  flex-direction: column;
  gap: 28px;
}
.contact-left .sec-num {
  color: var(--gold);
  margin-bottom: 0;
}
.contact-left h2 {
  color: #fff;
  font-size: 48px;
}
.contact-left h2 .accent {
  color: var(--gold);
}
.contact-promise {
  display: flex;
  flex-direction: column;
  gap: 14px;
}
.promise-item {
  display: flex;
  align-items: flex-start;
  gap: 14px;
}
.promise-dot {
  width: 8px;
  height: 8px;
  border-radius: 50%;
  background: var(--orange);
  flex-shrink: 0;
  margin-top: 7px;
}
.promise-text {
  font-size: 15px;
  color: rgba(255, 255, 255, 0.82);
  line-height: 1.55;
}
.promise-text strong {
  color: #fff;
  font-weight: 700;
}

.contact-right {
  background: var(--bg-soft);
  padding: 56px 52px;
  display: flex;
  flex-direction: column;
  gap: 20px;
}
.contact-right .contact-eyebrow {
  font-family: var(--mono);
  font-size: 11px;
  letter-spacing: 0.18em;
  color: var(--orange);
  text-transform: uppercase;
  font-weight: 600;
}
.contact-right h3 {
  font-family: var(--cond);
  font-size: 28px;
  font-weight: 700;
  color: var(--navy);
  letter-spacing: -0.01em;
  line-height: 1.1;
}
.contact-fields {
  display: flex;
  flex-direction: column;
  gap: 12px;
}
.contact-field {
  display: flex;
  flex-direction: column;
  gap: 6px;
}
.contact-field label {
  font-family: var(--mono);
  font-size: 10.5px;
  letter-spacing: 0.12em;
  color: var(--ink-faint);
  text-transform: uppercase;
}
.contact-field input,
.contact-field select,
.contact-field textarea {
  background: #fff;
  border: 1.5px solid var(--line-strong);
  padding: 11px 14px;
  font-family: var(--sans);
  font-size: 14.5px;
  color: var(--ink);
  outline: none;
  transition: border-color 0.15s;
  width: 100%;
  border-radius: 0;
}
.contact-field input:focus,
.contact-field select:focus,
.contact-field textarea:focus {
  border-color: var(--orange);
}
.contact-field textarea {
  resize: vertical;
  min-height: 80px;
}
.contact-row {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 12px;
}
.contact-submit {
  background: var(--orange);
  color: #fff;
  padding: 16px;
  font-weight: 800;
  font-size: 14px;
  letter-spacing: 0.3px;
  border: none;
  cursor: pointer;
  transition: background 0.15s;
  text-align: center;
  display: block;
  width: 100%;
  font-family: var(--sans);
}
.contact-submit:hover {
  background: var(--orange-deep);
}
.contact-fine {
  font-family: var(--mono);
  font-size: 10.5px;
  color: var(--ink-faint);
  letter-spacing: 0.05em;
  line-height: 1.5;
}

@media (max-width: 900px) {
  .contact-inner {
    grid-template-columns: 1fr;
  }
  .contact-left,
  .contact-right {
    padding: 40px 32px;
  }
  .contact-row {
    grid-template-columns: 1fr;
  }
}

@media screen and (max-width: 768px) {
  .sec-head,
  .testim-head {
    flex-direction: column;
    align-items: center;
    justify-content: center;
  }
}
</style>
