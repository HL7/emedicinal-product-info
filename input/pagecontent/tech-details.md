This page defines the architecture, technical capabilities, and operational requirements for a FHIR-based ePI Repository (Product Catalog). These systems serve as the "single source of truth" for digital drug labels, providing machine-readable access to regulators, healthcare providers, and the public.

Depending on the stakeholder, these repositories may serve different purposes:
- **Regulators**: Making all authorized ePIs in a jurisdiction available via a standard API.
- **Pharma Companies**: Hosting internal or external repositories for authorized labels.

### Repository Architecture

A robust ePI repository should be built on a FHIR R5-compliant server. Key components include:
1.  **FHIR Server**: The core engine for storing `Bundle`, `Composition`, and related product resources.
2.  **API Layer**: Provides standard RESTful endpoints for searching (`GET /Bundle?subject.identifier=...`) and retrieval.
3.  **Ingestion Engine**: Handles the upload and validation of new ePI versions.
4.  **Security Layer**: Manages access control, particularly for internal repositories.

### Recommended Resource Interactions

To support discovery, display, and clinical use of ePI, a repository SHOULD support the following interactions across core resources:

| Resource Category | FHIR Resource(s) | Supported Interactions |
| :---------------- | :--------------- | :--------------------- |
| **Document** | `Bundle`, `Composition` | `read`, `vread`, `search`, `history` |
| **Product** | `MedicinalProductDefinition`, `PackagedProductDefinition`, `ManufacturedItemDefinition`, `AdministrableProductDefinition` | `read`, `search` |
| **Authorization** | `RegulatedAuthorization` | `read`, `search` |
| **Entities** | `Organization`, `Ingredient`, `SubstanceDefinition` | `read`, `search` |
| **Clinical** | `ClinicalUseDefinition`, `MedicationKnowledge` | `read`, `search` |
| **Supporting** | `Binary` (Images), `List` (Histories) | `read` |

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

### Setting Up the Repository

#### 1. Choose a FHIR Platform
Choose a platform based on your scale and technical capabilities:
- **Open Source**: Offers maximum control (e.g., HAPI FHIR) but requires DevOps expertise.
- **Commercial/Cloud**: Managed services (e.g., AWS HealthLake, Google Cloud Healthcare API, Azure Health Data Services) provide scalability and compliance out-of-the-box.

#### 2. Configure Profiles and Validation
Load the ePI Implementation Guide's profiles (`StructureDefinition` resources) onto the server. Configure the server to validate all incoming ePI Bundles against these profiles.

#### 3. Define the Search Strategy
Index key elements for searching: Product Name, Identifier (GTIN/SPOR ID), Organization, and Date.

### Submission & Maintenance
For detailed technical guidance on how to submit, validate, and maintain ePI documents on a server (including lifecycle management operations), refer to the **[APIX Implementation Guide](https://github.com/HL7/apix)**. While this IG focuses on the *content structure* of ePI, the APIX IG provides the *transactional framework* for exchanging that content.

### Vendor Neutrality
This Implementation Guide does not endorse specific software or cloud providers. The technical requirements are based on the global FHIR standard.
