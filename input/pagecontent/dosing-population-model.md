<style>
.dpm{--navy:#003087;--ink:#111827;--muted:#6b7280;--line:#e5e7eb;--soft:#f9fafb;}
.dpm p{line-height:1.65;}
.dpm .lead{font-size:.95em;color:#374151;max-width:780px;}
.dpm .sec{font-size:1.3em;font-weight:800;color:var(--ink);margin:38px 0 10px;}
.dpm .sub{font-size:.92em;color:var(--muted);margin:0 0 16px;max-width:780px;}
.dpm hr{border:none;border-top:1px solid var(--line);margin:34px 0 0;}
.dpm .glance{display:grid;grid-template-columns:repeat(4,1fr);gap:12px;margin:0 0 24px;}
.dpm .g{background:var(--soft);border:1px solid var(--line);border-radius:10px;padding:16px;}
.dpm .g .ic{font-size:1.25em;margin-bottom:6px;}
.dpm .g .t{font-weight:700;color:var(--navy);margin-bottom:4px;font-size:.95em;}
.dpm .g p{font-size:.84em;color:#4b5563;margin:0;line-height:1.5;}
.dpm .fig{text-align:center;margin:0 0 8px;}
.dpm .fig img{max-width:100%;border:1px solid var(--line);border-radius:12px;box-shadow:0 4px 16px rgba(0,0,0,.06);background:#fff;}
.dpm .cap{font-size:.82em;color:var(--muted);font-style:italic;text-align:center;margin:0 0 22px;}
.dpm table.t{width:100%;border-collapse:collapse;font-size:.86em;margin:6px 0 18px;}
.dpm table.t th{background:#f3f4f6;text-align:left;padding:8px 10px;border-bottom:2px solid #d1d5db;color:var(--ink);}
.dpm table.t td{padding:8px 10px;border-bottom:1px solid var(--line);vertical-align:top;}
.dpm table.t code{font-size:.92em;overflow-wrap:anywhere;}
.dpm .tw{overflow-x:auto;margin:6px 0 18px;}
.dpm .tw table.t{margin:0;}
.dpm .rule{border:1px solid var(--line);border-left:4px solid #7c3aed;border-radius:8px;padding:14px 18px;margin:0 0 14px;background:#fff;}
.dpm .rule .h{font-weight:800;color:#5b21b6;margin-bottom:4px;}
.dpm .rule p,.dpm .rule ul{font-size:.9em;margin:4px 0 0;}
.dpm .rule ul{padding-left:20px;}
.dpm .two{display:grid;grid-template-columns:1fr 1fr;gap:14px;margin:0 0 18px;}
.dpm .card{background:var(--soft);border:1px solid var(--line);border-radius:10px;padding:16px 18px;}
.dpm .card .t{font-weight:700;color:var(--navy);margin-bottom:6px;}
.dpm .card p{font-size:.87em;margin:0 0 8px;}
.dpm .more{font-weight:600;font-size:.88em;text-decoration:none;color:var(--navy);}
.dpm pre{font-size:.78em;line-height:1.5;background:#0f172a;color:#e2e8f0;border-radius:8px;padding:14px 16px;overflow-x:auto;}
.dpm .q li{margin-bottom:6px;font-size:.9em;}
@media (max-width:820px){ .dpm .glance{grid-template-columns:1fr 1fr;} .dpm .two{grid-template-columns:1fr;} }
@media (max-width:520px){ .dpm .glance{grid-template-columns:1fr;} }
</style>

<div class="dpm">

<p class="lead">Dosing in product information usually depends on the indication and the patient, and sometimes on which item in the pack is taken. This page shows how an ePI structures dosing by indication, population and pack item, and the rules that keep it consistent.</p>

<div class="glance">
  <div class="g"><div class="ic">🎯</div><div class="t">Dosing sits on the indication</div><p>Each indication ClinicalUseDefinition carries its own regimens, so a dose can never be separated from what it treats.</p></div>
  <div class="g"><div class="ic">👥</div><div class="t">Populations are Groups</div><p>Every population and sub-population is a Group resource, defined by its characteristics.</p></div>
  <div class="g"><div class="ic">🧩</div><div class="t">Sub-populations are complete</div><p>A sub-population restates everything it shares with the indication's population. No AND or OR logic between Groups.</p></div>
  <div class="g"><div class="ic">💊</div><div class="t">Doses can name the item</div><p>In a co-pack, each dose points to the tablet or capsule it is taken from.</p></div>
</div>

<div class="fig"><img src="epi-dosing-model.svg" alt="Diagram of the Duosynth example. A ClinicalUseDefinition indication for mild-to-moderate COVID-19 has subject MedicinalProductDefinition Duosynth and population Group Adults (age 18 or over). The indication carries three dosing guidelines, one per sub-population: adults with eGFR 60 mL/min or more take 300 mg synthavir (two 150 mg tablets) and 100 mg boostavir (one tablet) twice daily for 5 days; adults with eGFR 30 to 59 mL/min take 150 mg synthavir (one tablet) and 100 mg boostavir twice daily for 5 days; adults with eGFR under 30 mL/min take 300 mg synthavir and 100 mg boostavir once on Day 1, then 150 mg synthavir and 100 mg boostavir once daily on Days 2 to 5. Each sub-population is a Group that combines adults and the eGFR band. Each dose points to a ManufacturedItemDefinition in the PackagedProductDefinition: a carton of 5 daily blister cards, each holding 4 pink synthavir 150 mg tablets and 2 white boostavir 100 mg tablets."/></div>
<p class="cap">The Duosynth example: one indication, three renal-function sub-populations, two tablets per dose.</p>

<hr/>

<!-- 1 -->
<div class="sec" id="populations">1. Populations are Groups</div>
<p class="sub">A population is always a <a href="StructureDefinition-Group-uv-epi.html">Group (ePI)</a>. It is <code>definitional</code>, meaning it is defined by criteria rather than a list of members, and each criterion is one <code>characteristic</code>. All characteristics in one Group apply together (AND).</p>

<div class="tw"><table class="t">
  <thead><tr><th>Axis</th><th><code>characteristic.code</code></th><th>Value</th></tr></thead>
  <tbody>
    <tr><td>Sex</td><td><code>sex</code></td><td>CodeableConcept (administrative gender)</td></tr>
    <tr><td>Age</td><td><code>age</code></td><td>Range (UCUM <code>a</code> years or <code>d</code> days)</td></tr>
    <tr><td>Body weight</td><td><code>body-weight</code></td><td>Range</td></tr>
    <tr><td>Race</td><td><code>race</code></td><td>CodeableConcept</td></tr>
    <tr><td>Lifestyle</td><td><code>lifestyle</code></td><td>CodeableConcept</td></tr>
    <tr><td>Renal function</td><td><code>renal-function</code></td><td>Range (for example creatinine clearance or eGFR in mL/min)</td></tr>
    <tr><td>Hepatic function</td><td><code>hepatic-function</code></td><td>CodeableConcept</td></tr>
    <tr><td>Immune status</td><td><code>immune-status</code></td><td>CodeableConcept</td></tr>
  </tbody>
</table></div>
<p style="font-size:.9em;">The list is open. Labels often stratify on axes not listed here, and authors can add further characteristics. Use <code>characteristic.exclude</code> to express an exclusion. The characteristic codes and value sets in this IG are examples for now, pending agreement on controlled terminologies. A Group is referenced from <code>ClinicalUseDefinition.population</code> for the population an indication, contraindication, interaction, undesirable effect or warning applies to, and from a dosing guideline for a sub-population with its own regimen.</p>

<!-- 2 -->
<div class="sec" id="dosing">2. Dosing sits on the indication</div>
<p class="sub">Structured dosing is carried by the draft <a href="StructureDefinition-ext-epi-dosing-guideline.html">Dosing Guideline</a> extension on <code>ClinicalUseDefinition.indication</code>, so every regimen is keyed to the indication it treats. Repeat the extension once for each sub-population that has its own regimen.</p>

<div class="tw"><table class="t">
  <thead><tr><th>Element</th><th>Card.</th><th>Holds</th></tr></thead>
  <tbody>
    <tr><td><code>indication.extension:dosingGuideline</code></td><td>0..*</td><td>One regimen, for the indication's population or for one sub-population</td></tr>
    <tr><td>&nbsp;&nbsp;<code>extension:population</code></td><td>0..1</td><td>Reference to the sub-population Group. Leave it out when the regimen applies to the indication's whole population.</td></tr>
    <tr><td>&nbsp;&nbsp;<code>extension:treatmentIntent</code></td><td>0..1</td><td>CodeableConcept, when the label states the intended outcome</td></tr>
    <tr><td>&nbsp;&nbsp;<code>extension:dosage</code></td><td>1..*</td><td>One phase of the regimen, such as loading, maintenance, Day 1 or Days 2 to 5</td></tr>
    <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;<code>extension:type</code></td><td>0..1</td><td>CodeableConcept naming the phase. Use text when no suitable code exists.</td></tr>
    <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;<code>extension:instruction</code></td><td>1..*</td><td>A <code>Dosage</code>: text, timing, route, dose (amount, range or mg/kg), maximum dose per period</td></tr>
    <tr><td><code>Dosage.extension:</code><a href="StructureDefinition-ext-epi-dosage-manufactured-item.html">manufacturedItem</a></td><td>0..1</td><td>Reference to the ManufacturedItemDefinition this dose is taken from, or to the AdministrableProductDefinition when the product is reconstituted or transformed before it is given</td></tr>
  </tbody>
</table></div>

<!-- 3 -->
<div class="sec" id="rules">3. Rules</div>

<div class="rule">
  <div class="h">Rule 1 · Define each sub-population completely</div>
  <p>A sub-population Group restates every characteristic it shares with the indication's population, plus whatever sets it apart. For Duosynth, the moderate renal impairment sub-population is <em>age 18 or over</em> AND <em>eGFR 30 to 59 mL/min</em>, even though the indication is already limited to adults. Readers never have to combine two Groups to work out who a dose is for, and the IG does not define AND or OR logic between Groups.</p>
</div>

<div class="rule">
  <div class="h">Rule 2 · Do not double-encode the population</div>
  <ul>
    <li>When the dose population is the same as the indication's population, put the Group on <code>ClinicalUseDefinition.population</code> only, and leave the dosing guideline's <code>population</code> out.</li>
    <li>Use the dosing guideline's <code>population</code> only to split one indication's dosing into sub-populations, such as adults, children and term newborns, or renal-function bands.</li>
  </ul>
</div>

<div class="rule">
  <div class="h">Rule 3 · For co-packaged products, give one instruction per item</div>
  <p>When a pack holds more than one manufactured item and each has its own dose, write one Dosage <code>instruction</code> per item and name the item with the <a href="StructureDefinition-ext-epi-dosage-manufactured-item.html">Dosage Manufactured Item</a> extension. Instructions with the same <code>Dosage.sequence</code> are taken together. A later phase uses the next sequence number. The ManufacturedItemDefinitions are the same ones the PackagedProductDefinition contains. When a product is reconstituted or otherwise transformed before it is given and the dose is stated for what is administered, point to the AdministrableProductDefinition instead.</p>
</div>

<div class="rule">
  <div class="h">Rule 4 · Organ function: a stated regimen or a rule</div>
  <ul>
    <li>When the label states a regimen for an impairment band, as Duosynth does for moderate and severe renal impairment, that band is a sub-population with its own dosing guideline.</li>
    <li>When the label states a rule that modifies every indication's dose, such as Fungisynth's "half of the usual daily dose when creatinine clearance is 50 mL/min or less", represent the affected population once as a Group and the rule once as a Warning ClinicalUseDefinition whose <code>population</code> is that Group. Do not repeat adjusted doses across every indication. Dosage cannot express a percentage of another dose, and a rule is not a table.</li>
  </ul>
</div>

<div class="rule">
  <div class="h">Rule 5 · Dosage.text is authoritative</div>
  <p>Always give the authorised wording in <code>Dosage.text</code>. Fill the structured fields as far as they faithfully capture the regimen. Some dosing is irreducibly narrative ("longer if immunocompromised"), and the text carries it.</p>
</div>

<div class="two">
  <div class="card"><div class="t">Two roles of weight</div><p><strong>Population selector:</strong> a <code>body-weight</code> characteristic on the Group, for example patients of 40 kg or more.</p><p style="margin:0;"><strong>Dose basis:</strong> an mg/kg quantity in <code>Dosage.doseAndRate</code>, for example 6 mg/kg. Keep the two separate.</p></div>
  <div class="card"><div class="t">Severity is not a population</div><p style="margin:0;">Disease severity ("up to 800 mg in severe disease") describes the condition, not the patient. Carry the mild-to-severe span in the dose range and <code>Dosage.text</code>, not as a Group characteristic.</p></div>
</div>

<hr/>

<!-- 4 -->
<div class="sec" id="examples">4. Worked examples</div>

<div class="two">
  <div class="card">
    <div class="t">💊 Duosynth: two tablets, three renal bands</div>
    <p>Synthavir tablets co-packaged with boostavir tablets. One indication for adults, with a dosing guideline for each renal-function band. The severe band has two phases (Day 1, then Days 2 to 5). Every dose names its tablet.</p>
    <a class="more" href="Bundle-bundle-epi-type3-example-duosynth.html">Duosynth example →</a>
  </div>
  <div class="card">
    <div class="t">🧫 Fungisynth: many indications and populations</div>
    <p>Mucosal candidiasis has three dosing guidelines (adults, children, term newborns), each pointing to a sub-population Group. Invasive candidiasis applies to adults, so its single guideline has no population of its own. The renal rule is one Warning.</p>
    <a class="more" href="Bundle-bundle-epi-type3-example-fungisynth.html">Fungisynth example →</a>
  </div>
</div>

<div class="tw"><table class="t">
  <thead><tr><th>Duosynth sub-population (Group)</th><th>Phase</th><th>Synthavir 150 mg tablet</th><th>Boostavir 100 mg tablet</th></tr></thead>
  <tbody>
    <tr><td>Adults, eGFR 60 mL/min or more</td><td>Days 1 to 5, twice daily</td><td>300 mg (two tablets)</td><td>100 mg (one tablet)</td></tr>
    <tr><td>Adults, eGFR 30 to 59 mL/min</td><td>Days 1 to 5, twice daily</td><td>150 mg (one tablet)</td><td>100 mg (one tablet)</td></tr>
    <tr><td rowspan="2">Adults, eGFR under 30 mL/min, including haemodialysis</td><td>Day 1, once</td><td>300 mg (two tablets)</td><td>100 mg (one tablet)</td></tr>
    <tr><td>Days 2 to 5, once daily</td><td>150 mg (one tablet)</td><td>100 mg (one tablet)</td></tr>
  </tbody>
</table></div>

</div>
