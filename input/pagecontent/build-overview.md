### Purpose
This section provides guidance, examples, and best practices for creating ePI resources across all types. It covers FHIR resource usage, profiling, tooling, and interoperability.

**Intended Audience:** Developers, regulators, pharmaceutical companies, and healthcare IT professionals.

### ePI Resources
ePI leverages 14 specific FHIR resources to support various labeling use cases. The table below outlines their roles.

<table style="border-collapse: collapse; width: 100%;">
  <thead>
    <tr>
      <th style="border: 1px solid #e0e0e0; padding: 8px; text-align: left; background-color: #f2f2f2;">Resource</th>
      <th style="border: 1px solid #e0e0e0; padding: 8px; text-align: left; background-color: #f2f2f2;">Purpose in ePI Context</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="border: 1px solid #e0e0e0; padding: 8px;"><b>List</b></td>
      <td style="border: 1px solid #e0e0e0; padding: 8px;">Organizes references to other resources, enabling navigation and advanced search.</td>
    </tr>
    <tr>
      <td style="border: 1px solid #e0e0e0; padding: 8px;"><b>Bundle</b></td>
      <td style="border: 1px solid #e0e0e0; padding: 8px;">Container for grouping resources. Essential for reproducing local label templates in Type 1.</td>
    </tr>
    <tr>
      <td style="border: 1px solid #e0e0e0; padding: 8px;"><b>Composition</b></td>
      <td style="border: 1px solid #e0e0e0; padding: 8px;">Core structure for label content (headings, text, images).</td>
    </tr>
    <tr>
      <td style="border: 1px solid #e0e0e0; padding: 8px;"><b>Binary</b></td>
      <td style="border: 1px solid #e0e0e0; padding: 8px;">Stores raw data like images or large text blocks for reproduction.</td>
    </tr>
    <tr>
      <td style="border: 1px solid #e0e0e0; padding: 8px;"><b>Organization</b></td>
      <td style="border: 1px solid #e0e0e0; padding: 8px;">Details the company (name, id, address) associated with the product.</td>
    </tr>
    <tr>
      <td style="border: 1px solid #e0e0e0; padding: 8px;"><b>Regulated Authorization</b></td>
      <td style="border: 1px solid #e0e0e0; padding: 8px;">Captures approval dates, license numbers, and holder details.</td>
    </tr>
    <tr>
      <td style="border: 1px solid #e0e0e0; padding: 8px;"><b>Medicinal Product Definition</b></td>
      <td style="border: 1px solid #e0e0e0; padding: 8px;">Regulatory details: name, route, marketing status.</td>
    </tr>
    <tr>
      <td style="border: 1px solid #e0e0e0; padding: 8px;"><b>Manufactured Item Definition</b></td>
      <td style="border: 1px solid #e0e0e0; padding: 8px;">Physical properties in primary packaging (strength, color, shape).</td>
    </tr>
    <tr>
      <td style="border: 1px solid #e0e0e0; padding: 8px;"><b>Administrable Product Definition</b></td>
      <td style="border: 1px solid #e0e0e0; padding: 8px;">Physical properties in final form for administration (e.g. reconstituted).</td>
    </tr>
    <tr>
      <td style="border: 1px solid #e0e0e0; padding: 8px;"><b>Ingredient</b></td>
      <td style="border: 1px solid #e0e0e0; padding: 8px;">Defines specific ingredients (active/excipient) and strength.</td>
    </tr>
    <tr>
      <td style="border: 1px solid #e0e0e0; padding: 8px;"><b>Substance Definition</b></td>
      <td style="border: 1px solid #e0e0e0; padding: 8px;">Detailed substance info, linked to Ingredients.</td>
    </tr>
    <tr>
      <td style="border: 1px solid #e0e0e0; padding: 8px;"><b>Packaged Product Definition</b></td>
      <td style="border: 1px solid #e0e0e0; padding: 8px;">Packaging layers, identifiers (GTIN/SKU), and quantity.</td>
    </tr>
    <tr>
      <td style="border: 1px solid #e0e0e0; padding: 8px;"><b>Clinical Use Definition</b></td>
      <td style="border: 1px solid #e0e0e0; padding: 8px;">Structured indications, contraindications, interactions, and warnings (Type 3/4).</td>
    </tr>
    <tr>
      <td style="border: 1px solid #e0e0e0; padding: 8px;"><b>Medication Knowledge</b></td>
      <td style="border: 1px solid #e0e0e0; padding: 8px;">Machine-readable dosing instructions (Type 3/4).</td>
    </tr>
  </tbody>
</table>

### ePI Types (Building Instructions)

Select the ePI Type below to see specific build instructions:

*   **[Type 1: Narrative Only](build-epi1.html)**
    *   *Focus*: Digitized document.
    *   *Content*: Replicates PDF/DOCX templates (headings, text, images, metadata).
*   **[Type 2: Narrative + Structured Product](build-epi2.html)**
    *   *Focus*: Product data.
    *   *Content*: Type 1 + structured ingredients, packaging, and authorization details.
*   **[Type 3: Narrative + Structured Clinical](build-epi3.html)**
    *   *Focus*: Clinical data.
    *   *Content*: Type 2 + structured indications, warnings, and safety info.
*   **[Type 4: Fully Structured](build-epi4.html)**
    *   *Focus*: Automation & exchange.
    *   *Content*: Structure effectively replaces narrative as the primary source. Optimized for machine processing.
