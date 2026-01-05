This page defines the minimum technical capabilities recommended for a FHIR server hosting an ePI repository. These requirements ensure that authorized medicinal product information is accessible, searchable, and maintainable across different healthcare systems.

### Recommended Resource Interactions

To support discovery, display, and clinical use of ePI, a repository SHOULD support the following interactions across core resources:

| Resource Category | FHIR Resource(s)                                                                                                          | Supported Interactions               |
| :---------------- | :------------------------------------------------------------------------------------------------------------------------ | :----------------------------------- |
| **Document**      | `Bundle`, `Composition`                                                                                                   | `read`, `vread`, `search`, `history` |
| **Product**       | `MedicinalProductDefinition`, `PackagedProductDefinition`, `ManufacturedItemDefinition`, `AdministrableProductDefinition` | `read`, `search`                     |
| **Authorization** | `RegulatedAuthorization`                                                                                                  | `read`, `search`                     |
| **Entities**      | `Organization`, `Ingredient`, `SubstanceDefinition`                                                                       | `read`, `search`                     |
| **Clinical**      | `ClinicalUseDefinition`, `MedicationKnowledge`                                                                            | `read`, `search`                     |
| **Supporting**    | `Binary` (Images), `List` (Histories)                                                                                     | `read`                               |

### Key Search Parameters by Resource

A high-performance ePI repository must allow clients to find medicinal information using various starting points:

#### 1. Document Search (`Bundle`, `Composition`)
- **identifier**: Search for a specific document version.
- **status**: Filter by `active` or `archived` labels.
- **subject**: Find documents for a specific `MedicinalProductDefinition`.
- **date**: Search for labels updated or authorized in a date range.

#### 2. Product Search (`MedicinalProductDefinition`)
- **name**: Search by medicinal product name (e.g., `[base]/MedicinalProductDefinition?name:contains=Paracetamol`).
- **identifier**: Search by GTIN or National Product Number.
- **type**: Filter by product type (e.g., Human Medicinal Product).

#### 3. Substance & Ingredient Search (`SubstanceDefinition`, `Ingredient`)
- **code**: Find ingredients by chemical code (e.g., SNOMED CT or UNII).
- **for**: Find ingredients associated with a specific product.

#### 4. Clinical Search (`ClinicalUseDefinition`)
- **subject**: Find indications or contraindications for a specific product.
- **type**: Filter by category (e.g., `indication`, `contraindication`, `interaction`).

### Technical Constraints & Operations

1.  **Profile Validation**: The server SHOULD validate all incoming resources against the ePI profiles defined in this Implementation Guide.
2.  **Format Support**: The server MUST support both **JSON** and **XML** representations.
3.  **Content Negotiation**: Support for `_format` parameter and `Accept` headers to allow clients to request specific data formats.

### Submission & Maintenance (APIX IG)

For detailed technical guidance on how to submit, validate, and maintain ePI documents on a server (including lifecycle management operations), refer to the **[APIX Implementation Guide](https://github.com/HL7/apix)**. While this IG focuses on the *content structure* of ePI, the APIX IG provides the *transactional framework* for exchanging that content between manufacturers and regulators.
