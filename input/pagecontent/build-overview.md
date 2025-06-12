### Purpose of This Tab

The "How to Build ePI Type 1 to 4" tab offers detailed guidance, examples, and best practices for creating ePI resources for each type. It covers:

- **FHIR Resource Usage**: How to use FHIR resources like Composition, Medication, and Bundle to structure ePI data.
- **Profiling**: Applying the ePI IG profiles to ensure conformance with regulatory requirements.
- **Examples**: Sample FHIR instances for each ePI type to illustrate implementation.
- **Tooling**: Guidance on using tools like the FHIR IG Publisher to validate and publish ePI resources.
- **Interoperability**: Ensuring ePI data aligns with global standards and regional regulations.

Recommend first reading the [ePI components]([epi-components.md](https://build.fhir.org/ig/HL7/emedicinal-product-info/epi-components.html)) page to understand what resources make up an ePI, and the [use cases]([use-cases.md](https://build.fhir.org/ig/HL7/emedicinal-product-info/usecases.html)) to select the appropriate use case and ePI type to suit  your needs.

### Who Should Use This Tab?

This tab is intended for:
- **Developers** building ePI systems or applications.
- **Regulators** defining ePI requirements for medicinal product submissions.
- **Pharmaceutical companies** creating compliant ePI for their products.
- **Healthcare IT professionals** integrating ePI into electronic health record (EHR) systems.

### Getting Started

To begin, explore the sub-sections linked below for each ePI type. 

- **Type 1: Narrative Only**  
  Reproduces the local health authority's DOCX or PDF-based template. Which includes all human-readable narrative (e.g., paragraphs, tables, bullets, images), section headings, sub-section headings, and document metadata (e.g., Document title, original date of approval, last date of modification, version, language).  
  [Learn how to build ePI Type 1](https://build.fhir.org/ig/HL7/emedicinal-product-info/build-epi1.html)

- **Type 2: Narrative with Structured Product Data**  
  Includes structured data about the product (e.g., medication name, ingredients, dosage forms, market authorization holder). This type supports partial machine processing while prioritizing the narrative.  
  [Learn how to build ePI Type 2](https://build.fhir.org/ig/HL7/emedicinal-product-info/build-epi2.html)

- **Type 3: Narrative with Structured Clinical Data**  
  Includes structured clinical data (e.g., indications, contraindications, warnings, undesireable  effects). This type enables machine-readable clinical information for personalization, advanced search, and analytics.  
  [Learn how to build ePI Type 3](https://build.fhir.org/ig/HL7/emedicinal-product-info/build-epi3.html))

- **Type 4: Fully Structured**  
  Supports full machine processing and prioritizes structure over narrative (e.g., structured dose instructions, structured adverse event tables). Still includes narrative but the narrative is now a child of a structured component. This type is optimized for machine-to-machine exchange and advanced personalization (e.g., autogenerate an ePI for a specific individual or patient profile grouping).  
  [Learn how to build ePI Type 4](https://build.fhir.org/ig/HL7/emedicinal-product-info/build-epi4.html))

