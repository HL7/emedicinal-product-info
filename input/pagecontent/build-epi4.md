<!-- ePI TYPE 4 — Build Guide | Target: business/regulatory users -->
<!-- HEADER NOTE -->
<div style="background:#fffbeb; border:1px solid #fde68a; border-left:4px solid #d97706; border-radius:8px; padding:12px 18px; margin-bottom:24px; font-size:.85em; color:#78350f; display:flex; gap:10px; align-items:flex-start;">
  <span style="flex-shrink:0; font-size:1em;">📋</span>
  <span><strong>Pre-requisites:</strong> Type 4 builds on top of Types 1, 2, and 3. Before starting here, ensure you have validated <a href="build-epi1.html" style="color:#92400e; font-weight:600;">Type 1</a>, <a href="build-epi2.html" style="color:#92400e; font-weight:600;">Type 2</a>, and <a href="build-epi3.html" style="color:#92400e; font-weight:600;">Type 3</a> ePIs for the product.</span>
</div>
<!-- WHAT IS TYPE 4 -->
<h3 style="font-size:1.35em; font-weight:700; color:#111827; margin-bottom:8px;">What is ePI Type 4?</h3>
<p style="color:#374151; font-size:.94em; line-height:1.7; margin-bottom:16px;">An ePI Type 4 creates a bridge between the unstructured narrative parts of the ePI and its structured parts. Phrases in the narrative text are linked to the FHIR resources that hold the same information as coded data, so systems can move reliably between what a reader sees and what a machine can process.</p>
<p style="color:#374151; font-size:.94em; line-height:1.7; margin-bottom:20px;"><em>Conceptual examples included within this implementation guide are provided exclusively for illustrative purposes to facilitate understanding of ePI Type 4 requirements.</em></p>
<!-- RESOURCE BADGES -->
<div style="margin-bottom:8px;"><span style="font-size:.75em; font-weight:700; text-transform:uppercase; letter-spacing:.1em; color:#9ca3af;">Resources used in Type 4 (on top of Types 1, 2 &amp; 3)</span></div>
<div style="display:flex; flex-wrap:wrap; gap:8px; margin-bottom:28px;">
  <span style="background:#f9fafb; border:1px solid #e5e7eb; color:#6b7280; font-size:.78em; font-weight:600; padding:4px 12px; border-radius:99px;">All Type 1, 2 &amp; 3 resources</span>
  <span style="background:#faf5ff; border:1px solid #e9d5ff; color:#7e22ce; font-size:.78em; font-weight:600; padding:4px 12px; border-radius:99px;">🔗 Granular Composition Sections</span>
  <span style="background:#faf5ff; border:1px solid #e9d5ff; color:#7e22ce; font-size:.78em; font-weight:600; padding:4px 12px; border-radius:99px;">📎 section.entry references</span>
  <span style="background:#ecfdf5; border:1px solid #a7f3d0; color:#065f46; font-size:.78em; font-weight:600; padding:4px 12px; border-radius:99px;">🏷️ &lt;span&gt; annotations</span>
  <span style="background:#ecfdf5; border:1px solid #a7f3d0; color:#065f46; font-size:.78em; font-weight:600; padding:4px 12px; border-radius:99px;">🔀 textLink extension</span>
  <span style="background:#fff7ed; border:1px solid #fed7aa; color:#9a3412; font-size:.78em; font-weight:600; padding:4px 12px; border-radius:99px;">🧬 Atomic components</span>
</div>
<!-- TYPE 4 VALUE PROPOSITION -->
<div style="background:#f0fdf4; border:1px solid #bbf7d0; border-left:4px solid #16a34a; border-radius:8px; padding:14px 18px; margin-bottom:28px;">
  <div style="font-size:.72em; font-weight:700; text-transform:uppercase; letter-spacing:.1em; color:#15803d; margin-bottom:8px;">🎯 What Type 4 enables</div>
  <div style="display:flex; flex-direction:column; gap:12px;">
    <div style="font-size:.86em; color:#14532d; line-height:1.6;">
      <strong>For Regulatory &amp; Industry:</strong>
      <ul style="margin:6px 0 0 18px; padding:0;">
        <li>Trace each statement back to its source data</li>
        <li>Reuse the same structured data across ePIs</li>
        <li>Each phrase is clearly linked to its coded data</li>
        <li>Systems can process the content automatically</li>
      </ul>
    </div>
    <div style="font-size:.86em; color:#14532d; line-height:1.6;">
      <strong>For End Users &amp; Systems:</strong>
      <ul style="margin:6px 0 0 18px; padding:0;">
        <li>Potential for personalised information extraction</li>
        <li>Retrieval of data from harmonised, structured sources</li>
        <li>Structure-based information extraction by AI tools</li>
        <li>Dynamic content generation and filtering</li>
      </ul>
    </div>
  </div>
</div>
<!-- COMPOSITION HIERARCHY VISUAL -->
<div style="background:#f9fafb; border:1px solid #e5e7eb; border-radius:8px; padding:18px 20px; margin-bottom:28px;">
  <div style="font-size:.72em; font-weight:700; text-transform:uppercase; letter-spacing:.1em; color:#9ca3af; margin-bottom:12px;">Type 4 Composition Hierarchy</div>
  <div style="font-size:.8em;">
    <div style="margin-bottom:8px;">
      <span style="background:#003087; color:#fff; padding:5px 12px; border-radius:6px; font-weight:600;">Composition</span>
    </div>
    <div style="border-left:2px solid #e5e7eb; margin-left:14px; padding-left:14px;">
      <div style="margin-bottom:8px;">
        <span style="color:#6b7280; font-size:.85em; font-style:italic; margin-right:8px;">contains</span>
        <span style="background:#2563eb; color:#fff; padding:5px 12px; border-radius:6px; font-weight:600;">Concept (≈ Chapter)</span>
        <span style="color:#9ca3af; font-size:.78em; margin-left:8px;">e.g. "4. Clinical Particulars"</span>
      </div>
      <div style="border-left:2px solid #e5e7eb; margin-left:14px; padding-left:14px;">
        <div style="margin-bottom:8px;">
          <span style="color:#6b7280; font-size:.85em; font-style:italic; margin-right:8px;">groups</span>
          <span style="background:#7c3aed; color:#fff; padding:5px 12px; border-radius:6px; font-weight:600;">Domain (≈ Section)</span>
          <span style="color:#9ca3af; font-size:.78em; margin-left:8px;">e.g. "4.1 Therapeutic Indications"</span>
        </div>
        <div style="border-left:2px solid #e5e7eb; margin-left:14px; padding-left:14px;">
          <div style="margin-bottom:8px;">
            <span style="color:#6b7280; font-size:.85em; font-style:italic; margin-right:8px;">contains</span>
            <span style="background:#16a34a; color:#fff; padding:5px 12px; border-radius:6px; font-weight:600;">Topic (≈ Subsection)</span>
            <span style="color:#9ca3af; font-size:.78em; margin-left:8px;">one discrete clinical/regulatory message</span>
          </div>
          <div style="border-left:2px solid #e5e7eb; margin-left:14px; padding-left:14px;">
            <div style="margin-bottom:4px;">
              <span style="color:#6b7280; font-size:.85em; font-style:italic; margin-right:8px;">has</span>
              <span style="background:#d97706; color:#fff; padding:5px 12px; border-radius:6px; font-weight:600;">text</span>
              <span style="color:#9ca3af; font-size:.78em; margin-left:4px;">+</span>
              <span style="background:#dc2626; color:#fff; padding:5px 12px; border-radius:6px; font-weight:600; margin-left:4px;">entry</span>
              <span style="color:#9ca3af; font-size:.78em; margin-left:8px;">→ links to FHIR resource(s)</span>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<hr style="border:none; border-top:1px solid #e5e7eb; margin:28px 0;"/>
<!-- KEY DIFFERENCES -->
<h3 style="font-size:1.35em; font-weight:700; color:#111827; margin-bottom:16px;">Key Differences from Types 1–3</h3>
<!-- DIFFERENCE 1: COMPOSITION GRANULARITY -->
<div style="font-size:.78em; font-weight:700; text-transform:uppercase; letter-spacing:.08em; color:#9ca3af; margin-bottom:6px;">Difference 1 — Composition Granularity</div>
<div style="display:flex; flex-direction:column; gap:10px; margin-bottom:20px;">
  <div style="border:1px solid #fecaca; border-radius:8px; overflow:hidden;">
    <div style="padding:7px 12px; background:#fef2f2; border-bottom:1px solid #fecaca;"><span style="font-size:.7em; font-weight:700; text-transform:uppercase; color:#b91c1c;">⚠ Type 1–3: Large Sections</span></div>
    <div style="padding:10px 12px; font-size:.82em; color:#374151; line-height:1.8;">
      <div style="font-family:'Times New Roman',serif;">
        <strong>Section 4.1 — Therapeutic Indications</strong><br/>
        All indications listed as a single block of text under one QRD heading, even if they contain multiple clinically distinct concepts.<br/><br/>
        <em style="color:#6b7280; font-size:.88em;">One section → multiple concepts → no machine-level separation</em>
      </div>
    </div>
  </div>
  <div style="border:1px solid #bbf7d0; border-radius:8px; overflow:hidden;">
    <div style="padding:7px 12px; background:#f0fdf4; border-bottom:1px solid #bbf7d0;"><span style="font-size:.7em; font-weight:700; text-transform:uppercase; color:#15803d;">✓ Type 4: Granular Topics</span></div>
    <div style="padding:10px 12px; font-size:.76em; font-family:ui-monospace,'SF Mono',monospace; word-break:break-all; color:#374151; line-height:1.9;">
      <span style="color:#003087;">Section 4</span> <span style="color:#9ca3af;">← container only (no text/entry)</span><br/>
      &nbsp;&nbsp;<span style="color:#7c3aed;">Section 4.1</span> <span style="color:#9ca3af;">← context (no text/entry)</span><br/>
      &nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#16a34a;">Section 4.1.1</span> → Indication #1<br/>
      &nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#16a34a;">Section 4.1.2</span> → Indication #2<br/>
      <br/><em style="font-family:-apple-system, sans-serif; color:#15803d; font-size:.9em;">Each topic has its own section</em>
    </div>
  </div>
</div>
<!-- DIFFERENCE 2: SECTION.ENTRY -->
<div style="font-size:.78em; font-weight:700; text-transform:uppercase; letter-spacing:.08em; color:#9ca3af; margin-bottom:6px;">Difference 2 — section.entry References</div>
<div style="display:flex; flex-direction:column; gap:10px; margin-bottom:20px;">
  <div style="border:1px solid #fecaca; border-radius:8px; overflow:hidden;">
    <div style="padding:7px 12px; background:#fef2f2; border-bottom:1px solid #fecaca;"><span style="font-size:.7em; font-weight:700; text-transform:uppercase; color:#b91c1c;">⚠ Type 1–3: No entry linking</span></div>
    <div style="padding:10px 12px; font-size:.82em; color:#374151; line-height:1.8;">
      Composition sections contain narrative text but do <strong>not</strong> use <code style="font-family:monospace; font-size:.9em; color:#0891b2;">section.entry</code> to reference structured resources. The connection between narrative and data is implicit.<br/><br/>
      <em style="color:#6b7280; font-size:.88em;">Text and data exist side by side — not explicitly linked</em>
    </div>
  </div>
  <div style="border:1px solid #bbf7d0; border-radius:8px; overflow:hidden;">
    <div style="padding:7px 12px; background:#f0fdf4; border-bottom:1px solid #bbf7d0;"><span style="font-size:.7em; font-weight:700; text-transform:uppercase; color:#15803d;">✓ Type 4: Entry linkage</span></div>
    <div style="padding:10px 12px; font-size:.82em; color:#374151; line-height:1.8;">
      Every content-bearing section can include an <code style="font-family:monospace; font-size:.9em; color:#0891b2;">entry</code> referencing the structured FHIR resource(s) representing that section's meaning:<br/>
      <span style="font-family:monospace; font-size:.85em; word-break:break-word; overflow-wrap:break-word;">
        &bull; Section 1 section.entry → <span style="color:#003087;">MedicinalProductDefinition</span><br/>
        &bull; Section 2 section.entry → <span style="color:#16a34a;">ManufacturedItemDefinition</span> + <span style="color:#d97706;">Ingredient</span><br/>
        &bull; Section 4.1.1 section.entry → <span style="color:#7c3aed;">ClinicalUseDefinition</span>
      </span>
    </div>
  </div>
</div>
<!-- DIFFERENCE 3: SPAN ANNOTATIONS -->
<div style="font-size:.78em; font-weight:700; text-transform:uppercase; letter-spacing:.08em; color:#9ca3af; margin-bottom:6px;">Difference 3 — Semantic Span Annotations in Narrative</div>
<div style="display:flex; flex-direction:column; gap:10px; margin-bottom:28px;">
  <div style="border:1px solid #fecaca; border-radius:8px; overflow:hidden;">
    <div style="padding:7px 12px; background:#fef2f2; border-bottom:1px solid #fecaca;"><span style="font-size:.7em; font-weight:700; text-transform:uppercase; color:#b91c1c;">⚠ Type 1–3: Plain narrative</span></div>
    <div style="padding:10px 12px; font-size:.82em; color:#374151; line-height:1.8; font-family:'Times New Roman',serif;">
      <div>&lt;text&gt;</div>
      <div style="padding-left:12px;">Do not take Fungisynth if you are allergic to synthazole, amoxicillin or sulphonamides.</div>
      <div>&lt;/text&gt;</div>
      <br/>
      <em style="font-family:-apple-system, sans-serif; color:#6b7280; font-size:.88em;">Plain text — no programmatic link to resources</em>
    </div>
  </div>
  <div style="border:1px solid #bbf7d0; border-radius:8px; overflow:hidden;">
    <div style="padding:7px 12px; background:#f0fdf4; border-bottom:1px solid #bbf7d0;"><span style="font-size:.7em; font-weight:700; text-transform:uppercase; color:#15803d;">✓ Type 4: Span-annotated narrative</span></div>
    <div style="padding:10px 12px; font-size:.76em; font-family:ui-monospace,'SF Mono',monospace; word-break:break-all; color:#374151; line-height:1.9;">
      &lt;text&gt;<br/>
      &nbsp;&nbsp;&lt;extension url="http://hl7.org/fhir/StructureDefinition/textLink"&gt;<br/>
      &nbsp;&nbsp;&nbsp;&nbsp;&lt;extension url="htmlid"&gt;<br/>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;valueString value="<span style="color:#16a34a; font-weight:700;">sp-43-01</span>"/&gt;<br/>
      &nbsp;&nbsp;&nbsp;&nbsp;&lt;/extension&gt;<br/>
      &nbsp;&nbsp;&nbsp;&nbsp;&lt;extension url="data"&gt;<br/>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;valueUri value="<span style="color:#dc2626; font-weight:700;">urn:uuid:&lt;CUD-id&gt;</span>"/&gt;<br/>
      &nbsp;&nbsp;&nbsp;&nbsp;&lt;/extension&gt;<br/>
      &nbsp;&nbsp;&lt;/extension&gt;<br/>
      &nbsp;&nbsp;&lt;status value="generated"/&gt;<br/>
      &nbsp;&nbsp;&lt;div xmlns="http://www.w3.org/1999/xhtml"&gt;<br/>
      &nbsp;&nbsp;&nbsp;&nbsp;Do not take Fungisynth if you are allergic to <span style="background:#ecfdf5; border:1px solid #a7f3d0; padding:1px 4px; border-radius:3px; color:#065f46;">&lt;span id="<span style="color:#16a34a; font-weight:700;">sp-43-01</span>"&gt;synthazole&lt;/span&gt;</span>.<br/>
      &nbsp;&nbsp;&lt;/div&gt;<br/>
      &lt;/text&gt;<br/>
      &lt;entry&gt;<br/>
      &nbsp;&nbsp;&lt;reference value="<span style="color:#dc2626; font-weight:700;">urn:uuid:&lt;CUD-id&gt;</span>"/&gt;<br/>
      &lt;/entry&gt;<br/><br/>
      <em style="font-family:-apple-system, sans-serif; color:#15803d; font-size:.9em;">Each span id is linked by a textLink extension to a resource (or an element within it) referenced in section.entry</em>
    </div>
  </div>
</div>
<hr style="border:none; border-top:1px solid #e5e7eb; margin:28px 0;"/>
<!-- STEPS -->
<h3 style="font-size:1.35em; font-weight:700; color:#111827; margin-bottom:20px;">Step-by-Step Workflow</h3>
<!-- STEP 1 -->
<div style="display:flex; gap:16px; margin-bottom:20px; align-items:flex-start;">
  <div style="flex-shrink:0; width:36px; height:36px; border-radius:50%; background:#003087; color:#fff; display:flex; align-items:center; justify-content:center; font-size:.85em; font-weight:700; margin-top:2px;">1</div>
  <div style="flex:1; background:#fff; border:1px solid #e5e7eb; border-radius:8px; overflow:hidden;">
    <div style="padding:14px 20px 10px; border-bottom:1px solid #e5e7eb; background:#f9fafb;"><div style="font-weight:700; color:#111827; font-size:.97em;">Create the overall content structure for the ePI template</div></div>
    <div style="padding:14px 20px;">
      <p style="font-size:.88em; color:#374151; line-height:1.7; margin-bottom:14px;">Set up the document structure according to the regulatory template (e.g. QRD), as with ePI Type 1–3. Divide the information into separate <strong>Concepts</strong> (corresponding to Chapters), then into <strong>Domains</strong> (corresponding to Sections), and finally into <strong>Topics</strong> (corresponding to Subsections).</p>
      <div style="background:#f9fafb; border:1px solid #e5e7eb; border-radius:6px; padding:12px 16px; margin-bottom:14px;">
        <div style="font-size:.72em; font-weight:700; text-transform:uppercase; letter-spacing:.1em; color:#9ca3af; margin-bottom:8px;">Example mapping: QRD → Type 4 hierarchy</div>
        <div style="font-size:.78em; font-family:ui-monospace,'SF Mono',monospace; word-break:break-all; color:#374151; line-height:1.9;">
          <span style="color:#003087; font-weight:700;">Concept</span> (Chapter): <span style="color:#374151;">"4. Clinical particulars"</span><br/>
          &nbsp;&nbsp;<span style="color:#7c3aed; font-weight:700;">Domain</span> (Section): <span style="color:#374151;">"4.1 Therapeutic indications"</span><br/>
          &nbsp;&nbsp;<span style="color:#7c3aed; font-weight:700;">Domain</span> (Section): <span style="color:#374151;">"4.2 Posology and method of administration"</span><br/>
          &nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#16a34a; font-weight:700;">Topic</span> (Subsection): <span style="color:#374151;">"Posology"</span><br/>
          &nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#16a34a; font-weight:700;">Topic</span> (Subsection): <span style="color:#374151;">"Method of administration"</span>
        </div>
      </div>
      <div style="background:#fffbeb; border:1px solid #fde68a; border-left:3px solid #d97706; border-radius:6px; padding:10px 14px; font-size:.82em; color:#78350f; display:flex; gap:10px; align-items:flex-start;">
        <span style="flex-shrink:0;">💡</span>
        <span><strong>Concept Definitions:</strong> A <strong>Topic</strong> represents a statement with one discrete clinical or regulatory message. Topics of the same regulatory intent are grouped within a <strong>Domain</strong>. A <strong>Concept</strong> groups Domains together and acts as the technical analogue of a document chapter.</span>
      </div>
    </div>
  </div>
</div>
<!-- STEP 2 -->
<div style="display:flex; gap:16px; margin-bottom:20px; align-items:flex-start;">
  <div style="flex-shrink:0; width:36px; height:36px; border-radius:50%; background:#003087; color:#fff; display:flex; align-items:center; justify-content:center; font-size:.85em; font-weight:700; margin-top:2px;">2</div>
  <div style="flex:1; background:#fff; border:1px solid #e5e7eb; border-radius:8px; overflow:hidden;">
    <div style="padding:14px 20px 10px; border-bottom:1px solid #e5e7eb; background:#f9fafb;"><div style="font-weight:700; color:#111827; font-size:.97em;">Decompose content into granular parts of information</div></div>
    <div style="padding:14px 20px;">
      <p style="font-size:.88em; color:#374151; line-height:1.7; margin-bottom:14px;">Instead of adding all content as plain narrative text (as in Type 1), structure the content as a hierarchy of discrete meaning. Each information part applies to a specific situation, further divided into separate smaller information elements as applicable. In Type 4, the same implicit approach authors already use with formatting and sub-headings is applied more explicitly and consistently, down to individual statements.</p>
      <!-- BEFORE/AFTER -->
      <div style="font-size:.78em; font-weight:700; text-transform:uppercase; letter-spacing:.08em; color:#9ca3af; margin-bottom:6px;">Example — Dosing Decomposition</div>
      <div style="display:grid; grid-template-columns:1fr 1fr; gap:10px; margin-bottom:14px;">
        <div style="border:1px solid #fecaca; border-radius:8px; overflow:hidden;">
          <div style="padding:7px 12px; background:#fef2f2; border-bottom:1px solid #fecaca;"><span style="font-size:.7em; font-weight:700; text-transform:uppercase; color:#b91c1c;">⚠ Not recommended (Type 1 style)</span></div>
          <div style="padding:10px 12px; font-size:.82em; color:#374151; line-height:1.8; font-family:'Times New Roman',serif;">"2 tablets for elderly, 1 tablet for children."<br/><br/><em style="font-family:-apple-system, sans-serif; color:#6b7280; font-size:.9em;">Combined statement — two populations in one unit</em></div>
        </div>
        <div style="border:1px solid #bbf7d0; border-radius:8px; overflow:hidden;">
          <div style="padding:7px 12px; background:#f0fdf4; border-bottom:1px solid #bbf7d0;"><span style="font-size:.7em; font-weight:700; text-transform:uppercase; color:#15803d;">✓ Recommended (Type 4 style)</span></div>
          <div style="padding:10px 12px; font-size:.82em; color:#374151; line-height:1.8;">
            <strong>Statement 1:</strong> "2 tablets for elderly."<br/>
            <strong>Statement 2:</strong> "1 tablet for children."<br/><br/>
            <em style="color:#15803d; font-size:.9em;">Discrete statements — each is its own structural unit</em>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- STEP 3 -->
<div style="display:flex; gap:16px; margin-bottom:20px; align-items:flex-start;">
  <div style="flex-shrink:0; width:36px; height:36px; border-radius:50%; background:#003087; color:#fff; display:flex; align-items:center; justify-content:center; font-size:.85em; font-weight:700; margin-top:2px;">3</div>
  <div style="flex:1; background:#fff; border:1px solid #e5e7eb; border-radius:8px; overflow:hidden;">
    <div style="padding:14px 20px 10px; border-bottom:1px solid #e5e7eb; background:#f9fafb;"><div style="font-weight:700; color:#111827; font-size:.97em;">Map to FHIR resources for each concept and divide into Topics</div></div>
    <div style="padding:14px 20px;">
      <p style="font-size:.88em; color:#374151; line-height:1.7; margin-bottom:14px;">Categorise chapters and sections by regulatory meaning and map statements to the appropriate FHIR resource type. A chapter should refer to a certain domain. A single topic should represent the meaning of one regulatory or clinical message.</p>
      <div style="overflow-x:auto; max-width:100%;">
      <table style="width:100%; border-collapse:collapse; font-size:.84em; margin-bottom:14px;">
        <thead><tr style="background:#003087; color:#fff;">
          <th style="padding:9px 12px; border:1px solid #d0d0d0; text-align:left; width:20%;">SmPC Chapter</th>
          <th style="padding:9px 12px; border:1px solid #d0d0d0; text-align:left; width:35%;">Primary FHIR Resource</th>
          <th style="padding:9px 12px; border:1px solid #d0d0d0; text-align:left;">Type 4 Domain</th>
        </tr></thead>
        <tbody>
          <tr><td style="padding:9px 12px; border:1px solid #d0d0d0;">Chapter 1</td><td style="padding:9px 12px; border:1px solid #d0d0d0;"><strong style="font-family:monospace; font-size:.9em; color:#0891b2;">MedicinalProductDefinition</strong></td><td style="padding:9px 12px; border:1px solid #d0d0d0;">Product naming (separate name elements)</td></tr>
          <tr style="background:#f9fafb;"><td style="padding:9px 12px; border:1px solid #d0d0d0;">Chapter 2</td><td style="padding:9px 12px; border:1px solid #d0d0d0;"><strong style="font-family:monospace; font-size:.9em; color:#0891b2;">SubstanceDefinition</strong>, <strong style="font-family:monospace; font-size:.9em; color:#0891b2;">Ingredient</strong>, <strong style="font-family:monospace; font-size:.9em; color:#0891b2;">ManufacturedItemDefinition</strong></td><td style="padding:9px 12px; border:1px solid #d0d0d0;">Qualitative/quantitative composition</td></tr>
          <tr><td style="padding:9px 12px; border:1px solid #d0d0d0;">Section 4.1</td><td style="padding:9px 12px; border:1px solid #d0d0d0;"><strong style="font-family:monospace; font-size:.9em; color:#0891b2;">ClinicalUseDefinition</strong> (type: indication)</td><td style="padding:9px 12px; border:1px solid #d0d0d0;">Therapeutic indications</td></tr>
          <tr style="background:#f9fafb;"><td style="padding:9px 12px; border:1px solid #d0d0d0;">Section 4.2</td><td style="padding:9px 12px; border:1px solid #d0d0d0;"><strong style="font-family:monospace; font-size:.9em; color:#0891b2;">ClinicalUseDefinition (indication + Dosing Guideline)</strong></td><td style="padding:9px 12px; border:1px solid #d0d0d0;">Posology, method of administration</td></tr>
          <tr><td style="padding:9px 12px; border:1px solid #d0d0d0;">Section 4.3</td><td style="padding:9px 12px; border:1px solid #d0d0d0;"><strong style="font-family:monospace; font-size:.9em; color:#0891b2;">ClinicalUseDefinition</strong> (type: contraindication)</td><td style="padding:9px 12px; border:1px solid #d0d0d0;">Contraindications</td></tr>
          <tr style="background:#f9fafb;"><td style="padding:9px 12px; border:1px solid #d0d0d0;">Section 4.4</td><td style="padding:9px 12px; border:1px solid #d0d0d0;"><strong style="font-family:monospace; font-size:.9em; color:#0891b2;">ClinicalUseDefinition</strong> (type: warning)</td><td style="padding:9px 12px; border:1px solid #d0d0d0;">Special warnings</td></tr>
          <tr><td style="padding:9px 12px; border:1px solid #d0d0d0;">Section 4.5</td><td style="padding:9px 12px; border:1px solid #d0d0d0;"><strong style="font-family:monospace; font-size:.9em; color:#0891b2;">ClinicalUseDefinition</strong> (type: interaction)</td><td style="padding:9px 12px; border:1px solid #d0d0d0;">Interactions</td></tr>
          <tr style="background:#f9fafb;"><td style="padding:9px 12px; border:1px solid #d0d0d0;">Section 4.8</td><td style="padding:9px 12px; border:1px solid #d0d0d0;"><strong style="font-family:monospace; font-size:.9em; color:#0891b2;">ClinicalUseDefinition</strong> (type: undesirable-effect)</td><td style="padding:9px 12px; border:1px solid #d0d0d0;">Undesirable effects</td></tr>
        </tbody>
      </table>
      </div>
    </div>
  </div>
</div>
<!-- STEP 4 -->
<div style="display:flex; gap:16px; margin-bottom:20px; align-items:flex-start;">
  <div style="flex-shrink:0; width:36px; height:36px; border-radius:50%; background:#003087; color:#fff; display:flex; align-items:center; justify-content:center; font-size:.85em; font-weight:700; margin-top:2px;">4</div>
  <div style="flex:1; background:#fff; border:1px solid #e5e7eb; border-radius:8px; overflow:hidden;">
    <div style="padding:14px 20px 10px; border-bottom:1px solid #e5e7eb; background:#f9fafb;"><div style="font-weight:700; color:#111827; font-size:.97em;">Refine statements with subdomains and atomic components</div></div>
    <div style="padding:14px 20px;">
      <p style="font-size:.88em; color:#374151; line-height:1.7; margin-bottom:14px;">Each topic is divided into separate statements, as decomposed in step 2. Apply a <strong>subdomain</strong> to each statement to refine the particular dimension, condition or type of information it conveys within the topic.</p>
      <p style="font-size:.88em; color:#374151; line-height:1.7; margin-bottom:14px;">Then break each statement into <strong>atomic components</strong> to make the information more specific for personalised search options. An atomic component is one piece of information within a statement that is meaningful on its own.</p>
      <div style="font-size:.78em; font-weight:700; text-transform:uppercase; letter-spacing:.08em; color:#9ca3af; margin-bottom:6px;">Example — Fungisynth Contraindication Decomposition</div>
      <div style="background:#fef2f2; border:1px solid #fecaca; border-radius:8px; padding:12px 16px; margin-bottom:12px;">
        <div style="font-size:.84em; color:#991b1b; font-style:italic; line-height:1.6;">"Do not take Fungisynth if you are allergic to synthazole, amoxicillin or sulphonamides."</div>
      </div>
      <div style="display:grid; grid-template-columns:repeat(2, 1fr); gap:8px; margin-bottom:14px;">
        <div style="background:#fff; border:1px solid #e5e7eb; border-top:3px solid #dc2626; border-radius:6px; padding:10px 12px; text-align:center;">
          <div style="font-size:.7em; font-weight:700; text-transform:uppercase; color:#dc2626; margin-bottom:4px;">Atomic #1</div>
          <div style="font-size:.82em; font-weight:600; color:#111827;">"Do not take"</div>
          <div style="font-size:.72em; color:#6b7280; margin-top:4px;">= contraindication</div>
        </div>
        <div style="background:#fff; border:1px solid #e5e7eb; border-top:3px solid #003087; border-radius:6px; padding:10px 12px; text-align:center;">
          <div style="font-size:.7em; font-weight:700; text-transform:uppercase; color:#003087; margin-bottom:4px;">Atomic #2</div>
          <div style="font-size:.82em; font-weight:600; color:#111827;">"Fungisynth"</div>
          <div style="font-size:.72em; color:#6b7280; margin-top:4px;">= trade name</div>
        </div>
        <div style="background:#fff; border:1px solid #e5e7eb; border-top:3px solid #d97706; border-radius:6px; padding:10px 12px; text-align:center;">
          <div style="font-size:.7em; font-weight:700; text-transform:uppercase; color:#d97706; margin-bottom:4px;">Atomic #3</div>
          <div style="font-size:.82em; font-weight:600; color:#111827;">"if you are allergic"</div>
          <div style="font-size:.72em; color:#6b7280; margin-top:4px;">= condition</div>
        </div>
        <div style="background:#fff; border:1px solid #e5e7eb; border-top:3px solid #16a34a; border-radius:6px; padding:10px 12px; text-align:center;">
          <div style="font-size:.7em; font-weight:700; text-transform:uppercase; color:#16a34a; margin-bottom:4px;">Atomic #4</div>
          <div style="font-size:.82em; font-weight:600; color:#111827;">"synthazole"</div>
          <div style="font-size:.72em; color:#6b7280; margin-top:4px;">= active substance</div>
        </div>
        <div style="background:#fff; border:1px solid #e5e7eb; border-top:3px solid #7c3aed; border-radius:6px; padding:10px 12px; text-align:center;">
          <div style="font-size:.7em; font-weight:700; text-transform:uppercase; color:#7c3aed; margin-bottom:4px;">Atomic #5</div>
          <div style="font-size:.82em; font-weight:600; color:#111827;">"amoxicillin"</div>
          <div style="font-size:.72em; color:#6b7280; margin-top:4px;">= substance</div>
        </div>
        <div style="background:#fff; border:1px solid #e5e7eb; border-top:3px solid #0891b2; border-radius:6px; padding:10px 12px; text-align:center;">
          <div style="font-size:.7em; font-weight:700; text-transform:uppercase; color:#0891b2; margin-bottom:4px;">Atomic #6</div>
          <div style="font-size:.82em; font-weight:600; color:#111827;">"sulphonamides"</div>
          <div style="font-size:.72em; color:#6b7280; margin-top:4px;">= therapeutic class</div>
        </div>
      </div>
      <div style="background:#fffbeb; border:1px solid #fde68a; border-left:3px solid #d97706; border-radius:6px; padding:10px 14px; font-size:.82em; color:#78350f; display:flex; gap:10px; align-items:flex-start;">
        <span style="flex-shrink:0;">💡</span>
        <span><strong>Note:</strong> These components may be formulated as separate sentences and/or when rendering a complete document, presented together as either one or several sentences. A standard sentence such as "Do not take &lt;trade name&gt; if you are allergic to &lt;active substance&gt;" may also be coded as being derived from RMS (SPOR database) in the EU region.</span>
      </div>
    </div>
  </div>
</div>
<!-- STEP 5 -->
<div style="display:flex; gap:16px; margin-bottom:28px; align-items:flex-start;">
  <div style="flex-shrink:0; width:36px; height:36px; border-radius:50%; background:#003087; color:#fff; display:flex; align-items:center; justify-content:center; font-size:.85em; font-weight:700; margin-top:2px;">5</div>
  <div style="flex:1; background:#fff; border:1px solid #e5e7eb; border-radius:8px; overflow:hidden;">
    <div style="padding:14px 20px 10px; border-bottom:1px solid #e5e7eb; background:#f9fafb;"><div style="font-weight:700; color:#111827; font-size:.97em;">Apply semantic text annotation (<code style="font-family:monospace; font-size:.9em; color:#0891b2;">&lt;span&gt;</code> tagging and <code style="font-family:monospace; font-size:.9em; color:#0891b2;">textLink</code>)</div></div>
    <div style="padding:14px 20px;">
      <p style="font-size:.88em; color:#374151; line-height:1.7; margin-bottom:14px;">Wrap specific words in the narrative with <code style="font-family:monospace; font-size:.9em; color:#0891b2;">&lt;span id="…"&gt;</code>, then record what each span refers to using the HL7 <a href="https://build.fhir.org/ig/HL7/fhir-extensions/en/StructureDefinition-textLink.html" style="color:#0891b2; font-weight:600;">textLink</a> extension on the section's <code style="font-family:monospace; font-size:.9em; color:#0891b2;">text</code>. The extension connects the span's <code style="font-family:monospace; font-size:.9em; color:#0891b2;">id</code> to a resource (or an element inside a resource) that is referenced in <code style="font-family:monospace; font-size:.9em; color:#0891b2;">section.entry</code>. Together these create a fully traceable, machine-readable link between narrative and structure.</p>
      <!-- THREE-PART CHAIN -->
      <div style="font-size:.78em; font-weight:700; text-transform:uppercase; letter-spacing:.08em; color:#9ca3af; margin-bottom:6px;">How the link works — three parts in one section</div>
      <div style="display:flex; flex-direction:column; gap:8px; margin-bottom:14px;">
        <div style="border:1px solid #e5e7eb; border-left:4px solid #16a34a; border-radius:6px; padding:10px 12px; background:#f9fafb;">
          <div style="font-size:.7em; font-weight:700; text-transform:uppercase; color:#16a34a; margin-bottom:4px;">① Spans in the narrative (section.text.div)</div>
          <div style="font-size:.74em; font-family:ui-monospace,'SF Mono',monospace; word-break:break-all; color:#374151; line-height:1.8;">&lt;div xmlns="http://www.w3.org/1999/xhtml"&gt;<br/>&nbsp;&nbsp;&lt;p&gt;<br/>&nbsp;&nbsp;&nbsp;&nbsp;Do not take Fungisynth if you are <span style="background:#ecfdf5; border:1px solid #a7f3d0; padding:1px 4px; border-radius:3px; color:#065f46;">&lt;span id="<span style="color:#16a34a; font-weight:700;">sp-root-01</span>"&gt;allergic&lt;/span&gt;</span> to <span style="background:#ecfdf5; border:1px solid #a7f3d0; padding:1px 4px; border-radius:3px; color:#065f46;">&lt;span id="<span style="color:#16a34a; font-weight:700;">sp-root-02</span>"&gt;synthazole&lt;/span&gt;</span>.<br/>&nbsp;&nbsp;&nbsp;&nbsp;Do not give Fungisynth to <span style="background:#ecfdf5; border:1px solid #a7f3d0; padding:1px 4px; border-radius:3px; color:#065f46;">&lt;span id="<span style="color:#16a34a; font-weight:700;">sp-root-03</span>"&gt;children under 2 years of age&lt;/span&gt;</span>.<br/>&nbsp;&nbsp;&lt;/p&gt;<br/>&lt;/div&gt;</div>
          <div style="font-size:.72em; color:#6b7280; margin-top:6px;">Each span wraps the minimal phrase for one concept. The <code>id</code> is a local anchor that is unique within the narrative. It carries no resource ids itself, because the link to the resource is made only through the <code>textLink</code> extension.</div>
        </div>
        <div style="border:1px solid #e5e7eb; border-left:4px solid #0891b2; border-radius:6px; padding:10px 12px; background:#f9fafb;">
          <div style="font-size:.7em; font-weight:700; text-transform:uppercase; color:#0891b2; margin-bottom:4px;">② textLink extensions on section.text</div>
          <div style="font-size:.74em; font-family:ui-monospace,'SF Mono',monospace; word-break:break-all; color:#374151; line-height:1.8;">&lt;text&gt;<br/>&nbsp;&nbsp;&lt;extension url="http://hl7.org/fhir/StructureDefinition/textLink"&gt;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&lt;extension url="htmlid"&gt;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;valueString value="<span style="color:#16a34a; font-weight:700;">sp-root-01</span>"/&gt;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&lt;/extension&gt;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&lt;extension url="htmlid"&gt;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;valueString value="<span style="color:#16a34a; font-weight:700;">sp-root-02</span>"/&gt;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&lt;/extension&gt;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&lt;extension url="data"&gt;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;valueUri value="<span style="color:#dc2626; font-weight:700;">urn:uuid:&lt;CUD-id-1&gt;</span>"/&gt;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&lt;/extension&gt;<br/>&nbsp;&nbsp;&lt;/extension&gt;<br/>&nbsp;&nbsp;&lt;extension url="http://hl7.org/fhir/StructureDefinition/textLink"&gt;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&lt;extension url="htmlid"&gt;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;valueString value="<span style="color:#16a34a; font-weight:700;">sp-root-03</span>"/&gt;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&lt;/extension&gt;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&lt;extension url="data"&gt;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;valueUri value="<span style="color:#dc2626; font-weight:700;">urn:uuid:&lt;CUD-id-2&gt;</span><span style="color:#7c3aed; font-weight:700;">#population</span>"/&gt;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&lt;/extension&gt;<br/>&nbsp;&nbsp;&lt;/extension&gt;<br/>&nbsp;&nbsp;&lt;status value="generated"/&gt;<br/>&nbsp;&nbsp;&lt;div xmlns="http://www.w3.org/1999/xhtml"&gt;…&lt;/div&gt;<br/>&lt;/text&gt;</div>
          <div style="font-size:.72em; color:#6b7280; margin-top:6px;">Add one <code>textLink</code> for each target resource. Inside it, add one <code>htmlid</code> sub-extension for each span that points to that target, and a single <code>data</code> sub-extension. The <code>htmlid</code> value is the span <code>id</code>. The <code>data</code> value is the target resource&#39;s <code>fullUrl</code>, optionally followed by <code>#</code> and the <code>id</code> of an element inside that resource. In this example, the first <code>textLink</code> links the spans "allergic" and "synthazole" to the hypersensitivity contraindication. The second <code>textLink</code> links "children under 2 years of age" to the element with <code>id="population"</code> inside the age contraindication.</div>
        </div>
        <div style="border:1px solid #e5e7eb; border-left:4px solid #dc2626; border-radius:6px; padding:10px 12px; background:#f9fafb;">
          <div style="font-size:.7em; font-weight:700; text-transform:uppercase; color:#dc2626; margin-bottom:4px;">③ section.entry references</div>
          <div style="font-size:.74em; font-family:ui-monospace,'SF Mono',monospace; word-break:break-all; color:#374151; line-height:1.8;">&lt;entry&gt;<br/>&nbsp;&nbsp;&lt;reference value="<span style="color:#dc2626; font-weight:700;">urn:uuid:&lt;CUD-id-1&gt;</span>"/&gt;<br/>&lt;/entry&gt;<br/>&lt;entry&gt;<br/>&nbsp;&nbsp;&lt;reference value="<span style="color:#dc2626; font-weight:700;">urn:uuid:&lt;CUD-id-2&gt;</span>"/&gt;<br/>&lt;/entry&gt;</div>
          <div style="font-size:.72em; color:#6b7280; margin-top:6px;">The resource part of each <code>data</code> value (before the <code>#</code>) must match a <code>section.entry</code> reference in the same section and a <code>fullUrl</code> in the Bundle. Replace each <code>&lt;CUD-id&gt;</code> placeholder with the <code>urn:uuid</code> of the matching ClinicalUseDefinition in your Bundle.</div>
        </div>
      </div>
      <div style="background:#fffbeb; border:1px solid #fde68a; border-left:3px solid #d97706; border-radius:6px; padding:10px 14px; font-size:.82em; color:#78350f; display:flex; gap:10px; align-items:flex-start; margin-bottom:14px;">
        <span style="flex-shrink:0;">💡</span>
        <span><strong>Several resources in one section:</strong> each <code>textLink</code> holds one <code>data</code> target, and several spans can point to that target by repeating <code>htmlid</code>. To link spans to different resources, add one <code>textLink</code> per target. This IG&#39;s Composition profile allows <code>textLink</code> to repeat, in anticipation of a requested change to the HL7 extensions pack. Until that change is published, the <code>textLink</code> extension itself allows only one occurrence per narrative, so validators report an error when a section has more than one. This error is expected, and the Type 4 example shows this pattern in sections 4.2 and 6.1.</span>
      </div>
      <div style="background:#fefce8; border:1px solid #fef08a; border-left:4px solid #eab308; border-radius:8px; padding:14px 18px; margin-bottom:14px;">
        <div style="font-size:.72em; font-weight:700; text-transform:uppercase; letter-spacing:.1em; color:#854d0e; margin-bottom:6px;">Rules for Span Tags and textLink</div>
        <ul style="font-size:.86em; color:#713f12; line-height:1.7; margin:0; padding-left:18px;">
          <li>Every <code>&lt;span id&gt;</code> that carries meaning must have a matching <code>textLink</code> <code>htmlid</code> in the same <code>section.text</code>, and every <code>htmlid</code> must match a span <code>id</code> in that narrative</li>
          <li>Span <code>id</code> values must be unique within the narrative and must start with a letter (XHTML <code>id</code> rules), so use a prefix such as <code>sp-</code> rather than a bare UUID</li>
          <li>The resource in <code>data</code> must also be referenced in <code>section.entry</code> of the same section</li>
          <li>Where <code>data</code> includes a <code>#fragment</code>, the target resource must contain an element with that <code>id</code></li>
          <li>The <code>textLink</code> extension is the only permitted way to link a span to a resource; do not encode resource ids in the span <code>class</code> or <code>id</code></li>
          <li>Spans should wrap the <strong>minimal phrase</strong> representing the formal coded concept</li>
          <li>Span <code>id</code> values should be stable between versions of the ePI so that links survive updates</li>
          <li><strong>Required</strong> when text mentions age, sex, or condition constraints or coded concepts</li>
          <li><strong>Optional</strong> when text does not refer to any structured resource</li>
        </ul>
      </div>
      <div style="background:#eff6ff; border:1px solid #bfdbfe; border-left:3px solid #2563eb; border-radius:6px; padding:10px 14px; font-size:.82em; color:#1e3a5f; display:flex; gap:10px; align-items:flex-start;">
        <span style="flex-shrink:0;">↔️</span>
        <span><strong>Reverse direction (optional):</strong> <code>textLink</code> goes from narrative to data. To go from a data element back to the narrative that expresses it, the related <a href="https://build.fhir.org/ig/HL7/fhir-extensions/en/StructureDefinition-narrativeLink.html" style="color:#1d4ed8; font-weight:600;">narrativeLink</a> extension can be placed on the element, with a <code>valueUrl</code> pointing to the span <code>id</code> in the narrative.</span>
      </div>
    </div>
  </div>
</div>
<hr style="border:none; border-top:1px solid #e5e7eb; margin:28px 0;"/>
<!-- WHAT'S NEXT -->
<h3 style="font-size:1.1em; font-weight:700; color:#111827; margin-bottom:12px;">What's next?</h3>
<div style="display:flex; flex-direction:column; gap:14px;">
  <a href="build-list.html" style="text-decoration:none; background:#fff; border:1px solid #bfdbfe; border-left:4px solid #2563eb; border-radius:8px; padding:16px 20px; display:block;">
    <div style="font-size:.72em; font-weight:700; text-transform:uppercase; letter-spacing:.1em; color:#2563eb; margin-bottom:4px;">Next →</div>
    <div style="font-weight:700; color:#111827; margin-bottom:4px;">Build a List of ePIs</div>
    <div style="font-size:.82em; color:#6b7280;">Learn how to group and track multiple ePI documents across products, jurisdictions, and languages.</div>
  </a>
  <a href="build-epi3.html" style="text-decoration:none; background:#f9fafb; border:1px solid #e5e7eb; border-radius:8px; padding:16px 20px; display:block;">
    <div style="font-size:.72em; font-weight:700; text-transform:uppercase; letter-spacing:.1em; color:#6b7280; margin-bottom:4px;">← Previous</div>
    <div style="font-weight:700; color:#111827; margin-bottom:4px;">Type 3 Clinical Information</div>
    <div style="font-size:.82em; color:#6b7280;">Return to the clinical information step to review structured ClinicalUseDefinitions.</div>
  </a>
</div>