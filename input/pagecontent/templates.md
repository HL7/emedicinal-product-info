<style>
  .ss-page *, .ss-page *::before, .ss-page *::after { box-sizing: border-box; margin: 0; padding: 0; }
  .ss-page { font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif; color: #111827; }
  .ss-page .hero { text-align: center; padding: 48px 20px 36px; border-bottom: 1px solid #e5e7eb; margin-bottom: 40px; }
  .ss-page .hero .eyebrow { font-size:.72em; font-weight:700; text-transform:uppercase; letter-spacing:.2em; color:#003087; margin-bottom:14px; }
  .ss-page .hero h1 { font-size:2em; font-weight:800; color:#111827; margin-bottom:12px; line-height:1.2; }
  .ss-page .hero h1 span { background: linear-gradient(135deg,#003087,#2563eb); -webkit-background-clip:text; -webkit-text-fill-color:transparent; background-clip:text; }
  .ss-page .hero p { font-size:.95em; color:#6b7280; max-width:560px; margin:0 auto; line-height:1.6; }
  .ss-page .section-title { font-size:1.1em; font-weight:700; color:#111827; margin: 36px 0 14px; display:flex; align-items:center; gap:8px; }
  .ss-page .section-title::after { content:''; flex:1; height:1px; background:#e5e7eb; margin-left:8px; }
  .ss-page .alert-note { background:#eff6ff; border:1px solid #bfdbfe; border-left:4px solid #2563eb; border-radius:8px; padding:16px 20px; margin-bottom:36px; display:flex; gap:12px; align-items:flex-start; }
  .ss-page .alert-note .alert-icon { font-size:1.1em; flex-shrink:0; margin-top:2px; }
  .ss-page .alert-note .alert-text { font-size:.85em; color:#1e40af; line-height:1.6; }
  .ss-page .alert-note .alert-text strong { color:#1e3a8a; }
  .ss-page .principle-grid { display:grid; grid-template-columns:1fr 1fr 1fr; gap:14px; margin-bottom:36px; }
  .ss-page .principle-card { background:#fff; border:1px solid #e5e7eb; border-radius:10px; padding:20px; text-align:center; }
  .ss-page .principle-card .icon { font-size:1.5em; margin-bottom:10px; }
  .ss-page .principle-card .title { font-weight:700; color:#003087; margin-bottom:6px; font-size:.9em; }
  .ss-page .principle-card p { font-size:.8em; color:#4b5563; line-height:1.55; }
  .ss-page .critical-rule { background:#fef2f2; border:1px solid #fecaca; border-left:4px solid #dc2626; border-radius:8px; padding:16px 20px; margin-bottom:36px; display:flex; gap:12px; align-items:flex-start; }
  .ss-page .critical-rule .icon { font-size:1.1em; flex-shrink:0; }
  .ss-page .critical-rule .text { font-size:.85em; color:#7f1d1d; line-height:1.6; }
  .ss-page .critical-rule .text strong { color:#991b1b; }
  .ss-page .ss-grid { display:grid; grid-template-columns:1fr 1fr; gap:14px; margin-bottom:36px; }
  .ss-page .ss-card { background:#fff; border:1px solid #e5e7eb; border-radius:10px; overflow:hidden; }
  .ss-page .ss-card .ss-header { padding:16px 20px 14px; border-bottom:1px solid #f3f4f6; }
  .ss-page .ss-card .ss-num { font-size:.68em; font-weight:800; text-transform:uppercase; letter-spacing:.1em; color:#6b7280; margin-bottom:4px; }
  .ss-page .ss-card .ss-name { font-family:monospace; font-weight:700; color:#111827; font-size:1em; margin-bottom:4px; }
  .ss-page .ss-card .ss-body { padding:16px 20px; }
  .ss-page .ss-card p { font-size:.82em; color:#4b5563; line-height:1.6; margin-bottom:14px; }
  .ss-page .color-swatch-row { display:flex; gap:6px; flex-wrap:wrap; margin-bottom:14px; }
  .ss-page .swatch { width:22px; height:22px; border-radius:4px; flex-shrink:0; border:1px solid rgba(0,0,0,.06); }
  .ss-page .swatch-label { font-size:.68em; color:#6b7280; }
  .ss-page .ss-download { display:inline-flex; align-items:center; gap:6px; background:#003087; color:#fff; padding:9px 16px; border-radius:7px; font-weight:700; font-size:.8em; text-decoration:none; }
  .ss-page .ex-section { margin-bottom:36px; }
  .ss-page .ex-section p { font-size:.85em; color:#6b7280; margin-bottom:12px; }
  .ss-page .ex-grid { display:grid; grid-template-columns:1fr 1fr; gap:10px; }
  .ss-page .ex-card { background:#fff; border:1px solid #e5e7eb; border-radius:8px; padding:14px 16px; display:flex; align-items:center; gap:12px; text-decoration:none; }
  .ss-page .ex-card .ex-icon { font-size:1.2em; flex-shrink:0; }
  .ss-page .ex-card .ex-text .ex-title { font-weight:700; color:#111827; font-size:.88em; margin-bottom:2px; }
  .ss-page .ex-card .ex-text .ex-sub { font-size:.75em; color:#6b7280; }
  .ss-page .ex-card .ex-arrow { margin-left:auto; font-size:.85em; color:#2563eb; font-weight:700; flex-shrink:0; }
  .ss-page .list-grid { display:grid; grid-template-columns:1fr 1fr 1fr; gap:10px; }
  .ss-page code { font-family:monospace; font-size:.88em; background:#f0f4ff; color:#2563eb; padding:1px 5px; border-radius:3px; }
</style>

<div class="ss-page">

  <div class="hero">
    <div class="eyebrow">Technical Details · Templates &amp; Stylesheets</div>
    <h1>Building &amp; Rendering ePI</h1>
    <p>This page provides direct access to the raw XML FHIR templates for building ePIs, along with the CSS stylesheets and worked HTML examples for transforming that structured data into modern, accessible web interfaces.</p>
  </div>

  <div class="section-title">ePI XML Build Templates</div>
  <div class="ex-section">
    <p>Fully annotated, copy-pasteable XML examples serving as foundational build templates for ePI construction. Click to view the raw source files on GitHub.</p>
    <div class="ex-grid">
      <a class="ex-card" href="https://github.com/HL7/emedicinal-product-info/blob/master/input/instances/Bundle-template-epi-type1.xml" target="_blank">
        <div class="ex-icon">📄</div>
        <div class="ex-text">
          <div class="ex-title">ePI Type 1 Template</div>
          <div class="ex-sub">Digital Label (XML)</div>
        </div>
        <div class="ex-arrow">GitHub →</div>
      </a>
      <a class="ex-card" href="https://github.com/HL7/emedicinal-product-info/blob/master/input/instances/Bundle-template-epi-type2.xml" target="_blank">
        <div class="ex-icon">📄</div>
        <div class="ex-text">
          <div class="ex-title">ePI Type 2 Template</div>
          <div class="ex-sub">Product Identification (XML)</div>
        </div>
        <div class="ex-arrow">GitHub →</div>
      </a>
      <a class="ex-card" href="https://github.com/HL7/emedicinal-product-info/blob/master/input/instances/Bundle-template-epi-type3.xml" target="_blank">
        <div class="ex-icon">📄</div>
        <div class="ex-text">
          <div class="ex-title">ePI Type 3 Template</div>
          <div class="ex-sub">Clinical Information (XML)</div>
        </div>
        <div class="ex-arrow">GitHub →</div>
      </a>
    </div>
  </div>

  <div class="alert-note">
    <div class="alert-icon">ℹ️</div>
    <div class="alert-text"><strong>Implementation Flexibility:</strong> The stylesheets included in this IG are provided as best-practice examples. Implementers are free to reuse them, modify them, or develop their own according to national regulatory rules and branding requirements.</div>
  </div>

  <div class="section-title">Design Philosophy</div>
  <div class="principle-grid">
    <div class="principle-card">
      <div class="icon">♿</div>
      <div class="title">Accessibility (WCAG)</div>
      <p>Follow WCAG 2.1 AA principles — sufficient colour contrast, keyboard navigation, and screen reader compatibility for all user groups.</p>
    </div>
    <div class="principle-card">
      <div class="icon">📱</div>
      <div class="title">Responsiveness</div>
      <p>Layouts that adapt gracefully to desktop, tablet, and mobile screen sizes. ePI must be readable on any device.</p>
    </div>
    <div class="principle-card">
      <div class="icon">🧭</div>
      <div class="title">Navigation Aids</div>
      <p>CSS and HTML may add navigational aids such as accordions, tables of contents, and tab bars to improve usability.</p>
    </div>
  </div>

  <div class="critical-rule">
    <div class="icon">🚨</div>
    <div class="text"><strong>Critical Rule:</strong> The rendering process (HTML/CSS) must only change the <em>visual appearance</em> and add navigational aids. It must never alter the actual text or meaning of the authorized content. This ensures that stylesheets do not compromise national regulatory rules regarding authorized medicinal product information.</div>
  </div>

  <div class="section-title">Available Stylesheets</div>
  <div class="ss-grid">
    <div class="ss-card">
      <div class="ss-header">
        <div class="ss-num">Stylesheet 1 · Individual ePIs</div>
        <div class="ss-name">epi-styles.css</div>
      </div>
      <div class="ss-body">
        <p>Provides the "Modern Visual Grid" look for individual ePI documents — rounded cards, collapsible accordion sections, and colour-coded content zones.</p>
        <div class="color-swatch-row">
          <div class="swatch" style="background:#2563eb;" title="Ingredients — Blue"></div>
          <div class="swatch" style="background:#16a34a;" title="Regulatory — Green"></div>
          <div class="swatch" style="background:#7c3aed;" title="Packaging — Purple"></div>
          <div class="swatch" style="background:#ea580c;" title="Appearance — Orange"></div>
          <div class="swatch" style="background:#0d9488;" title="Clinical — Teal"></div>
        </div>
        <div class="swatch-label" style="margin-bottom:14px;">Ingredients · Regulatory · Packaging · Appearance · Clinical</div>
        <a class="ss-download" href="epi-styles.css" target="_blank">⬇ Download epi-styles.css</a>
      </div>
    </div>
    <div class="ss-card">
      <div class="ss-header">
        <div class="ss-num">Stylesheet 2 · Tracking Lists</div>
        <div class="ss-name">epi-list.css</div>
      </div>
      <div class="ss-body">
        <p>A business-friendly interface for rendering ePI <code>List</code> resource tracking showcases. Includes status badges, grid-based entry cards, and modern UI tokens for tracking product registries.</p>
        <div class="color-swatch-row">
          <div class="swatch" style="background:#16a34a;" title="Active — Green"></div>
          <div class="swatch" style="background:#d97706;" title="Draft — Amber"></div>
          <div class="swatch" style="background:#dc2626;" title="Deprecated — Red"></div>
          <div class="swatch" style="background:#1e3a5f;" title="Background — Dark Navy"></div>
          <div class="swatch" style="background:#3b82f6;" title="Accent — Blue"></div>
        </div>
        <div class="swatch-label" style="margin-bottom:14px;">Active · Draft · Deprecated · Navy · Blue</div>
        <a class="ss-download" href="epi-list.css" target="_blank">⬇ Download epi-list.css</a>
      </div>
    </div>
  </div>

  <div class="section-title">Rendered Examples — Individual Product ePIs</div>
  <div class="ex-section">
    <p>See the <code>epi-styles.css</code> stylesheet applied to real FHIR Bundle examples:</p>
    <div class="ex-grid">
      <a class="ex-card" href="examples/bundle-epi-type1-example-paracetamol.html" target="_blank">
        <div class="ex-icon">📱</div>
        <div class="ex-text">
          <div class="ex-title">ePI Type 1 — Paracetamol</div>
          <div class="ex-sub">Digital Label</div>
        </div>
        <div class="ex-arrow">Open →</div>
      </a>
      <a class="ex-card" href="examples/bundle-epi-type2-example-paracetamol.html" target="_blank">
        <div class="ex-icon">🔍</div>
        <div class="ex-text">
          <div class="ex-title">ePI Type 2 — Paracetamol</div>
          <div class="ex-sub">Product Identification</div>
        </div>
        <div class="ex-arrow">Open →</div>
      </a>
      <a class="ex-card" href="examples/bundle-epi-type3-example-wonderdrug.html" target="_blank">
        <div class="ex-icon">⚡</div>
        <div class="ex-text">
          <div class="ex-title">ePI Type 3 — WonderDrug</div>
          <div class="ex-sub">Clinical Information</div>
        </div>
        <div class="ex-arrow">Open →</div>
      </a>
      <a class="ex-card" href="examples/bundle-epi-type3-example-wonderdrug-jp.html" target="_blank">
        <div class="ex-icon">🇯🇵</div>
        <div class="ex-text">
          <div class="ex-title">ePI Type 3 — WonderDrug (JP)</div>
          <div class="ex-sub">Clinical Information</div>
        </div>
        <div class="ex-arrow">Open →</div>
      </a>
      <a class="ex-card" href="examples/bundle-epi-type4-example-wonderdrug.html" target="_blank">
        <div class="ex-icon">🔗</div>
        <div class="ex-text">
          <div class="ex-title">ePI Type 4 — WonderDrug</div>
          <div class="ex-sub">Granular Linked Content</div>
        </div>
        <div class="ex-arrow">Open →</div>
      </a>
    </div>
  </div>

  <div class="section-title">Rendered Examples — ePI Tracking Lists</div>
  <div class="ex-section">
    <p>See the <code>epi-list.css</code> stylesheet applied to real FHIR <code>List</code> resource examples:</p>
    <div class="list-grid">
      <a class="ex-card" href="examples/epi-list-showcase-1.html" target="_blank">
        <div class="ex-icon">🗂️</div>
        <div class="ex-text">
          <div class="ex-title">Single-Product</div>
          <div class="ex-sub">Language Tracker</div>
        </div>
        <div class="ex-arrow">→</div>
      </a>
      <a class="ex-card" href="examples/epi-list-showcase-2.html" target="_blank">
        <div class="ex-icon">🌍</div>
        <div class="ex-text">
          <div class="ex-title">Cross-Jurisdiction</div>
          <div class="ex-sub">Tracker</div>
        </div>
        <div class="ex-arrow">→</div>
      </a>
      <a class="ex-card" href="examples/epi-list-showcase-3.html" target="_blank">
        <div class="ex-icon">💊</div>
        <div class="ex-text">
          <div class="ex-title">Drug Category</div>
          <div class="ex-sub">Tracker</div>
        </div>
        <div class="ex-arrow">→</div>
      </a>
    </div>
  </div>

</div>
