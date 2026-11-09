<style>
  .epi-page *, .epi-page *::before, .epi-page *::after { box-sizing: border-box; margin: 0; padding: 0; }
  .epi-page { font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif; color: #111827; }
  .epi-page .hero { text-align: center; padding: 48px 20px 36px; border-bottom: 1px solid #e5e7eb; margin-bottom: 40px; }
  .epi-page .hero .eyebrow { font-size:.72em; font-weight:700; text-transform:uppercase; letter-spacing:.2em; color:#003087; margin-bottom:14px; }
  .epi-page .hero h3 { font-size:2em; font-weight:800; color:#111827; margin-bottom:12px; line-height:1.2; }
  .epi-page .hero h3 span { background: linear-gradient(135deg,#003087,#2563eb); -webkit-background-clip:text; -webkit-text-fill-color:transparent; background-clip:text; }
  .epi-page .hero p { font-size:.95em; color:#6b7280; max-width:560px; margin:0 auto; line-height:1.6; }
  .epi-page .section-title { font-size:1.15em; font-weight:700; color:#111827; margin: 40px 0 16px; display:flex; align-items:center; gap:8px; }
  .epi-page .section-title::after { content:''; flex:1; height:1px; background:#e5e7eb; margin-left:8px; }
  .epi-page .lead { font-size:.92em; color:#374151; line-height:1.7; margin-bottom:16px; }
  .epi-page .grid-2 { display:grid; grid-template-columns:1fr 1fr; gap:16px; margin-bottom:36px; }
  .epi-page .arch-card { background:#fff; border:1px solid #e5e7eb; border-radius:10px; padding:22px; }
  .epi-page .arch-card .icon { font-size:1.5em; margin-bottom:10px; }
  .epi-page .arch-card .title { font-weight:700; color:#003087; margin-bottom:6px; font-size:.95em; }
  .epi-page .arch-card p { font-size:.83em; color:#4b5563; line-height:1.6; }
  .epi-page .req-box { background:#fff; border:1px solid #e5e7eb; border-radius:10px; overflow:hidden; margin-bottom:36px; }
  .epi-page .req-box .req-header { background:#f0f4ff; padding:12px 20px; font-weight:700; color:#1d4ed8; font-size:.88em; border-bottom:1px solid #e5e7eb; }
  .epi-page .req-item { display:flex; gap:12px; padding:14px 20px; border-bottom:1px solid #f3f4f6; align-items:flex-start; }
  .epi-page .req-item:last-child { border-bottom:none; }
  .epi-page .req-badge { flex-shrink:0; font-size:.68em; font-weight:800; text-transform:uppercase; padding:3px 9px; border-radius:100px; margin-top:2px; }
  .epi-page .req-badge.must { background:#fef2f2; color:#b91c1c; }
  .epi-page .req-badge.should { background:#fefce8; color:#a16207; }
  .epi-page .req-text { font-size:.84em; color:#374151; line-height:1.6; }
  .epi-page .req-text strong { color:#111827; }
  .epi-page .apix-cta { background:linear-gradient(135deg,#eff6ff,#f0fdf4); border:1px solid #bfdbfe; border-radius:12px; padding:28px 32px; display:flex; align-items:center; gap:32px; margin-bottom:40px; flex-wrap:wrap; }
  .epi-page .apix-cta .cta-text { flex:1; min-width:240px; }
  .epi-page .apix-cta .cta-text .ctitle { font-weight:700; color:#111827; font-size:1.05em; margin-bottom:8px; }
  .epi-page .apix-cta .cta-text p { font-size:.86em; color:#374151; line-height:1.6; }
  .epi-page .apix-cta a { display:inline-block; background:#003087; color:#fff; padding:12px 22px; border-radius:8px; font-weight:700; font-size:.88em; text-decoration:none; flex-shrink:0; }
  .epi-page .notice { background:#f9fafb; border:1px solid #e5e7eb; border-radius:8px; padding:16px 20px; font-size:.83em; color:#6b7280; line-height:1.6; margin-bottom:40px; }
  .epi-page .notice strong { color:#374151; }
  .epi-page code { font-family:monospace; font-size:.88em; background:#f0f4ff; color:#2563eb; padding:1px 5px; border-radius:3px; }
</style>

<div class="epi-page">

  <div class="hero">
    <div class="eyebrow">FHIR Servers · FHIR R5</div>
    <h3>A Central Repository for <span>ePIs</span></h3>
    <p>Where ePIs are stored, kept up to date, and made available to the people and systems that need them.</p>
  </div>

  <div class="section-title">What is a FHIR server?</div>
  <p class="lead">A FHIR server is a database with a standard web interface (API). It stores health data as FHIR resources and lets other systems add, find and retrieve that data using the same requests, whichever product is used to run the server.</p>
  <p class="lead">For ePI, its main purpose is to act as a <strong>central repository</strong>: the single, trusted place where the current approved version of each ePI is held, so that patients, healthcare professionals, pharmacies, and other systems all read the same up-to-date product information.</p>

  <div class="section-title">What it does for ePI</div>
  <div class="grid-2">
    <div class="arch-card">
      <div class="icon">🗄️</div>
      <div class="title">Stores ePIs</div>
      <p>Holds each ePI as a <code>Bundle</code> with its <code>Composition</code> and related product resources, in one place.</p>
    </div>
    <div class="arch-card">
      <div class="icon">🕑</div>
      <div class="title">Keeps versions</div>
      <p>Keeps the history of each ePI, so the current version and any earlier version can be retrieved.</p>
    </div>
    <div class="arch-card">
      <div class="icon">🔎</div>
      <div class="title">Makes ePIs easy to find</div>
      <p>Lets users and systems search for an ePI, for example by product name or identifier, and retrieve it. An <a href="build-list.html">ePI List</a> can act as a catalogue of the ePIs held.</p>
    </div>
    <div class="arch-card">
      <div class="icon">✅</div>
      <div class="title">Checks quality</div>
      <p>Checks each ePI against the profiles in this Implementation Guide when it is added, so only well-formed ePIs are published.</p>
    </div>
  </div>

  <div class="section-title">Minimum expectations</div>
  <div class="req-box">
    <div class="req-header">📋 Server Requirements</div>
    <div class="req-item">
      <span class="req-badge must">shall</span>
      <div class="req-text"><strong>Format Support</strong> — <span class="fhir-conformance" id="srv-format">Servers SHALL support both <strong>JSON</strong> and <strong>XML</strong>.</span></div>
    </div>
    <div class="req-item">
      <span class="req-badge should">should</span>
      <div class="req-text"><strong>Profile Validation</strong> — <span class="fhir-conformance" id="srv-validate">Servers SHOULD validate incoming ePIs against the profiles in this Implementation Guide.</span></div>
    </div>
    <div class="req-item">
      <span class="req-badge should">should</span>
      <div class="req-text"><strong>Content Negotiation</strong> — <span class="fhir-conformance" id="srv-content-negotiation">Servers SHOULD support the <code>_format</code> parameter and <code>Accept</code> headers so clients can choose JSON or XML.</span></div>
    </div>
  </div>

  <div class="apix-cta">
    <div class="cta-text">
      <div class="ctitle">APIX Regulatory Workflows and Interactions IG</div>
      <p>This guide defines the <em>content</em> of an ePI. For how ePIs are submitted, versioned and exchanged between systems, refer to the <strong>APIX Regulatory Workflows and Interactions IG</strong>.</p>
    </div>
    <a href="https://github.com/HL7/apix" target="_blank">View the APIX IG →</a>
  </div>

  <div class="notice">
    <strong>Vendor Neutrality:</strong> This Implementation Guide does not endorse specific software vendors or cloud providers. All technical requirements are based on the global HL7 FHIR R5 standard.
  </div>

</div>
