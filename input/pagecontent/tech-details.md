<style>
  .epi-page *, .epi-page *::before, .epi-page *::after { box-sizing: border-box; margin: 0; padding: 0; }
  .epi-page { font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif; color: #111827; }
  .epi-page .hero { text-align: center; padding: 48px 20px 36px; border-bottom: 1px solid #e5e7eb; margin-bottom: 40px; }
  .epi-page .hero .eyebrow { font-size:.72em; font-weight:700; text-transform:uppercase; letter-spacing:.2em; color:#003087; margin-bottom:14px; }
  .epi-page .hero h1 { font-size:2em; font-weight:800; color:#111827; margin-bottom:12px; line-height:1.2; }
  .epi-page .hero h1 span { background: linear-gradient(135deg,#003087,#2563eb); -webkit-background-clip:text; -webkit-text-fill-color:transparent; background-clip:text; }
  .epi-page .hero p { font-size:.95em; color:#6b7280; max-width:560px; margin:0 auto; line-height:1.6; }
  .epi-page .section-title { font-size:1.15em; font-weight:700; color:#111827; margin: 40px 0 16px; display:flex; align-items:center; gap:8px; }
  .epi-page .section-title::after { content:''; flex:1; height:1px; background:#e5e7eb; margin-left:8px; }
  .epi-page .grid-2 { display:grid; grid-template-columns:1fr 1fr; gap:16px; margin-bottom:36px; }
  .epi-page .arch-card { background:#fff; border:1px solid #e5e7eb; border-radius:10px; padding:22px; }
  .epi-page .arch-card .icon { font-size:1.5em; margin-bottom:10px; }
  .epi-page .arch-card .title { font-weight:700; color:#003087; margin-bottom:6px; font-size:.95em; }
  .epi-page .arch-card p { font-size:.83em; color:#4b5563; line-height:1.6; }
  .epi-page table { width:100%; border-collapse:collapse; font-size:.83em; margin-bottom:36px; background:#fff; border:1px solid #e5e7eb; border-radius:10px; overflow:hidden; }
  .epi-page thead { background:#f0f4ff; }
  .epi-page th { text-align:left; padding:12px 16px; font-weight:700; color:#374151; font-size:.78em; text-transform:uppercase; letter-spacing:.06em; border-bottom:1px solid #e5e7eb; }
  .epi-page td { padding:11px 16px; border-bottom:1px solid #f3f4f6; color:#374151; vertical-align:top; }
  .epi-page tr:last-child td { border-bottom:none; }
  .epi-page .resource-type { font-weight:700; color:#111827; font-size:.88em; }
  .epi-page .fhir-code { background:#f0f4ff; color:#2563eb; font-family:monospace; font-size:.78em; padding:2px 7px; border-radius:4px; margin-right:3px; display:inline-block; margin-bottom:2px; }
  .epi-page .op-chip { font-size:.73em; font-weight:700; padding:2px 8px; border-radius:100px; display:inline-block; margin-right:3px; margin-bottom:2px; }
  .epi-page .op-chip.read { background:#eff6ff; color:#1d4ed8; }
  .epi-page .op-chip.search { background:#ecfdf5; color:#065f46; }
  .epi-page .op-chip.history { background:#faf5ff; color:#6d28d9; }
  .epi-page .op-chip.vread { background:#fff7ed; color:#c2410c; }
  .epi-page .grid-4 { display:grid; grid-template-columns:1fr 1fr; gap:14px; margin-bottom:36px; }
  .epi-page .search-card { background:#fff; border:1px solid #e5e7eb; border-radius:10px; padding:20px; }
  .epi-page .search-card .number { display:inline-flex; align-items:center; justify-content:center; width:26px; height:26px; background:#003087; color:#fff; border-radius:50%; font-size:.7em; font-weight:800; margin-bottom:10px; }
  .epi-page .search-card .stitle { font-weight:700; color:#111827; margin-bottom:10px; font-size:.9em; }
  .epi-page .param-row { margin-bottom:6px; }
  .epi-page .param-key { font-family:monospace; font-size:.78em; font-weight:700; color:#2563eb; }
  .epi-page .param-desc { font-size:.78em; color:#6b7280; margin-left:6px; }
  .epi-page .endpoint { font-family:monospace; font-size:.73em; background:#f0f4ff; color:#1d4ed8; padding:6px 10px; border-radius:6px; display:block; margin-top:8px; overflow-wrap:break-word; }
  .epi-page .req-box { background:#fff; border:1px solid #e5e7eb; border-radius:10px; overflow:hidden; margin-bottom:36px; }
  .epi-page .req-box .req-header { background:#f0f4ff; padding:12px 20px; font-weight:700; color:#1d4ed8; font-size:.88em; border-bottom:1px solid #e5e7eb; }
  .epi-page .req-item { display:flex; gap:12px; padding:14px 20px; border-bottom:1px solid #f3f4f6; align-items:flex-start; }
  .epi-page .req-item:last-child { border-bottom:none; }
  .epi-page .req-badge { flex-shrink:0; font-size:.68em; font-weight:800; text-transform:uppercase; padding:3px 9px; border-radius:100px; margin-top:2px; }
  .epi-page .req-badge.must { background:#fef2f2; color:#b91c1c; }
  .epi-page .req-badge.should { background:#fefce8; color:#a16207; }
  .epi-page .req-text { font-size:.84em; color:#374151; line-height:1.6; }
  .epi-page .req-text strong { color:#111827; }
  .epi-page .platform-grid { display:grid; grid-template-columns:1fr 1fr; gap:14px; margin-bottom:36px; }
  .epi-page .platform-card { background:#fff; border:1px solid #e5e7eb; border-radius:10px; padding:20px; }
  .epi-page .platform-card .ptag { font-size:.68em; font-weight:800; text-transform:uppercase; padding:3px 9px; border-radius:100px; display:inline-block; margin-bottom:10px; }
  .epi-page .platform-card .ptag.oss { background:#ecfdf5; color:#065f46; }
  .epi-page .platform-card .ptag.cloud { background:#eff6ff; color:#1d4ed8; }
  .epi-page .platform-card .ptitle { font-weight:700; color:#111827; margin-bottom:6px; font-size:.92em; }
  .epi-page .platform-card p { font-size:.82em; color:#4b5563; line-height:1.6; }
  .epi-page .platform-card .examples { font-size:.76em; color:#6b7280; margin-top:8px; font-style:italic; }
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
    <div class="eyebrow">Technical Details · FHIR R5</div>
    <h1>The Engine for <span>Global Drug Data</span></h1>
    <p>Architecture, technical capabilities, and operational requirements for a FHIR-based ePI Repository — the single source of truth for digital drug labels.</p>
  </div>

  <div class="section-title">Repository Architecture</div>
  <div class="grid-2">
    <div class="arch-card">
      <div class="icon">⚙️</div>
      <div class="title">FHIR Server</div>
      <p>The core engine for storing <code>Bundle</code>, <code>Composition</code>, and all related product resources on a FHIR R5-compliant platform.</p>
    </div>
    <div class="arch-card">
      <div class="icon">🌐</div>
      <div class="title">API Layer</div>
      <p>Standard RESTful endpoints for searching and retrieval, e.g. <code>GET /Bundle?subject.identifier=...</code></p>
    </div>
    <div class="arch-card">
      <div class="icon">📥</div>
      <div class="title">Ingestion Engine</div>
      <p>Handles the upload and automatic validation of new ePI versions against profiles defined in this Implementation Guide.</p>
    </div>
    <div class="arch-card">
      <div class="icon">🛡️</div>
      <div class="title">Security Layer</div>
      <p>Manages granular access control — particularly for internal or pre-submission repositories used by pharmaceutical companies.</p>
    </div>
  </div>

  <div class="section-title">Recommended Resource Interactions</div>
  <table>
    <thead>
      <tr>
        <th>Resource Category</th>
        <th>FHIR Resources</th>
        <th>Supported Interactions</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="resource-type">Document</span></td>
        <td><span class="fhir-code">Bundle</span><span class="fhir-code">Composition</span></td>
        <td>
          <span class="op-chip read">read</span>
          <span class="op-chip vread">vread</span>
          <span class="op-chip search">search</span>
          <span class="op-chip history">history</span>
        </td>
      </tr>
      <tr>
        <td><span class="resource-type">Product</span></td>
        <td><span class="fhir-code">MedicinalProductDefinition</span><span class="fhir-code">PackagedProductDefinition</span><span class="fhir-code">ManufacturedItemDefinition</span></td>
        <td><span class="op-chip read">read</span><span class="op-chip search">search</span></td>
      </tr>
      <tr>
        <td><span class="resource-type">Authorization</span></td>
        <td><span class="fhir-code">RegulatedAuthorization</span></td>
        <td><span class="op-chip read">read</span><span class="op-chip search">search</span></td>
      </tr>
      <tr>
        <td><span class="resource-type">Entities</span></td>
        <td><span class="fhir-code">Organization</span><span class="fhir-code">Ingredient</span><span class="fhir-code">SubstanceDefinition</span></td>
        <td><span class="op-chip read">read</span><span class="op-chip search">search</span></td>
      </tr>
      <tr>
        <td><span class="resource-type">Clinical</span></td>
        <td><span class="fhir-code">ClinicalUseDefinition</span><span class="fhir-code">Group</span></td>
        <td><span class="op-chip read">read</span><span class="op-chip search">search</span></td>
      </tr>
      <tr>
        <td><span class="resource-type">Supporting</span></td>
        <td><span class="fhir-code">Binary</span><span class="fhir-code">List</span></td>
        <td><span class="op-chip read">read</span></td>
      </tr>
    </tbody>
  </table>

  <div class="section-title">Key Search Parameters</div>
  <div class="grid-4">
    <div class="search-card">
      <div class="number">1</div>
      <div class="stitle">Document Search</div>
      <div class="param-row"><span class="param-key">identifier</span><span class="param-desc">Find a specific document version</span></div>
      <div class="param-row"><span class="param-key">status</span><span class="param-desc">Filter by <code>active</code> or <code>archived</code></span></div>
      <div class="param-row"><span class="param-key">subject</span><span class="param-desc">Link to MedicinalProductDefinition</span></div>
      <div class="param-row"><span class="param-key">date</span><span class="param-desc">Date range for authorization or update</span></div>
      <code class="endpoint">GET /Bundle?subject.identifier=...</code>
    </div>
    <div class="search-card">
      <div class="number">2</div>
      <div class="stitle">Product Search</div>
      <div class="param-row"><span class="param-key">name</span><span class="param-desc">Search by medicinal product name</span></div>
      <div class="param-row"><span class="param-key">identifier</span><span class="param-desc">Search by GTIN or National Product Number</span></div>
      <div class="param-row"><span class="param-key">type</span><span class="param-desc">Filter by product type</span></div>
      <code class="endpoint">GET /MedicinalProductDefinition?name:contains=Paracetamol</code>
    </div>
    <div class="search-card">
      <div class="number">3</div>
      <div class="stitle">Substance &amp; Ingredient Search</div>
      <div class="param-row"><span class="param-key">code</span><span class="param-desc">Find by chemical code (SNOMED CT, UNII)</span></div>
      <div class="param-row"><span class="param-key">for</span><span class="param-desc">Find ingredients linked to a product</span></div>
      <code class="endpoint">GET /SubstanceDefinition?code=...</code>
    </div>
    <div class="search-card">
      <div class="number">4</div>
      <div class="stitle">Clinical Search</div>
      <div class="param-row"><span class="param-key">subject</span><span class="param-desc">Indications or contraindications for a product</span></div>
      <div class="param-row"><span class="param-key">type</span><span class="param-desc">Filter by <code>indication</code>, <code>contraindication</code>, <code>interaction</code></span></div>
      <code class="endpoint">GET /ClinicalUseDefinition?type=contraindication</code>
    </div>
  </div>

  <div class="section-title">Technical Constraints &amp; Operations</div>
  <div class="req-box">
    <div class="req-header">📋 Server Requirements</div>
    <div class="req-item">
      <span class="req-badge should">SHOULD</span>
      <div class="req-text"><strong>Profile Validation</strong> — The server should validate all incoming resources against the ePI profiles defined in this Implementation Guide.</div>
    </div>
    <div class="req-item">
      <span class="req-badge must">MUST</span>
      <div class="req-text"><strong>Format Support</strong> — The server must support both <strong>JSON</strong> and <strong>XML</strong> representations.</div>
    </div>
    <div class="req-item">
      <span class="req-badge should">SHOULD</span>
      <div class="req-text"><strong>Content Negotiation</strong> — Support the <code>_format</code> parameter and <code>Accept</code> headers so clients can request specific data formats.</div>
    </div>
  </div>

  <div class="section-title">Deployment Options</div>
  <div class="platform-grid">
    <div class="platform-card">
      <span class="ptag oss">Open Source</span>
      <div class="ptitle">Self-Hosted</div>
      <p>Maximum control over data residency, custom profiles, and security policies. Requires DevOps expertise to deploy and maintain.</p>
      <div class="examples">Examples: HAPI FHIR, LinuxForHealth</div>
    </div>
    <div class="platform-card">
      <span class="ptag cloud">Managed Cloud</span>
      <div class="ptitle">Cloud-Native</div>
      <p>Scalability and regulatory compliance out-of-the-box. Lower operational overhead — ideal for initiatives requiring rapid onboarding.</p>
      <div class="examples">Examples: AWS HealthLake, Google Cloud Healthcare API, Azure Health Data Services</div>
    </div>
  </div>

  <div class="apix-cta">
    <div class="cta-text">
      <div class="ctitle">Transactional Workflows — APIX IG</div>
      <p>This guide defines the <em>content structure</em> of ePI. For the full transactional framework — submitting, versioning, and exchanging ePIs across systems — refer to the <strong>APIX Implementation Guide</strong>.</p>
    </div>
    <a href="https://github.com/HL7/apix" target="_blank">View the APIX IG →</a>
  </div>

  <div class="notice">
    <strong>Vendor Neutrality:</strong> This Implementation Guide does not endorse specific software vendors or cloud providers. All technical requirements are based on the global HL7 FHIR R5 standard.
  </div>

</div>
