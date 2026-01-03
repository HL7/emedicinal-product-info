Electronic Product Information (ePI) is a global, open standard for structured, digital-first medicinal product information, built on HL7 FHIR R5.

> [!IMPORTANT]
> **Digital Transformation of Drug Labeling**: ePI replaces static DOCX and PDF drug labels with fully structured, interoperable, and machine-readable FHIR documents. 

### Why ePI?
The benefits of moving to a structured standard are transformative for regulators, industry, and patients:

> [!TIP]
> **One Global Standard**
> A single FHIR-based standard built with open-source web technologies. No need to maintain custom XML standards per country – build once, deploy globally.

> [!NOTE]
> **Advanced Digital Capabilities**
> Enable advanced search, auto-generate comparison tables, facilitate resolving drug shortages, and streamline pack artwork generation.

> [!IMPORTANT]
> **Digital Health Interoperability**
> Seamless integration with eHealth systems for ePrescription, Electronic Medical Records (EMR), allergen checking, and automated regulatory reporting.

### Maturity Levels – Choose Your Starting Point
Implementers can start simple and evolve as their technical maturity grows:

*   **ePI Type 1: Digital Label Reproduction**
    *   FHIR equivalent of authorized DOCX/PDF labels. A "quick win" to replace existing labels with narrative FHIR content.
*   **ePI Type 2: Product Identification & Search**
    *   **RECOMMENDED STARTING POINT**. Adds structured medicinal product details (ingredients, form, packaging) for advanced lookup and supply chain traceability.
*   **ePI Type 3: Clinical Guidance**
    *   Adds structured clinical details (indications, contraindications) to facilitate interaction alerts in digital health apps.
*   **ePI Type 4: Granular & Personalized Components**
    *   Fully digital-first, computable components for dynamically generated, personalized label content.

### Background
Drug labels (SmPCs, Product Monographs, and Patient Leaflets) are critical regulatory documents that provide essential safety and usage information. 

Currently, these are often distributed as fragmented, region-specific formats (SPL, custom XML, or PDFs), hindering interoperability and delaying updates. ePI solves this by transforming labels into structured HL7 FHIR R5 documents, ensuring that a single source of truth can serve multiple jurisdictions while remaining adaptable to local regulations.

### Scope

> [!NOTE]
> **In-Scope**
> - All medicinal drug products (Human use).
> - Healthcare professional label content (e.g., SmPC), patient label content (e.g., PIL), and pack artwork.

> [!TIP]
> **Standard Applicability**
> While this IG focuses on human medicinal products, the underlying FHIR ePI standard is designed to be extensible. Regulatory implementation paths for Over-The-Counter (OTC) vs. Prescription medicines may vary by jurisdiction.

**Out of Scope**:
- Medical devices, Veterinary Drugs, and Natural Health Products.

