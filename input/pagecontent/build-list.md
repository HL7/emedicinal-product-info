<div style="margin-bottom:32px;">
<h2 style="font-size:1.35em; font-weight:700; color:#111827; margin-bottom:8px;">What is an ePI Tracking List?</h2>
<p style="color:#374151; font-size:.94em; line-height:1.7; margin-bottom:16px;">The FHIR <code style="font-family:monospace; font-size:.8em; color:#0891b2;">List</code> resource is a versatile configuration tool within the ePI ecosystem. It is primarily used to track and manage collections of ePI documents, acting as a real-time registry of authorized product information.</p>
</div>

<hr style="border:none; border-top:1px solid #e5e7eb; margin:28px 0;"/>

<!-- USE CASES -->
<h2 style="font-size:1.35em; font-weight:700; color:#111827; margin-bottom:8px;">Primary Use Cases</h2>
<p style="color:#374151; font-size:.94em; line-height:1.7; margin-bottom:16px;">There are four primary industry use cases for implementing the ePI Tracking List:</p>

<div style="display:grid; grid-template-columns:1fr 1fr; gap:14px; margin-bottom:28px;">
  <!-- Medicinal Product -->
  <div style="background:#fff; border:1px solid #e5e7eb; border-top:3px solid #2563eb; border-radius:8px; padding:18px 20px;">
    <div style="font-size:1.4em; margin-bottom:8px;">💊</div>
    <div style="font-weight:700; color:#111827; margin-bottom:6px;">Medicinal Product</div>
    <div style="font-size:.84em; color:#6b7280; margin-bottom:12px; line-height:1.5;">A list of ePIs for a given medicinal product. Regulators or MAHs use this to track all localized languages and document types (e.g., SmPC, PIL) for a single authorized product.</div>
    <a href="examples/epi-list-showcase-1.html" target="_blank" style="font-size:.8em; color:#2563eb; font-weight:600; text-decoration:none;">👉 View Showcase</a>
  </div>
  <!-- Medicinal Product Group -->
  <div style="background:#fff; border:1px solid #e5e7eb; border-top:3px solid #0891b2; border-radius:8px; padding:18px 20px;">
    <div style="font-size:1.4em; margin-bottom:8px;">🗂️</div>
    <div style="font-weight:700; color:#111827; margin-bottom:6px;">Medicinal Product Group</div>
    <div style="font-size:.84em; color:#6b7280; margin-bottom:12px; line-height:1.5;">A list of ePIs for a given class or category. Track all ePIs related to a specific therapeutic category, such as all approved respiratory vaccines or oncology products.</div>
    <a href="examples/epi-list-showcase-3.html" target="_blank" style="font-size:.8em; color:#0891b2; font-weight:600; text-decoration:none;">👉 View Showcase</a>
  </div>
  <!-- Jurisdiction -->
  <div style="background:#fff; border:1px solid #e5e7eb; border-top:3px solid #7c3aed; border-radius:8px; padding:18px 20px;">
    <div style="font-size:1.4em; margin-bottom:8px;">🏛️</div>
    <div style="font-weight:700; color:#111827; margin-bottom:6px;">Jurisdiction</div>
    <div style="font-size:.84em; color:#6b7280; margin-bottom:12px; line-height:1.5;">A list of ePIs authorized by a health authority within their jurisdiction. For example, all ePIs authorized by PMDA for use in Japan, or all ePIs centrally authorized by EMA.</div>
  </div>
  <!-- Jurisdiction Group -->
  <div style="background:#fff; border:1px solid #e5e7eb; border-top:3px solid #db2777; border-radius:8px; padding:18px 20px;">
    <div style="font-size:1.4em; margin-bottom:8px;">🌍</div>
    <div style="font-weight:700; color:#111827; margin-bottom:6px;">Jurisdiction Group</div>
    <div style="font-size:.84em; color:#6b7280; margin-bottom:12px; line-height:1.5;">A list of ePIs authorized by multiple health authorities for a region. Track approved ePI documents across an entire region (e.g., all ASEAN member countries).</div>
    <a href="examples/epi-list-showcase-2.html" target="_blank" style="font-size:.8em; color:#db2777; font-weight:600; text-decoration:none;">👉 View Showcase</a>
  </div>
</div>

<hr style="border:none; border-top:1px solid #e5e7eb; margin:28px 0;"/>

<!-- STEPS -->
<h2 style="font-size:1.35em; font-weight:700; color:#111827; margin-bottom:8px;">How to Build the List</h2>
<p style="color:#374151; font-size:.94em; line-height:1.7; margin-bottom:20px;">Building an ePI Tracking List from a business process perspective is simple:</p>

<!-- STEP 1 -->
<div style="display:flex; gap:16px; margin-bottom:20px; align-items:flex-start;">
  <div style="flex-shrink:0; width:36px; height:36px; border-radius:50%; background:#003087; color:#fff; display:flex; align-items:center; justify-content:center; font-size:.85em; font-weight:700; margin-top:2px;">1</div>
  <div style="flex:1; background:#fff; border:1px solid #e5e7eb; border-radius:8px; overflow:hidden;">
    <div style="padding:14px 20px 10px; border-bottom:1px solid #e5e7eb; background:#f9fafb;"><div style="font-weight:700; color:#111827; font-size:.97em;">Initialize the List</div></div>
    <div style="padding:14px 20px;">
      <p style="font-size:.88em; color:#374151; line-height:1.7; margin:0;">Create a new FHIR <code style="font-family:monospace; font-size:.8em; color:#0891b2;">List</code> resource. Immediately set the <code style="font-family:monospace; font-size:.8em; color:#0891b2;">status</code> to <code style="font-family:monospace; font-size:.8em; color:#0891b2;">current</code> to indicate it is published, and set the <code style="font-family:monospace; font-size:.8em; color:#0891b2;">mode</code> to <code style="font-family:monospace; font-size:.8em; color:#0891b2;">working</code> because ePI tracking lists are living documents that evolve as new products are approved, updated, or withdrawn.</p>
    </div>
  </div>
</div>

<!-- STEP 2 -->
<div style="display:flex; gap:16px; margin-bottom:20px; align-items:flex-start;">
  <div style="flex-shrink:0; width:36px; height:36px; border-radius:50%; background:#003087; color:#fff; display:flex; align-items:center; justify-content:center; font-size:.85em; font-weight:700; margin-top:2px;">2</div>
  <div style="flex:1; background:#fff; border:1px solid #e5e7eb; border-radius:8px; overflow:hidden;">
    <div style="padding:14px 20px 10px; border-bottom:1px solid #e5e7eb; background:#f9fafb;"><div style="font-weight:700; color:#111827; font-size:.97em;">Define the Scope and Metadata</div></div>
    <div style="padding:14px 20px;">
      <p style="font-size:.88em; color:#374151; line-height:1.7; margin-bottom:14px;">Assign the correct list classification <code style="font-family:monospace; font-size:.8em; color:#0891b2;">code</code> based on the 4 use cases, and apply the appropriate metadata extensions. Fill in the core list elements below:</p>
      <table style="width:100%; border-collapse:collapse; font-size:.84em; margin-bottom:10px;">
        <thead><tr style="background:#003087; color:#fff;">
          <th style="padding:9px 12px; border:1px solid #d0d0d0; text-align:left; width:35%;">Element</th>
          <th style="padding:9px 12px; border:1px solid #d0d0d0; text-align:left;">Description</th>
        </tr></thead>
        <tbody>
          <tr><td style="padding:9px 12px; border:1px solid #d0d0d0;"><code style="font-family:monospace; font-size:.8em; color:#0891b2;">extension</code></td><td style="padding:9px 12px; border:1px solid #d0d0d0;">Captures the list's <code style="font-family:monospace; font-size:.8em;">VersionNumber</code>, <code style="font-family:monospace; font-size:.8em;">Jurisdiction</code>, <code style="font-family:monospace; font-size:.8em;">MedicineDomain</code>, and <code style="font-family:monospace; font-size:.8em;">RegulatoryAgency</code>.</td></tr>
          <tr style="background:#f9fafb;"><td style="padding:9px 12px; border:1px solid #d0d0d0;"><code style="font-family:monospace; font-size:.8em; color:#0891b2;">identifier</code></td><td style="padding:9px 12px; border:1px solid #d0d0d0;">Carries the persistent UUID that spans across versions.</td></tr>
          <tr><td style="padding:9px 12px; border:1px solid #d0d0d0;"><code style="font-family:monospace; font-size:.8em; color:#0891b2;">code</code></td><td style="padding:9px 12px; border:1px solid #d0d0d0;">The classification (<code style="font-family:monospace; font-size:.8em;">medicinal-product</code>, <code style="font-family:monospace; font-size:.8em;">jurisdiction</code>, etc).</td></tr>
          <tr style="background:#f9fafb;"><td style="padding:9px 12px; border:1px solid #d0d0d0;"><code style="font-family:monospace; font-size:.8em; color:#0891b2;">subject</code></td><td style="padding:9px 12px; border:1px solid #d0d0d0;">Reference to the medicinal product(s). Heavily used in single-product lists.</td></tr>
          <tr><td style="padding:9px 12px; border:1px solid #d0d0d0;"><code style="font-family:monospace; font-size:.8em; color:#0891b2;">source</code></td><td style="padding:9px 12px; border:1px solid #d0d0d0;">The organization that instantiated the list.</td></tr>
        </tbody>
      </table>
    </div>
  </div>
</div>

<!-- STEP 3 -->
<div style="display:flex; gap:16px; margin-bottom:20px; align-items:flex-start;">
  <div style="flex-shrink:0; width:36px; height:36px; border-radius:50%; background:#003087; color:#fff; display:flex; align-items:center; justify-content:center; font-size:.85em; font-weight:700; margin-top:2px;">3</div>
  <div style="flex:1; background:#fff; border:1px solid #e5e7eb; border-radius:8px; overflow:hidden;">
    <div style="padding:14px 20px 10px; border-bottom:1px solid #e5e7eb; background:#f9fafb;"><div style="font-weight:700; color:#111827; font-size:.97em;">Add and tag Entries</div></div>
    <div style="padding:14px 20px;">
      <p style="font-size:.88em; color:#374151; line-height:1.7; margin-bottom:14px;">As new ePI <code style="font-family:monospace; font-size:.8em; color:#0891b2;">Bundle</code>s are approved by the health authority, append a new <code style="font-family:monospace; font-size:.8em; color:#0891b2;">entry</code> object to the List.</p>
      <table style="width:100%; border-collapse:collapse; font-size:.84em; margin-bottom:10px;">
        <thead><tr style="background:#003087; color:#fff;">
          <th style="padding:9px 12px; border:1px solid #d0d0d0; text-align:left; width:35%;">Element</th>
          <th style="padding:9px 12px; border:1px solid #d0d0d0; text-align:left;">Description</th>
        </tr></thead>
        <tbody>
          <tr><td style="padding:9px 12px; border:1px solid #d0d0d0;"><code style="font-family:monospace; font-size:.8em; color:#0891b2;">entry.item.identifier</code></td><td style="padding:9px 12px; border:1px solid #d0d0d0;">Should strictly point to the newly registered ePI <code style="font-family:monospace; font-size:.8em;">Bundle</code> UUID.</td></tr>
          <tr style="background:#f9fafb;"><td style="padding:9px 12px; border:1px solid #d0d0d0;"><code style="font-family:monospace; font-size:.8em; color:#0891b2;">entry.item.display</code></td><td style="padding:9px 12px; border:1px solid #d0d0d0;">Use this to provide an immediate human-readable title/context.</td></tr>
          <tr><td style="padding:9px 12px; border:1px solid #d0d0d0;"><code style="font-family:monospace; font-size:.8em; color:#0891b2;">entry.flag</code></td><td style="padding:9px 12px; border:1px solid #d0d0d0;">Explicitly label the class of document (e.g. <code style="font-family:monospace; font-size:.8em;">smpc</code>, <code style="font-family:monospace; font-size:.8em;">pil</code>, <code style="font-family:monospace; font-size:.8em;">pack-artwork</code>).</td></tr>
        </tbody>
      </table>
    </div>
  </div>
</div>

<!-- STEP 4 -->
<div style="display:flex; gap:16px; margin-bottom:28px; align-items:flex-start;">
  <div style="flex-shrink:0; width:36px; height:36px; border-radius:50%; background:#003087; color:#fff; display:flex; align-items:center; justify-content:center; font-size:.85em; font-weight:700; margin-top:2px;">4</div>
  <div style="flex:1; background:#fff; border:1px solid #e5e7eb; border-radius:8px; overflow:hidden;">
    <div style="padding:14px 20px 10px; border-bottom:1px solid #e5e7eb; background:#f9fafb;"><div style="font-weight:700; color:#111827; font-size:.97em;">Maintain history across versions</div></div>
    <div style="padding:14px 20px;">
      <p style="font-size:.88em; color:#374151; line-height:1.7; margin-bottom:14px;">An entry should only be soft-deleted (by setting <code style="font-family:monospace; font-size:.8em; color:#0891b2;">entry.deleted</code> to <code style="font-family:monospace; font-size:.8em; color:#0891b2;">true</code>) if it is no longer needed (e.g., Marketing Authorization is withdrawn) or if the ePI's <code style="font-family:monospace; font-size:.8em; color:#0891b2;">bundle.identifier</code> has fundamentally changed.</p>
      <div style="background:#eff6ff; border:1px solid #bfdbfe; border-left:4px solid #2563eb; border-radius:8px; padding:14px 18px; margin-bottom:10px;">
        <div style="font-size:.72em; font-weight:700; text-transform:uppercase; letter-spacing:.1em; color:#1d4ed8; margin-bottom:6px;">🔄 See Version Control Guide</div>
        <p style="font-size:.88em; color:#1e40af; line-height:1.7; margin:0;">Since an ePI's <code style="font-family:monospace; font-size:.8em; color:#1d4ed8;">Bundle.identifier</code> persists across normal version updates, the existing List entry will naturally point to the current version without needing to be marked as deleted. See the <a href="versions.html" style="color:#1d4ed8; font-weight:600; text-decoration:underline;">Version Control</a> guide for deep-dive examples.</p>
      </div>
    </div>
  </div>
</div>

<hr style="border:none; border-top:1px solid #e5e7eb; margin:28px 0;"/>

<!-- WHAT'S NEXT -->
<h2 style="font-size:1.1em; font-weight:700; color:#111827; margin-bottom:12px;">What's next?</h2>
<div style="display:grid; grid-template-columns:1fr; gap:14px;">
  <a href="versions.html" style="text-decoration:none; background:#fff; border:1px solid #bfdbfe; border-left:4px solid #2563eb; border-radius:8px; padding:16px 20px; display:block;">
    <div style="font-size:.72em; font-weight:700; text-transform:uppercase; letter-spacing:.1em; color:#2563eb; margin-bottom:4px;">Next →</div>
    <div style="font-weight:700; color:#111827; margin-bottom:4px;">Version Control</div>
    <div style="font-size:.82em; color:#6b7280;">Learn how to properly deprecate old versions and link new versions to the historical record.</div>
  </a>
</div>
