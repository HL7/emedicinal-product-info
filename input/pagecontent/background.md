This page introduces drug labels, Electronic Product Information (ePI), and the FHIR standard, highlighting their role in global medicine harmonization.

### What is a Drug Label?

Drug labels (such as SmPCs, Product Monographs, and Patient Leaflets) are critical regulatory documents that provide essential safety and usage information. They are not static; they are continuously updated with new safety warnings, indications, and dosing adjustments.

> [!CAUTION]
> **Fragmentation Challenge**: Currently, regions use a mix of SPL, custom XML, or static PDFs. This fragmentation delays safety updates and hinders the global exchange of critical medical data.

### Why ePI? The Need for Digital Transformation

> [!TIP]
> **Electronic Product Information (ePI)** transforms these labels into structured, machine-readable formats. Unlike static PDFs, ePI enables:
> - **Real-Time Access**: Instant updates via apps, EHRs, and ePrescriptions.
> - **Granular Personalization**: Highlighting warnings for specific patient profiles (e.g., elderly vs. pediatric).
> - **Interoperability**: Seamless sharing across FHIR-compliant global health systems.

---

### FHIR: The Engine of ePI

FHIR (Fast Healthcare Interoperability Resources) provides the technical standard for this transformation using modern web technologies like JSON and RESTful APIs.

| Concept              | Description                      | ePI Implementation                         |
| :------------------- | :------------------------------- | :----------------------------------------- |
| **Structured Data**  | Resources organize label content | `Composition` structures clinical sections |
| **Interoperability** | APIs enable real-time sharing    | Type 2 details exchanged via FHIR APIs     |
| **Standardization**  | Common data model                | Base ePI Profile harmonizes structures     |
| **Flexibility**      | Adaptable to regional rules      | EU/FDA/PMDA specific profiles              |

---

### Global Harmonization

ePI and FHIR promote international alignment by providing a unified technical standard. A single ePI document, built on the Base ePI Profile, can be adapted for multiple jurisdictions, reducing redundancy and ensuring patients receive the most up-to-date information regardless of their location.

> [!NOTE]
> **Collaborative Standard**: Efforts like the **HL7 Vulcan Accelerator** and the **Gravitate-Health project** ensure that global regulators align on these technical standards and improve access to medicinal product information.