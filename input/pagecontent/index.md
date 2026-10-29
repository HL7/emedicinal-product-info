<!-- HERO -->
<div style="text-align:center; padding:48px 20px 36px;">
  <div style="font-size:.75em; font-weight:700; text-transform:uppercase; letter-spacing:.22em; color:#003087; margin-bottom:16px;">HL7 FHIR R5 · Vulcan Accelerator</div>
  <h1 style="font-size:2.4em; font-weight:800; line-height:1.15; margin-bottom:16px; color:#111827;">Product information,<br/><span style="background:linear-gradient(135deg,#003087,#2563eb); -webkit-background-clip:text; -webkit-text-fill-color:transparent;">reimagined.</span></h1>
  <p style="font-size:1.05em; color:#6b7280; max-width:520px; margin:0 auto 32px; line-height:1.55;">One global standard to replace static PDFs, fragmented XML, and proprietary regulatory formats.</p>
  <a href="gettingstarted.html" style="display:inline-block; background:#003087; color:#fff; padding:14px 28px; border-radius:8px; font-weight:700; font-size:1em; text-decoration:none;">Get Started</a>
</div>

<!-- SHOWCASE STRIP -->
<div style="display:grid; grid-template-columns:1fr 1fr 1fr; border-top:1px solid #e5e7eb; border-bottom:1px solid #e5e7eb;">
  <!-- Type 1 -->
  <a href="examples/bundle-epi-type1-example-paracetamol.html" target="_blank" style="text-decoration:none; display:block; padding:32px 24px; border-right:1px solid #e5e7eb; text-align:center;">
    <div style="width:52px; height:52px; border-radius:50%; background:#eff6ff; display:flex; align-items:center; justify-content:center; margin:0 auto 14px; font-size:1.4em;">📱</div>
    <div style="font-weight:700; color:#111827; margin-bottom:6px;">Digital Label</div>
    <div style="font-size:.82em; color:#6b7280; line-height:1.5; margin-bottom:14px; max-width:220px; margin-left:auto; margin-right:auto;">The draft or approved SmPC, PIL, and IFU as modern, searchable content.</div>
    <span style="display:inline-block; background:#3b82f6; color:#fff; font-size:.8em; font-weight:600; padding:7px 18px; border-radius:6px;">Try the Demo</span>
  </a>
  <!-- Type 2 -->
  <a href="examples/bundle-epi-type2-example-paracetamol.html" target="_blank" style="text-decoration:none; display:block; padding:32px 24px; border-right:1px solid #e5e7eb; text-align:center;">
    <div style="width:52px; height:52px; border-radius:50%; background:#ecfdf5; display:flex; align-items:center; justify-content:center; margin:0 auto 14px; font-size:1.4em;">🔍</div>
    <div style="font-weight:700; color:#111827; margin-bottom:6px;">Product Data</div>
    <div style="font-size:.82em; color:#6b7280; line-height:1.5; margin-bottom:14px; max-width:220px; margin-left:auto; margin-right:auto;">GTINs, ingredients, packaging layers — structured and machine-readable.</div>
    <span style="display:inline-block; background:#10b981; color:#fff; font-size:.8em; font-weight:600; padding:7px 18px; border-radius:6px;">Try the Demo</span>
  </a>
  <!-- Type 3 -->
  <a href="examples/bundle-epi-type3-example-wonderdrug.html" target="_blank" style="text-decoration:none; display:block; padding:32px 24px; text-align:center;">
    <div style="width:52px; height:52px; border-radius:50%; background:#f5f3ff; display:flex; align-items:center; justify-content:center; margin:0 auto 14px; font-size:1.4em;">⚡</div>
    <div style="font-weight:700; color:#111827; margin-bottom:6px;">Clinical Data</div>
    <div style="font-size:.82em; color:#6b7280; line-height:1.5; margin-bottom:14px; max-width:220px; margin-left:auto; margin-right:auto;">Dosing, interactions, and contraindications your health systems can consume.</div>
    <span style="display:inline-block; background:#8b5cf6; color:#fff; font-size:.8em; font-weight:600; padding:7px 18px; border-radius:6px;">Try the Demo</span>
  </a>
</div>

<div style="text-align:center; padding:16px; background:#f9fafb; border-bottom:1px solid #e5e7eb;">
  <a href="build-overview.html" style="color:#003087; font-weight:600; font-size:.88em; text-decoration:none;">Learn more about the four ePI Types →</a>
</div>

<!-- ABOUT THIS IG -->
<div style="padding-top:40px;"></div>
<h2 id="about" style="font-size:1.3em; font-weight:700; color:#111827; margin-bottom:12px;">About This IG</h2>

<div style="margin-bottom:24px;">
  <p style="font-size:.88em; color:#374151; line-height:1.7; margin-bottom:12px;">The Electronic Medicinal Product Information (ePI) Implementation Guide defines how HL7 FHIR R5 is used to represent the product information for medicinal products, both draft and approved — the healthcare professional label, the patient leaflet, instructions for use, and pack artwork — as structured, machine-readable documents.</p>
  <p style="font-size:.88em; color:#374151; line-height:1.7; margin-bottom:12px;">Today, product information is largely exchanged and published as static PDF or Word documents, alongside a patchwork of regional XML formats and proprietary systems. The same content is re-keyed many times across companies, regulators, and downstream systems, and each national template, heading structure, and terminology adds another variation to manage. Updates are slow to reach prescribers and patients, and the information cannot easily be consumed by clinical systems.</p>
  <p style="font-size:.88em; color:#374151; line-height:1.7; margin-bottom:12px;">This guide provides a single global baseline built on <a href="build-overview.html">Bundle, Composition, and the FHIR medication definition resources</a>. It accommodates every national label template and its section and sub-section headings, and binds to national and international <a href="terminology.html">controlled terminologies</a>. Regulators can then localize the baseline in their own national guidance rather than inventing a new format.</p>
  <p style="font-size:.88em; color:#374151; line-height:1.7; margin-bottom:12px;">ePI is not only for approved labels. It also supports draft labels submitted for regulatory review, in both annotated and clean versions. The guide defines how to express <a href="tracked-changes.html">annotations — tracked changes and comment threads — directly in the XML</a>, so draft labels can be exchanged and reviewed without the need for DOCX.</p>
  <p style="font-size:.88em; color:#374151; line-height:1.7; margin:0;">ePI is designed to mature in steps: from a <a href="build-epi1.html">Type 1 digital label</a>, to <a href="build-epi2.html">Type 2 product identification</a>, to <a href="build-epi3.html">Type 3 clinical information</a>, and the <a href="build-epi4.html">Type 4 dynamic digital label</a>. Each type adds structured data while keeping the approved narrative intact. The guide is developed under the HL7 Vulcan Accelerator with regulators, pharmaceutical companies, and technology vendors.</p>
</div>

<!-- SCOPE -->
<h2 id="scope" style="font-size:1.1em; font-weight:700; color:#111827; margin-bottom:12px;">Scope</h2>

<p style="font-size:.88em; color:#374151; line-height:1.7; margin-bottom:16px;">This Implementation Guide focuses on the draft and approved product information for human biopharmaceutical drugs, across every national label template and terminology.</p>

<div style="display:grid; grid-template-columns:repeat(auto-fit, minmax(260px, 1fr)); gap:14px; margin-bottom:14px;">
  <div style="background:#ecfdf5; border:1px solid #a7f3d0; border-radius:8px; padding:16px;">
    <div style="font-weight:700; color:#065f46; margin-bottom:6px; font-size:.9em;">✅ In Scope</div>
    <ul style="font-size:.85em; color:#064e3b; line-height:1.7; padding-left:16px; margin:0;">
      <li><strong>All national drug label templates</strong> — accommodates every national template, including its section and sub-section headings</li>
      <li><strong>All national and international controlled terminologies</strong></li>
      <li><strong>Healthcare professional labels</strong> — e.g., SmPC, US drug label (USPI), Product Monograph, Japan PI</li>
      <li><strong>Patient information</strong> — e.g., Patient Information Leaflets (PIL)</li>
      <li><strong>Instructions for use</strong> (IFU)</li>
      <li><strong>Company Core Labels</strong> — Company Core Data Sheet (CDS), Core Patient Information (CPI), Core Instructions for Use (CIFU)</li>
      <li><strong>Pack artwork</strong></li>
      <li><strong>Draft and approved labels</strong> — including draft annotated labels with tracked changes and comment threads, and draft clean labels submitted for review</li>
      <li><strong>Biopharmaceutical drugs</strong></li>
    </ul>
  </div>
  <div style="background:#fef2f2; border:1px solid #fecaca; border-radius:8px; padding:16px;">
    <div style="font-weight:700; color:#991b1b; margin-bottom:6px; font-size:.9em;">⛔ Out of Scope (current phase)</div>
    <p style="font-size:.82em; color:#7f1d1d; line-height:1.5; margin:0 0 6px;">The following product domains are out of scope for the current phase:</p>
    <ul style="font-size:.85em; color:#7f1d1d; line-height:1.7; padding-left:16px; margin:0;">
      <li>Medical devices</li>
      <li>Veterinary drugs</li>
      <li>Over-the-counter (OTC) drugs</li>
      <li>Natural health products</li>
      <li>Cosmetics</li>
    </ul>
  </div>
</div>

<p style="font-size:.82em; color:#6b7280; line-height:1.6; margin-bottom:32px;">These domains are out of scope for the current phase only. They will be supported in future phases of this project.</p>

<hr style="border:none; border-top:1px solid #e5e7eb; margin:0 0 32px;"/>

<!-- HOW IT WORKS — 5-STEP PIPELINE -->
<div style="text-align:center; margin-bottom:28px;">
  <h2 id="how-it-works" style="font-size:1.5em; font-weight:800; color:#111827; margin-bottom:8px;">How It Works</h2>
  <p style="font-size:.92em; color:#6b7280; max-width:540px; margin:0 auto; line-height:1.55;">Five steps from a draft label to approved data every downstream system can use.</p>
</div>

<div style="display:flex; align-items:flex-start; justify-content:center; gap:0; margin-bottom:28px; flex-wrap:wrap; row-gap:20px;">
  <!-- Step 1: Author -->
  <div style="text-align:center; flex:1; min-width:120px; max-width:160px; padding:0 4px;">
    <div style="width:56px; height:56px; border-radius:50%; background:linear-gradient(135deg,#eff6ff,#dbeafe); border:3px solid #2563eb; display:flex; align-items:center; justify-content:center; margin:0 auto 12px; font-size:1.3em; box-shadow:0 2px 8px rgba(37,99,235,.15);">✍️</div>
    <div style="font-size:.7em; font-weight:700; text-transform:uppercase; letter-spacing:.1em; color:#2563eb; margin-bottom:4px;">Step 1</div>
    <div style="font-weight:700; color:#111827; font-size:.92em; margin-bottom:6px;">Author</div>
    <p style="font-size:.78em; color:#6b7280; line-height:1.5; margin:0;">Write the label in a structured authoring tool using your national template</p>
  </div>
  <div style="display:flex; align-items:center; padding-top:18px; flex-shrink:0; color:#d1d5db; font-size:1.2em;">→</div>
  <!-- Step 2: Structure -->
  <div style="text-align:center; flex:1; min-width:120px; max-width:160px; padding:0 4px;">
    <div style="width:56px; height:56px; border-radius:50%; background:linear-gradient(135deg,#f0fdfa,#ccfbf1); border:3px solid #0d9488; display:flex; align-items:center; justify-content:center; margin:0 auto 12px; font-size:1.3em; box-shadow:0 2px 8px rgba(13,148,136,.15);">🧱</div>
    <div style="font-size:.7em; font-weight:700; text-transform:uppercase; letter-spacing:.1em; color:#0d9488; margin-bottom:4px;">Step 2</div>
    <div style="font-weight:700; color:#111827; font-size:.92em; margin-bottom:6px;">Structure</div>
    <p style="font-size:.78em; color:#6b7280; line-height:1.5; margin:0;">Package it as a FHIR Bundle and Composition, with coded section headings</p>
  </div>
  <div style="display:flex; align-items:center; padding-top:18px; flex-shrink:0; color:#d1d5db; font-size:1.2em;">→</div>
  <!-- Step 3: Enrich -->
  <div style="text-align:center; flex:1; min-width:120px; max-width:160px; padding:0 4px;">
    <div style="width:56px; height:56px; border-radius:50%; background:linear-gradient(135deg,#fff7ed,#fed7aa); border:3px solid #ea580c; display:flex; align-items:center; justify-content:center; margin:0 auto 12px; font-size:1.3em; box-shadow:0 2px 8px rgba(234,88,12,.15);">🏷️</div>
    <div style="font-size:.7em; font-weight:700; text-transform:uppercase; letter-spacing:.1em; color:#ea580c; margin-bottom:4px;">Step 3</div>
    <div style="font-weight:700; color:#111827; font-size:.92em; margin-bottom:6px;">Enrich</div>
    <p style="font-size:.78em; color:#6b7280; line-height:1.5; margin:0;">Add structured product and clinical data as your ePI Type matures</p>
  </div>
  <div style="display:flex; align-items:center; padding-top:18px; flex-shrink:0; color:#d1d5db; font-size:1.2em;">→</div>
  <!-- Step 4: Validate & Submit -->
  <div style="text-align:center; flex:1; min-width:120px; max-width:160px; padding:0 4px;">
    <div style="width:56px; height:56px; border-radius:50%; background:linear-gradient(135deg,#faf5ff,#e9d5ff); border:3px solid #7c3aed; display:flex; align-items:center; justify-content:center; margin:0 auto 12px; font-size:1.3em; box-shadow:0 2px 8px rgba(124,58,237,.15);">✅</div>
    <div style="font-size:.7em; font-weight:700; text-transform:uppercase; letter-spacing:.1em; color:#7c3aed; margin-bottom:4px;">Step 4</div>
    <div style="font-weight:700; color:#111827; font-size:.92em; margin-bottom:6px;">Validate &amp; Approve</div>
    <p style="font-size:.78em; color:#6b7280; line-height:1.5; margin:0;">Check against this IG and national profiles, then submit for regulatory review</p>
  </div>
  <div style="display:flex; align-items:center; padding-top:18px; flex-shrink:0; color:#d1d5db; font-size:1.2em;">→</div>
  <!-- Step 5: Publish -->
  <div style="text-align:center; flex:1; min-width:120px; max-width:160px; padding:0 4px;">
    <div style="width:56px; height:56px; border-radius:50%; background:linear-gradient(135deg,#ecfdf5,#a7f3d0); border:3px solid #059669; display:flex; align-items:center; justify-content:center; margin:0 auto 12px; font-size:1.3em; box-shadow:0 2px 8px rgba(5,150,105,.15);">🌐</div>
    <div style="font-size:.7em; font-weight:700; text-transform:uppercase; letter-spacing:.1em; color:#059669; margin-bottom:4px;">Step 5</div>
    <div style="font-weight:700; color:#111827; font-size:.92em; margin-bottom:6px;">Publish</div>
    <p style="font-size:.78em; color:#6b7280; line-height:1.5; margin:0;">Serve the approved ePI from a FHIR repository to EMRs, ePrescribing, and apps</p>
  </div>
</div>

<div style="text-align:center; padding:0 20px 24px;">
  <a href="how-it-works.html" style="color:#003087; font-weight:600; font-size:.9em; text-decoration:none;">See how ePI works, part by part →</a>
</div>

<!-- WHY ADOPT -->
<div style="text-align:center; padding:16px 20px 8px;">
  <h2 id="why-adopt" style="font-size:1.5em; font-weight:800; color:#111827; margin-bottom:10px;">Why adopt ePI</h2>
  <p style="font-size:.95em; color:#6b7280; max-width:520px; margin:0 auto 28px; line-height:1.55;">A single FHIR-based document model that enables safety, speed, and global interoperability.</p>
</div>

<div style="display:grid; grid-template-columns:repeat(auto-fit, minmax(320px, 1fr)); gap:16px; margin-bottom:48px;">
  <div style="background:#f9fafb; border:1px solid #e5e7eb; border-radius:10px; padding:24px; display:flex; flex-direction:column;">
    <div style="font-size:1.4em; margin-bottom:10px;">🌍</div>
    <div style="font-weight:700; color:#003087; margin-bottom:6px;">One Global Standard</div>
    <p style="font-size:.88em; color:#4b5563; line-height:1.6; margin:0 0 12px; flex:1;">Stop managing regional XML variations. Use a single HL7 FHIR baseline to build once, then localize to suit any local regulatory requirements.</p>
    <a href="templates.html" style="color:#003087; font-weight:600; font-size:.85em; text-decoration:none;">See the templates →</a>
  </div>
  <div style="background:#f9fafb; border:1px solid #e5e7eb; border-radius:10px; padding:24px; display:flex; flex-direction:column;">
    <div style="font-size:1.4em; margin-bottom:10px;">🛡️</div>
    <div style="font-weight:700; color:#003087; margin-bottom:6px;">Patient Safety</div>
    <p style="font-size:.88em; color:#4b5563; line-height:1.6; margin:0 0 12px; flex:1;">Machine-readable ingredients and interactions allow health systems to flag allergies and interactions automatically.</p>
    <a href="build-epi3.html" style="color:#003087; font-weight:600; font-size:.85em; text-decoration:none;">Type 3 clinical information →</a>
  </div>
  <div style="background:#f9fafb; border:1px solid #e5e7eb; border-radius:10px; padding:24px; display:flex; flex-direction:column;">
    <div style="font-size:1.4em; margin-bottom:10px;">📦</div>
    <div style="font-weight:700; color:#003087; margin-bottom:6px;">Supply Chain Agility</div>
    <p style="font-size:.88em; color:#4b5563; line-height:1.6; margin:0 0 12px; flex:1;">Query therapeutic alternatives instantly during drug shortages. Cross-border substitute packaging at your fingertips.</p>
    <a href="build-epi2.html" style="color:#003087; font-weight:600; font-size:.85em; text-decoration:none;">Type 2 product identification →</a>
  </div>
  <div style="background:#f9fafb; border:1px solid #e5e7eb; border-radius:10px; padding:24px; display:flex; flex-direction:column;">
    <div style="font-size:1.4em; margin-bottom:10px;">🔗</div>
    <div style="font-weight:700; color:#003087; margin-bottom:6px;">Digital Interoperability</div>
    <p style="font-size:.88em; color:#4b5563; line-height:1.6; margin:0 0 12px; flex:1;">Feed authoritative label data directly into ePrescribing, EMRs, and patient-facing mobile apps.</p>
    <a href="tech-details.html" style="color:#003087; font-weight:600; font-size:.85em; text-decoration:none;">FHIR servers →</a>
  </div>
  <div style="background:#f9fafb; border:1px solid #e5e7eb; border-radius:10px; padding:24px; display:flex; flex-direction:column;">
    <div style="font-size:1.4em; margin-bottom:10px;">📝</div>
    <div style="font-weight:700; color:#003087; margin-bottom:6px;">Review Without DOCX</div>
    <p style="font-size:.88em; color:#4b5563; line-height:1.6; margin:0 0 12px; flex:1;">Exchange draft annotated and draft clean labels for review, with tracked changes and comment threads carried in the XML itself.</p>
    <a href="tracked-changes.html" style="color:#003087; font-weight:600; font-size:.85em; text-decoration:none;">Tracked changes →</a>
  </div>
  <div style="background:#f9fafb; border:1px solid #e5e7eb; border-radius:10px; padding:24px; display:flex; flex-direction:column;">
    <div style="font-size:1.4em; margin-bottom:10px;">🔎</div>
    <div style="font-weight:700; color:#003087; margin-bottom:6px;">Instant Difference Checks</div>
    <p style="font-size:.88em; color:#4b5563; line-height:1.6; margin:0 0 12px; flex:1;">Regulators can instantly compare a received label against the previously approved version, or auto-generate comparison tables that highlight changes between current and previous versions.</p>
    <a href="versions.html" style="color:#003087; font-weight:600; font-size:.85em; text-decoration:none;">Version control →</a>
  </div>
  <div style="background:#f9fafb; border:1px solid #e5e7eb; border-radius:10px; padding:24px; display:flex; flex-direction:column;">
    <div style="font-size:1.4em; margin-bottom:10px;">🖨️</div>
    <div style="font-weight:700; color:#003087; margin-bottom:6px;">Auto-generated Pack Artwork</div>
    <p style="font-size:.88em; color:#4b5563; line-height:1.6; margin:0 0 12px; flex:1;">Generate pack artwork automatically from structured content and style sheets, so the carton and container text always matches the approved label.</p>
    <a href="templates.html" style="color:#003087; font-weight:600; font-size:.85em; text-decoration:none;">Templates and rendering →</a>
  </div>
  <div style="background:#f9fafb; border:1px solid #e5e7eb; border-radius:10px; padding:24px; display:flex; flex-direction:column;">
    <div style="font-size:1.4em; margin-bottom:10px;">🎨</div>
    <div style="font-weight:700; color:#003087; margin-bottom:6px;">Dynamic, Web-friendly Content</div>
    <p style="font-size:.88em; color:#4b5563; line-height:1.6; margin:0 0 12px; flex:1;">Change how the label looks at the push of a button: one, two, or three columns, font, font size, colours, and styling, all from the same content.</p>
    <a href="examples/bundle-epi-type1-example-paracetamol.html" style="color:#003087; font-weight:600; font-size:.85em; text-decoration:none;">Try the demo →</a>
  </div>
</div>
