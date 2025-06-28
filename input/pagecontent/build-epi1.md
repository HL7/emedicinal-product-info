# Building an ePI Type 1 Document

This guide describes how to create an **ePI Type 1** document.

## What is ePI Type 1?

ePI Type 1 is a structured, FHIR-based version of the regulator's label template (e.g., Summary of Product Characteristics, Patient Information Leaflet, Packaging Artwork). This replaces the traditional DOCX or PDF version of the label template.

For a list of all ePI components, see the [ePI components page](./epi-components.md) or the [Artifacts/Profiles](https://build.fhir.org/ig/HL7/emedicinal-product-info/artifacts.html#2).

## Overview of Resources Involved

ePI Type 1 uses the following FHIR resources:
- **Bundle**: The container for the ePI document.
- **Composition**: Organizes the narrative content (e.g., SmPC section headings and sub-headings).
- **Binary**: Stores images in Base64 format.

## Detailed Component Descriptions

The table below describes each resource’s purpose, key fields, and role in ePI Type 1:

<table style="border-collapse: collapse; width: 100%; border: 1px solid #ddd; font-family: Arial, Helvetica, sans-serif; font-size: 14px;">
  <thead style="background-color: #f2f2f2;">
    <tr>
      <th style="border: 1px solid #ddd; padding: 8px; text-align: left; font-weight: bold;">Resource</th>
      <th style="border: 1px solid #ddd; padding: 8px; text-align: left; font-weight: bold;">Purpose</th>
      <th style="border: 1px solid #ddd; padding: 8px; text-align: left; font-weight: bold;">Key Fields</th>
      <th style="border: 1px solid #ddd; padding: 8px; text-align: left; font-weight: bold;">Role in ePI Type 1</th>
    </tr>
  </thead>
  <tbody>
    <tr style="background-color: #ffffff;">
      <td style="border: 1px solid #ddd; padding: 8px;">Bundle</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Container for the SmPC, grouping all resources.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - <code>type</code>: Set to <code>document</code>.<br>
        - <code>entry</code>: References to Composition and Binary.<br>
        - <code>identifier</code>: Unique ID for the SmPC.
      </td>
      <td style="border: 1px solid #ddd; padding: 8px;">Packages all components into a single, interoperable document.</td>
    </tr>
    <tr style="background-color: #f9f9f9;">
      <td style="border: 1px solid #ddd; padding: 8px;">Composition</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Organizes the narrative content of the SmPC.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - <code>language</code>: Language code (e.g., <code>en</code>).<br>
        - <code>section</code>: Structured sections (e.g., indications, dosage, contraindications).<br>
        - <code>title</code>: SmPC title.<br>
        - <code>author</code>: Reference to authoring entity.
      </td>
      <td style="border: 1px solid #ddd; padding: 8px;">Provides the main narrative content (e.g., paragraphs, tables, bulleted lists) and section headings.</td>
    </tr>
    <tr style="background-color: #ffffff;">
      <td style="border: 1px solid #ddd; padding: 8px;">Binary</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Stores media, such as images, in Base64 format.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - <code>contentType</code>: MIME type (e.g., <code>image/png</code>).<br>
        - <code>data</code>: Base64-encoded content.
      </td>
      <td style="border: 1px solid #ddd; padding: 8px;">Includes images (e.g., product images, pack artwork) referenced in the SmPC.</td>
    </tr>
  </tbody>
</table>

## Steps to Build an ePI Type 1 Document

The following table provides step-by-step instructions to create an ePI Type 1 document:

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
        - Ensure compliance with regional labeling requirements.
      </td>
    </tr>
    <tr style="background-color: #f9f9f9;">
      <td style="border: 1px solid #ddd; padding: 8px;">Step 2: Create SmPC Content</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Develop the narrative content of the SmPC.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - Create a <code>Composition</code> resource.<br>
        - Set <code>language</code> (e.g., <code>en</code>).<br>
        - Structure content in <code>section</code> elements using XHTML or Markdown.<br>
        - Use section codes from the [ePI section code value set](./section-codes.md) (e.g., indications, dosage, contraindications).<br>
        - Include product details (e.g., name, ingredients) within the narrative.
      </td>
    </tr>
    <tr style="background-color: #ffffff;">
      <td style="border: 1px solid #ddd; padding: 8px;">Step 3: Include Media</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Add images or other media to the SmPC.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - Convert images to Base64 format.<br>
        - Create a <code>Binary</code> resource with <code>contentType</code> (e.g., <code>image/png</code>) and <code>data</code>.<br>
        - Reference the <code>Binary</code> in the relevant <code>Composition</code> section.
      </td>
    </tr>
    <tr style="background-color: #f9f9f9;">
      <td style="border: 1px solid #ddd; padding: 8px;">Step 4: Bundle the Resources</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Combine all resources into a single document.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - Create a <code>Bundle</code> resource with <code>type</code> set to <code>document</code>.<br>
        - Add <code>entry</code> elements for the <code>Composition</code> and <code>Binary</code>.<br>
        - Assign a unique <code>identifier</code> to the Bundle.
      </td>
    </tr>
    <tr style="background-color: #ffffff;">
      <td style="border: 1px solid #ddd; padding: 8px;">Step 5: Validate and Test</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Ensure the SmPC is compliant and functional.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - Validate the Bundle using the FHIR Validator against the Base ePI Profile.<br>
        - Test with a FHIR server (e.g., HAPI FHIR) to confirm storage and retrieval.<br>
        - Verify API compatibility (e.g., POST, GET operations).<br>
        - Check content for regulatory compliance (e.g., EMA SmPC guidelines).
      </td>
    </tr>
  </tbody>
</table>

## Additional Resources
- **ePI Components**: See the [ePI components page](./epi-components.md) for details on FHIR resources.
- **Technical Style Guide**: Follow the [style guide](./style-guide.md) for structuring narrative content (e.g., paragraphs, tables, bullets) in XHTML.