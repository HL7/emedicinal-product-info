<style>
  .ver-page *, .ver-page *::before, .ver-page *::after { box-sizing: border-box; margin: 0; padding: 0; }
  .ver-page { font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif; color: #111827; }
  .ver-page .hero { text-align: center; padding: 48px 20px 36px; border-bottom: 1px solid #e5e7eb; margin-bottom: 40px; }
  .ver-page .hero .eyebrow { font-size:.72em; font-weight:700; text-transform:uppercase; letter-spacing:.2em; color:#003087; margin-bottom:14px; }
  .ver-page .hero h3 { font-size:2em; font-weight:800; color:#111827; margin-bottom:12px; line-height:1.2; }
  .ver-page .hero h3 span { background: linear-gradient(135deg,#003087,#2563eb); -webkit-background-clip:text; -webkit-text-fill-color:transparent; background-clip:text; }
  .ver-page .hero p { font-size:.95em; color:#6b7280; max-width:580px; margin:0 auto; line-height:1.6; }
  .ver-page .section-title { font-size:1.1em; font-weight:700; color:#111827; margin: 36px 0 14px; display:flex; align-items:center; gap:8px; }
  .ver-page .section-title::after { content:''; flex:1; height:1px; background:#e5e7eb; margin-left:8px; }
  .ver-page .id-grid { display:grid; grid-template-columns:1fr 1fr; gap:14px; margin-bottom:36px; }
  .ver-page .id-card { background:#fff; border:1px solid #e5e7eb; border-radius:10px; padding:20px; }
  .ver-page .id-card .id-tag { font-size:.68em; font-weight:800; text-transform:uppercase; letter-spacing:.1em; padding:3px 9px; border-radius:100px; display:inline-block; margin-bottom:10px; }
  .ver-page .id-card .id-tag.server { background:#fef3c7; color:#92400e; }
  .ver-page .id-card .id-tag.business { background:#eff6ff; color:#1e40af; }
  .ver-page .id-card .id-name { font-family:monospace; font-weight:700; color:#111827; font-size:.95em; margin-bottom:6px; }
  .ver-page .id-card p { font-size:.82em; color:#4b5563; line-height:1.6; }
  .ver-page .pipeline { display:flex; gap:0; margin-bottom:8px; }
  .ver-page .pipeline-step { flex:1; text-align:center; padding:14px 8px 12px; }
  .ver-page .pipeline-step .picon { font-size:1.3em; margin-bottom:6px; }
  .ver-page .pipeline-step .plabel { font-size:.72em; font-weight:800; text-transform:uppercase; letter-spacing:.08em; margin-bottom:4px; font-family:monospace; }
  .ver-page .pipeline-step .pdesc { font-size:.73em; color:#6b7280; line-height:1.4; }
  .ver-page .ps-preliminary { background:#fefce8; border:1px solid #fde68a; border-right:none; border-radius:10px 0 0 10px; }
  .ver-page .ps-final { background:#ecfdf5; border:1px solid #a7f3d0; border-right:none; }
  .ver-page .ps-deprecated { background:#fef2f2; border:1px solid #fecaca; border-right:none; }
  .ver-page .ps-cancelled { background:#f9fafb; border:1px solid #e5e7eb; border-right:none; }
  .ver-page .ps-error { background:#fef2f2; border:1px solid #fecaca; border-radius:0 10px 10px 0; }
  .ver-page .ps-preliminary .plabel { color:#92400e; }
  .ver-page .ps-final .plabel { color:#065f46; }
  .ver-page .ps-deprecated .plabel { color:#991b1b; }
  .ver-page .ps-cancelled .plabel { color:#374151; }
  .ver-page .ps-error .plabel { color:#991b1b; }
  .ver-page .pipeline-arrow { display:flex; align-items:center; color:#9ca3af; font-size:.9em; flex-shrink:0; padding: 0 2px; }
  .ver-page .relates-table { width:100%; border-collapse:collapse; font-size:.83em; margin-bottom:36px; background:#fff; border:1px solid #e5e7eb; border-radius:10px; overflow:hidden; }
  .ver-page .relates-table thead { background:#f0f4ff; }
  .ver-page .relates-table th { text-align:left; padding:11px 14px; font-weight:700; color:#374151; font-size:.78em; text-transform:uppercase; letter-spacing:.06em; border-bottom:1px solid #e5e7eb; }
  .ver-page .relates-table td { padding:11px 14px; border-bottom:1px solid #f3f4f6; color:#374151; vertical-align:top; }
  .ver-page .relates-table tr:last-child td { border-bottom:none; }
  .ver-page .rel-code { font-family:monospace; font-weight:700; font-size:.85em; }
  .ver-page .rel-derived { color:#1d4ed8; }
  .ver-page .rel-amends { color:#7c3aed; }
  .ver-page .rel-replaces { color:#065f46; }
  .ver-page .rel-retracts { color:#991b1b; }
  .ver-page .lifecycle-table { width:100%; border-collapse:collapse; font-size:.78em; margin-bottom:36px; background:#fff; border:1px solid #e5e7eb; border-radius:10px; overflow:hidden; }
  .ver-page .lifecycle-table thead { background:#003087; color:#fff; }
  .ver-page .lifecycle-table th { text-align:left; padding:10px 12px; font-weight:700; font-size:.78em; }
  .ver-page .lifecycle-table td { padding:9px 12px; border-bottom:1px solid #f3f4f6; color:#374151; vertical-align:top; }
  .ver-page .lifecycle-table tr:last-child td { border-bottom:none; }
  .ver-page .lifecycle-table tr:nth-child(even) { background:#f9fafb; }
  .ver-page .status-chip { font-size:.72em; font-weight:700; padding:2px 8px; border-radius:100px; display:inline-block; }
  .ver-page .status-preliminary { background:#fefce8; color:#92400e; }
  .ver-page .status-final { background:#ecfdf5; color:#065f46; }
  .ver-page .uuid { font-family:monospace; font-size:.82em; color:#374151; }
  .ver-page .rel-chip { font-family:monospace; font-size:.75em; background:#eff6ff; color:#1e40af; padding:1px 6px; border-radius:3px; }
  .ver-page .step-grid { display:grid; grid-template-columns:1fr 1fr 1fr; gap:14px; margin-bottom:36px; }
  .ver-page .step-card { background:#fff; border:1px solid #e5e7eb; border-radius:10px; padding:20px; }
  .ver-page .step-card .num { display:inline-flex; align-items:center; justify-content:center; width:28px; height:28px; background:#003087; color:#fff; border-radius:50%; font-size:.72em; font-weight:800; margin-bottom:10px; }
  .ver-page .step-card .stitle { font-weight:700; color:#111827; margin-bottom:8px; font-size:.9em; }
  .ver-page .step-card ul { font-size:.8em; color:#4b5563; padding-left:14px; line-height:1.8; }
  .ver-page .diagram-row { display:grid; grid-template-columns:1fr 1fr 1fr; gap:14px; margin-bottom:36px; }
  .ver-page .diagram-card { background:#fff; border:1px solid #e5e7eb; border-radius:10px; overflow:hidden; }
  .ver-page .diagram-card .fig-label { background:#f0f4ff; padding:10px 14px; font-size:.78em; font-weight:700; color:#1d4ed8; border-bottom:1px solid #e5e7eb; }
  .ver-page .diagram-card img { width:100%; height:auto; display:block; }
  .ver-page .diagram-card .fig-caption { padding:10px 14px; font-size:.75em; color:#6b7280; line-height:1.4; }
  .ver-page code { font-family:monospace; font-size:.88em; background:#f0f4ff; color:#2563eb; padding:1px 5px; border-radius:3px; }
</style>

<div class="ver-page">

  <div class="hero">
    <div class="eyebrow">Technical Details · Lifecycle Management</div>
    <h3>Managing the <span>ePI Lifecycle</span></h3>
    <p>A structured approach to versioning, auditing, and traceability for ePI documents — from initial draft through regulatory approval, variation, and eventual withdrawal.</p>
  </div>

  <div class="section-title">Version Identifiers at a Glance</div>
  <div class="id-grid">
    <div class="id-card">
      <span class="id-tag server">Server-Managed</span>
      <div class="id-name">Bundle.id</div>
      <p>A UUID that uniquely identifies the Bundle instance on the server. <strong>Not persistent</strong> across servers — will change if the ePI is copied or migrated.</p>
    </div>
    <div class="id-card">
      <span class="id-tag server">Server-Managed</span>
      <div class="id-name">Bundle.meta.versionId</div>
      <p>A version counter (1, 2, 3…) incremented automatically by the server with each update to this Bundle.</p>
    </div>
    <div class="id-card">
      <span class="id-tag business">Business-Managed</span>
      <div class="id-name">Bundle.identifier</div>
      <p>A UUID that <strong>stays constant</strong> across all versions of an ePI. Assigned by the authoring tool. Survives server migrations — used to group all versions of one ePI together.</p>
    </div>
    <div class="id-card">
      <span class="id-tag business">Business-Managed</span>
      <div class="id-name">Composition.identifier + .version</div>
      <p>A new UUID is generated for each document version to uniquely distinguish it. The version number (1, 2, 3…) is also incremented by the authoring tool.</p>
    </div>
  </div>

  <div class="section-title">Composition.status — Lifecycle States</div>
  <div class="pipeline">
    <div class="pipeline-step ps-preliminary">
      <div class="picon">📝</div>
      <div class="plabel">preliminary</div>
      <div class="pdesc">Draft under review — not yet approved</div>
    </div>
    <div class="pipeline-arrow">→</div>
    <div class="pipeline-step ps-final">
      <div class="picon">✅</div>
      <div class="plabel">final</div>
      <div class="pdesc">Officially approved by the regulatory authority</div>
    </div>
    <div class="pipeline-arrow">→</div>
    <div class="pipeline-step ps-deprecated">
      <div class="picon">🔴</div>
      <div class="plabel">deprecated</div>
      <div class="pdesc">Superseded, withdrawn, or discontinued</div>
    </div>
    <div class="pipeline-arrow">|</div>
    <div class="pipeline-step ps-cancelled">
      <div class="picon">🚫</div>
      <div class="plabel">cancelled</div>
      <div class="pdesc">Draft abandoned before approval</div>
    </div>
    <div class="pipeline-arrow">|</div>
    <div class="pipeline-step ps-error">
      <div class="picon">⚠️</div>
      <div class="plabel">entered-in-error</div>
      <div class="pdesc">Created by mistake — must be ignored</div>
    </div>
  </div>
  <p style="font-size:.78em; color:#6b7280; margin-bottom:36px; margin-top:8px;">The arrows indicate the normal approval flow. The vertical bar separates terminal error states that can occur from any point in the lifecycle.</p>

  <div class="section-title">Composition.relatesTo — Relationship Types</div>
  <table class="relates-table">
    <thead>
      <tr><th>Value</th><th>When to Use</th></tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="rel-code rel-derived">derived-from</span></td>
        <td>Creating a new draft by copying content from an existing <em>final</em> ePI (e.g., starting a variation or safety update).</td>
      </tr>
      <tr>
        <td><span class="rel-code rel-amends">amends</span></td>
        <td>A new approved ePI modifies or adds content to a previous approved ePI — used in merge scenarios where parallel variations are consolidated.</td>
      </tr>
      <tr>
        <td><span class="rel-code rel-replaces">replaces</span></td>
        <td>A newer version (draft or final) completely supersedes an earlier version within the same ePI lineage.</td>
      </tr>
      <tr>
        <td><span class="rel-code rel-retracts">retracts</span></td>
        <td>Formally withdraws or invalidates a previous version — used with <code>status = deprecated</code> or <code>entered-in-error</code>.</td>
      </tr>
    </tbody>
  </table>

  <div class="section-title">Version Control — Step by Step</div>
  <div class="step-grid">
    <div class="step-card">
      <div class="num">1</div>
      <div class="stitle">Creating a New Version</div>
      <ul>
        <li>New Bundle created with a new <code>Bundle.id</code> and <code>meta.versionId = "1"</code></li>
        <li><code>Bundle.identifier</code> stays the same as previous versions</li>
        <li>New <code>Composition.identifier</code> and incremented <code>.version</code></li>
        <li><code>Composition.relatesTo</code> references the prior version</li>
      </ul>
    </div>
    <div class="step-card">
      <div class="num">2</div>
      <div class="stitle">Updating an Existing Version</div>
      <ul>
        <li>Server increments <code>Bundle.meta.versionId</code> and updates <code>meta.lastUpdated</code></li>
        <li><code>Bundle.identifier</code> remains unchanged</li>
        <li>New <code>Composition.identifier</code> and <code>.version</code> generated if this constitutes a new document version</li>
      </ul>
    </div>
    <div class="step-card">
      <div class="num">3</div>
      <div class="stitle">Tracking &amp; Audit</div>
      <ul>
        <li>Both <code>Bundle.identifier</code> and <code>Composition.identifier</code> allow tracking across systems</li>
        <li><code>Composition.relatesTo</code> builds a version history chain</li>
        <li>Server-managed fields ensure FHIR versioning compliance</li>
      </ul>
    </div>
  </div>

  <div class="section-title">ePI Lifecycle — Worked Example</div>
  <table class="lifecycle-table">
    <thead>
      <tr>
        <th>#</th>
        <th>ePI Document</th>
        <th>Action</th>
        <th>Bundle.identifier</th>
        <th>Comp.identifier</th>
        <th>Ver</th>
        <th>Status</th>
        <th>relatesTo</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>1</td><td>Initial ePI</td><td>Company creates initial draft</td>
        <td class="uuid">UUID-1</td><td class="uuid">UUID-A1</td><td>1</td>
        <td><span class="status-chip status-preliminary">preliminary</span></td>
        <td>—</td>
      </tr>
      <tr>
        <td>2</td><td>Initial ePI</td><td>Company updates draft</td>
        <td class="uuid">UUID-1</td><td class="uuid">UUID-A2</td><td>2</td>
        <td><span class="status-chip status-preliminary">preliminary</span></td>
        <td><span class="rel-chip">replaces UUID-A1</span></td>
      </tr>
      <tr>
        <td>3</td><td>Initial ePI</td><td>Company updates draft</td>
        <td class="uuid">UUID-1</td><td class="uuid">UUID-A3</td><td>3</td>
        <td><span class="status-chip status-preliminary">preliminary</span></td>
        <td><span class="rel-chip">replaces UUID-A2</span></td>
      </tr>
      <tr>
        <td>4</td><td>Initial ePI</td><td>Regulator approves ePI</td>
        <td class="uuid">UUID-1</td><td class="uuid">UUID-A4</td><td>4</td>
        <td><span class="status-chip status-final">final</span></td>
        <td><span class="rel-chip">replaces UUID-A3</span></td>
      </tr>
      <tr>
        <td>5</td><td>Safety Update ePI</td><td>Company creates draft from approved ePI</td>
        <td class="uuid">UUID-1</td><td class="uuid">UUID-B1</td><td>5</td>
        <td><span class="status-chip status-preliminary">preliminary</span></td>
        <td><span class="rel-chip">derived-from UUID-A4</span></td>
      </tr>
      <tr>
        <td>6</td><td>Stability Update ePI</td><td>Company creates draft from approved ePI</td>
        <td class="uuid">UUID-1</td><td class="uuid">UUID-C1</td><td>6</td>
        <td><span class="status-chip status-preliminary">preliminary</span></td>
        <td><span class="rel-chip">derived-from UUID-A4</span></td>
      </tr>
      <tr>
        <td>10</td><td>Stability Update ePI</td><td>Regulator approves ePI</td>
        <td class="uuid">UUID-1</td><td class="uuid">UUID-C3</td><td>10</td>
        <td><span class="status-chip status-final">final</span></td>
        <td><span class="rel-chip">replaces UUID-C2</span></td>
      </tr>
      <tr>
        <td>11</td><td>Safety Update ePI</td><td>Regulator approves ePI</td>
        <td class="uuid">UUID-1</td><td class="uuid">UUID-B4</td><td>11</td>
        <td><span class="status-chip status-final">final</span></td>
        <td><span class="rel-chip">replaces UUID-B3</span></td>
      </tr>
      <tr>
        <td>12</td><td>Stability Update ePI</td><td>Merge content from approved safety update</td>
        <td class="uuid">UUID-1</td><td class="uuid">UUID-C4</td><td>12</td>
        <td><span class="status-chip status-final">final</span></td>
        <td><span class="rel-chip">amends UUID-C3</span> <span class="rel-chip">derived-from UUID-B4</span></td>
      </tr>
    </tbody>
  </table>
  <p style="font-size:.78em; color:#6b7280; margin-bottom:36px; margin-top:-24px;">Rows 7–9 (intermediate draft updates) are omitted for brevity.</p>

  <div class="section-title">Graphical Lifecycle Views</div>
  <div class="diagram-row">
    <div class="diagram-card">
      <div class="fig-label">Figure 1</div>
      <img src="ePI-lifecycle-initial-to-approval1.png" alt="Initial approval workflow"/>
      <div class="fig-caption">From initial draft to first approved ePI</div>
    </div>
    <div class="diagram-card">
      <div class="fig-label">Figure 2</div>
      <img src="ePI-lifecycle-branching-and-merge2.png" alt="Parallel variations and merge"/>
      <div class="fig-caption">Parallel safety and stability variations with final merge</div>
    </div>
    <div class="diagram-card">
      <div class="fig-label">Figure 3</div>
      <img src="ePI-lifecycle-withdrawal-example3.png" alt="Withdrawal example"/>
      <div class="fig-caption">Deprecation / withdrawal of an authorised ePI</div>
    </div>
  </div>

</div>
