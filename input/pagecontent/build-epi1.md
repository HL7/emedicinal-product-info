<!-- ePI TYPE 1 — Build Guide | Target: business/regulatory users -->

<!-- PRE-REQUISITES -->
<div id="prerequisites" style="margin-bottom:32px;">
<h2 style="font-size:1.35rem; font-weight:700; color:#111827; margin-bottom:6px;">Before You Start</h2>
<p style="color:#6b7280; font-size:.92rem; margin-bottom:20px;">Complete these three steps before building any ePI type.</p>
<div style="display:grid; grid-template-columns:repeat(3,1fr); gap:14px; margin-bottom:8px;">
  <div style="background:#fff; border:1px solid #e5e7eb; border-top:3px solid #2563eb; border-radius:8px; padding:18px 20px;">
    <div style="font-size:1.4rem; margin-bottom:8px;">📖</div>
    <div style="font-size:.72rem; font-weight:700; text-transform:uppercase; letter-spacing:.1em; color:#9ca3af; margin-bottom:4px;">Step A</div>
    <div style="font-weight:700; color:#111827; margin-bottom:6px;">Read the Global ePI IG</div>
    <div style="font-size:.84rem; color:#6b7280; margin-bottom:10px;">Familiarise yourself with the Vulcan eMedicinal Product Information standard and its four ePI types.</div>
    <a href="https://build.fhir.org/ig/HL7/vulcan-epi/" target="_blank" style="font-size:.8rem; color:#2563eb; font-weight:600;">Open the Vulcan ePI IG →</a>
  </div>
  <div style="background:#fff; border:1px solid #e5e7eb; border-top:3px solid #0891b2; border-radius:8px; padding:18px 20px;">
    <div style="font-size:1.4rem; margin-bottom:8px;">🏛️</div>
    <div style="font-size:.72rem; font-weight:700; text-transform:uppercase; letter-spacing:.1em; color:#9ca3af; margin-bottom:4px;">Step B</div>
    <div style="font-weight:700; color:#111827; margin-bottom:6px;">Read your national ePI guidance</div>
    <div style="font-size:.84rem; color:#6b7280; margin-bottom:10px;">Your health regulator may publish specific formatting rules, section codes, or terminology requirements that extend this guide.</div>
    <span style="font-size:.8rem; color:#6b7280; font-style:italic;">Check your national regulator's website</span>
  </div>
  <div style="background:#fff; border:1px solid #e5e7eb; border-top:3px solid #7c3aed; border-radius:8px; padding:18px 20px;">
    <div style="font-size:1.4rem; margin-bottom:8px;">🛠️</div>
    <div style="font-size:.72rem; font-weight:700; text-transform:uppercase; letter-spacing:.1em; color:#9ca3af; margin-bottom:4px;">Step C</div>
    <div style="font-weight:700; color:#111827; margin-bottom:6px;">Get a structured authoring tool</div>
    <div style="font-size:.84rem; color:#6b7280; margin-bottom:10px;">Use a certified ePI authoring platform or an advanced XML/JSON editor. Manual authoring is possible but error-prone.</div>
    <span style="font-size:.8rem; color:#6b7280; font-style:italic;">Consult your vendor or regulator for approved tools</span>
  </div>
</div>
</div>

<hr style="border:none; border-top:1px solid #e5e7eb; margin:28px 0;"/>

<!-- WHAT IS TYPE 1 -->
<h2 style="font-size:1.35rem; font-weight:700; color:#111827; margin-bottom:8px;">What is ePI Type 1?</h2>
<p style="color:#374151; font-size:.94rem; line-height:1.7; margin-bottom:16px;">An ePI Type 1 is the digital equivalent of your existing paper label — a Summary of Product Characteristics (SmPC), Patient Information Leaflet (PIL), or other authorised document — converted into a structured FHIR document. It preserves the full narrative text and embedded images, making the document machine-readable while remaining human-readable.</p>

<div style="margin-bottom:8px;"><span style="font-size:.75rem; font-weight:700; text-transform:uppercase; letter-spacing:.1em; color:#9ca3af;">You will create these FHIR resources</span></div>
<div style="display:flex; flex-wrap:wrap; gap:8px; margin-bottom:28px;">
  <span style="background:#eff6ff; border:1px solid #bfdbfe; color:#1d4ed8; font-size:.78rem; font-weight:600; padding:4px 12px; border-radius:99px;">📦 Bundle</span>
  <span style="background:#f0fdfa; border:1px solid #99f6e4; color:#0f766e; font-size:.78rem; font-weight:600; padding:4px 12px; border-radius:99px;">📄 Composition</span>
  <span style="background:#faf5ff; border:1px solid #e9d5ff; color:#7e22ce; font-size:.78rem; font-weight:600; padding:4px 12px; border-radius:99px;">🖼️ Binary (images)</span>
</div>

<hr style="border:none; border-top:1px solid #e5e7eb; margin:28px 0;"/>

<!-- STEPS -->
<h2 style="font-size:1.35rem; font-weight:700; color:#111827; margin-bottom:20px;">Step-by-Step Workflow</h2>

<!-- STEP 1 -->
<div style="display:flex; gap:16px; margin-bottom:20px; align-items:flex-start;">
  <div style="flex-shrink:0; width:36px; height:36px; border-radius:50%; background:#003087; color:#fff; display:flex; align-items:center; justify-content:center; font-size:.85rem; font-weight:700; margin-top:2px;">1</div>
  <div style="flex:1; background:#fff; border:1px solid #e5e7eb; border-radius:8px; overflow:hidden;">
    <div style="padding:14px 20px 10px; border-bottom:1px solid #e5e7eb; background:#f9fafb;"><div style="font-weight:700; color:#111827; font-size:.97rem;">Get the DOCX version of the label</div></div>
    <div style="padding:14px 20px;">
      <p style="font-size:.88rem; color:#374151; line-height:1.7; margin-bottom:10px;">Obtain the most recent <strong>regulator-approved</strong> version of the label in Word format (DOCX or DOC). This is your source of truth. Always use the version that matches the current marketing authorisation.</p>
      <div style="background:#fffbeb; border:1px solid #fde68a; border-left:3px solid #d97706; border-radius:6px; padding:10px 14px; font-size:.82rem; color:#78350f; display:flex; gap:10px; align-items:flex-start;">
        <span style="flex-shrink:0;">💡</span>
        <span><strong>Tip:</strong> If only a PDF exists, convert it to DOCX using a document conversion tool before proceeding. Review the output carefully — formatting artefacts from PDF conversion can introduce errors.</span>
      </div>
    </div>
  </div>
</div>

<!-- STEP 2 -->
<div style="display:flex; gap:16px; margin-bottom:20px; align-items:flex-start;">
  <div style="flex-shrink:0; width:36px; height:36px; border-radius:50%; background:#003087; color:#fff; display:flex; align-items:center; justify-content:center; font-size:.85rem; font-weight:700; margin-top:2px;">2</div>
  <div style="flex:1; background:#fff; border:1px solid #e5e7eb; border-radius:8px; overflow:hidden;">
    <div style="padding:14px 20px 10px; border-bottom:1px solid #e5e7eb; background:#f9fafb;"><div style="font-weight:700; color:#111827; font-size:.97rem;">Identify your scope</div></div>
    <div style="padding:14px 20px;">
      <p style="font-size:.88rem; color:#374151; line-height:1.7; margin-bottom:14px;">Before converting any content, answer these questions. Your answers drive the document's core metadata.</p>
      <table style="width:100%; border-collapse:collapse; font-size:.84rem; margin-bottom:10px;">
        <thead><tr style="background:#003087; color:#fff;">
          <th style="padding:9px 12px; border:1px solid #d0d0d0; text-align:left; width:35%;">Question</th>
          <th style="padding:9px 12px; border:1px solid #d0d0d0; text-align:left;">Drives this ePI field</th>
        </tr></thead>
        <tbody>
          <tr><td style="padding:9px 12px; border:1px solid #d0d0d0;">Which jurisdiction?</td><td style="padding:9px 12px; border:1px solid #d0d0d0;"><code style="font-family:monospace; font-size:.8rem; color:#0891b2;">identifier.system</code> (regulator's namespace)</td></tr>
          <tr style="background:#f9fafb;"><td style="padding:9px 12px; border:1px solid #d0d0d0;">SmPC, PIL, or package leaflet?</td><td style="padding:9px 12px; border:1px solid #d0d0d0;"><code style="font-family:monospace; font-size:.8rem; color:#0891b2;">Composition.type</code> (document type code)</td></tr>
          <tr><td style="padding:9px 12px; border:1px solid #d0d0d0;">Which language(s)?</td><td style="padding:9px 12px; border:1px solid #d0d0d0;"><code style="font-family:monospace; font-size:.8rem; color:#0891b2;">Composition.language</code> (ISO 639-1, e.g. <strong>en</strong>)</td></tr>
          <tr style="background:#f9fafb;"><td style="padding:9px 12px; border:1px solid #d0d0d0;">Which medicinal product?</td><td style="padding:9px 12px; border:1px solid #d0d0d0;"><code style="font-family:monospace; font-size:.8rem; color:#0891b2;">Composition.title</code> + Type 2 product linkage</td></tr>
        </tbody>
      </table>
      <div style="background:#fffbeb; border:1px solid #fde68a; border-left:3px solid #d97706; border-radius:6px; padding:10px 14px; font-size:.82rem; color:#78350f; display:flex; gap:10px; align-items:flex-start;">
        <span style="flex-shrink:0;">💡</span>
        <span><strong>One document per language:</strong> Each language version is a separate ePI Bundle. Do not mix languages within a single document.</span>
      </div>
    </div>
  </div>
</div>

<!-- STEP 3 -->
<div style="display:flex; gap:16px; margin-bottom:20px; align-items:flex-start;">
  <div style="flex-shrink:0; width:36px; height:36px; border-radius:50%; background:#003087; color:#fff; display:flex; align-items:center; justify-content:center; font-size:.85rem; font-weight:700; margin-top:2px;">3</div>
  <div style="flex:1; background:#fff; border:1px solid #e5e7eb; border-radius:8px; overflow:hidden;">
    <div style="padding:14px 20px 10px; border-bottom:1px solid #e5e7eb; background:#f9fafb;"><div style="font-weight:700; color:#111827; font-size:.97rem;">Convert DOCX content to ePI sections — apply the Granularity Rule</div></div>
    <div style="padding:14px 20px;">
      <p style="font-size:.88rem; color:#374151; line-height:1.7; margin-bottom:14px;">Map each top-level heading in the Word document to a top-level <code style="font-family:monospace; font-size:.8rem; color:#0891b2;">&lt;section&gt;</code> in the Composition. Narrative text goes inside each section's <code style="font-family:monospace; font-size:.8rem; color:#0891b2;">&lt;text&gt;</code> element as XHTML.</p>
      <div style="background:#eff6ff; border:1px solid #bfdbfe; border-left:4px solid #2563eb; border-radius:8px; padding:14px 18px; margin-bottom:16px;">
        <div style="font-size:.72rem; font-weight:700; text-transform:uppercase; letter-spacing:.1em; color:#1d4ed8; margin-bottom:6px;">⚡ The ePI Granularity Rule</div>
        <p style="font-size:.88rem; color:#1e40af; line-height:1.7; margin:0;">In a Word document, sections like <strong>Indications</strong> are typically one large block of text. In an ePI, <strong>each individual item must be its own child subsection</strong>. This granularity enables automated clinical decision support, structured search, and multilingual comparison.</p>
      </div>
      <div style="font-size:.78rem; font-weight:700; text-transform:uppercase; letter-spacing:.08em; color:#9ca3af; margin-bottom:6px;">Example 1 — Indications</div>
      <div style="display:grid; grid-template-columns:1fr 1fr; gap:10px; margin-bottom:14px;">
        <div style="border:1px solid #fecaca; border-radius:8px; overflow:hidden;">
          <div style="padding:7px 12px; background:#fef2f2; border-bottom:1px solid #fecaca;"><span style="font-size:.7rem; font-weight:700; text-transform:uppercase; color:#b91c1c;">⚠ Word: Monolith</span></div>
          <div style="padding:10px 12px; font-size:.81rem; color:#374151; line-height:1.8; font-family:'Times New Roman',serif;"><strong style="text-decoration:underline;">4. INDICATIONS</strong><br/>This medicine is indicated for:<br/>• Mild to moderate pain<br/>• Reduction of fever<br/>• Musculoskeletal pain in adults</div>
        </div>
        <div style="border:1px solid #bbf7d0; border-radius:8px; overflow:hidden;">
          <div style="padding:7px 12px; background:#f0fdf4; border-bottom:1px solid #bbf7d0;"><span style="font-size:.7rem; font-weight:700; text-transform:uppercase; color:#15803d;">✓ ePI: Granular</span></div>
          <div style="padding:10px 12px; font-size:.76rem; font-family:ui-monospace,'SF Mono',monospace; color:#374151; line-height:1.9;"><span style="color:#0891b2;">&lt;section&gt;</span> <span style="color:#9ca3af;">← Indications (parent)</span><br/>&nbsp;&nbsp;<span style="color:#2563eb;">&lt;section&gt;</span> Mild to moderate pain <span style="color:#2563eb;">&lt;/section&gt;</span><br/>&nbsp;&nbsp;<span style="color:#2563eb;">&lt;section&gt;</span> Reduction of fever <span style="color:#2563eb;">&lt;/section&gt;</span><br/>&nbsp;&nbsp;<span style="color:#2563eb;">&lt;section&gt;</span> Musculoskeletal pain <span style="color:#2563eb;">&lt;/section&gt;</span><br/><span style="color:#0891b2;">&lt;/section&gt;</span></div>
        </div>
      </div>
      <div style="font-size:.78rem; font-weight:700; text-transform:uppercase; letter-spacing:.08em; color:#9ca3af; margin-bottom:6px;">Example 2 — Contraindications</div>
      <div style="display:grid; grid-template-columns:1fr 1fr; gap:10px; margin-bottom:14px;">
        <div style="border:1px solid #fecaca; border-radius:8px; overflow:hidden;">
          <div style="padding:7px 12px; background:#fef2f2; border-bottom:1px solid #fecaca;"><span style="font-size:.7rem; font-weight:700; text-transform:uppercase; color:#b91c1c;">⚠ Word: Monolith</span></div>
          <div style="padding:10px 12px; font-size:.81rem; color:#374151; line-height:1.8; font-family:'Times New Roman',serif;"><strong style="text-decoration:underline;">5. CONTRAINDICATIONS</strong><br/>Do not use if the patient has:<br/>• Known hypersensitivity to the active substance<br/>• Severe hepatic impairment<br/>• Active peptic ulcer disease</div>
        </div>
        <div style="border:1px solid #bbf7d0; border-radius:8px; overflow:hidden;">
          <div style="padding:7px 12px; background:#f0fdf4; border-bottom:1px solid #bbf7d0;"><span style="font-size:.7rem; font-weight:700; text-transform:uppercase; color:#15803d;">✓ ePI: Granular</span></div>
          <div style="padding:10px 12px; font-size:.76rem; font-family:ui-monospace,'SF Mono',monospace; color:#374151; line-height:1.9;"><span style="color:#0891b2;">&lt;section&gt;</span> <span style="color:#9ca3af;">← Contraindications (parent)</span><br/>&nbsp;&nbsp;<span style="color:#dc2626;">&lt;section&gt;</span> Known hypersensitivity <span style="color:#dc2626;">&lt;/section&gt;</span><br/>&nbsp;&nbsp;<span style="color:#dc2626;">&lt;section&gt;</span> Severe hepatic impairment <span style="color:#dc2626;">&lt;/section&gt;</span><br/>&nbsp;&nbsp;<span style="color:#dc2626;">&lt;section&gt;</span> Active peptic ulcer disease <span style="color:#dc2626;">&lt;/section&gt;</span><br/><span style="color:#0891b2;">&lt;/section&gt;</span></div>
        </div>
      </div>
      <div style="font-size:.78rem; font-weight:700; text-transform:uppercase; letter-spacing:.08em; color:#9ca3af; margin-bottom:6px;">Example 3 — Warnings &amp; Special Populations</div>
      <div style="display:grid; grid-template-columns:1fr 1fr; gap:10px; margin-bottom:10px;">
        <div style="border:1px solid #fecaca; border-radius:8px; overflow:hidden;">
          <div style="padding:7px 12px; background:#fef2f2; border-bottom:1px solid #fecaca;"><span style="font-size:.7rem; font-weight:700; text-transform:uppercase; color:#b91c1c;">⚠ Word: Monolith</span></div>
          <div style="padding:10px 12px; font-size:.81rem; color:#374151; line-height:1.8; font-family:'Times New Roman',serif;"><strong style="text-decoration:underline;">4.4 SPECIAL WARNINGS</strong><br/>Use with caution in:<br/>• Elderly patients (≥ 65 years)<br/>• Patients with renal impairment<br/>• Patients with cardiovascular disease</div>
        </div>
        <div style="border:1px solid #bbf7d0; border-radius:8px; overflow:hidden;">
          <div style="padding:7px 12px; background:#f0fdf4; border-bottom:1px solid #bbf7d0;"><span style="font-size:.7rem; font-weight:700; text-transform:uppercase; color:#15803d;">✓ ePI: Granular</span></div>
          <div style="padding:10px 12px; font-size:.76rem; font-family:ui-monospace,'SF Mono',monospace; color:#374151; line-height:1.9;"><span style="color:#0891b2;">&lt;section&gt;</span> <span style="color:#9ca3af;">← Special Warnings (parent)</span><br/>&nbsp;&nbsp;<span style="color:#d97706;">&lt;section&gt;</span> Elderly patients <span style="color:#d97706;">&lt;/section&gt;</span><br/>&nbsp;&nbsp;<span style="color:#d97706;">&lt;section&gt;</span> Renal impairment <span style="color:#d97706;">&lt;/section&gt;</span><br/>&nbsp;&nbsp;<span style="color:#d97706;">&lt;section&gt;</span> Cardiovascular disease <span style="color:#d97706;">&lt;/section&gt;</span><br/><span style="color:#0891b2;">&lt;/section&gt;</span></div>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- STEP 4 -->
<div style="display:flex; gap:16px; margin-bottom:20px; align-items:flex-start;">
  <div style="flex-shrink:0; width:36px; height:36px; border-radius:50%; background:#003087; color:#fff; display:flex; align-items:center; justify-content:center; font-size:.85rem; font-weight:700; margin-top:2px;">4</div>
  <div style="flex:1; background:#fff; border:1px solid #e5e7eb; border-radius:8px; overflow:hidden;">
    <div style="padding:14px 20px 10px; border-bottom:1px solid #e5e7eb; background:#f9fafb;"><div style="font-weight:700; color:#111827; font-size:.97rem;">Convert images to Base64 Binary</div></div>
    <div style="padding:14px 20px;">
      <p style="font-size:.88rem; color:#374151; line-height:1.7; margin-bottom:14px;">Physical labels often contain diagrams, instructional graphics, or logos. These must be embedded directly inside the ePI — not linked to external files — so the document is fully self-contained.</p>
      <div style="display:grid; grid-template-columns:repeat(3,1fr); gap:10px; margin-bottom:14px;">
        <div style="background:#f9fafb; border:1px solid #e5e7eb; border-radius:6px; padding:12px 14px; text-align:center;">
          <div style="font-size:1.3rem; margin-bottom:6px;">🖼️</div>
          <div style="font-size:.78rem; font-weight:700; color:#111827; margin-bottom:4px;">A. Export the image</div>
          <div style="font-size:.76rem; color:#6b7280;">Save as <strong>SVG</strong> (preferred), PNG, or JPEG from the source document</div>
        </div>
        <div style="background:#f9fafb; border:1px solid #e5e7eb; border-radius:6px; padding:12px 14px; text-align:center;">
          <div style="font-size:1.3rem; margin-bottom:6px;">🔢</div>
          <div style="font-size:.78rem; font-weight:700; color:#111827; margin-bottom:4px;">B. Encode to Base64</div>
          <div style="font-size:.76rem; color:#6b7280;">Use a free online tool or your authoring platform to convert the image to a Base64 string</div>
        </div>
        <div style="background:#f9fafb; border:1px solid #e5e7eb; border-radius:6px; padding:12px 14px; text-align:center;">
          <div style="font-size:1.3rem; margin-bottom:6px;">🔗</div>
          <div style="font-size:.78rem; font-weight:700; color:#111827; margin-bottom:4px;">C. Place &amp; cross-reference</div>
          <div style="font-size:.76rem; color:#6b7280;">Add a <code style="font-family:monospace; font-size:.73rem;">Binary</code> resource in <code style="font-family:monospace; font-size:.73rem;">contained</code>, reference it with <code style="font-family:monospace; font-size:.73rem;">&lt;img src="#id"/&gt;</code> in the narrative</div>
        </div>
      </div>
      <div style="background:#fffbeb; border:1px solid #fde68a; border-left:3px solid #d97706; border-radius:6px; padding:10px 14px; font-size:.82rem; color:#78350f; display:flex; gap:10px; align-items:flex-start;">
        <span style="flex-shrink:0;">💡</span>
        <span><strong>Preferred format:</strong> SVG scales perfectly on any screen and is typically smaller than PNG. JPEG and PNG are acceptable for legacy content. See the <a href="tech-style-guide.html#images" style="color:#92400e; font-weight:600;">Technical Style Guide</a> for full image guidance.</span>
      </div>
    </div>
  </div>
</div>

<!-- STEP 5 -->
<div style="display:flex; gap:16px; margin-bottom:28px; align-items:flex-start;">
  <div style="flex-shrink:0; width:36px; height:36px; border-radius:50%; background:#003087; color:#fff; display:flex; align-items:center; justify-content:center; font-size:.85rem; font-weight:700; margin-top:2px;">5</div>
  <div style="flex:1; background:#fff; border:1px solid #e5e7eb; border-radius:8px; overflow:hidden;">
    <div style="padding:14px 20px 10px; border-bottom:1px solid #e5e7eb; background:#f9fafb;"><div style="font-weight:700; color:#111827; font-size:.97rem;">Assemble the Bundle and validate</div></div>
    <div style="padding:14px 20px;">
      <p style="font-size:.88rem; color:#374151; line-height:1.7; margin-bottom:14px;">Wrap the Composition (and any Binary resources) inside a FHIR <strong>Bundle</strong> with <code style="font-family:monospace; font-size:.8rem; color:#0891b2;">type: document</code>. Then validate the complete file against the Type 1 profile.</p>
      <table style="width:100%; border-collapse:collapse; font-size:.84rem; margin-bottom:14px;">
        <thead><tr style="background:#003087; color:#fff;">
          <th style="padding:9px 12px; border:1px solid #d0d0d0; text-align:left; width:30%;">Bundle field</th>
          <th style="padding:9px 12px; border:1px solid #d0d0d0; text-align:left;">What to enter</th>
        </tr></thead>
        <tbody>
          <tr><td style="padding:9px 12px; border:1px solid #d0d0d0;"><code style="font-family:monospace; font-size:.8rem; color:#0891b2;">id</code></td><td style="padding:9px 12px; border:1px solid #d0d0d0;">A system-generated UUID</td></tr>
          <tr style="background:#f9fafb;"><td style="padding:9px 12px; border:1px solid #d0d0d0;"><code style="font-family:monospace; font-size:.8rem; color:#0891b2;">identifier</code></td><td style="padding:9px 12px; border:1px solid #d0d0d0;">The regulator-assigned document ID for this label</td></tr>
          <tr><td style="padding:9px 12px; border:1px solid #d0d0d0;"><code style="font-family:monospace; font-size:.8rem; color:#0891b2;">type</code></td><td style="padding:9px 12px; border:1px solid #d0d0d0;">Always <strong>document</strong></td></tr>
          <tr style="background:#f9fafb;"><td style="padding:9px 12px; border:1px solid #d0d0d0;"><code style="font-family:monospace; font-size:.8rem; color:#0891b2;">timestamp</code></td><td style="padding:9px 12px; border:1px solid #d0d0d0;">Date/time the bundle was assembled (ISO 8601)</td></tr>
          <tr><td style="padding:9px 12px; border:1px solid #d0d0d0;"><code style="font-family:monospace; font-size:.8rem; color:#0891b2;">entry[0]</code></td><td style="padding:9px 12px; border:1px solid #d0d0d0;">Must be the Composition resource; Binary entries follow</td></tr>
        </tbody>
      </table>
      <div style="background:#dcfce7; border:1px solid #bbf7d0; border-left:3px solid #16a34a; border-radius:6px; padding:10px 14px; font-size:.82rem; color:#14532d; display:flex; gap:10px; align-items:flex-start;">
        <span style="flex-shrink:0;">✅</span>
        <span><strong>Validate:</strong> Run the completed Bundle against the <a href="StructureDefinition-bundle-epi-type1.html" style="color:#15803d; font-weight:600;">Type 1 FHIR Profile</a>. Fix any errors before submitting to your regulator. Full XML/JSON examples are in the <a href="artifacts.html" style="color:#15803d; font-weight:600;">Artifacts</a> section.</span>
      </div>
    </div>
  </div>
</div>

<hr style="border:none; border-top:1px solid #e5e7eb; margin:28px 0;"/>

<!-- WHAT'S NEXT -->
<h2 style="font-size:1.1rem; font-weight:700; color:#111827; margin-bottom:12px;">What's next?</h2>
<div style="display:grid; grid-template-columns:1fr 1fr; gap:14px;">
  <a href="build-epi2.html" style="text-decoration:none; background:#fff; border:1px solid #bfdbfe; border-left:4px solid #2563eb; border-radius:8px; padding:16px 20px; display:block;">
    <div style="font-size:.72rem; font-weight:700; text-transform:uppercase; letter-spacing:.1em; color:#2563eb; margin-bottom:4px;">Next →</div>
    <div style="font-weight:700; color:#111827; margin-bottom:4px;">Build ePI Type 2</div>
    <div style="font-size:.82rem; color:#6b7280;">Add structured product identifiers, organisation records, ingredients, and pack information to enable machine-level lookup.</div>
  </a>
  <a href="build-overview.html" style="text-decoration:none; background:#f9fafb; border:1px solid #e5e7eb; border-radius:8px; padding:16px 20px; display:block;">
    <div style="font-size:.72rem; font-weight:700; text-transform:uppercase; letter-spacing:.1em; color:#6b7280; margin-bottom:4px;">Reference</div>
    <div style="font-weight:700; color:#111827; margin-bottom:4px;">Build Overview</div>
    <div style="font-size:.82rem; color:#6b7280;">Return to the overview of all four ePI types and their relationships.</div>
  </a>
</div>