Electronic Product Information (ePI) is a global, open standard for structured, digital-first medicinal product information, built on HL7 FHIR R5.

### Why ePI?
The benefits of moving to a structured standard are transformative for regulators, industry, and patients:

*   **One Global Standard**: A single FHIR-based standard built with open-source web technologies. No need to maintain custom XML standards per country – build once, deploy globally.
*   **Advanced Digital Capabilities**: Enable advanced search, auto-generate comparison tables, facilitate resolving drug shortages, and streamline pack artwork generation.
*   **Digital Health Interoperability**: Seamless integration with eHealth systems for ePrescription, Electronic Medical Records (EMR), allergen checking, and automated regulatory reporting.

### Background
Drug labels (SmPCs, Product Monographs, and Patient Leaflets) are critical regulatory documents that provide essential safety and usage information. 

Currently, these are often distributed as fragmented, region-specific formats (SPL, custom XML, or PDFs), hindering interoperability and delaying updates. ePI solves this by transforming labels into structured HL7 FHIR R5 documents, ensuring that a single source of truth can serve multiple jurisdictions while remaining adaptable to local regulations.

### Scope

**In-Scope**: All medicinal drug products (Human use); Healthcare professional label (e.g., SmPC), patient label (e.g., PIL), Instructions for Use (IFU), and pack artwork.

**Out of Scope (Temporary)**: Medical devices, Veterinary Drugs, and Natural Health Products. These product typess will be addressed in future phases of this project.

### ePI Maturity & Use Cases
To assist implementers, ePI is arranged into four "Types" based on technical maturity and data depth.

<table style="width:100%; border-collapse: collapse; border: 1px solid #d0d0d0; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif; font-size: 14px;">
  <thead>
    <tr style="background-color: #003087; color: #ffffff;">
      <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left; width: 15%;">Type</th>
      <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left; width: 35%;">Core FHIR Resources</th>
      <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left;">Primary Value & Use Cases</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 12px; border: 1px solid #d0d0d0; border-left: 6px solid #0071e3;"><strong>Type 1</strong></td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">Bundle, Composition, Binary</td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;"><strong>Digital Reproduction</strong>: Faithful digital version of approved labeling (SmPC, PIL, carton). Acceptable as a legal document of record.</td>
    </tr>
    <tr style="background-color: #f0f7ff; border: 2px solid #003087;">
      <td style="padding: 12px; border: 1px solid #d0d0d0; border-left: 6px solid #34c759;">
        <strong>Type 2</strong><br>
        <span style="display: inline-block; background-color: #003087; color: #ffffff; font-size: 10px; padding: 2px 6px; border-radius: 4px; margin-top: 4px; font-weight: bold;">RECOMMENDED STARTING POINT</span>
      </td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">MedicinalProductDefinition, RegulatedAuthorization, Organization, PackagedProductDefinition, ManufacturedItemDefinition, AdministrableProductDefinition, Ingredient, Substance</td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;"><strong>Product Identification</strong>: Enables accurate lookup in hospital systems and national medicine databases. Supports <strong>Drug Shortage</strong> management (therapeutic alternatives), <strong>Allergen/Excipient Safety</strong> (e.g., lactose, gluten), and <strong>Digital Interoperability</strong> (ePrescribing).</td>
    </tr>
    <tr>
      <td style="padding: 12px; border: 1px solid #d0d0d0; border-left: 6px solid #5856d6;"><strong>Type 3</strong></td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">ClinicalUseDefinition, MedicationKnowledge</td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;"><strong>Clinical Guidance</strong>: Structured indications and contraindications. Enables <strong>Interaction Alerts</strong> (Drug-Drug, Drug-Food) in EMRs/Apps.</td>
    </tr>
    <tr>
      <td style="padding: 12px; border: 1px solid #d0d0d0; border-left: 6px solid #af52de;"><strong>Type 4</strong></td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">All resources <em>except</em> Composition</td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;"><strong>Digital-First Components</strong>: Fully granular, computable components. Enables batch-specific label variations and <strong>Personalized</strong> patient counseling material.</td>
    </tr>
  </tbody>
</table>

