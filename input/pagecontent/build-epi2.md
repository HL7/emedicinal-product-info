This page describes how to create an **ePI Type 2** document.

### What is ePI Type 2?

ePI Type 2 adds product and organizational details to the ePI.

For a list of all ePI components, see the [ePI components page](./epi-components.md) or the [Artifacts/Profiles](https://build.fhir.org/ig/HL7/emedicinal-product-info/artifacts.html#2).

### Overview of Resources Involved

ePI Type 2 uses the following FHIR resources:
- **Bundle**: The container for the ePI document.
- **Composition**: Organizes the narrative content (e.g., ePI sections).
- **Binary**: Stores media (e.g., Base64-encoded images).
- **MedicinalProductDefinition**: Describes the medicinal product.
- **Organization**: Details entities involved (e.g., manufacturer, regulator).
- **RegulatedAuthorization**: Specifies regulatory approvals.
- **ManufacturedItemDefinition**: Describes the manufactured product form.
- **AdministrableProductDefinition**: Details the administrable form of the product.
- **PackagedProductDefinition**: Describes the packaging details.
- **Ingredient**: Specifies the product’s ingredients.
- **Substance**: Details substances in the product.

The following figure shows how the ePI Type 2 resources related to each other:

<span style="display: inline-block; vertical-align: middle;">
  <img src="epiType2RelationshipDiagram.drawio.svg" alt="Entity relationship diagram of ePI Type 2 resource relationships" style="width: 800px; height: auto;" />
</span>

### Detailed Component Descriptions

The table below describes each resource’s purpose, key fields, and role in ePI Type 2:

<table style="border-collapse: collapse; width: 100%; border: 1px solid #ddd; font-family: Arial, Helvetica, sans-serif; font-size: 14px;">
  <thead style="background-color: #f2f2f2;">
    <tr>
      <th style="border: 1px solid #ddd; padding: 8px; text-align: left; font-weight: bold;">Resource</th>
      <th style="border: 1px solid #ddd; padding: 8px; text-align: left; font-weight: bold;">Purpose</th>
      <th style="border: 1px solid #ddd; padding: 8px; text-align: left; font-weight: bold;">Key Fields</th>
      <th style="border: 1px solid #ddd; padding: 8px; text-align: left; font-weight: bold;">Role in ePI Type 2</th>
    </tr>
  </thead>
  <tbody>
    <tr style="background-color: #ffffff;">
      <td style="border: 1px solid #ddd; padding: 8px;">Bundle</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Container for the ePI, grouping all resources.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - <code>type</code>: Set to <code>document</code>.<br>
        - <code>entry</code>: References to Composition, MedicinalProductDefinition, etc.<br>
        - <code>identifier</code>: Unique ID for the ePI.
      </td>
      <td style="border: 1px solid #ddd; padding: 8px;">Packages all components into a single, interoperable document.</td>
    </tr>
    <tr style="background-color: #f9f9f9;">
      <td style="border: 1px solid #ddd; padding: 8px;">Composition</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Organizes the narrative content of the ePI.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - <code>language</code>: Language code (e.g., <code>en</code>).<br>
        - <code>section</code>: Structured sections (e.g., usage instructions, side effects).<br>
        - <code>title</code>: ePI title.<br>
        - <code>author</code>: Reference to Organization.
      </td>
      <td style="border: 1px solid #ddd; padding: 8px;">Provides the main narrative content (e.g., paragraphs, tables, bulleted lists) and section headings.</td>
    </tr>
    <tr style="background-color: #ffffff;">
      <td style="border: 1px solid #ddd; padding: 8px;">MedicinalProductDefinition</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Describes the medicinal product.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - <code>name</code>: Product name.<br>
        - <code>ingredient</code>: Active ingredients.<br>
        - <code>indication</code>: Approved uses.<br>
        - <code>identifier</code>: Product ID.
      </td>
      <td style="border: 1px solid #ddd; padding: 8px;">Defines the product the ePI describes, ensuring accurate referencing.</td>
    </tr>
    <tr style="background-color: #f9f9f9;">
      <td style="border: 1px solid #ddd; padding: 8px;">Organization</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Details entities involved with the product.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - <code>name</code>: Organization name.<br>
        - <code>contact</code>: Contact details.<br>
        - <code>identifier</code>: Unique ID (e.g., DUNS number).
      </td>
      <td style="border: 1px solid #ddd; padding: 8px;">Identifies the manufacturer, regulator, or other entities for compliance.</td>
    </tr>
    <tr style="background-color: #ffffff;">
      <td style="border: 1px solid #ddd; padding: 8px;">RegulatedAuthorization</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Specifies regulatory approvals for the product.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - <code>identifier</code>: Authorization ID.<br>
        - <code>subject</code>: Reference to MedicinalProductDefinition.<br>
        - <code>holder</code>: Reference to Organization.<br>
        - <code>status</code>: Approval status (e.g., active).
      </td>
      <td style="border: 1px solid #ddd; padding: 8px;">Documents regulatory approval details, critical for patient trust.</td>
    </tr>
    <tr style="background-color: #f9f9f9;">
      <td style="border: 1px solid #ddd; padding: 8px;">ManufacturedItemDefinition</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Describes the manufactured form of the product.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - <code>manufacturedDoseForm</code>: Form (e.g., tablet, liquid).<br>
        - <code>unitOfPresentation</code>: Presentation unit (e.g., tablet).<br>
        - <code>manufacturer</code>: Reference to Organization.
      </td>
      <td style="border: 1px solid #ddd; padding: 8px;">Details the physical product form, relevant for patient instructions.</td>
    </tr>
    <tr style="background-color: #ffffff;">
      <td style="border: 1px solid #ddd; padding: 8px;">AdministrableProductDefinition</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Details the administrable form of the product.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - <code>administrableDoseForm</code>: Form (e.g., oral solution).<br>
        - <code>routeOfAdministration</code>: Administration route (e.g., oral).<br>
        - <code>ingredient</code>: Reference to Ingredient.
      </td>
      <td style="border: 1px solid #ddd; padding: 8px;">Specifies how the product is administered, guiding patient usage.</td>
    </tr>
    <tr style="background-color: #f9f9f9;">
      <td style="border: 1px solid #ddd; padding: 8px;">PackagedProductDefinition</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Describes the product’s packaging.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - <code>package</code>: Packaging details (e.g., blister pack).<br>
        - <code>quantity</code>: Number of units.<br>
        - <code>containedItem</code>: Reference to ManufacturedItemDefinition.
      </td>
      <td style="border: 1px solid #ddd; padding: 8px;">Provides packaging information for patient reference.</td>
    </tr>
    <tr style="background-color: #ffffff;">
      <td style="border: 1px solid #ddd; padding: 8px;">Ingredient</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Specifies the product’s ingredients.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - <code>substance</code>: Reference to Substance.<br>
        - <code>role</code>: Role (e.g., active ingredient).<br>
        - <code>strength</code>: Ingredient strength.
      </td>
      <td style="border: 1px solid #ddd; padding: 8px;">Lists ingredients for patient awareness (e.g., allergens).</td>
    </tr>
    <tr style="background-color: #f9f9f9;">
      <td style="border: 1px solid #ddd; padding: 8px;">Substance</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Details substances in the product.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - <code>code</code>: Substance code (e.g., from SNOMED CT).<br>
        - <code>description</code>: Substance description.
      </td>
      <td style="border: 1px solid #ddd; padding: 8px;">Provides detailed substance information, linked to Ingredient.</td>
    </tr>
    <tr style="background-color: #ffffff;">
      <td style="border: 1px solid #ddd; padding: 8px;">Binary</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Stores media, such as images, in Base64 format.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - <code>contentType</code>: MIME type (e.g., <code>image/png</code>).<br>
        - <code>data</code>: Base64-encoded content.
      </td>
      <td style="border: 1px solid #ddd; padding: 8px;">Includes images (e.g., product images, pack artwork) referenced in the ePI.</td>
    </tr>
  </tbody>
</table>

### Steps to Build an ePI Type 2 Document

The following table provides step-by-step instructions to create an ePI Type 2 document:

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
        - Ensure compliance with regional ePI requirements (e.g., EMA guidelines).
      </td>
    </tr>
    <tr style="background-color: #f9f9f9;">
      <td style="border: 1px solid #ddd; padding: 8px;">Step 2: Define the Medicinal Product</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Create a resource for the product details.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - Create a <code>MedicinalProductDefinition</code> resource.<br>
        - Populate fields like <code>name</code>, <code>ingredient</code>, and <code>indication</code>.<br>
        - Assign a unique <code>identifier</code>.
      </td>
    </tr>
    <tr style="background-color: #ffffff;">
      <td style="border: 1px solid #ddd; padding: 8px;">Step 3: Add Organizations</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Document involved entities.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - Create an <code>Organization</code> resource for each entity (e.g., manufacturer, regulator).<br>
        - Include <code>name</code>, <code>contact</code>, and <code>identifier</code>.
      </td>
    </tr>
    <tr style="background-color: #f9f9f9;">
      <td style="border: 1px solid #ddd; padding: 8px;">Step 4: Specify Regulatory Authorization</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Document the product’s regulatory approvals.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - Create a <code>RegulatedAuthorization</code> resource.<br>
        - Set <code>identifier</code>, <code>subject</code> (reference to MedicinalProductDefinition), and <code>holder</code> (reference to Organization).<br>
        - Include <code>status</code> (e.g., active).
      </td>
    </tr>
    <tr style="background-color: #ffffff;">
      <td style="border: 1px solid #ddd; padding: 8px;">Step 5: Define Manufactured Item</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Describe the manufactured product form.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - Create a <code>ManufacturedItemDefinition</code> resource.<br>
        - Set <code>manufacturedDoseForm</code> and <code>unitOfPresentation</code>.<br>
        - Reference the <code>manufacturer</code> (Organization).
      </td>
    </tr>
    <tr style="background-color: #f9f9f9;">
      <td style="border: 1px solid #ddd; padding: 8px;">Step 6: Define Administrable Product</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Detail the administrable form of the product.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - Create an <code>AdministrableProductDefinition</code> resource.<br>
        - Set <code>administrableDoseForm</code> and <code>routeOfAdministration</code>.<br>
        - Reference <code>ingredient</code> (Ingredient resource).
      </td>
    </tr>
    <tr style="background-color: #ffffff;">
      <td style="border: 1px solid #ddd; padding: 8px;">Step 7: Define Packaging</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Describe the product’s packaging.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - Create a <code>PackagedProductDefinition</code> resource.<br>
        - Set <code>package</code> and <code>quantity</code>.<br>
        - Reference <code>containedItem</code> (ManufacturedItemDefinition).
      </td>
    </tr>
    <tr style="background-color: #f9f9f9;">
      <td style="border: 1px solid #ddd; padding: 8px;">Step 8: Specify Ingredients and Substances</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Document the product’s ingredients and substances.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - Create an <code>Ingredient</code> resource for each ingredient.<br>
        - Set <code>substance</code> (reference to Substance) and <code>strength</code>.<br>
        - Create a <code>Substance</code> resource with <code>code</code> and <code>description</code>.
      </td>
    </tr>
    <tr style="background-color: #ffffff;">
      <td style="border: 1px solid #ddd; padding: 8px;">Step 9: Create ePI Content</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Develop the patient-focused content of the ePI.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - Create a <code>Composition</code> resource.<br>
        - Set <code>language</code> (e.g., <code>en</code>).<br>
        - Structure content in <code>section</code> elements using XHTML or Markdown.<br>
        - Use section codes from the [ePI section code value set](./section-codes.md) (e.g., usage instructions, side effects).<br>
        - Reference the <code>MedicinalProductDefinition</code> and <code>Organization</code>.
      </td>
    </tr>
    <tr style="background-color: #f9f9f9;">
      <td style="border: 1px solid #ddd; padding: 8px;">Step 10: Include Media</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Add images or other media to the ePI.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - Convert images to Base64 format.<br>
        - Create a <code>Binary</code> resource with <code>contentType</code> (e.g., <code>image/png</code>) and <code>data</code>.<br>
        - Reference the <code>Binary</code> in the relevant <code>Composition</code> section.
      </td>
    </tr>
    <tr style="background-color: #ffffff;">
      <td style="border: 1px solid #ddd; padding: 8px;">Step 11: Bundle the Resources</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Combine all resources into a single document.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - Create a <code>Bundle</code> resource with <code>type</code> set to <code>document</code>.<br>
        - Add <code>entry</code> elements for <code>Composition</code>, <code>MedicinalProductDefinition</code>, <code>Organization</code>, <code>RegulatedAuthorization</code>, <code>ManufacturedItemDefinition</code>, <code>AdministrableProductDefinition</code>, <code>PackagedProductDefinition</code>, <code>Ingredient</code>, <code>Substance</code>, and <code>Binary</code>.<br>
        - Assign a unique <code>identifier</code> to the Bundle.
      </td>
    </tr>
    <tr style="background-color: #f9f9f9;">
      <td style="border: 1px solid #ddd; padding: 8px;">Step 12: Validate and Test</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Ensure the ePI is compliant and functional.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - Validate the Bundle using the FHIR Validator against the Base ePI Profile.<br>
        - Test with a FHIR server (e.g., HAPI FHIR) to confirm storage and retrieval.<br>
        - Verify API compatibility (e.g., POST, GET operations).<br>
        - Check content for regulatory compliance.
      </td>
    </tr>
  </tbody>
</table>

### Additional Resources
- **ePI Profile**: Refer to the [Profiles]([./epi-components.md](https://build.fhir.org/ig/HL7/emedicinal-product-info/artifacts.html#2)) page for details on FHIR resources.
- **Technical Style Guide**: Follow the [style guide](./style-guide.md) for structuring narrative content (e.g., paragraphs, tables, bullets) in XHTML.