An **ePI Repository** (or Product Catalog) is a centralized FHIR-based system designed to store, manage, and distribute authorized Electronic Medicinal Product Information. These repositories serve as the "single source of truth" for digital drug labels, providing machine-readable access to regulators, healthcare providers, and the public.

Depending on the stakeholder, these repositories may serve different purposes:
- **Regulators**: Making all authorized ePIs in a jurisdiction available to the public and healthcare systems via a standard API.
- **Pharma Companies (Internal)**: Providing a central repo for authorized labels to be used by Medical Information, Commercial, and Launch teams.
- **Pharma Companies (External)**: Hosting a repository to make their own authorized labels directly available to the public.

### Repository Architecture

A robust ePI repository should be built on a FHIR R5-compliant server. Implementers can choose between open-source solutions (e.g., HAPI FHIR) or commercial FHIR-as-a-Service platforms.

#### Key Components
1.  **FHIR Server**: The core engine for storing `Bundle`, `Composition`, and related product resources.
2.  **API Layer**: Provides standard RESTful endpoints for searching (`GET /Bundle?subject.identifier=...`) and retrieval.
3.  **Ingestion Engine**: Handles the upload and validation of new ePI versions, ensuring they match the required profiles.
4.  **Security Layer**: Manages access control, particularly for internal repositories or pre-approval drafts.

For a detailed list of minimum technical requirements, see the [API Server Capabilities](capabilities.html) page.

### Setting Up the Repository

#### 1. Choose a FHIR Platform
Choose a platform based on your scale and technical capabilities:
- **Open Source**: Offers maximum control and no licensing fees but requires significant DevOps expertise.
- **Commercial/Cloud**: Managed services (e.g., AWS HealthLake, Google Cloud Healthcare API, Microsoft Health Data Services) provide scalability, security, and compliance out-of-the-box.

#### 2. Configure Profiles and Validation
Load the ePI Implementation Guide's profiles (`StructureDefinition` resources) onto the server. Configure the server to validate all incoming ePI Bundles against these profiles to ensure data quality and interoperability.

#### 3. Define the Search Strategy
To make the catalog useful, index key elements for searching:
- **Product Name**: `MedicinalProductDefinition.name`
- **Identifier**: GTIN, National ID, or SPOR ID.
- **Organization**: Marketing Authorization Holder.
- **Date**: Last updated or authorization date.

### How It Works: The ePI Lifecycle

1.  **Submission/Ingestion**: An ePI document (Bundle) is posted to the repository.
2.  **Indexing**: The server extracts metadata for searching.
3.  **Versioning**: The repository maintains a history of the document. When a new version is authorized, the previous version is archived but remains accessible via its `versionId`.
4.  **Distribution**: Third-party apps (e.g., ePrescribing software, patient apps) query the repository via the FHIR API to retrieve the latest version of a label.

For detailed specifications on document submission, status updates, and lifecycle management, implementers should refer to the **[APIX Implementation Guide](https://github.com/HL7/apix)**.

### Vendor Neutrality
This Implementation Guide does not endorse specific software or cloud providers. The technical requirements are based on the global FHIR standard, allowing stakeholders to build or buy a solution that best fits their regulatory and business environment.
