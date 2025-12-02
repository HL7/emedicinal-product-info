Electronic Product Information (ePI) is a HL7 FHIR R5 Implementation Guide that defines a global, open standard for structured, digital-first medicinal product information.

### Why Implement ePI?

ePI replaces DOCX or PDF drug labels with fully structured, interoperable, and instantly distributable FHIR documents. The benefits are immediate and transformative:

<table style="width:100%; border-collapse:collapse; border:2px solid #d0d0d0;">
  <thead>
    <tr style="background-color:#f5f5f5;">
      <th style="border:1px solid #d0d0d0; padding:12px; text-align:left; font-weight:bold;">Benefit</th>
      <th style="border:1px solid #d0d0d0; padding:12px; text-align:left; font-weight:bold;">What it means for you</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="border:1px solid #d0d0d0; padding:12px;"><strong>One global standard</strong></td>
      <td style="border:1px solid #d0d0d0; padding:12px;">A single FHIR-based standard built with open-source web standards that are widely supported and easy to implement – no need to develop or maintain custom XML standards per country.</td>
    </tr>
    <tr>
      <td style="border:1px solid #d0d0d0; padding:12px;"><strong>Advanced Capabilities</strong></td>
      <td style="border:1px solid #d0d0d0; padding:12px;">Enable advanced search, auto-generate comparison tables or pack artwork, facilitate resolving drug shortages.</td>
    </tr>
    <tr>
      <td style="border:1px solid #d0d0d0; padding:12px;"><strong>Digital Health Interoperability</strong></td>
      <td style="border:1px solid #d0d0d0; padding:12px;">Seamless integration with eHealth systems for ePrescription, eMedical Records, personalization, allergen checking, and regulatory reporting.</td>
    </tr>
    <tr>
      <td style="border:1px solid #d0d0d0; padding:12px;"><strong>Future-proof and granular</strong></td>
      <td style="border:1px solid #d0d0d0; padding:12px;">Start with ePI Type 1 or 2 today and evolve to fully structured, personalized leaflets (Type 4) tomorrow without changing the underlying standard.</td>
    </tr>
  </tbody>
</table>

### Four Maturity Levels – Choose Your Starting Point

<table style="width:100%; border-collapse:collapse; border:2px solid #d0d0d0;">
  <thead>
    <tr style="background-color:#f5f5f5;">
      <th style="border:1px solid #d0d0d0; padding:12px; text-align:left; font-weight:bold;">Type</th>
      <th style="border:1px solid #d0d0d0; padding:12px; text-align:left; font-weight:bold;">Description</th>
      <th style="border:1px solid #d0d0d0; padding:12px; text-align:left; font-weight:bold;">Typical Use Cases</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="border:1px solid #d0d0d0; padding:12px;">ePI Type 1</td>
      <td style="border:1px solid #d0d0d0; padding:12px;">FHIR equivalent of authorized DOCX/PDF labels</td>
      <td style="border:1px solid #d0d0d0; padding:12px;">Quick win for industry/regulators to replace existing labels</td>
    </tr>
    <tr style="background-color:#e8f5e8; outline: 3px solid #4caf50; outline-offset: -3px;">
      <td style="border:1px solid #d0d0d0; padding:12px; font-weight:bold; color:#2e7d32;">
        ePI Type 2 <span style="background:#4caf50; color:white; font-size:0.8em; padding:3px 3px; border-radius:4px; margin-left:1px;">RECOMMENDED STARTING POINT</span>
      </td>
      <td style="border:1px solid #d0d0d0; padding:12px; font-weight:500;">Adds structured medicinal product details</td>
      <td style="border:1px solid #d0d0d0; padding:12px;">Advanced search, flag allergens, supply chain traceability, create online product label catalogue</td>
    </tr>
    <tr>
      <td style="border:1px solid #d0d0d0; padding:12px;">ePI Type 3</td>
      <td style="border:1px solid #d0d0d0; padding:12px;">Adds structured clinical details</td>
      <td style="border:1px solid #d0d0d0; padding:12px;">Tracking indications, contraindications, interactions (drug:drug, drug:food, drug:device)</td>
    </tr>
    <tr>
      <td style="border:1px solid #d0d0d0; padding:12px;">ePI Type 4</td>
      <td style="border:1px solid #d0d0d0; padding:12px;">Digital-first, granular, computable components</td>
      <td style="border:1px solid #d0d0d0; padding:12px;">Personalization, dynamically generated label content, and next-generation apps</td>
    </tr>
  </tbody>
</table>

### Background
Drug labels (such as SmPCs, Product Monographs, and package leaflets) are frequently updated regulatory documents that provide essential information for healthcare professionals, patients, and product packaging. 

They are frequently updated with new indications, safety warnings, or dosing changes. Today, however, most are distributed as DOCX or PDF files in fragmented, region-specific formats (e.g., US SPL, EU custom XML, or simple PDFs), which hinders interoperability, delays updates, and limits digital use in EHRs, ePrescribing systems, and patient apps.

Electronic Product Information (ePI) solves this by transforming drug labels into fully structured, machine-readable HL7 FHIR R5 documents. Using a common base, a single ePI can serve multiple jurisdictions while remaining adaptable to local regulatory requirements. 

FHIR’s modern web-based approach paves the way for global harmonization of medicinal product information.

### In-Scope
- Human medicinal drug products
- Healthcare professional label content (e.g., SMPC), patient label content (e.g., Pack Insert), pack artwork

### Out of Scope
- Medical devices, Veterinary Drugs, Over the Counter Drugs, Natural Health Products

