This page describes the components used to construct ePI Type 2, enabling implementers to create and validate FHIR-compliant ePI resources for medicinal product information.

For details on the Bundle, Composition, and Binary resources, refer to the *Build ePI Type 1* guide, as their structure is  identical.

### Overview of JSON Components

A Type 2 ePI file includes the following core components:

- **Organization**: Identifies the author or responsible entity (e.g., pharmaceutical company).
- **MedicinalProductDefinition**: Provides structured data about the medicinal product (e.g., name, ingredients).
- **RegulatedAuthorization**: Details regulatory approvals for the product.
- **ManufacturedItemDefinition**: Describes the manufactured product, linked to Ingredient and SubstanceDefinition.
- **AdministrableProductDefinition**: Specifies the administrable form, linked to Ingredient and SubstanceDefinition.
- **PackagedProductDefinition**: Defines the packaging details.

These components work together to deliver both human-readable and machine-readable medicinal product information in a FHIR-compliant format.

### Detailed Component Descriptions

#### 1. Bundle, Composition, and Binary

Refer to the [Build ePI Type 1](https://build.fhir.org/ig/HL7/emedicinal-product-info/build-epi1.html) page for details.

#### 2. Organization

- **Purpose**: The Organization resource identifies the entity responsible for the ePI, such as the pharmaceutical company or marketing authorization holder, replacing the simple author display string used in Type 1.
- **Key Fields**:
  - `"resourceType": "Organization"`: Specifies that this is a FHIR Organization resource.
  - `"id"`: A unique identifier (e.g., “UUID”).
  - `"meta.profile"`: References the ePI IG’s Organization profile (e.g., "http://hl7.org/fhir/uv/emedicinal-product-info/StructureDefinition/Organization-epi").
  - `"name"`: The organization’s name (e.g., “Example Pharma Inc.”).
  - `"contact"`: Optional contact details (e.g., `"address": {"line": ["123 Pharma St"], "city": "Boston"}`).
- **Role in ePI**: Provides a structured reference for the ePI’s author, linked from the Composition’s `author` field, enabling consistent identification across systems.

#### 3. MedicinalProductDefinition

- **Purpose**: Provides structured, machine-readable data about the medicinal product, such as its name, ingredients, and classification, supporting automated processing.
- **Key Fields**:
  - `"resourceType": "MedicinalProductDefinition"`: Specifies that this is a FHIR MedicinalProductDefinition resource.
  - `"id"`: A unique identifier (e.g., “UUID”).
  - `"meta.profile"`: References the ePI IG’s profile (e.g., "http://hl7.org/fhir/uv/emedicinal-product-info/StructureDefinition/MedicinalProductDefinition-epi").
  - `"name"`: The product’s name (e.g., `"namePart": [{"part": "ExampleMed", "type": {"code": "invented-name"}}, {"part": "100 mg", "type": {"code": "strength"}}]`).
  - `"type.coding"`: Indicates the product type (e.g., `system: "http://hl7.org/fhir/medicinal-product-type"`, `code: "MedicinalProduct"`).
  - `"ingredient"`: References Ingredient resources (e.g., `"reference": "Ingredient/epi-ingredient"`).
- **Role in ePI**: Central to structured data, linked from the Composition’s structured data section, enabling regulatory and clinical system integration.

#### 4. RegulatedAuthorization

- **Purpose**: Details the regulatory approval or marketing authorization for the medicinal product, including authorization numbers and issuing authorities.
- **Key Fields**:
  - `"resourceType": "RegulatedAuthorization"`: Specifies that this is a FHIR RegulatedAuthorization resource.
  - `"id"`: A unique identifier (e.g., “UUID”).
  - `"meta.profile"`: References the ePI IG’s profile (e.g., "http://hl7.org/fhir/uv/emedicinal-product-info/StructureDefinition/RegulatedAuthorization-epi").
  - `"identifier"`: Authorization number (e.g., `"value": "EU/1/23/1234/001"`).
  - `"subject"`: References the MedicinalProductDefinition (e.g., `"reference": "MedicinalProductDefinition/epi-product"`).
  - `"holder"`: References the Organization (e.g., `"reference": "Organization/epi-org"`).
- **Role in ePI**: Provides regulatory context, ensuring the ePI includes legally required authorization details, linked from the Composition or MedicinalProductDefinition.

#### 5. ManufacturedItemDefinition

- **Purpose**: Describes the physical manufactured item (e.g., tablet, vial), including its form and characteristics, linked to Ingredient and SubstanceDefinition resources.
- **Key Fields**:
  - `"resourceType": "ManufacturedItemDefinition"`: Specifies that this is a FHIR ManufacturedItemDefinition resource.
  - `"id"`: A unique identifier (e.g., “UUID”).
  - `"meta.profile"`: References the ePI IG’s profile (e.g., "http://hl7.org/fhir/uv/emedicinal-product-info/StructureDefinition/ManufacturedItemDefinition-epi").
  - `"manufacturedDoseForm"`: The form (e.g., `"code": "tablet"`).
  - `"ingredient"`: References Ingredient resources (e.g., `"reference": "Ingredient/epi-ingredient"`).
- **Role in ePI**: Defines the physical attributes of a product in its packaged dose form, linked to the MedicinalProductDefinition or Composition for detailed product description.

##### a. Ingredient

- **Purpose**: Specifies the ingredients (active or inactive) in the manufactured item, linking to SubstanceDefinition for detailed substance data.
- **Key Fields**:
  - `"resourceType": "Ingredient"`: Specifies that this is a FHIR Ingredient resource.
  - `"id"`: A unique identifier (e.g., “UUID”).
  - `"meta.profile"`: References the ePI IG’s profile (e.g., "http://hl7.org/fhir/uv/emedicinal-product-info/StructureDefinition/Ingredient-epi").
  - `"substance"`: References the SubstanceDefinition (e.g., `"reference": "SubstanceDefinition/epi-substance"`).
  - `"strength"`: Quantity of the ingredient (e.g., `"value": 100, "unit": "mg"`).
- **Role in ePI**: Provides granular ingredient data, ensuring precise composition details.

##### b. SubstanceDefinition

- **Purpose**: Defines the chemical or biological substance used in the ingredient, including its identity and properties.
- **Key Fields**:
  - `"resourceType": "SubstanceDefinition"`: Specifies that this is a FHIR SubstanceDefinition resource.
  - `"id"`: A unique identifier (e.g., “UUID”).
  - `"meta.profile"`: References the ePI IG’s profile (e.g., "http://hl7.org/fhir/uv/emedicinal-product-info/StructureDefinition/SubstanceDefinition-epi").
  - `"code"`: Substance identifier (e.g., `"code": {"code": "UNII"}`).
- **Role in ePI**: Provides granular substance attributes and identification, supporting safety and regulatory checks.

#### 6. AdministrableProductDefinition

- **Purpose**: Describes the product in the dose form ready for administration to patients, after any necessary transformation (e.g., powder reconstituted with a diluent to deliver a solution for injection to a patient), including how it is prepared or administered, linked to the manufactured items combined to create it.
- **Key Fields**:
  - `"resourceType": "AdministrableProductDefinition"`: Specifies that this is a FHIR AdministrableProductDefinition resource.
  - `"id"`: A unique identifier (e.g., “epi-administrable”).
  - `"meta.profile"`: References the ePI IG’s profile (e.g., "http://hl7.org/fhir/uv/emedicinal-product-info/StructureDefinition/AdministrableProductDefinition-epi").
  - `"administrableDoseForm"`: The form (e.g., `"code": "tablet"`).
  - `"ingredient"`: References Ingredient resources (e.g., `"reference": "Ingredient/epi-ingredient"`).
- **Role in ePI**: Specifies how the product is administered to patients, linked to the MedicinalProductDefinition for clinical use cases.

#### 7. PackagedProductDefinition

- **Purpose**: Describes the product’s packaging (e.g., blister pack, bottle), including package size and materials.
- **Key Fields**:
  - `"resourceType": "PackagedProductDefinition"`: Specifies that this is a FHIR PackagedProductDefinition resource.
  - `"id"`: A unique identifier (e.g., “UUID”).
  - `"meta.profile"`: References the ePI IG’s profile (e.g., "http://hl7.org/fhir/uv/emedicinal-product-info/StructureDefinition/PackagedProductDefinition-epi").
  - `"package"`: Details packaging (e.g., `"type": {"code": "blister"}, "quantity": 28`).
  - `"containedItem"`: References the ManufacturedItemDefinition (e.g., `"item": {"reference": "ManufacturedItemDefinition/epi-manufactured-item"}`).
- **Role in ePI**: Provides packaging details, critical for supply chain and patient instructions, linked to the MedicinalProductDefinition.

### Resources for Further Reading

Refer to the profiles on the [Artifacts Page](https://build.fhir.org/ig/HL7/emedicinal-product-info/artifacts.html#2) for a detailed view of elements, attributes, and terminology.