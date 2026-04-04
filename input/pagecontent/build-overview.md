<div style="background:#eff6ff; border:1px solid #bfdbfe; border-left:4px solid #2563eb; border-radius:8px; padding:12px 18px; margin-bottom:24px; font-size:.85rem; color:#1e40af; display:flex; gap:10px; align-items:flex-start;">
  <span style="flex-shrink:0; font-size:1rem;">📋</span>
  <span><strong>New to ePI?</strong> Before diving into a specific type, review the <a href="build-epi1.html#prerequisites" style="color:#1d4ed8; font-weight:600;">Pre-requisites</a> — including reading the Vulcan ePI IG, your national guidance, and selecting a structured authoring tool.</span>
</div>

The **Build ePI** section provides step-by-step instructions for creating valid ePI documents at each maturity level, from a basic digital label (Type 1) through to full clinical decision support (Type 3). It also describes how to set up an [ePI Repository](tech-details.html) to manage a catalogue of authorised labels.

ePI is not a single resource but a collection of interlinked FHIR resources. Depending on the **ePI Type** (Maturity Level) being implemented, different resources are required to capture the necessary narrative and structured data.

### Core ePI Resources
The table below identifies the primary FHIR resources used across the four ePI types and their specific roles in the labeling lifecycle.

<table style="width:100%; border-collapse: collapse; border: 1px solid #d0d0d0; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; margin-bottom: 24px;">
  <thead>
    <tr style="background-color: #003087; color: #ffffff;">
      <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left; width: 25%;">Resource</th>
      <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left;">Role in ePI Context</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 10px; border: 1px solid #d0d0d0;"><strong>Bundle</strong></td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">The 1:1 container for a single ePI document (e.g., an SmPC or PIL).</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid #d0d0d0;"><strong>Composition</strong></td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">The backbone of the document, organizing headings and narrative (XHTML) sections.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid #d0d0d0;"><strong>Binary</strong></td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">Stores media (SVG/PNG/JPEG) embedded within the ePI as Base64 objects.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid #d0d0d0;"><strong>List</strong></td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">Used for cross-document navigation, history tracking, and grouping translated versions.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid #d0d0d0;"><strong>MedicinalProductDefinition</strong></td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">Captures high-level product identity, including the name and marketing status.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid #d0d0d0;"><strong>RegulatedAuthorization</strong></td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">Details approval dates, license numbers, and legal status.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid #d0d0d0;"><strong>ManufacturedItemDefinition</strong></td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">Describes the physical form of the product (e.g., tablet, vial).</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid #d0d0d0;"><strong>AdministrableProductDefinition</strong></td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">Specifies the product in its final administrable state (e.g., solution).</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid #d0d0d0;"><strong>Ingredient</strong></td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">Defines active substances and excipients with clinical-grade precision.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid #d0d0d0;"><strong>SubstanceDefinition</strong></td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">The technical chemical definition of the active or inactive ingredients.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid #d0d0d0;"><strong>ClinicalUseDefinition</strong></td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">Structures indications, contraindications, and interaction alerts.</td>
    </tr>
  </tbody>
</table>

### Select Your Implementation Path
Implementation guidance is organized by the depth of structured data required:

*   **[Type 1: Narrative Reproduction](build-epi1.html)**
    *   *Focus*: Digitizing the official label template (SmPC/PIL/Artwork).
    *   *Key Features*: HTML5/XHTML narrative, embedded images, and document metadata.
*   **[Type 2: Product Identification](build-epi2.html)**
    *   *Focus*: Structured supply chain and search capabilities.
    *   *Key Features*: Type 1 + structured ingredients, form, packaging, and authorization.
*   **[Type 3: Clinical Guidance](build-epi3.html)**
    *   *Focus*: Clinical decision support.
    *   *Key Features*: Type 2 + structured indications, contraindications, and warnings.
*   **[Type 4: Integrated Narrative & Data](build-epi4.html)**
    *   *Focus*: Advanced automation and personalization.
    *   *Key Features*: Direct linkage between specific sections of the human-readable text and their corresponding machine-readable FHIR resources.
