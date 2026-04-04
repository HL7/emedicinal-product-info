<!-- ePI TYPE 2 — Build Guide | Target: business/regulatory users -->

<!-- HEADER NOTE -->
<div style="background:#fffbeb; border:1px solid #fde68a; border-left:4px solid #d97706; border-radius:8px; padding:12px 18px; margin-bottom:24px; font-size:.85rem; color:#78350f; display:flex; gap:10px; align-items:flex-start;">
  <span style="flex-shrink:0; font-size:1rem;">📋</span>
  <span><strong>Pre-requisites:</strong> Before starting Type 2, ensure you have completed the <a href="build-epi1.html#prerequisites" style="color:#92400e; font-weight:600;">Pre-requisites</a> on the Build ePI Type 1 page and have already built a working Type 1 ePI for the product. Type 2 <em>extends</em> Type 1 — it does not replace it.</span>
</div>

<!-- WHAT IS TYPE 2 -->
<h2 style="font-size:1.35rem; font-weight:700; color:#111827; margin-bottom:8px;">What is ePI Type 2?</h2>
<p style="color:#374151; font-size:.94rem; line-height:1.7; margin-bottom:16px;">An ePI Type 2 extends the narrative label (Type 1) by adding <strong>structured, machine-readable product information</strong>. This enables national drug catalogues, regulatory portals, and supply-chain systems to search, filter, and retrieve products by name, strength, ingredient, or authorisation number — without reading the narrative text.</p>

<div style="margin-bottom:8px;"><span style="font-size:.75rem; font-weight:700; text-transform:uppercase; letter-spacing:.1em; color:#9ca3af;">You will add these FHIR resources (on top of Type 1)</span></div>
<div style="display:flex; flex-wrap:wrap; gap:8px; margin-bottom:28px;">
  <span style="background:#f9fafb; border:1px solid #e5e7eb; color:#6b7280; font-size:.78rem; font-weight:600; padding:4px 12px; border-radius:99px;">📦 Bundle + 📄 Composition (from Type 1)</span>
  <span style="background:#eff6ff; border:1px solid #bfdbfe; color:#1d4ed8; font-size:.78rem; font-weight:600; padding:4px 12px; border-radius:99px;">🏢 Organization</span>
  <span style="background:#eff6ff; border:1px solid #bfdbfe; color:#1d4ed8; font-size:.78rem; font-weight:600; padding:4px 12px; border-radius:99px;">💊 MedicinalProductDefinition</span>
  <span style="background:#eff6ff; border:1px solid #bfdbfe; color:#1d4ed8; font-size:.78rem; font-weight:600; padding:4px 12px; border-radius:99px;">📜 RegulatedAuthorization</span>
  <span style="background:#eff6ff; border:1px solid #bfdbfe; color:#1d4ed8; font-size:.78rem; font-weight:600; padding:4px 12px; border-radius:99px;">📦 PackagedProductDefinition</span>
  <span style="background:#eff6ff; border:1px solid #bfdbfe; color:#1d4ed8; font-size:.78rem; font-weight:600; padding:4px 12px; border-radius:99px;">🔬 ManufacturedItemDefinition</span>
  <span style="background:#eff6ff; border:1px solid #bfdbfe; color:#1d4ed8; font-size:.78rem; font-weight:600; padding:4px 12px; border-radius:99px;">💉 AdministrableProductDefinition</span>
  <span style="background:#eff6ff; border:1px solid #bfdbfe; color:#1d4ed8; font-size:.78rem; font-weight:600; padding:4px 12px; border-radius:99px;">🧪 Ingredient</span>
  <span style="background:#eff6ff; border:1px solid #bfdbfe; color:#1d4ed8; font-size:.78rem; font-weight:600; padding:4px 12px; border-radius:99px;">⚗️ SubstanceDefinition</span>
</div>

<!-- RESOURCE CHAIN VISUAL -->
<div style="background:#f9fafb; border:1px solid #e5e7eb; border-radius:8px; padding:18px 20px; margin-bottom:28px;">
  <div style="font-size:.72rem; font-weight:700; text-transform:uppercase; letter-spacing:.1em; color:#9ca3af; margin-bottom:12px;">How the Type 2 resources connect</div>
  <div style="display:flex; flex-wrap:wrap; align-items:center; gap:6px; font-size:.78rem; font-weight:600;">
    <span style="background:#003087; color:#fff; padding:5px 12px; border-radius:6px;">MedicinalProductDefinition</span>
    <span style="color:#9ca3af;">←</span>
    <span style="background:#2563eb; color:#fff; padding:5px 12px; border-radius:6px;">RegulatedAuthorization</span>
    <span style="color:#9ca3af; font-size:.7rem; align-self:flex-end; padding-bottom:2px;">references</span>
    <span style="background:#0891b2; color:#fff; padding:5px 12px; border-radius:6px;">Organization</span>
  </div>
  <div style="margin:8px 0 8px 20px; color:#9ca3af; font-size:.8rem;">↓</div>
  <div style="display:flex; flex-wrap:wrap; align-items:center; gap:6px; font-size:.78rem; font-weight:600; margin-left:20px;">
    <span style="background:#7c3aed; color:#fff; padding:5px 12px; border-radius:6px;">PackagedProductDefinition</span>
    <span style="color:#9ca3af;">→</span>
    <span style="background:#16a34a; color:#fff; padding:5px 12px; border-radius:6px;">ManufacturedItemDefinition</span>
    <span style="color:#9ca3af;">→</span>
    <span style="background:#16a34a; color:#fff; padding:5px 12px; border-radius:6px;">AdministrableProductDefinition</span>
  </div>
  <div style="margin:8px 0 8px 40px; color:#9ca3af; font-size:.8rem;">↓</div>
  <div style="display:flex; flex-wrap:wrap; align-items:center; gap:6px; font-size:.78rem; font-weight:600; margin-left:40px;">
    <span style="background:#d97706; color:#fff; padding:5px 12px; border-radius:6px;">Ingredient</span>
    <span style="color:#9ca3af;">→</span>
    <span style="background:#d97706; color:#fff; padding:5px 12px; border-radius:6px;">SubstanceDefinition</span>
  </div>
</div>

<hr style="border:none; border-top:1px solid #e5e7eb; margin:28px 0;"/>

<!-- STEPS -->
<h2 style="font-size:1.35rem; font-weight:700; color:#111827; margin-bottom:20px;">Step-by-Step Workflow</h2>

<!-- STEP 1 -->
<div style="display:flex; gap:16px; margin-bottom:20px; align-items:flex-start;">
  <div style="flex-shrink:0; width:36px; height:36px; border-radius:50%; background:#003087; color:#fff; display:flex; align-items:center; justify-content:center; font-size:.85rem; font-weight:700; margin-top:2px;">1</div>
  <div style="flex:1; background:#fff; border:1px solid #e5e7eb; border-radius:8px; overflow:hidden;">
    <div style="padding:14px 20px 10px; border-bottom:1px solid #e5e7eb; background:#f9fafb;"><div style="font-weight:700; color:#111827; font-size:.97rem;">Gather your regulatory master data</div></div>
    <div style="padding:14px 20px;">
      <p style="font-size:.88rem; color:#374151; line-height:1.7; margin-bottom:14px;">Before authoring any FHIR resources, collect the structured data from your regulatory and supply-chain systems. This is the data that already exists — you are digitalising it, not inventing it.</p>
      <table style="width:100%; border-collapse:collapse; font-size:.84rem; margin-bottom:10px;">
        <thead><tr style="background:#003087; color:#fff;">
          <th style="padding:9px 12px; border:1px solid #d0d0d0; text-align:left; width:40%;">Data item</th>
          <th style="padding:9px 12px; border:1px solid #d0d0d0; text-align:left;">Where to find it</th>
        </tr></thead>
        <tbody>
          <tr><td style="padding:9px 12px; border:1px solid #d0d0d0;">Marketing Authorisation Holder (MAH) legal name</td><td style="padding:9px 12px; border:1px solid #d0d0d0;">Authorisation certificate / regulatory database</td></tr>
          <tr style="background:#f9fafb;"><td style="padding:9px 12px; border:1px solid #d0d0d0;">Authorisation number and date</td><td style="padding:9px 12px; border:1px solid #d0d0d0;">Authorisation certificate</td></tr>
          <tr><td style="padding:9px 12px; border:1px solid #d0d0d0;">Medicinal product name, strength, dose form</td><td style="padding:9px 12px; border:1px solid #d0d0d0;">The label itself / product master data</td></tr>
          <tr style="background:#f9fafb;"><td style="padding:9px 12px; border:1px solid #d0d0d0;">Active substance(s) and INN names</td><td style="padding:9px 12px; border:1px solid #d0d0d0;">The label / pharmacopoeia</td></tr>
          <tr><td style="padding:9px 12px; border:1px solid #d0d0d0;">Package configuration (e.g. 30 tablets in a blister in a carton)</td><td style="padding:9px 12px; border:1px solid #d0d0d0;">Pack specifications / artwork brief</td></tr>
          <tr style="background:#f9fafb;"><td style="padding:9px 12px; border:1px solid #d0d0d0;">GTIN / barcode identifiers (optional)</td><td style="padding:9px 12px; border:1px solid #d0d0d0;">GS1 company database / packaging department</td></tr>
        </tbody>
      </table>
    </div>
  </div>
</div>

<!-- STEP 2 -->
<div style="display:flex; gap:16px; margin-bottom:20px; align-items:flex-start;">
  <div style="flex-shrink:0; width:36px; height:36px; border-radius:50%; background:#003087; color:#fff; display:flex; align-items:center; justify-content:center; font-size:.85rem; font-weight:700; margin-top:2px;">2</div>
  <div style="flex:1; background:#fff; border:1px solid #e5e7eb; border-radius:8px; overflow:hidden;">
    <div style="padding:14px 20px 10px; border-bottom:1px solid #e5e7eb; background:#f9fafb;"><div style="font-weight:700; color:#111827; font-size:.97rem;">Create the Organization resource(s)</div></div>
    <div style="padding:14px 20px;">
      <p style="font-size:.88rem; color:#374151; line-height:1.7; margin-bottom:14px;">Create one <strong>Organization</strong> resource for each legal entity involved — typically the <strong>Marketing Authorisation Holder (MAH)</strong> and optionally the manufacturer. The Organization is referenced by several other resources, so build it first.</p>
      <table style="width:100%; border-collapse:collapse; font-size:.84rem; margin-bottom:14px;">
        <thead><tr style="background:#003087; color:#fff;">
          <th style="padding:9px 12px; border:1px solid #d0d0d0; text-align:left; width:30%;">Field</th>
          <th style="padding:9px 12px; border:1px solid #d0d0d0; text-align:left;">What to enter</th>
        </tr></thead>
        <tbody>
          <tr><td style="padding:9px 12px; border:1px solid #d0d0d0;"><code style="font-family:monospace; font-size:.8rem; color:#0891b2;">identifier</code></td><td style="padding:9px 12px; border:1px solid #d0d0d0;">Organisation ID such as DUNS number or SPOR OrgID</td></tr>
          <tr style="background:#f9fafb;"><td style="padding:9px 12px; border:1px solid #d0d0d0;"><code style="font-family:monospace; font-size:.8rem; color:#0891b2;">name</code></td><td style="padding:9px 12px; border:1px solid #d0d0d0;">Full legal name as it appears on the authorisation</td></tr>
          <tr><td style="padding:9px 12px; border:1px solid #d0d0d0;"><code style="font-family:monospace; font-size:.8rem; color:#0891b2;">type</code></td><td style="padding:9px 12px; border:1px solid #d0d0d0;">Role designation — e.g. <em>Marketing Authorization Holder</em></td></tr>
          <tr style="background:#f9fafb;"><td style="padding:9px 12px; border:1px solid #d0d0d0;"><code style="font-family:monospace; font-size:.8rem; color:#0891b2;">contact.address</code></td><td style="padding:9px 12px; border:1px solid #d0d0d0;">Physical or postal address of the organisation</td></tr>
          <tr><td style="padding:9px 12px; border:1px solid #d0d0d0;"><code style="font-family:monospace; font-size:.8rem; color:#0891b2;">contact.telecom</code></td><td style="padding:9px 12px; border:1px solid #d0d0d0;">Contact details including phone, email, and corporate website</td></tr>
        </tbody>
      </table>
      <div style="background:#fffbeb; border:1px solid #fde68a; border-left:3px solid #d97706; border-radius:6px; padding:10px 14px; font-size:.82rem; color:#78350f; display:flex; gap:10px; align-items:flex-start;">
        <span style="flex-shrink:0;">💡</span>
        <span><strong>Tip:</strong> If the MAH and the manufacturer are the same legal entity, one Organization resource is sufficient. Reference it from both the <code style="font-family:monospace; font-size:.79rem;">MedicinalProductDefinition</code> and the <code style="font-family:monospace; font-size:.79rem;">ManufacturedItemDefinition</code>.</span>
      </div>
    </div>
  </div>
</div>

<!-- STEP 3 -->
<div style="display:flex; gap:16px; margin-bottom:20px; align-items:flex-start;">
  <div style="flex-shrink:0; width:36px; height:36px; border-radius:50%; background:#003087; color:#fff; display:flex; align-items:center; justify-content:center; font-size:.85rem; font-weight:700; margin-top:2px;">3</div>
  <div style="flex:1; background:#fff; border:1px solid #e5e7eb; border-radius:8px; overflow:hidden;">
    <div style="padding:14px 20px 10px; border-bottom:1px solid #e5e7eb; background:#f9fafb;"><div style="font-weight:700; color:#111827; font-size:.97rem;">Build the product resource chain</div></div>
    <div style="padding:14px 20px;">
      <p style="font-size:.88rem; color:#374151; line-height:1.7; margin-bottom:14px;">Work through the product resources in the order below — each one references the previous. Your authoring tool may automate parts of this chain.</p>
      <table style="width:100%; border-collapse:collapse; font-size:.84rem; margin-bottom:14px;">
        <thead><tr style="background:#003087; color:#fff;">
          <th style="padding:9px 12px; border:1px solid #d0d0d0; text-align:left; width:5%;">#</th>
          <th style="padding:9px 12px; border:1px solid #d0d0d0; text-align:left; width:35%;">Resource</th>
          <th style="padding:9px 12px; border:1px solid #d0d0d0; text-align:left;">What it captures</th>
        </tr></thead>
        <tbody>
          <tr><td style="padding:9px 12px; border:1px solid #d0d0d0; color:#003087; font-weight:700;">i</td><td style="padding:9px 12px; border:1px solid #d0d0d0;"><strong>MedicinalProductDefinition</strong></td><td style="padding:9px 12px; border:1px solid #d0d0d0;">The regulatory anchor: product name, type, and marketing status</td></tr>
          <tr style="background:#f9fafb;"><td style="padding:9px 12px; border:1px solid #d0d0d0; color:#003087; font-weight:700;">ii</td><td style="padding:9px 12px; border:1px solid #d0d0d0;"><strong>RegulatedAuthorization</strong></td><td style="padding:9px 12px; border:1px solid #d0d0d0;">The product licence: authorisation number, holder, validity dates</td></tr>
          <tr><td style="padding:9px 12px; border:1px solid #d0d0d0; color:#003087; font-weight:700;">iii</td><td style="padding:9px 12px; border:1px solid #d0d0d0;"><strong>ManufacturedItemDefinition</strong></td><td style="padding:9px 12px; border:1px solid #d0d0d0;">The physical item: dose form (e.g. tablet), presentation unit</td></tr>
          <tr style="background:#f9fafb;"><td style="padding:9px 12px; border:1px solid #d0d0d0; color:#003087; font-weight:700;">iv</td><td style="padding:9px 12px; border:1px solid #d0d0d0;"><strong>AdministrableProductDefinition</strong></td><td style="padding:9px 12px; border:1px solid #d0d0d0;">The product as administered: dose form and route (e.g. oral)</td></tr>
          <tr><td style="padding:9px 12px; border:1px solid #d0d0d0; color:#003087; font-weight:700;">v</td><td style="padding:9px 12px; border:1px solid #d0d0d0;"><strong>PackagedProductDefinition</strong></td><td style="padding:9px 12px; border:1px solid #d0d0d0;">The packaging hierarchy: carton → blister → tablets, with GTIN</td></tr>
          <tr style="background:#f9fafb;"><td style="padding:9px 12px; border:1px solid #d0d0d0; color:#003087; font-weight:700;">vi</td><td style="padding:9px 12px; border:1px solid #d0d0d0;"><strong>Ingredient</strong></td><td style="padding:9px 12px; border:1px solid #d0d0d0;">Clarifies the role, function, and strength/quantity of each substance (e.g., active, excipient, binder)</td></tr>
          <tr><td style="padding:9px 12px; border:1px solid #d0d0d0; color:#003087; font-weight:700;">vii</td><td style="padding:9px 12px; border:1px solid #d0d0d0;"><strong>SubstanceDefinition</strong></td><td style="padding:9px 12px; border:1px solid #d0d0d0;">The chemical definition of each substance, with standard codes</td></tr>
        </tbody>
      </table>
    </div>
  </div>
</div>

<!-- STEP 4 -->
<div style="display:flex; gap:16px; margin-bottom:20px; align-items:flex-start;">
  <div style="flex-shrink:0; width:36px; height:36px; border-radius:50%; background:#003087; color:#fff; display:flex; align-items:center; justify-content:center; font-size:.85rem; font-weight:700; margin-top:2px;">4</div>
  <div style="flex:1; background:#fff; border:1px solid #e5e7eb; border-radius:8px; overflow:hidden;">
    <div style="padding:14px 20px 10px; border-bottom:1px solid #e5e7eb; background:#f9fafb;"><div style="font-weight:700; color:#111827; font-size:.97rem;">Define packaging characteristics and artwork</div></div>
    <div style="padding:14px 20px;">
      <p style="font-size:.88rem; color:#374151; line-height:1.7; margin-bottom:14px;">The <code style="font-family:monospace; font-size:.8rem; color:#0891b2;">PackagedProductDefinition</code> fully describes the physical package. Use it to detail physical characteristics including layers (primary, secondary, tertiary), pack types, quantities, materials, machine-readable identifiers (like GTIN, NTIN, SKU), shelf life, and storage conditions. Furthermore, you can optionally attach pack artwork (carton images, label scans) using the native <code style="font-family:monospace; font-size:.8rem; color:#0891b2;">attachedDocument</code> element, referencing a <code style="font-family:monospace; font-size:.8rem; color:#0891b2;">DocumentReference</code> resource.</p>
      <div style="background:#f9fafb; border:1px solid #e5e7eb; border-radius:6px; padding:12px 16px; margin-bottom:12px;">
        <div style="font-size:.72rem; font-weight:700; text-transform:uppercase; letter-spacing:.1em; color:#9ca3af; margin-bottom:8px;">Recommended pattern</div>
        <div style="font-size:.78rem; font-family:ui-monospace,'SF Mono',monospace; color:#374151; line-height:1.9;">
          PackagedProductDefinition<br/>
          &nbsp;&nbsp;.<span style="color:#0891b2;">attachedDocument</span> → Reference(DocumentReference)<br/><br/>
          DocumentReference<br/>
          &nbsp;&nbsp;.<span style="color:#0891b2;">type</span> = pack-artwork<br/>
          &nbsp;&nbsp;.<span style="color:#0891b2;">status</span> = current<br/>
          &nbsp;&nbsp;.<span style="color:#0891b2;">content[0].attachment.contentType</span> = image/svg+xml<br/>
          &nbsp;&nbsp;.<span style="color:#0891b2;">content[0].attachment.data</span> = &lt;base64-encoded image&gt;
        </div>
      </div>
      <div style="background:#fffbeb; border:1px solid #fde68a; border-left:3px solid #d97706; border-radius:6px; padding:10px 14px; font-size:.82rem; color:#78350f; display:flex; gap:10px; align-items:flex-start;">
        <span style="flex-shrink:0;">💡</span>
        <span><strong>Why this approach?</strong> <code style="font-family:monospace; font-size:.79rem;">attachedDocument</code> is a native FHIR R5 element — no extension needed. The <code style="font-family:monospace; font-size:.79rem;">DocumentReference</code> carries rich metadata (type, status, date) and can hold multiple formats (thumbnail + hi-res) in a single resource.</span>
      </div>
    </div>
  </div>
</div>

<!-- STEP 5 -->
<div style="display:flex; gap:16px; margin-bottom:28px; align-items:flex-start;">
  <div style="flex-shrink:0; width:36px; height:36px; border-radius:50%; background:#003087; color:#fff; display:flex; align-items:center; justify-content:center; font-size:.85rem; font-weight:700; margin-top:2px;">5</div>
  <div style="flex:1; background:#fff; border:1px solid #e5e7eb; border-radius:8px; overflow:hidden;">
    <div style="padding:14px 20px 10px; border-bottom:1px solid #e5e7eb; background:#f9fafb;"><div style="font-weight:700; color:#111827; font-size:.97rem;">Link product to the Composition and validate</div></div>
    <div style="padding:14px 20px;">
      <p style="font-size:.88rem; color:#374151; line-height:1.7; margin-bottom:14px;">Update the Type 1 <code style="font-family:monospace; font-size:.8rem; color:#0891b2;">Composition</code> to reference the newly created <code style="font-family:monospace; font-size:.8rem; color:#0891b2;">MedicinalProductDefinition</code> via <code style="font-family:monospace; font-size:.8rem; color:#0891b2;">Composition.subject</code>. Then add all new resources to the Bundle entries and validate.</p>
      <div style="background:#eff6ff; border:1px solid #bfdbfe; border-left:3px solid #2563eb; border-radius:6px; padding:10px 14px; font-size:.82rem; color:#1e40af; display:flex; gap:10px; align-items:flex-start; margin-bottom:10px;">
        <span style="flex-shrink:0;">🔗</span>
        <span><strong>Key linkage:</strong> <code style="font-family:monospace; font-size:.79rem;">Composition.subject</code> → <code style="font-family:monospace; font-size:.79rem;">MedicinalProductDefinition</code>. This is what connects the narrative text (Type 1) to the structured product data (Type 2).</span>
      </div>
      <div style="background:#dcfce7; border:1px solid #bbf7d0; border-left:3px solid #16a34a; border-radius:6px; padding:10px 14px; font-size:.82rem; color:#14532d; display:flex; gap:10px; align-items:flex-start;">
        <span style="flex-shrink:0;">✅</span>
        <span><strong>Validate:</strong> Run the completed Bundle against the <a href="StructureDefinition-bundle-epi-type2.html" style="color:#15803d; font-weight:600;">Type 2 FHIR Profile</a>. Fix any errors before submission. Full XML/JSON examples are in the <a href="artifacts.html" style="color:#15803d; font-weight:600;">Artifacts</a> section.</span>
      </div>
    </div>
  </div>
</div>

<hr style="border:none; border-top:1px solid #e5e7eb; margin:28px 0;"/>

<!-- WHAT'S NEXT -->
<h2 style="font-size:1.1rem; font-weight:700; color:#111827; margin-bottom:12px;">What's next?</h2>
<div style="display:grid; grid-template-columns:1fr 1fr; gap:14px;">
  <a href="build-epi3.html" style="text-decoration:none; background:#fff; border:1px solid #bfdbfe; border-left:4px solid #2563eb; border-radius:8px; padding:16px 20px; display:block;">
    <div style="font-size:.72rem; font-weight:700; text-transform:uppercase; letter-spacing:.1em; color:#2563eb; margin-bottom:4px;">Next →</div>
    <div style="font-weight:700; color:#111827; margin-bottom:4px;">Build ePI Type 3</div>
    <div style="font-size:.82rem; color:#6b7280;">Add structured clinical definitions — indications, contraindications, warnings — to unlock clinical decision support.</div>
  </a>
  <a href="build-epi1.html" style="text-decoration:none; background:#f9fafb; border:1px solid #e5e7eb; border-radius:8px; padding:16px 20px; display:block;">
    <div style="font-size:.72rem; font-weight:700; text-transform:uppercase; letter-spacing:.1em; color:#6b7280; margin-bottom:4px;">← Previous</div>
    <div style="font-weight:700; color:#111827; margin-bottom:4px;">Build ePI Type 1</div>
    <div style="font-size:.82rem; color:#6b7280;">Return to the narrative reproduction step if you need to revisit the Type 1 foundation.</div>
  </a>
</div>