Up to 14 FHIR resources can be used to create an ePI. However, not all 14 resources are needed to support all use cases. Different resources can be combined to support various scenarios. 

To assist implementers in selecting the appropriate resources for their preferred use cases, ePI are arranged into the following four types and sub-types:

<!DOCTYPE html>
<html>
<head>
  <style>
    table {
      width: 100%;
      border-collapse: collapse;
      font-family: Arial, Helvetica, sans-serif;
      font-size: 15px;
      margin: 20px 0;
    }
    th {
      background-color: #f2f2f2;
      text-align: left;
      padding: 12px 15px;
      border: 1px solid #ddd;
    }
    td {
      padding: 12px 15px;
      vertical-align: top;
      border: 1px solid #ddd;
    }
    tr:nth-child(even) {
      background-color: #fafafa;
    }
    strong {
      color: #003087;
    }
  </style>
</head>
<body>
<table>
  <thead>
    <tr>
      <th>ePI Type</th>
      <th>Core FHIR Resources Used</th>
      <th>Primary Regulatory / Industry Value &amp; Most Relevant Use Cases</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>Type 1</strong><br>Digital Label Reproduction</td>
      <td>
        • Bundle<br>
        • Composition<br>
        • Binary/images
      </td>
      <td>Faithful digital version of approved labeling (SmPC, PIL, carton) that regulators accept as the legal document of record.<br><br>
        • Regulatory submission of new/updated labeling<br>
        • Publishing on national agency and company websites<br>
        • Generating printing-ready artwork<br>
        • Providing multilingual patient information leaflets
      </td>
    </tr>
    <tr>
      <td><strong>Type 2</strong><br>Product Identification &amp; Traceability</td>
      <td>
        • MedicinalProductDefinition<br>
        • RegulatedAuthorization<br>
        • Organization<br>
        • PackagedProductDefinition<br>
        • ManufacturedItemDefinition<br>
        • AdministrableProductDefinition<br>
        • Ingredient
      </td>
      <td>Structured, unambiguous product identity throughout the lifecycle – the essential foundation for regulatory oversight, supply-chain safety, falsified-medicines verification and pharmacovigilance systems.<br><br><strong>All Type 2 use cases below</strong></td>
    </tr>
    <tr>
      <td><strong>Type 2a</strong><br>Advanced Search</td>
      <td>Organization<br>MedicinalProductDefinition<br>RegulatedAuthorization<br>ManufacturedItemDefinition<br>AdministrableProductDefinition<br>PackagedProductDefinition</td>
      <td>Enables fast, accurate lookup in regulatory databases, national catalogues and hospital formularies.<br><br>Search by company, product name, marketing authorisation number, strength, pharmaceutical form, administrable form or packaging details.</td>
    </tr>
    <tr>
      <td><strong>Type 2b</strong><br>Drug Shortages</td>
      <td>Organization<br>MedicinalProductDefinition<br>RegulatedAuthorization<br>ManufacturedItemDefinition<br>PackagedProductDefinition</td>
      <td>Rapid identification of therapeutic/pharmaceutical equivalents during supply disruptions.<br><br>Find alternative products by company, active substance, strength, form and pack size to manage shortages and authorise substitutions.</td>
    </tr>
    <tr>
      <td><strong>Type 2c</strong><br>Cross-border Travel</td>
      <td>Organization<br>MedicinalProductDefinition<br>PharmaceuticalProductDefinition<br>ManufacturedItemDefinition</td>
      <td>Allows recognition of medicines carried by travelling patients in another jurisdiction.<br><br>Match a prescription or dispensed medicine from another country using manufacturer and product details.</td>
    </tr>
    <tr>
      <td><strong>Type 2d</strong><br>Distribution</td>
      <td>Organization<br>MedicinalProductDefinition<br>RegulatedAuthorization<br>PackagedProductDefinition</td>
      <td>Full end-to-end supply-chain traceability using global identifiers (GTIN, PhPID, PCID).<br><br>Support ordering, wholesaling, customs clearance and reimbursement with unambiguous pack identifiers (GTIN, SKU, batch, expiry).</td>
    </tr>
    <tr>
      <td><strong>Type 2e</strong><br>Allergens</strong></td>
      <td>ManufacturedItemDefinition<br>Ingredient</td>
      <td>Meets legal requirements for declaration of excipients of concern and protects hypersensitive patients.<br><br>Identify and flag allergens or excipients of interest (e.g., lactose, gluten, aspartame, parabens).</td>
    </tr>
    <tr>
      <td><strong>Type 2f</strong><br>Digital Health &amp; Pharmacovigilance</strong></td>
      <td>Organization<br>MedicinalProductDefinition<br>RegulatedAuthorization<br>ManufacturedItemDefinition<br>AdministrableProductDefinition<br>Ingredient</td>
      <td>Unique, persistent product linking across clinical and regulatory systems.<br><br>Support ePrescribing, EMR medication lists, adverse-event reporting, reimbursement claims and recall management – distinguishing manufactured vs. administrable forms (e.g., reconstituted or transformed) when required.</td>
    </tr>
    <tr>
      <td><strong>Type 3</strong><br>Clinical Guidance &amp; Decision Support</td>
      <td>ClinicalUseDefinition (Indication, Contraindication, Interaction, Undesirable Effect)<br>MedicationKnowledge</td>
      <td>Structured, regulator-approved safety and usage information that can directly feed clinical decision support systems while remaining under regulatory control.<br><br>
        • Drug–drug / drug–disease interaction alerts<br>
        • Contraindication checking at prescribing<br>
        • Structured adverse-effect monitoring and reporting<br>
        • Personalised patient counselling material<br>
        • Structured dose regimen
      </td>
    </tr>
    <tr>
      <td><strong>Type 4</strong><br>Computable &amp; Granular Components</td>
      <td>All resources above <strong>except</strong> for the Composition.</td>
      <td>Enables full automation, maximum component/content reuse, web-publishing, and digital health interoperability.<br>All narrative content moved from the Composition to its corresponding structured Resource. 
      E.g., SMPC's MAH section moves to Organization resource; Indication moves to Clinical Use Definition resource<br>
        • Auto-generate batch specific label variations from content components<br>
        • Auto-generate personalized label variations<br>
        • Dynamic content tailored to comorbidities, contraindications, indications, or allergens
      </td>
    </tr>
  </tbody>
</table>

</body>
</html>
