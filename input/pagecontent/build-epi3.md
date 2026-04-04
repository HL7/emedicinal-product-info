<!-- ePI TYPE 3 — Build Guide | Target: business/regulatory users -->

<!-- HEADER NOTE -->
<div style="background:#fffbeb; border:1px solid #fde68a; border-left:4px solid #d97706; border-radius:8px; padding:12px 18px; margin-bottom:24px; font-size:.85rem; color:#78350f; display:flex; gap:10px; align-items:flex-start;">
  <span style="flex-shrink:0; font-size:1rem;">📋</span>
  <span><strong>Pre-requisites:</strong> Type 3 builds directly on top of Type 2. Before starting here, ensure you have a validated <a href="build-epi1.html" style="color:#92400e; font-weight:600;">Type 1</a> and <a href="build-epi2.html" style="color:#92400e; font-weight:600;">Type 2</a> ePI for the product.</span>
</div>

<!-- WHAT IS TYPE 3 -->
<h2 style="font-size:1.35rem; font-weight:700; color:#111827; margin-bottom:8px;">What is ePI Type 3?</h2>
<p style="color:#374151; font-size:.94rem; line-height:1.7; margin-bottom:16px;">An ePI Type 3 unlocks <strong>structured, machine readable clinical information</strong>. It takes the narrative clinical sections already present in Type 1 — indications, contraindications, interactions, warnings — and expresses them as <strong>computable, structured FHIR resources</strong>. Electronic Medical Record (EMR) systems, pharmacovigilance tools, and patient-facing apps can then query and act on this data directly, without parsing free text.</p>

<div style="margin-bottom:8px;"><span style="font-size:.75rem; font-weight:700; text-transform:uppercase; letter-spacing:.1em; color:#9ca3af;">You will add these FHIR resources (on top of Types 1 &amp; 2)</span></div>
<div style="display:flex; flex-wrap:wrap; gap:8px; margin-bottom:28px;">
  <span style="background:#f9fafb; border:1px solid #e5e7eb; color:#6b7280; font-size:.78rem; font-weight:600; padding:4px 12px; border-radius:99px;">All Type 1 &amp; 2 resources</span>
  <span style="background:#faf5ff; border:1px solid #e9d5ff; color:#7e22ce; font-size:.78rem; font-weight:600; padding:4px 12px; border-radius:99px;">🩺 ClinicalUseDefinition (×n)</span>
  <span style="background:#ecfdf5; border:1px solid #a7f3d0; color:#065f46; font-size:.78rem; font-weight:600; padding:4px 12px; border-radius:99px;">💊 MedicationKnowledge (optional)</span>
</div>

<!-- GRANULARITY CALLOUT -->
<div style="background:#eff6ff; border:1px solid #bfdbfe; border-left:4px solid #2563eb; border-radius:8px; padding:14px 18px; margin-bottom:28px;">
  <div style="font-size:.72rem; font-weight:700; text-transform:uppercase; letter-spacing:.1em; color:#1d4ed8; margin-bottom:6px;">⚡ The Granularity Rule applies here too</div>
  <p style="font-size:.88rem; color:#1e40af; line-height:1.7; margin:0;">Just as each indication in the narrative gets its own <code style="font-family:monospace; font-size:.8rem;">&lt;section&gt;</code> in Type 1, each clinical concept — every indication, every contraindication, every warning — gets its own <strong>ClinicalUseDefinition</strong> resource in Type 3. One concept, one resource.</p>
</div>

<hr style="border:none; border-top:1px solid #e5e7eb; margin:28px 0;"/>

<!-- STEPS -->
<h2 style="font-size:1.35rem; font-weight:700; color:#111827; margin-bottom:20px;">Step-by-Step Workflow</h2>

<!-- STEP 1 -->
<div style="display:flex; gap:16px; margin-bottom:20px; align-items:flex-start;">
  <div style="flex-shrink:0; width:36px; height:36px; border-radius:50%; background:#003087; color:#fff; display:flex; align-items:center; justify-content:center; font-size:.85rem; font-weight:700; margin-top:2px;">1</div>
  <div style="flex:1; background:#fff; border:1px solid #e5e7eb; border-radius:8px; overflow:hidden;">
    <div style="padding:14px 20px 10px; border-bottom:1px solid #e5e7eb; background:#f9fafb;"><div style="font-weight:700; color:#111827; font-size:.97rem;">Identify clinical concepts in the narrative</div></div>
    <div style="padding:14px 20px;">
      <p style="font-size:.88rem; color:#374151; line-height:1.7; margin-bottom:14px;">Work through the narrative sections of the label and identify every discrete clinical concept that can be expressed as structured data. For each concept, note what type it is.</p>
      <table style="width:100%; border-collapse:collapse; font-size:.84rem; margin-bottom:14px;">
        <thead><tr style="background:#003087; color:#fff;">
          <th style="padding:9px 12px; border:1px solid #d0d0d0; text-align:left; width:25%;">Clinical concept type</th>
          <th style="padding:9px 12px; border:1px solid #d0d0d0; text-align:left; width:30%;">Typical label section</th>
          <th style="padding:9px 12px; border:1px solid #d0d0d0; text-align:left;">Example</th>
        </tr></thead>
        <tbody>
          <tr><td style="padding:9px 12px; border:1px solid #d0d0d0;"><strong>Indication</strong></td><td style="padding:9px 12px; border:1px solid #d0d0d0;">Section 4.1 (SmPC) / Section 1 (PIL)</td><td style="padding:9px 12px; border:1px solid #d0d0d0;">Treatment of mild to moderate pain in adults</td></tr>
          <tr style="background:#f9fafb;"><td style="padding:9px 12px; border:1px solid #d0d0d0;"><strong>Contraindication</strong></td><td style="padding:9px 12px; border:1px solid #d0d0d0;">Section 4.3 (SmPC)</td><td style="padding:9px 12px; border:1px solid #d0d0d0;">Known hypersensitivity to paracetamol</td></tr>
          <tr><td style="padding:9px 12px; border:1px solid #d0d0d0;"><strong>Interaction</strong></td><td style="padding:9px 12px; border:1px solid #d0d0d0;">Section 4.5 (SmPC)</td><td style="padding:9px 12px; border:1px solid #d0d0d0;">Concurrent use of warfarin (increased anticoagulant effect)</td></tr>
          <tr style="background:#f9fafb;"><td style="padding:9px 12px; border:1px solid #d0d0d0;"><strong>Warning</strong></td><td style="padding:9px 12px; border:1px solid #d0d0d0;">Section 4.4 (SmPC)</td><td style="padding:9px 12px; border:1px solid #d0d0d0;">Use with caution in patients with renal impairment</td></tr>
          <tr><td style="padding:9px 12px; border:1px solid #d0d0d0;"><strong>Undesirable effect</strong></td><td style="padding:9px 12px; border:1px solid #d0d0d0;">Section 4.8 (SmPC)</td><td style="padding:9px 12px; border:1px solid #d0d0d0;">Nausea (frequency: common)</td></tr>
        </tbody>
      </table>
      <div style="background:#fffbeb; border:1px solid #fde68a; border-left:3px solid #d97706; border-radius:6px; padding:10px 14px; font-size:.82rem; color:#78350f; display:flex; gap:10px; align-items:flex-start;">
        <span style="flex-shrink:0;">💡</span>
        <span><strong>Tip:</strong> Build a simple spreadsheet listing each concept, its type, and the label section it comes from. This becomes your authoring checklist for Step 3.</span>
      </div>
    </div>
  </div>
</div>

<!-- STEP 2 -->
<div style="display:flex; gap:16px; margin-bottom:20px; align-items:flex-start;">
  <div style="flex-shrink:0; width:36px; height:36px; border-radius:50%; background:#003087; color:#fff; display:flex; align-items:center; justify-content:center; font-size:.85rem; font-weight:700; margin-top:2px;">2</div>
  <div style="flex:1; background:#fff; border:1px solid #e5e7eb; border-radius:8px; overflow:hidden;">
    <div style="padding:14px 20px 10px; border-bottom:1px solid #e5e7eb; background:#f9fafb;"><div style="font-weight:700; color:#111827; font-size:.97rem;">Code concepts with standard terminologies</div></div>
    <div style="padding:14px 20px;">
      <p style="font-size:.88rem; color:#374151; line-height:1.7; margin-bottom:14px;">Structured clinical data must use standardised codes so that different systems can understand and compare concepts without ambiguity. Map each concept from your spreadsheet to a standard code.</p>
      <table style="width:100%; border-collapse:collapse; font-size:.84rem; margin-bottom:14px;">
        <thead><tr style="background:#003087; color:#fff;">
          <th style="padding:9px 12px; border:1px solid #d0d0d0; text-align:left; width:30%;">What you are coding</th>
          <th style="padding:9px 12px; border:1px solid #d0d0d0; text-align:left; width:30%;">Recommended terminology</th>
          <th style="padding:9px 12px; border:1px solid #d0d0d0; text-align:left;">Example code</th>
        </tr></thead>
        <tbody>
          <tr><td style="padding:9px 12px; border:1px solid #d0d0d0;">Disease / indication</td><td style="padding:9px 12px; border:1px solid #d0d0d0;">SNOMED CT</td><td style="padding:9px 12px; border:1px solid #d0d0d0;"><code style="font-family:monospace; font-size:.79rem; color:#0891b2;">57676002</code> — Pain in joint</td></tr>
          <tr style="background:#f9fafb;"><td style="padding:9px 12px; border:1px solid #d0d0d0;">Disease / condition (alternative)</td><td style="padding:9px 12px; border:1px solid #d0d0d0;">ICD-10 / ICD-11</td><td style="padding:9px 12px; border:1px solid #d0d0d0;"><code style="font-family:monospace; font-size:.79rem; color:#0891b2;">R50.9</code> — Fever, unspecified</td></tr>
          <tr><td style="padding:9px 12px; border:1px solid #d0d0d0;">Substance / allergen</td><td style="padding:9px 12px; border:1px solid #d0d0d0;">SNOMED CT</td><td style="padding:9px 12px; border:1px solid #d0d0d0;"><code style="font-family:monospace; font-size:.79rem; color:#0891b2;">387517004</code> — Paracetamol</td></tr>
          <tr style="background:#f9fafb;"><td style="padding:9px 12px; border:1px solid #d0d0d0;">Adverse event / effect</td><td style="padding:9px 12px; border:1px solid #d0d0d0;">MedDRA</td><td style="padding:9px 12px; border:1px solid #d0d0d0;">PT Nausea <code style="font-family:monospace; font-size:.79rem; color:#0891b2;">10028813</code></td></tr>
          <tr><td style="padding:9px 12px; border:1px solid #d0d0d0;">Route of administration</td><td style="padding:9px 12px; border:1px solid #d0d0d0;">EDQM standard terms</td><td style="padding:9px 12px; border:1px solid #d0d0d0;">Oral use <code style="font-family:monospace; font-size:.79rem; color:#0891b2;">20053000</code></td></tr>
        </tbody>
      </table>
      <div style="background:#fffbeb; border:1px solid #fde68a; border-left:3px solid #d97706; border-radius:6px; padding:10px 14px; font-size:.82rem; color:#78350f; display:flex; gap:10px; align-items:flex-start;">
        <span style="flex-shrink:0;">💡</span>
        <span><strong>Tip:</strong> Check whether your national regulator requires a specific terminology system. Some jurisdictions mandate SNOMED CT; others accept ICD or local code lists. Your authoring tool may include a built-in terminology browser.</span>
      </div>
    </div>
  </div>
</div>

<!-- STEP 3 -->
<div style="display:flex; gap:16px; margin-bottom:20px; align-items:flex-start;">
  <div style="flex-shrink:0; width:36px; height:36px; border-radius:50%; background:#003087; color:#fff; display:flex; align-items:center; justify-content:center; font-size:.85rem; font-weight:700; margin-top:2px;">3</div>
  <div style="flex:1; background:#fff; border:1px solid #e5e7eb; border-radius:8px; overflow:hidden;">
    <div style="padding:14px 20px 10px; border-bottom:1px solid #e5e7eb; background:#f9fafb;"><div style="font-weight:700; color:#111827; font-size:.97rem;">Create a ClinicalUseDefinition for each concept</div></div>
    <div style="padding:14px 20px;">
      <p style="font-size:.88rem; color:#374151; line-height:1.7; margin-bottom:14px;">For every clinical concept in your spreadsheet, create one <strong>ClinicalUseDefinition</strong> resource. Link each one back to the <code style="font-family:monospace; font-size:.8rem; color:#0891b2;">MedicinalProductDefinition</code> via the <code style="font-family:monospace; font-size:.8rem; color:#0891b2;">subject</code> field.</p>
      <!-- GRANULARITY BEFORE/AFTER — INDICATIONS -->
      <div style="font-size:.78rem; font-weight:700; text-transform:uppercase; letter-spacing:.08em; color:#9ca3af; margin-bottom:6px;">Example — Indications</div>
      <div style="display:grid; grid-template-columns:1fr 1fr; gap:10px; margin-bottom:14px;">
        <div style="border:1px solid #fecaca; border-radius:8px; overflow:hidden;">
          <div style="padding:7px 12px; background:#fef2f2; border-bottom:1px solid #fecaca;"><span style="font-size:.7rem; font-weight:700; text-transform:uppercase; color:#b91c1c;">⚠ Narrative only (Type 1)</span></div>
          <div style="padding:10px 12px; font-size:.82rem; color:#374151; line-height:1.8; font-family:'Times New Roman',serif;"><strong>4.1 Indications</strong><br/>Indicated for: mild pain, fever, musculoskeletal pain — all described in one paragraph of free text.</div>
        </div>
        <div style="border:1px solid #bbf7d0; border-radius:8px; overflow:hidden;">
          <div style="padding:7px 12px; background:#f0fdf4; border-bottom:1px solid #bbf7d0;"><span style="font-size:.7rem; font-weight:700; text-transform:uppercase; color:#15803d;">✓ Structured (Type 3)</span></div>
          <div style="padding:10px 12px; font-size:.76rem; font-family:ui-monospace,'SF Mono',monospace; color:#374151; line-height:1.9;"><span style="color:#7c3aed;">ClinicalUseDefinition #1</span><br/>&nbsp;&nbsp;type: <span style="color:#2563eb;">indication</span> | code: SNOMED 57676002 (Mild pain)<br/><span style="color:#7c3aed;">ClinicalUseDefinition #2</span><br/>&nbsp;&nbsp;type: <span style="color:#2563eb;">indication</span> | code: SNOMED 386661006 (Fever)<br/><span style="color:#7c3aed;">ClinicalUseDefinition #3</span><br/>&nbsp;&nbsp;type: <span style="color:#2563eb;">indication</span> | code: SNOMED 182290002 (Musculoskeletal pain)</div>
        </div>
      </div>
      <!-- GRANULARITY BEFORE/AFTER — CONTRAINDICATIONS -->
      <div style="font-size:.78rem; font-weight:700; text-transform:uppercase; letter-spacing:.08em; color:#9ca3af; margin-bottom:6px;">Example — Contraindications</div>
      <div style="display:grid; grid-template-columns:1fr 1fr; gap:10px; margin-bottom:14px;">
        <div style="border:1px solid #fecaca; border-radius:8px; overflow:hidden;">
          <div style="padding:7px 12px; background:#fef2f2; border-bottom:1px solid #fecaca;"><span style="font-size:.7rem; font-weight:700; text-transform:uppercase; color:#b91c1c;">⚠ Narrative only (Type 1)</span></div>
          <div style="padding:10px 12px; font-size:.82rem; color:#374151; line-height:1.8; font-family:'Times New Roman',serif;"><strong>4.3 Contraindications</strong><br/>Do not use in: hypersensitivity to active substance, severe hepatic impairment, active peptic ulcer — listed as bullets.</div>
        </div>
        <div style="border:1px solid #bbf7d0; border-radius:8px; overflow:hidden;">
          <div style="padding:7px 12px; background:#f0fdf4; border-bottom:1px solid #bbf7d0;"><span style="font-size:.7rem; font-weight:700; text-transform:uppercase; color:#15803d;">✓ Structured (Type 3)</span></div>
          <div style="padding:10px 12px; font-size:.76rem; font-family:ui-monospace,'SF Mono',monospace; color:#374151; line-height:1.9;"><span style="color:#dc2626;">ClinicalUseDefinition #4</span><br/>&nbsp;&nbsp;type: <span style="color:#dc2626;">contraindication</span> | code: SNOMED 416098002 (Drug allergy)<br/><span style="color:#dc2626;">ClinicalUseDefinition #5</span><br/>&nbsp;&nbsp;type: <span style="color:#dc2626;">contraindication</span> | code: SNOMED 197315008 (Severe hepatic impairment)<br/><span style="color:#dc2626;">ClinicalUseDefinition #6</span><br/>&nbsp;&nbsp;type: <span style="color:#dc2626;">contraindication</span> | code: SNOMED 13200003 (Peptic ulcer)</div>
        </div>
      </div>
      <!-- GRANULARITY BEFORE/AFTER — WARNINGS -->
      <div style="font-size:.78rem; font-weight:700; text-transform:uppercase; letter-spacing:.08em; color:#9ca3af; margin-bottom:6px;">Example — Warnings &amp; Special Populations</div>
      <div style="display:grid; grid-template-columns:1fr 1fr; gap:10px; margin-bottom:14px;">
        <div style="border:1px solid #fecaca; border-radius:8px; overflow:hidden;">
          <div style="padding:7px 12px; background:#fef2f2; border-bottom:1px solid #fecaca;"><span style="font-size:.7rem; font-weight:700; text-transform:uppercase; color:#b91c1c;">⚠ Narrative only (Type 1)</span></div>
          <div style="padding:10px 12px; font-size:.82rem; color:#374151; line-height:1.8; font-family:'Times New Roman',serif;"><strong>4.4 Special Warnings</strong><br/>Use with caution in: elderly patients, renal impairment, cardiovascular disease — described in a single section of prose.</div>
        </div>
        <div style="border:1px solid #bbf7d0; border-radius:8px; overflow:hidden;">
          <div style="padding:7px 12px; background:#f0fdf4; border-bottom:1px solid #bbf7d0;"><span style="font-size:.7rem; font-weight:700; text-transform:uppercase; color:#15803d;">✓ Structured (Type 3)</span></div>
          <div style="padding:10px 12px; font-size:.76rem; font-family:ui-monospace,'SF Mono',monospace; color:#374151; line-height:1.9;"><span style="color:#d97706;">ClinicalUseDefinition #7</span><br/>&nbsp;&nbsp;type: <span style="color:#d97706;">warning</span> | category: Elderly<br/><span style="color:#d97706;">ClinicalUseDefinition #8</span><br/>&nbsp;&nbsp;type: <span style="color:#d97706;">warning</span> | category: Renal impairment<br/><span style="color:#d97706;">ClinicalUseDefinition #9</span><br/>&nbsp;&nbsp;type: <span style="color:#d97706;">warning</span> | category: Cardiovascular</div>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- STEP 4 -->
<div style="display:flex; gap:16px; margin-bottom:20px; align-items:flex-start;">
  <div style="flex-shrink:0; width:36px; height:36px; border-radius:50%; background:#003087; color:#fff; display:flex; align-items:center; justify-content:center; font-size:.85rem; font-weight:700; margin-top:2px;">4</div>
  <div style="flex:1; background:#fff; border:1px solid #e5e7eb; border-radius:8px; overflow:hidden;">
    <div style="padding:14px 20px 10px; border-bottom:1px solid #e5e7eb; background:#f9fafb;"><div style="font-weight:700; color:#111827; font-size:.97rem;">Add MedicationKnowledge for dosage regimens <span style="font-size:.76rem; font-weight:500; color:#6b7280;">(optional)</span></div></div>
    <div style="padding:14px 20px;">
      <p style="font-size:.88rem; color:#374151; line-height:1.7; margin-bottom:14px;">The <strong>MedicationKnowledge</strong> resource provides computable dosing rules and therapeutic classification. It is optional but enables EMR systems to automatically suggest or validate dosing for specific patient populations.</p>
      <table style="width:100%; border-collapse:collapse; font-size:.84rem; margin-bottom:14px;">
        <thead><tr style="background:#003087; color:#fff;">
          <th style="padding:9px 12px; border:1px solid #d0d0d0; text-align:left; width:35%;">What it captures</th>
          <th style="padding:9px 12px; border:1px solid #d0d0d0; text-align:left;">Example values</th>
        </tr></thead>
        <tbody>
          <tr><td style="padding:9px 12px; border:1px solid #d0d0d0;">ATC classification</td><td style="padding:9px 12px; border:1px solid #d0d0d0;"><code style="font-family:monospace; font-size:.79rem; color:#0891b2;">N02BE01</code> — Paracetamol</td></tr>
          <tr style="background:#f9fafb;"><td style="padding:9px 12px; border:1px solid #d0d0d0;">Dosage by population</td><td style="padding:9px 12px; border:1px solid #d0d0d0;">Adults: 500–1000 mg every 4–6 hours; max 4 g/day</td></tr>
          <tr><td style="padding:9px 12px; border:1px solid #d0d0d0;">Paediatric dosing</td><td style="padding:9px 12px; border:1px solid #d0d0d0;">10–15 mg/kg per dose; max 4 doses per day</td></tr>
          <tr style="background:#f9fafb;"><td style="padding:9px 12px; border:1px solid #d0d0d0;">Renal / hepatic adjustment</td><td style="padding:9px 12px; border:1px solid #d0d0d0;">Reduce dose frequency in severe renal impairment</td></tr>
        </tbody>
      </table>
      <div style="background:#fffbeb; border:1px solid #fde68a; border-left:3px solid #d97706; border-radius:6px; padding:10px 14px; font-size:.82rem; color:#78350f; display:flex; gap:10px; align-items:flex-start;">
        <span style="flex-shrink:0;">💡</span>
        <span><strong>Tip:</strong> MedicationKnowledge is valuable but complex to author. Consider adding it in a later iteration once the ClinicalUseDefinitions are validated and accepted. Your authoring tool may offer templates for common dosing patterns.</span>
      </div>
    </div>
  </div>
</div>

<!-- STEP 5 -->
<div style="display:flex; gap:16px; margin-bottom:28px; align-items:flex-start;">
  <div style="flex-shrink:0; width:36px; height:36px; border-radius:50%; background:#003087; color:#fff; display:flex; align-items:center; justify-content:center; font-size:.85rem; font-weight:700; margin-top:2px;">5</div>
  <div style="flex:1; background:#fff; border:1px solid #e5e7eb; border-radius:8px; overflow:hidden;">
    <div style="padding:14px 20px 10px; border-bottom:1px solid #e5e7eb; background:#f9fafb;"><div style="font-weight:700; color:#111827; font-size:.97rem;">Align narrative sections with structured data, then validate</div></div>
    <div style="padding:14px 20px;">
      <p style="font-size:.88rem; color:#374151; line-height:1.7; margin-bottom:14px;">The narrative text in the Composition (Type 1) and the structured <code style="font-family:monospace; font-size:.8rem; color:#0891b2;">ClinicalUseDefinition</code> resources must be <strong>consistent</strong>. A contraindication in Section 4.3 of the narrative must have a matching <code style="font-family:monospace; font-size:.8rem; color:#0891b2;">ClinicalUseDefinition</code> of type <code style="font-family:monospace; font-size:.8rem; color:#0891b2;">contraindication</code> in the Bundle.</p>
      <div style="background:#eff6ff; border:1px solid #bfdbfe; border-left:3px solid #2563eb; border-radius:6px; padding:10px 14px; font-size:.82rem; color:#1e40af; display:flex; gap:10px; align-items:flex-start; margin-bottom:12px;">
        <span style="flex-shrink:0;">🔗</span>
        <span><strong>Cross-reference check:</strong> For each ClinicalUseDefinition, confirm the corresponding narrative section in the Composition exists and uses consistent language. Discrepancies between structured and narrative data are a common source of validation errors.</span>
      </div>
      <div style="background:#dcfce7; border:1px solid #bbf7d0; border-left:3px solid #16a34a; border-radius:6px; padding:10px 14px; font-size:.82rem; color:#14532d; display:flex; gap:10px; align-items:flex-start;">
        <span style="flex-shrink:0;">✅</span>
        <span><strong>Validate:</strong> Run the completed Bundle against the <a href="StructureDefinition-bundle-epi-type3.html" style="color:#15803d; font-weight:600;">Type 3 FHIR Profile</a>. Fix any errors before submission. Full XML/JSON examples are in the <a href="artifacts.html" style="color:#15803d; font-weight:600;">Artifacts</a> section. An interactive showcase of a Type 3 ePI is also available in the <a href="stylesheets.html" style="color:#15803d; font-weight:600;">Style Sheets</a> section.</span>
      </div>
    </div>
  </div>
</div>

<hr style="border:none; border-top:1px solid #e5e7eb; margin:28px 0;"/>

<!-- WHAT'S NEXT -->
<h2 style="font-size:1.1rem; font-weight:700; color:#111827; margin-bottom:12px;">What's next?</h2>
<div style="display:grid; grid-template-columns:1fr 1fr; gap:14px;">
  <a href="build-list.html" style="text-decoration:none; background:#fff; border:1px solid #bfdbfe; border-left:4px solid #2563eb; border-radius:8px; padding:16px 20px; display:block;">
    <div style="font-size:.72rem; font-weight:700; text-transform:uppercase; letter-spacing:.1em; color:#2563eb; margin-bottom:4px;">Next →</div>
    <div style="font-weight:700; color:#111827; margin-bottom:4px;">Build a List of ePIs</div>
    <div style="font-size:.82rem; color:#6b7280;">Learn how to group and track multiple ePI documents across products, jurisdictions, and languages using the FHIR List resource.</div>
  </a>
  <a href="build-epi2.html" style="text-decoration:none; background:#f9fafb; border:1px solid #e5e7eb; border-radius:8px; padding:16px 20px; display:block;">
    <div style="font-size:.72rem; font-weight:700; text-transform:uppercase; letter-spacing:.1em; color:#6b7280; margin-bottom:4px;">← Previous</div>
    <div style="font-weight:700; color:#111827; margin-bottom:4px;">Build ePI Type 2</div>
    <div style="font-size:.82rem; color:#6b7280;">Return to the product identification step to review or update the structured product resources.</div>
  </a>
</div>