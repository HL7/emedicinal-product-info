This guide describes how to create an **ePI Type 3** document.

### What is ePI Type 3?

ePI Type 3 adds clinical details and structured dose to the ePI.

For a list of all ePI components, see the [ePI components page](./epi-components.md) or the [Artifacts/Profiles](https://build.fhir.org/ig/HL7/emedicinal-product-info/artifacts.html#2).

### Overview of Resources Involved

ePI Type 3 uses the following FHIR resources to structure the clinical use document:
- **Bundle**: The container for the ePI document.
- **Composition**: Organizes the narrative content (e.g., clinical use sections).
- **Binary**: Stores media (e.g., Base64-encoded images).
- **Product Details**: Refer to [Build ePI Type 2](https://build.fhir.org/ig/HL7/emedicinal-product-info/build-epi2.html)
- **ClinicalUseDefinition**: Specifies clinical details (e.g., indications, contraindications).
- **MedicationKnowledge**: Structures dosage information.

### Detailed Component Descriptions

The table below describes each resource’s purpose, key fields, and role in ePI Type 3:

<table style="border-collapse: collapse; width: 100%; border: 1px solid #ddd; font-family: Arial, Helvetica, sans-serif; font-size: 14px;">
  <thead style="background-color: #f2f2f2;">
    <tr>
      <th style="border: 1px solid #ddd; padding: 8px; text-align: left; font-weight: bold;">Resource</th>
      <th style="border: 1px solid #ddd; padding: 8px; text-align: left; font-weight: bold;">Purpose</th>
      <th style="border: 1px solid #ddd; padding: 8px; text-align: left; font-weight: bold;">Key Fields</th>
      <th style="border: 1px solid #ddd; padding: 8px; text-align: left; font-weight: bold;">Role in ePI Type 3</th>
    </tr>
  </thead>
  <tbody>
    <tr style="background-color: #ffffff;">
      <td style="border: 1px solid #ddd; padding: 8px;">Bundle</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Container for the clinical use document, grouping all resources.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - <code>type</code>: Set to <code>document</code>.<br>
        - <code>entry</code>: References to Composition, ClinicalUseDefinition, etc.<br>
        - <code>identifier</code>: Unique ID for the document.
      </td>
      <td style="border: 1px solid #ddd; padding: 8px;">Packages all components into a single, interoperable document.</td>
    </tr>
    <tr style="background-color: #f9f9f9;">
      <td style="border: 1px solid #ddd; padding: 8px;">Composition</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Organizes the narrative content of the clinical use document.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - <code>language</code>: Language code (e.g., <code>en</code>).<br>
        - <code>section</code>: Structured sections (e.g., clinical use overview).<br>
        - <code>title</code>: Document title.<br>
        - <code>author</code>: Reference to authoring entity from ePI Type 2.
      </td>
      <td style="border: 1px solid #ddd; padding: 8px;">Provides a narrative summary of clinical use, complementing structured data.</td>
    </tr>
    <tr style="background-color: #ffffff;">
      <td style="border: 1px solid #ddd; padding: 8px;">ClinicalUseDefinition</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Specifies clinical details, such as indications and warnings.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - <code>type</code>: Type of use (e.g., <code>indication</code>, <code>contraindication</code>).<br>
        - <code>indication</code>: Disease or condition.<br>
        - <code>contraindication</code>: Conditions where use is restricted.<br>
        - <code>interaction</code>: Drug interactions.<br>
        - <code>undesirableEffect</code>: Side effects.<br>
        - <code>warning</code>: Safety warnings.
      </td>
      <td style="border: 1px solid #ddd; padding: 8px;">Provides structured clinical data for indications, contraindications, interactions, effects, and warnings.</td>
    </tr>
    <tr style="background-color: #f9f9f9;">
      <td style="border: 1px solid #ddd; padding: 8px;">MedicationKnowledge</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Structures dosage information for the product.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - <code>doseForm</code>: Dosage form (e.g., tablet).<br>
        - <code>amount</code>: Dosage quantity.<br>
        - <code>administrationGuidelines</code>: Dosage instructions.<br>
        - <code>medicineClassification</code>: Classification (e.g., ATC code).
      </td>
      <td style="border: 1px solid #ddd; padding: 8px;">Defines structured dosage instructions for clinical use.</td>
    </tr>
    <tr style="background-color: #ffffff;">
      <td style="border: 1px solid #ddd; padding: 8px;">Binary</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Stores media, such as images, in Base64 format.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - <code>contentType</code>: MIME type (e.g., <code>image/png</code>).<br>
        - <code>data</code>: Base64-encoded content.
      </td>
      <td style="border: 1px solid #ddd; padding: 8px;">Includes images (e.g., product images, pack artwork) referenced in the document.</td>
    </tr>
  </tbody>
</table>

### Steps to Build an ePI Type 3 Document

The following table provides step-by-step instructions to create an ePI Type 3 document:

<table style="border-collapse: collapse; width: 100%; border: 1px solid #ddd; font-family: Arial, Helvetica, sans-serif; font-size: 14px;">
  <thead style="background-color: #f2f2f2;">
    <tr>
      <th style="border: 1px solid #ddd; padding: 8px; text-align: left; font-weight: bold;">Step</th>
      <th style="border: 1px solid #ddd; padding: 8px; text-align: left; font-weight: bold;">Description</th>
      <th style="border: 1px solid #ddd; padding: 8px; text-align: left; font-weight: bold;">Actions</th>
    </tr>
  </thead>
  <tbody>
    <tr style="background-color: #ffffff;">
      <td style="border: 1px solid #ddd; padding: 8px;">Step 1: Start with the Base ePI Profile</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Use the Base ePI Profile as the foundation.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - Review the [Base ePI Profile](./profiles.md) for mandatory elements.<br>
        - Ensure compliance with regional clinical use requirements (e.g., EMA guidelines).
      </td>
    </tr>
    <tr style="background-color: #f9f9f9;">
      <td style="border: 1px solid #ddd; padding: 8px;">Step 2: Define the Product Details</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Reference the product details from ePI Type 2.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - Refer to the [ePI Type 2 page](./build-epi2.md) for the product’s MedicinalProductDefinition.<br>
        - Ensure the product details align with clinical use information.
      </td>
    </tr>
    <tr style="background-color: #ffffff;">
      <td style="border: 1px solid #ddd; padding: 8px;">Step 3: Define Clinical Uses</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Specify clinical details for the product.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - Create <code>ClinicalUseDefinition</code> resources for indications, contraindications, interactions, undesirable effects, and warnings.<br>
        - Set <code>type</code> (e.g., <code>indication</code>, <code>contraindication</code>) and relevant details.<br>
        - Reference the product details from ePI Type 2.
      </td>
    </tr>
    <tr style="background-color: #f9f9f9;">
      <td style="border: 1px solid #ddd; padding: 8px;">Step 4: Structure Dosage Information</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Define structured dosage instructions.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - Create a <code>MedicationKnowledge</code> resource.<br>
        - Set <code>doseForm</code>, <code>amount</code>, and <code>administrationGuidelines</code>.<br>
        - Reference the product details from ePI Type 2.
      </td>
    </tr>
    <tr style="background-color: #ffffff;">
      <td style="border: 1px solid #ddd; padding: 8px;">Step 5: Create Narrative Content</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Develop the narrative content summarizing clinical use.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - Create a <code>Composition</code> resource.<br>
        - Set <code>language</code> (e.g., <code>en</code>).<br>
        - Structure content in <code>section</code> elements using XHTML or Markdown.<br>
        - Use section codes from the [ePI section code value set](./section-codes.md) (e.g., clinical particulars, warnings).<br>
        - Reference the authoring entity from ePI Type 2 and <code>ClinicalUseDefinition</code>.
      </td>
    </tr>
    <tr style="background-color: #f9f9f9;">
      <td style="border: 1px solid #ddd; padding: 8px;">Step 6: Include Media</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Add images or other media to the document.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - Convert images to Base64 format.<br>
        - Create a <code>Binary</code> resource with <code>contentType</code> (e.g., <code>image/png</code>) and <code>data</code>.<br>
        - Reference the <code>Binary</code> in the relevant <code>Composition</code> section.
      </td>
    </tr>
    <tr style="background-color: #ffffff;">
      <td style="border: 1px solid #ddd; padding: 8px;">Step 7: Bundle the Resources</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Combine all resources into a single document.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - Create a <code>Bundle</code> resource with <code>type</code> set to <code>document</code>.<br>
        - Add <code>entry</code> elements for <code>Composition</code>, <code>ClinicalUseDefinition</code>, <code>MedicationKnowledge</code>, and <code>Binary</code>.<br>
        - Assign a unique <code>identifier</code> to the Bundle.
      </td>
    </tr>
    <tr style="background-color: #f9f9f9;">
      <td style="border: 1px solid #ddd; padding: 8px;">Step 8: Validate and Test</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Ensure the clinical use document is compliant and functional.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - Validate the Bundle using the FHIR Validator against the Base ePI Profile.<br>
        - Test with a FHIR server (e.g., HAPI FHIR) to confirm storage and retrieval.<br>
        - Verify API compatibility (e.g., POST, GET operations).<br>
        - Check clinical data and dosage for accuracy and regulatory compliance (e.g., EMA guidelines).
      </td>
    </tr>
  </tbody>
</table>

### Additional Resources
- **ePI Profile**: Refer to the [Profiles]([./epi-components.md](https://build.fhir.org/ig/HL7/emedicinal-product-info/artifacts.html#2)) page for details on FHIR resources.
- **Technical Style Guide**: Follow the [style guide](./style-guide.md) for structuring narrative content (e.g., paragraphs, tables, bullets) in XHTML.