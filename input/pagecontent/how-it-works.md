<style>
.hiw{--navy:#003087;--ink:#111827;--muted:#6b7280;--line:#e5e7eb;--soft:#f9fafb;}
.hiw p{line-height:1.65;}
.hiw .lead{font-size:.95em;color:#374151;max-width:760px;}
.hiw .sec{font-size:1.35em;font-weight:800;color:var(--ink);margin:40px 0 10px;}
.hiw .sub{font-size:.92em;color:var(--muted);margin:0 0 18px;max-width:760px;}
.hiw hr{border:none;border-top:1px solid var(--line);margin:36px 0 0;}
.hiw .anno{display:flex;gap:36px;align-items:flex-start;margin:20px 0 8px;flex-wrap:wrap;}
.hiw .doc{flex:1;min-width:300px;max-width:520px;background:#fff;border:1px solid var(--line);border-radius:14px;padding:20px;box-shadow:0 4px 16px rgba(0,0,0,.07);font-size:.86em;}
.hiw .part{border:2px solid;border-radius:8px;padding:10px 14px;margin-bottom:12px;}
.hiw .part:last-child{margin-bottom:0;}
.hiw .part .k{font-size:.72em;font-weight:800;text-transform:uppercase;letter-spacing:.05em;margin-bottom:4px;}
.hiw .part.a{background:#eff6ff;border-color:#2563eb;} .hiw .part.a .k{color:#2563eb;}
.hiw .part.b{background:#f0fdf4;border-color:#16a34a;} .hiw .part.b .k{color:#16a34a;}
.hiw .part.c{background:#fefce8;border-color:#ca8a04;} .hiw .part.c .k{color:#a16207;}
.hiw .part.d{background:#f8fafc;border-color:#64748b;} .hiw .part.d .k{color:#475569;}
.hiw .part.e{background:#fff1f2;border-color:#e11d48;} .hiw .part.e .k{color:#e11d48;}
.hiw .part.f{background:#f5f3ff;border-color:#7c3aed;} .hiw .part.f .k{color:#7c3aed;}
.hiw .muted{color:var(--muted);}
.hiw .chip{display:inline-block;font-family:monospace;font-size:.78em;font-weight:700;padding:1px 7px;border-radius:4px;background:#fff;border:1px solid #fde68a;color:#a16207;margin-right:6px;}
.hiw .head{font-weight:700;margin:4px 0 2px;}
.hiw .ins{background:#dcfce7;color:#166534;padding:0 2px;border-radius:3px;}
.hiw .del{background:#fee2e2;color:#b91c1c;text-decoration:line-through;padding:0 2px;border-radius:3px;}
.hiw .cmt{margin-top:8px;background:#fff;border:1px solid #fecdd3;border-left:4px solid #e11d48;border-radius:6px;padding:6px 10px;font-size:.92em;}
.hiw .cmt b{color:#9f1239;}
.hiw .pill{display:inline-block;font-size:.82em;font-weight:600;padding:2px 9px;border-radius:999px;background:#fff;border:1px solid #c4b5fd;color:#5b21b6;margin:2px 4px 2px 0;}
.hiw .status{display:inline-block;font-size:.75em;font-weight:700;padding:1px 8px;border-radius:999px;background:#fef3c7;color:#92400e;}
.hiw .labels{flex:1;min-width:260px;display:flex;flex-direction:column;gap:15px;padding-top:4px;}
.hiw .lab{display:flex;gap:12px;align-items:flex-start;}
.hiw .lab .dot{width:28px;height:28px;border-radius:50%;color:#fff;display:flex;align-items:center;justify-content:center;font-weight:800;font-size:.85em;flex:none;margin-top:2px;}
.hiw .lab .h{font-weight:700;color:var(--ink);margin-bottom:2px;}
.hiw .lab p{font-size:.87em;margin:0;}
.hiw .more{font-weight:600;font-size:.88em;text-decoration:none;color:var(--navy);}
.hiw .types{display:grid;grid-template-columns:repeat(4,1fr);gap:0;border:1px solid var(--line);border-radius:12px;overflow:hidden;margin:0 0 22px;}
.hiw .types > a{display:block;padding:16px;text-decoration:none;border-right:1px solid var(--line);border-top:4px solid;}
.hiw .types > a:last-child{border-right:none;}
.hiw .types .n{font-size:.7em;font-weight:800;text-transform:uppercase;letter-spacing:.1em;}
.hiw .types .t{font-weight:700;color:var(--ink);margin:2px 0 4px;}
.hiw .types p{font-size:.82em;color:#4b5563;margin:0;line-height:1.5;}
.hiw .fig{text-align:center;margin:0 0 10px;}
.hiw .fig img{max-width:100%;border:1px solid var(--line);border-radius:12px;box-shadow:0 4px 16px rgba(0,0,0,.06);background:#fff;}
.hiw .cap{font-size:.82em;color:var(--muted);font-style:italic;text-align:center;margin:0 0 22px;}
.hiw .grid3{display:grid;grid-template-columns:repeat(3,1fr);gap:14px;margin:0 0 20px;}
.hiw .grid2{display:grid;grid-template-columns:1fr 1fr;gap:14px;margin:0 0 20px;}
.hiw .card{background:var(--soft);border:1px solid var(--line);border-radius:10px;padding:20px;display:flex;flex-direction:column;}
.hiw .card .ic{font-size:1.35em;margin-bottom:8px;}
.hiw .card .t{font-weight:700;color:var(--navy);margin-bottom:6px;}
.hiw .card p{font-size:.87em;color:#4b5563;margin:0 0 10px;flex:1;}
.hiw .card ul{font-size:.87em;color:#374151;margin:0;padding-left:18px;line-height:1.65;}
.hiw .in{background:#ecfdf5;border-color:#a7f3d0;} .hiw .in .t{color:#065f46;}
.hiw .out{background:#eff6ff;border-color:#bfdbfe;} .hiw .out .t{color:#1e3a8a;}
@media (max-width:820px){ .hiw .types{grid-template-columns:1fr 1fr;} .hiw .types > a:nth-child(2){border-right:none;} .hiw .grid3,.hiw .grid2{grid-template-columns:1fr;} }
@media (max-width:520px){ .hiw .types{grid-template-columns:1fr;} .hiw .types > a{border-right:none;} }
</style>

<div class="hiw">

<p class="lead">This page shows what an ePI contains, part by part, how the FHIR resources behind it fit together as an ePI matures from Type 1 to Type 4, and how one label moves from first draft to approved content that other systems reuse. No FHIR knowledge is needed for Part 1.</p>

<!-- PART 1 -->
<div class="sec" id="anatomy">Part 1: What's in an ePI</div>
<p class="sub">An ePI is the label itself, written as structured content rather than a page layout. Here is a draft patient leaflet, as a regulator would receive it for review.</p>

<div class="anno">
  <div class="doc">
    <div class="part a">
      <div class="k">A · Document metadata</div>
      <strong>Package Leaflet: Information for the user</strong><br/>
      English · version 3 · <span class="status">preliminary (draft)</span> · 2026-03-02<br/>
      <span class="muted">Author: Acme Pharma (MAH) · Attester: added on approval</span>
    </div>
    <div class="part b">
      <div class="k">B · The product it describes</div>
      Paracetamol 500 mg tablets <span class="muted">· linked to the product record, its authorization, and its packs</span>
    </div>
    <div class="part c">
      <div class="k">C · Coded section headings</div>
      <div class="head"><span class="chip">section code</span>1. What Paracetamol 500 mg tablets is and what it is used for</div>
      <div class="head"><span class="chip">section code</span>2. What you need to know before you take Paracetamol 500 mg tablets</div>
      <div class="muted" style="font-style:italic;margin-top:4px;">+ every heading from the national template, coded the same way</div>
    </div>
    <div class="part d">
      <div class="k">D · Narrative content</div>
      Paracetamol 500 mg tablets contain paracetamol, which is a painkiller (analgesic) and also reduces fever. <span class="muted">Tables, lists and 🖼️ images are carried inside the file.</span>
    </div>
    <div class="part e">
      <div class="k">E · Annotations (drafts only)</div>
      Do not take more than <span class="del">8 tablets</span> <span class="ins">4 doses</span> in 24 hours.
      <div class="cmt"><b>Reviewer, 2026-03-09:</b> please align the maximum daily dose with the SmPC wording.</div>
    </div>
    <div class="part f">
      <div class="k">F · Structured data behind the text (Types 2–4)</div>
      <span class="pill">Ingredient: paracetamol 500 mg</span><span class="pill">Pack: 16 tablets · GTIN</span><span class="pill">Warning: liver damage in overdose</span>
    </div>
  </div>
  <div class="labels">
    <div class="lab"><div class="dot" style="background:#2563eb">A</div><div><div class="h">Metadata</div><p>Title, language, version, date and status. Status <strong>preliminary</strong> marks a draft under review and <strong>final</strong> marks approved content. The company is the author; on approval the regulator is recorded as the attester.</p></div></div>
    <div class="lab"><div class="dot" style="background:#16a34a">B</div><div><div class="h">Product link</div><p>Every ePI names the medicinal product it describes, so systems can find the right label for a product, pack or authorization without matching on file names.</p></div></div>
    <div class="lab"><div class="dot" style="background:#ca8a04">C</div><div><div class="h">Coded headings</div><p>Headings and sub-headings come from your national template and carry a code from a controlled terminology. The same section can be found, compared and translated in every ePI, in any language.</p></div></div>
    <div class="lab"><div class="dot" style="background:#64748b">D</div><div><div class="h">Narrative</div><p>The approved wording as XHTML, with its tables, lists and images. This is what readers see, and it renders on any screen.</p></div></div>
    <div class="lab"><div class="dot" style="background:#e11d48">E</div><div><div class="h">Annotations</div><p>In a draft annotated label, insertions, deletions and comment threads are recorded in the XML itself, with author and date. A clean draft is the same content without them. No DOCX is needed. See <a href="tracked-changes.html">Tracked Changes</a>.</p></div></div>
    <div class="lab"><div class="dot" style="background:#7c3aed">F</div><div><div class="h">Structured data</div><p>From Type 2 onwards, the facts in the text are also captured as data: ingredients and packs first, then indications, contraindications, interactions and dosing.</p></div></div>
  </div>
</div>

<p style="margin:14px 0 0;"><a class="more" href="examples/bundle-epi-type1-example-paracetamol.html" target="_blank">See a complete rendered ePI →</a></p>

<hr/>

<!-- PART 2 -->
<div class="sec" id="pieces">Part 2: How the pieces fit</div>
<p class="sub">ePI is a set of linked FHIR resources, adopted in layers. Each ePI Type keeps everything from the Types before it and adds one more layer of structure.</p>

<div class="types">
  <a href="build-epi1.html" style="border-top-color:#2563eb;"><div class="n" style="color:#2563eb">Type 1</div><div class="t">Digital label</div><p>The document: a Bundle with a Composition holding the metadata, coded sections, narrative and images.</p></a>
  <a href="build-epi2.html" style="border-top-color:#16a34a;"><div class="n" style="color:#16a34a">Type 2</div><div class="t">Product identification</div><p>Adds the product, its authorization, packs, manufactured items and ingredients.</p></a>
  <a href="build-epi3.html" style="border-top-color:#7c3aed;"><div class="n" style="color:#7c3aed">Type 3</div><div class="t">Clinical information</div><p>Adds indications, contraindications, interactions, undesirable effects, warnings and dosing as coded data.</p></a>
  <a href="build-epi4.html" style="border-top-color:#ea580c;"><div class="n" style="color:#ea580c">Type 4</div><div class="t">Dynamic digital label</div><p>Breaks the text into atomic topics, each linked to the exact resources it describes.</p></a>
</div>

<div class="fig"><img src="epi-how-the-pieces-fit.svg" alt="Layered diagram of ePI resources. Type 1: a Bundle of type document contains a Composition (metadata, status, coded section headings, XHTML narrative and annotations) and Binary images; a List tracks collections of ePIs. Type 2: the Composition's subject is a MedicinalProductDefinition, which is authorized by a RegulatedAuthorization and referenced by PackagedProductDefinition, ManufacturedItemDefinition, AdministrableProductDefinition and Ingredient (with SubstanceDefinition); Organization is the author and attester. Type 3: ClinicalUseDefinition (indication, contraindication, interaction, undesirable effect, warning), MedicationKnowledge for dosing, and Group for populations, all about the MedicinalProductDefinition. Type 4: the Composition is divided into Concept, Domain and Topic sections, and each Topic's section.entry references the resources it describes."/></div>
<p class="cap">Organizations can start at Type 1 and add layers as they mature.</p>

<p style="font-size:.92em;">The <strong>Bundle</strong> is the ePI: one Bundle holds one document, such as an SmPC or a PIL, in one language. Inside it, the <strong>Composition</strong> is the backbone that holds the metadata, the coded sections and the narrative. The Composition's subject names the <strong>MedicinalProductDefinition</strong> it describes; from Type 2, that product and its authorization, pack and ingredient resources travel in the same Bundle. From Type 3, the clinical content is added as <strong>ClinicalUseDefinition</strong>, <strong>MedicationKnowledge</strong> and <strong>Group</strong> resources. At Type 4, each piece of text points to the data it states. Outside the Bundle, a <strong>List</strong> tracks collections of ePIs: all versions and languages of one product, or every ePI authorized in a jurisdiction.</p>

<p style="margin:6px 0 0;"><a class="more" href="build-overview.html">See every resource and its role →</a></p>

<hr/>

<!-- PART 3 -->
<div class="sec" id="lifecycle">Part 3: The life of a label</div>
<p class="sub">The same ePI file carries a label through drafting, review, approval and reuse. Nothing is re-keyed along the way.</p>

<div class="fig"><img src="epi-label-lifecycle.svg" alt="Swimlane diagram with three lanes: Company, Regulator, and Repository and consumers. 1, the company authors the label in a structured authoring tool using the national template. 2, it submits a draft in annotated and clean versions with status preliminary. 3, the regulator reviews it, with tracked changes, comment threads and a difference check against the approved version, and sends comments back. 4, the company accepts or rejects changes, replies and resubmits a new draft version; the review and response repeat until agreed. 5, the regulator approves it and is recorded as the attester; status becomes final. 6, the approved ePI is published to a FHIR repository and a List of ePIs. 7, it is reused in EMRs, ePrescribing, patient apps and pack artwork. For a variation or safety update, a new draft is derived from the approved ePI and the cycle repeats."/></div>
<p class="cap">Steps 3 and 4 repeat until the company and the regulator agree on the wording.</p>

<div class="grid3">
  <div class="card">
    <div class="ic">📝</div>
    <div class="t">Draft and review</div>
    <p>Drafts are sent with status preliminary, as an annotated version with tracked changes and comment threads and a clean version without them. Reviewers comment in the same file, and can check it instantly against the approved version.</p>
    <a class="more" href="tracked-changes.html">Tracked changes →</a>
  </div>
  <div class="card">
    <div class="ic">✅</div>
    <div class="t">Approve and publish</div>
    <p>On approval the status becomes final and the regulator is recorded as the attester. The approved ePI is published to a FHIR repository, where a List keeps every version, language and document type of the product together.</p>
    <a class="more" href="build-list.html">Build a List of ePIs →</a>
  </div>
  <div class="card">
    <div class="ic">🔁</div>
    <div class="t">Update and reuse</div>
    <p>A variation or safety update starts a new draft derived from the approved ePI, so the history stays linked. Each approved version flows straight into EMRs, ePrescribing, patient apps and pack artwork.</p>
    <a class="more" href="versions.html">Version control →</a>
  </div>
</div>

<hr/>

<!-- SPECIFIES / DECIDE -->
<div class="sec" id="boundaries">What this IG specifies</div>
<p class="sub">The IG defines the content and how its parts connect. Tools and processes around it are left to each organization and regulator.</p>

<div class="grid2">
  <div class="card in">
    <div class="t">ePI specifies</div>
    <ul>
      <li>The structure of the document: Bundle, Composition, sections and narrative</li>
      <li>Metadata, identifiers, versions and lifecycle status</li>
      <li>How annotations (tracked changes and comment threads) are recorded</li>
      <li>The product, clinical and population resources for Types 2 to 4</li>
      <li>Bindings to national and international controlled terminologies</li>
      <li>Lists for tracking collections of ePIs</li>
    </ul>
  </div>
  <div class="card out">
    <div class="t">Your applications decide</div>
    <ul>
      <li>Which authoring tool you use, and how drafts are written</li>
      <li>How files are submitted and exchanged with the regulator</li>
      <li>Review workflow, routing and sign-off</li>
      <li>Rendering and styling: layout, columns, fonts and colours</li>
      <li>Pack artwork, comparison reports and other outputs built from the content</li>
      <li>Search, apps, and integration with EMRs and ePrescribing</li>
    </ul>
  </div>
</div>

<p style="margin:6px 0 32px;"><a class="more" href="gettingstarted.html">Ready to build? Get started →</a></p>

</div>
