Electronic Product Information (ePI) is a global, open standard for structured, digital-first medicinal product information, built on HL7 FHIR R5.

### Why ePI?
The benefits of moving to a structured standard are transformative for regulators, industry, and patients:

*   **One Global Standard**: A single FHIR-based standard built with open-source web technologies. No need to maintain custom XML standards per country – build once, deploy globally.
*   **Advanced Digital Capabilities**: Enable advanced search, auto-generate comparison tables, facilitate resolving drug shortages, and streamline pack artwork generation.
*   **Digital Health Interoperability**: Seamless integration with eHealth systems for ePrescription, Electronic Medical Records (EMR), allergen checking, and automated regulatory reporting.

### Maturity Levels – Choose Your Starting Point

<table style="width:100%; border-collapse: collapse; border: 1px solid #d0d0d0; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif; font-size: 14px;">
  <thead>
    <tr style="background-color: #003087; color: #ffffff;">
      <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left; width: 30%;">Type</th>
      <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left;">Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 12px; border: 1px solid #d0d0d0;"><strong>ePI Type 1</strong><br>Digital Label Reproduction</td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">FHIR equivalent of authorized DOCX/PDF labels. A "quick win" to replace existing labels with narrative FHIR content.</td>
    </tr>
    <tr style="background-color: #f0f7ff; border: 2px solid #003087;">
      <td style="padding: 12px; border: 1px solid #d0d0d0;">
        <strong>ePI Type 2</strong><br>Product Identification & Search<br>
        <span style="display: inline-block; background-color: #003087; color: #ffffff; font-size: 10px; padding: 2px 6px; border-radius: 4px; margin-top: 4px; font-weight: bold;">RECOMMENDED STARTING POINT</span>
      </td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;"><strong>Adds structured medicinal product details</strong> (ingredients, form, packaging) for advanced lookup and supply chain traceability.</td>
    </tr>
    <tr>
      <td style="padding: 12px; border: 1px solid #d0d0d0;"><strong>ePI Type 3</strong><br>Clinical Guidance</td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">Adds structured clinical details (indications, contraindications) to facilitate interaction alerts in digital health apps.</td>
    </tr>
    <tr>
      <td style="padding: 12px; border: 1px solid #d0d0d0;"><strong>ePI Type 4</strong><br>Granular & Personalized Components</td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">Fully digital-first, computable components for dynamically generated, personalized label content. <strong>Excludes the Composition resource</strong>, as all narrative content is moved to structured resources.</td>
    </tr>
  </tbody>
</table>

### Background
Drug labels (SmPCs, Product Monographs, and Patient Leaflets) are critical regulatory documents that provide essential safety and usage information. 

Currently, these are often distributed as fragmented, region-specific formats (SPL, custom XML, or PDFs), hindering interoperability and delaying updates. ePI solves this by transforming labels into structured HL7 FHIR R5 documents, ensuring that a single source of truth can serve multiple jurisdictions while remaining adaptable to local regulations.

### Scope

**In-Scope**:
- All medicinal drug products (Human use).
- Healthcare professional label content (e.g., SmPC), patient label content (e.g., PIL), and pack artwork.

**Standard Applicability**:
While this IG focuses on human medicinal products, the underlying FHIR ePI standard is designed to be extensible. Regulatory implementation paths for Over-The-Counter (OTC) vs. Prescription medicines may vary by jurisdiction.

**Temporarily Out of Scope**:
While the current focus is on human medicinal products, future phases of this project will account for:
- Medical devices, Veterinary Drugs, and Natural Health Products.

