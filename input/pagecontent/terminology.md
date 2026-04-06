<style>
  .term-page *, .term-page *::before, .term-page *::after { box-sizing: border-box; margin: 0; padding: 0; }
  .term-page { font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif; color: #111827; }
  .term-page .hero { text-align: center; padding: 48px 20px 36px; border-bottom: 1px solid #e5e7eb; margin-bottom: 40px; }
  .term-page .hero .eyebrow { font-size:.72em; font-weight:700; text-transform:uppercase; letter-spacing:.2em; color:#003087; margin-bottom:14px; }
  .term-page .hero h1 { font-size:2em; font-weight:800; color:#111827; margin-bottom:12px; line-height:1.2; }
  .term-page .hero h1 span { background: linear-gradient(135deg,#003087,#2563eb); -webkit-background-clip:text; -webkit-text-fill-color:transparent; background-clip:text; }
  .term-page .hero p { font-size:.95em; color:#6b7280; max-width:560px; margin:0 auto; line-height:1.6; }
  .term-page .section-title { font-size:1.1em; font-weight:700; color:#111827; margin: 36px 0 14px; display:flex; align-items:center; gap:8px; }
  .term-page .section-title::after { content:''; flex:1; height:1px; background:#e5e7eb; margin-left:8px; }
  .term-page .intro-grid { display:grid; grid-template-columns:1fr 1fr; gap:14px; margin-bottom:36px; }
  .term-page .intro-card { background:#fff; border:1px solid #e5e7eb; border-radius:10px; padding:20px; }
  .term-page .intro-card .icon { font-size:1.4em; margin-bottom:10px; }
  .term-page .intro-card .ctitle { font-weight:700; color:#003087; margin-bottom:6px; font-size:.92em; }
  .term-page .intro-card p { font-size:.82em; color:#4b5563; line-height:1.6; }
  .term-page .term-grid { display:grid; grid-template-columns:1fr 1fr 1fr; gap:14px; margin-bottom:36px; }
  .term-page .term-card { background:#fff; border:1px solid #e5e7eb; border-radius:10px; padding:20px; display:flex; flex-direction:column; gap:10px; }
  .term-page .term-badge { font-size:.72em; font-weight:800; text-transform:uppercase; letter-spacing:.1em; padding:3px 10px; border-radius:100px; display:inline-block; align-self:flex-start; }
  .term-page .loinc    { background:#eff6ff; color:#1e40af; }
  .term-page .ucum     { background:#ecfdf5; color:#065f46; }
  .term-page .iso639   { background:#fef3c7; color:#92400e; }
  .term-page .iso3166  { background:#fdf4ff; color:#6b21a8; }
  .term-page .edqm     { background:#fff7ed; color:#9a3412; }
  .term-page .meddra   { background:#fef2f2; color:#991b1b; }
  .term-page .term-card .term-name { font-weight:800; color:#111827; font-size:1em; }
  .term-page .term-card p { font-size:.82em; color:#4b5563; line-height:1.55; }
  .term-page .term-card .term-example { font-family:monospace; font-size:.78em; background:#f8fafc; border:1px solid #e5e7eb; border-radius:5px; padding:4px 8px; color:#374151; margin-top:auto; }
  .term-page .harmonization-banner { background: linear-gradient(135deg, #003087 0%, #1d4ed8 100%); border-radius:12px; padding:28px 32px; margin-bottom:36px; color:#fff; display:flex; align-items:flex-start; gap:20px; }
  .term-page .harmonization-banner .hicon { font-size:2em; flex-shrink:0; }
  .term-page .harmonization-banner h3 { font-size:1.05em; font-weight:800; margin-bottom:8px; }
  .term-page .harmonization-banner p { font-size:.85em; color:#bfdbfe; line-height:1.6; }
  .term-page .harmonization-banner strong { color:#fff; }
  .term-page .harmonization-badge { display:inline-flex; align-items:center; gap:6px; background:rgba(255,255,255,.15); border:1px solid rgba(255,255,255,.25); border-radius:100px; padding:4px 12px; font-size:.72em; font-weight:700; margin-top:10px; color:#fff; }
  .term-page .cta-row { background:#fff; border:1px solid #e5e7eb; border-radius:10px; padding:18px 22px; display:flex; align-items:center; justify-content:space-between; }
  .term-page .cta-row .cta-text { font-size:.88em; color:#374151; }
  .term-page .cta-row .cta-text strong { color:#111827; }
  .term-page .cta-btn { display:inline-flex; align-items:center; gap:6px; background:#003087; color:#fff; padding:10px 18px; border-radius:8px; font-weight:700; font-size:.82em; text-decoration:none; }
</style>

<div class="term-page">

  <div class="hero">
    <div class="eyebrow">Technical Details · Code Systems</div>
    <h1>Controlled <span>Terminology</span></h1>
    <p>Standardized code systems make drug label information precise and machine-readable — enabling global interoperability with EHRs, ePrescribing apps, and regulatory systems.</p>
  </div>

  <div class="section-title">Why Controlled Terminology Matters</div>
  <div class="intro-grid">
    <div class="intro-card">
      <div class="icon">🔁</div>
      <div class="ctitle">Interoperability First</div>
      <p>Standardized code systems allow ePI data to be consistently understood and processed by Electronic Health Records (EHRs), ePrescribing apps, and regulatory platforms — without manual translation between jurisdictions.</p>
    </div>
    <div class="intro-card">
      <div class="icon">🩺</div>
      <div class="ctitle">Clinical Precision</div>
      <p>SNOMED CT, ICD, and MedDRA are used for indications, contraindications, and adverse reactions — ensuring clinical content is universally interpreted by medical software globally.</p>
    </div>
  </div>

  <div class="section-title">Key Terminologies Used in ePI</div>
  <div class="term-grid">
    <div class="term-card">
      <span class="term-badge loinc">LOINC</span>
      <div class="term-name">Logical Observation Identifiers</div>
      <p>Document and section codes — SmPC headings, PIL headings, and standard section identifiers across jurisdictions.</p>
      <div class="term-example">e.g. SmPC section code: 34067-9</div>
    </div>
    <div class="term-card">
      <span class="term-badge ucum">UCUM</span>
      <div class="term-name">Unified Code for Units of Measure</div>
      <p>Standardized units of measure for dosages and quantities — ensures "mg", "mL", and "IU" are unambiguous across systems.</p>
      <div class="term-example">e.g. dose unit: mg, mL, IU</div>
    </div>
    <div class="term-card">
      <span class="term-badge iso639">ISO 639-1</span>
      <div class="term-name">Language Codes</div>
      <p>Two-letter language codes used to identify the language of an ePI document and its individual sections.</p>
      <div class="term-example">e.g. "en", "fr", "de", "ja"</div>
    </div>
    <div class="term-card">
      <span class="term-badge iso3166">ISO 3166-1</span>
      <div class="term-name">Country / Jurisdiction Codes</div>
      <p>Two-letter alpha-2 country codes used to identify the regulatory jurisdiction an ePI is authorized in.</p>
      <div class="term-example">e.g. "US", "JP", "DE", "GB"</div>
    </div>
    <div class="term-card">
      <span class="term-badge edqm">EDQM</span>
      <div class="term-name">European Directorate for the Quality of Medicines</div>
      <p>Codes for dose forms, routes of administration, packaging materials, and units of presentation in European regulatory submissions.</p>
      <div class="term-example">e.g. dose form: 10219999 (tablet)</div>
    </div>
    <div class="term-card">
      <span class="term-badge meddra">MedDRA</span>
      <div class="term-name">Medical Dictionary for Regulatory Activities</div>
      <p>Adverse event and safety reporting codes — the international standard for coding clinical data in regulatory submissions worldwide.</p>
      <div class="term-example">e.g. adverse event: 10028813 (nausea)</div>
    </div>
  </div>

  <div class="harmonization-banner">
    <div class="hicon">🌐</div>
    <div class="hbody">
      <h3>International Harmonization</h3>
      <p>By using <strong>EDQM</strong> and <strong>SNOMED CT</strong>, a single ePI Type 2 or Type 3 document can be understood and processed by healthcare systems in <strong>multiple jurisdictions</strong> with minimal adaptation — reducing duplication and supporting global regulatory convergence.</p>
      <span class="harmonization-badge">✅ Supported by Type 2 &amp; Type 3 ePI</span>
    </div>
  </div>

  <div class="section-title">Full Technical Specification</div>
  <div class="cta-row">
    <div class="cta-text">For a full list of supported terminologies, code system URLs, and technical constraints — see the <strong>Artifacts Summary</strong>.</div>
    <a class="cta-btn" href="artifacts.html">View Artifacts Summary →</a>
  </div>

</div>