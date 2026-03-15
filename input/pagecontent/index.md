Drug labels — SmPCs, Package Leaflets, and Product Monographs — are among the most critical documents in healthcare, yet today they are locked in static PDFs and fragmented regional formats that are difficult to exchange, search, or automatically process. The **ePI (Electronic Product Information) Implementation Guide** defines how to transform these documents into structured, machine-readable **HL7 FHIR R5** resources that regulators, industry, and digital health systems can use interoperably — globally.

---

### Why ePI?
Moving from static documents to structured FHIR data creates transformative benefits across the healthcare ecosystem:

*   **One Global Standard**: A single FHIR-based model replacing fragmented country-specific XML and PDF formats. Build once, adapt for any jurisdiction.
*   **Advanced Digital Capabilities**: Enable structured search, auto-generate comparison tables, support drug shortage management, and streamline pack artwork generation.
*   **Digital Health Interoperability**: Seamless integration with ePrescription, Electronic Medical Records (EMR), allergen checking, and automated regulatory reporting.

---

### Background
**The Fragmentation Problem**: Currently, regions use a mix of SPL, custom XML, or static PDFs. This fragmentation delays safety updates and hinders the global exchange of critical medical data. ePI addresses this by defining a **common technical standard** that supports existing local regulatory templates and requirements — it does not replace national regulations or regional labeling rules. Each jurisdiction continues to govern its own content requirements; ePI simply provides a shared, interoperable format for exchanging that information.

#### FHIR: The Engine of ePI
FHIR (Fast Healthcare Interoperability Resources) provides the technical foundation using modern web technologies like XML, JSON, and RESTful APIs.

<table style="width:100%; border-collapse: collapse; border: 1px solid #d0d0d0; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; margin-bottom: 24px;">
  <thead>
    <tr style="background-color: #003087; color: #ffffff;">
      <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left; width: 20%;">Concept</th>
      <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left; width: 40%;">Description</th>
      <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left;">ePI Implementation</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 12px; border: 1px solid #d0d0d0;"><strong>Structured Data</strong></td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">Resources organize label content into discrete, queryable fields</td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;"><code>Composition</code> structures the label section headings and narrative content (E.g., text, images, tables)</td>
    </tr>
    <tr>
      <td style="padding: 12px; border: 1px solid #d0d0d0;"><strong>Interoperability</strong></td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">Common FHIR-based format enables seamless exchange with national and international healthcare systems</td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">ePI data can be consumed directly by any FHIR-enabled system (e.g., national medicines databases, EMRs, ePrescribing platforms) without custom integration</td>
    </tr>
    <tr>
      <td style="padding: 12px; border: 1px solid #d0d0d0;"><strong>Standardization</strong></td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">Common data model reduces custom integration work</td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">Base ePI Profile harmonizes structures across regions</td>
    </tr>
    <tr>
      <td style="padding: 12px; border: 1px solid #d0d0d0;"><strong>Flexibility</strong></td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">Adaptable to regional regulatory requirements</td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">Local regulatory requirements (e.g., EU/FDA/PMDA) are supported by region-specific profiles built on the common base</td>
    </tr>
  </tbody>
</table>

#### Global Harmonization
ePI and FHIR promote international alignment by providing a unified technical standard. A single ePI document, built on the Base ePI Profile, can be adapted for multiple jurisdictions, reducing redundancy. Efforts like the **HL7 Vulcan Accelerator** are ensuring that global regulators align on these standards and improve access to medicinal product information.

---

### Scope

**In-Scope**: All medicinal drug products for human use — including Healthcare Professional labels (e.g., SmPC), Patient labels (e.g., PIL), Instructions for Use (IFU), and pack artwork.

**Out of Scope (Temporary)**: Medical devices, Veterinary Drugs, and Natural Health Products. These will be addressed in future phases.

---

### ePI Maturity & Use Cases
ePI is organized into four **Types** based on technical maturity and data depth — so organizations can adopt incrementally, starting where they are and evolving toward fully computable data.

<table style="width:100%; border-collapse: collapse; border: 1px solid #d0d0d0; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif; font-size: 14px;">
  <thead>
    <tr style="background-color: #003087; color: #ffffff;">
      <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left; width: 15%;">Type</th>
      <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left; width: 35%;">Core FHIR Resources</th>
      <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left;">Primary Value &amp; Use Cases</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 12px; border: 1px solid #d0d0d0; border-left: 6px solid #0071e3;"><strong>Type 1</strong></td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">Bundle, Composition, Binary</td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;"><strong>Digital Reproduction</strong>: A faithful digital version of the approved labeling (SmPC, PIL, carton). Acceptable as a legal document of record.</td>
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
      <td style="padding: 12px; border: 1px solid #d0d0d0;"><strong>Clinical Guidance</strong>: Structured indications, contraindications, and dosing. Enables <strong>Interaction Alerts</strong> (Drug-Drug, Drug-Food) in EMRs and clinical apps.</td>
    </tr>
    <tr>
      <td style="padding: 12px; border: 1px solid #d0d0d0; border-left: 6px solid #af52de;"><strong>Type 4</strong></td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">All resources used in Types 1 to 3</td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;"><strong>Digital-First Components</strong>: Links Composition sections to structured resources to enable full support for personalization and batch-specific label variations.</td>
    </tr>
  </tbody>
</table>
