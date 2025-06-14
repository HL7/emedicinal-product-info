This page describes the components used to construct ePI Type 3, enabling implementers to create and validate FHIR-compliant ePI resources for medicinal product information.

Refer to the Build ePI Type 1 and Build ePI Type 2 pages for instructions on how to build those components.

### Overview of Components

A Type 3 ePI file consists of ePI Type 1 and Type 2 content plus the following core components:

+ **ClinicalUseDefinition**: Defines clinical use cases, including indication, contraindication, interaction, undesirable effects, and warnings, supporting clinical decision-making and surveillance.

These components work together to deliver human-readable and machine-readable medicinal product information, tailored for advanced clinical applications, like personalization, in a FHIR-compliant format.

### Detailed Component Descriptions

#### 1. Bundle, Composition, and Binary

Refer to the [Build ePI Type 1](https://build.fhir.org/ig/HL7/emedicinal-product-info/build-epi1.html) and [Build ePI Type 2](https://build.fhir.org/ig/HL7/emedicinal-product-info/build-epi2.html) page for details.

#### 2. ClinicalUseDefinition

- **Purpose**: Provides structured content for indication, contraindication, interaction, undesirable effects, and warnings. Each use case is represented by a separate `ClinicalUseDefinition` resource.
- **Role in ePI**: Provides machine-readable clinical data, providing structured data for use cases like personalization, patient medication apps, and integration with the International Patient Summary (IPS).

##### a. Indication

- **Purpose**: Specifies the approved clinical conditions or diseases for which the medicinal product is indicated.
- **Key Fields**:
  - `"resourceType": "ClinicalUseDefinition"`: Specifies that this is a FHIR ClinicalUseDefinition resource.
  - `"id"`: A unique identifier (e.g., “UUID”).
  - `"meta.profile"`: References the ePI IG’s profile (e.g., "http://hl7.org/fhir/uv/emedicinal-product-info/StructureDefinition/ClinicalUseDefinition-epi").
  - `"type"`: Indicates the use type (e.g., `"coding": [{"system": "http://hl7.org/fhir/clinical-use-definition-type", "code": "indication"}]`).
  - `"indication"`: Details the clinical indication (e.g., `"diseaseSymptomProcedure": {"coding": [{"system": "http://snomed.info/sct", "code": "44054006", "display": "Type 2 diabetes mellitus"}]}`, `"population": {"characteristic": {"coding": [{"system": "http://hl7.org/fhir/age-group", "code": "adult"}]}}`).
- **Role in ePI**: Defines the authorized therapeutic use of the product using codes like SNOMED, ICD, OR MedDRA.

##### b. Contraindication

- **Purpose**: Identifies conditions or patient characteristics that prohibit the use of the medicinal product.
- **Key Fields**:
  - `"resourceType": "ClinicalUseDefinition"`: Specifies that this is a FHIR ClinicalUseDefinition resource.
  - `"id"`: A unique identifier (e.g., “UUID”).
  - `"meta.profile"`: References the ePI IG’s profile (e.g., "http://hl7.org/fhir/uv/emedicinal-product-info/StructureDefinition/ClinicalUseDefinition-epi").
  - `"type"`: Indicates the use type (e.g., `"coding": [{"system": "http://hl7.org/fhir/clinical-use-definition-type", "code": "contraindication"}]`).
  - `"contraindication"`: Details the contraindication (e.g., `"diseaseSymptomProcedure": {"coding": [{"system": "http://snomed.info/sct", "code": "195967001", "display": "Asthma"}]}`, `"population": {"characteristic": {"coding": [{"system": "http://hl7.org/fhir/age-group", "code": "child"}]}}`).
- **Role in ePI**: Provides structured contraindications using codes like SNOMED, ICD, OR MedDRA.

##### c. Interaction

- **Purpose**: Describes potential interactions with other medicinal products, substances, or foods that affect the product’s efficacy or safety.
- **Key Fields**:
  - `"resourceType": "ClinicalUseDefinition"`: Specifies that this is a FHIR ClinicalUseDefinition resource.
  - `"id"`: A unique identifier (e.g., “epi-interaction”).
  - `"meta.profile"`: References the ePI IG’s profile (e.g., "http://hl7.org/fhir/uv/emedicinal-product-info/StructureDefinition/ClinicalUseDefinition-epi").
  - `"type"`: Indicates the use type (e.g., `"coding": [{"system": "http://hl7.org/fhir/clinical-use-definition-type", "code": "interaction"}]`).
  - `"interaction"`: Details the interaction (e.g., `"interactant": [{"itemCodeableConcept": {"coding": [{"system": "http://www.whocc.no/atc", "code": "B01AC06", "display": "Aspirin"}]}}]`, `"effect": {"coding": [{"system": "http://snomed.info/sct", "code": "111072006", "display": "Increased risk of bleeding"}]}]`).
- **Role in ePI**: Allows systems to quiry (1) interactants as individual substances using Global Substance Registration (G-SRS) codes); or (2) interactants as drug classes using SNOMED codes.

##### d. Undesirable Effects

- **Purpose**: Lists adverse effects or side effects associated with the medicinal product.
- **Key Fields**:
  - `"resourceType": "ClinicalUseDefinition"`: Specifies that this is a FHIR ClinicalUseDefinition resource.
  - `"id"`: A unique identifier (e.g., “epi-undesirable-effect”).
  - `"meta.profile"`: References the ePI IG’s profile (e.g., "http://hl7.org/fhir/uv/emedicinal-product-info/StructureDefinition/ClinicalUseDefinition-epi").
  - `"type"`: Indicates the use type (e.g., `"coding": [{"system": "http://hl7.org/fhir/clinical-use-definition-type", "code": "undesirable-effect"}]`).
  - `"undesirableEffect"`: Details the adverse effect (e.g., `"symptomConditionEffect": {"coding": [{"system": "http://snomed.info/sct", "code": "271782001", "display": "Nausea"}]}`, `"frequencyOfOccurrence": {"coding": [{"system": "http://hl7.org/fhir/frequency", "code": "common"}]}`).
- **Role in ePI**: Allows systems to quiry discrete adverse effects that can be used to personalize safety content for specific patients or patient profile groupings.

##### e. Warnings

- **Purpose**: Highlights special warnings or precautions for the safe use of the medicinal product.
- **Key Fields**:
  - `"resourceType": "ClinicalUseDefinition"`: Specifies that this is a FHIR ClinicalUseDefinition resource.
  - `"id"`: A unique identifier (e.g., “epi-warning”).
  - `"meta.profile"`: References the ePI IG’s profile (e.g., "http://hl7.org/fhir/uv/emedicinal-product-info/StructureDefinition/ClinicalUseDefinition-epi").
  - `"type"`: Indicates the use type (e.g., `"coding": [{"system": "http://hl7.org/fhir/clinical-use-definition-type", "code": "warning"}]`).
  - `"warning"`: Details the warning (e.g., `"description": "Use with caution in patients with renal impairment"`, `"population": {"characteristic": {"coding": [{"system": "http://snomed.info/sct", "code": "723505008", "display": "Renal impairment"}]}}`).
- **Role in ePI**: Allows systems to query safe use by highlighting discrete critical precautions for personalization.