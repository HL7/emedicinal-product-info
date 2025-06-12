### Overview

The Electronic Medicinal Product Information (ePI) FHIR Implementation Guide (IG) provides a standardized framework for creating, exchanging, and managing electronic product information for medicinal products using HL7 FHIR R5. Developed as a collaboration between the Gravitate Health Project and HL7's Vulcan Accelerator, this IG defines profiles, conformance rules, and terminologies to enable interoperable ePI across jurisdictions, supporting regulators, industry, and vendors in delivering patient-centric solutions.

Unlike traditional DOCX or PDF-based product information, ePI leverages FHIR to structure labeling content for interoperability with national healthcare systems (e.g., Electronic Health Records (EHRs), ePrescriptions, medication management apps). This fosters personalized labeling, advanced search capabilities, and cross-border interoperability, ultimately improving the accessibility of medicinal product information for healthcare proffessionals and patients.

### Scope and Objectives

The ePI IG aims to:
- Define a common global approach for structuring medicinal product information and labeling using HL7 FHIR.
- Provide technical and business conformance rules for ePI creation and exchange.
- Support use cases such as structured authoring, component authoring and component reuse, personalized labeling, labels generated with artificial intelligence, advanced search, and automated generation of packaging artwork.
- Establish a common core ePI Profile as a foundation for region-specific profiles (e.g., USA, EU, Japan) to ensure technical consistency and interoperability.

This IG can be used for direct implementation or it can serve as a baseline for deriving jurisdiction-specific profiles that address local requirements.

### Key Features

- **FHIR Resources**: Utilizes 14 FHIR resources (e.g., Bundle, Composition, Medicinal Product Definition) to support ePI use cases. See [FHIR Resources Overview](https://build.fhir.org/ig/HL7/emedicinal-product-info/epi-components.html) for details.
- **ePI Types**: Organizes resources into four types (1–4) to address varying levels of complexity, from label reproduction to fully structured data. See [Use Cases](https://build.fhir.org/ig/HL7/emedicinal-product-info/usecases.html) for more information.
- **Terminology**: Leverages standard code systems (e.g., SNOMED, MedDRA) for consistent data encoding.
- **Interoperability**: Promotes a uniform vendor landscape by aligning with HL7 FHIR standards, enabling integration with EHRs and other healthcare datasets.

### Getting Started

- **Implementers**: Explore the [Use Cases](https://build.fhir.org/ig/HL7/emedicinal-product-info/usecases.html) to understand how ePI Types and resources support specific scenarios, such as cross-border travel or allergen identification.
- **Developers**: Review the [FHIR Resources Overview](https://build.fhir.org/ig/HL7/emedicinal-product-info/epi-components.html) for detailed descriptions of each resource’s role in ePI.
- **Regulators**: Use the Base ePI Profile to develop jurisdiction-specific profiles that comply with local regulations.
- **Vendors**: Leverage the IG’s profiles and terminologies to build compliant ePI solutions.

For technical details, refer to the [Directory of Published Versions](http://build.fhir.org/ig/HL7/emedicinal-product-info/history.html) or the continuous build at [build.fhir.org](http://build.fhir.org/ig/HL7/emedicinal-product-info).

### Contributing

The ePI IG is an open project under HL7' Vulcan Accelerator, Gravitate Health, and HL7's Biomedical Research & Regulation Work Group. We welcome contributions, including:
- Feedback on profiles and use cases.
- Pull requests for documentation improvements.
- Participation in HL7 work group discussions.

To contribute:
1. Submit pull requests with changes to the team's [Github page](https://github.com/HL7/emedicinal-product-info).
2. Join discussions on the [FHIR Zulip stream](https://chat.fhir.org/#narrow/stream/296557-Vulcan.2FePI) (requires a free account).

### Acknowledgments

This IG is developed as collaboration between [HL7's Vulcan Accelerator](https://confluence.hl7.org/spaces/VA/pages/66930683/Vulcan+Accelerator+Home) and the [Gravitate Health Project](https://www.gravitatehealth.eu/), with contributions from HL7 Europe, regulators, industry partners, and the vendor community. See [Credits](https://build.fhir.org/ig/HL7/emedicinal-product-info/credits.html) for a list of contributors.

---

**License**: © 2022+ HL7 International - Biomedical Research & Regulation Work Group. Licensed under [Creative Commons Attribution 4.0 International](https://creativecommons.org/licenses/by/4.0/).  