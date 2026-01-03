The following page provides basic tips and recommendations to help implementers get started with ePI.

### Prerequisites

> [!NOTE]
> **Component Authoring Tool (Required)**
> You will need a structured authoring tool to create the FHIR resources. This tool should support rich text, product metadata, and lifecycle management (versioning).

> [!TIP]
> **Style Sheets (Required)**
> Converting raw FHIR JSON/XML into human-readable views requires CSS. You can use the [premium stylesheet](rendering.html) provided in this IG as a foundation.

> [!IMPORTANT]
> **FHIR R5 Server (Recommended)**
> A central storage system (e.g., HAPI FHIR, Google Cloud Healthcare API) is recommended for searching, versioning, and sharing ePI documents via standard APIs.

---

### Required Skills
To successfully implement ePI, your team should have familiarity with:

| Technical Staff            | Regulatory / Business Staff             |
| :------------------------- | :-------------------------------------- |
| FHIR R5 Core Specification | National Regulatory Guidance on ePI     |
| JSON & XML Editing         | Medicinal Product Metadata              |
| RESTful APIs               | Controlled Terminology (SNOMED, MedDRA) |
| CSS & XSLT                 | Structured Authoring Workflows          |

---

### Quick Start Steps

1.  **Choose your ePI Type**
    Select the maturity level that fits your organization's needs. Review the [Use Cases](usecases.html) to understand which Type (1-4) is right for you.

2.  **Review the Premium HTML Examples**
    See how raw FHIR data is transformed into a modern, user-friendly interface. Our examples use a "Modern SaaS" 2-pane design:
    *   [**ePI Type 1 (Paracetamol)**](examples/bundle-epi-type1-example-paracetamol.html){:target="_blank"} - Narrative focus.
    *   [**ePI Type 2 (Paracetamol)**](examples/bundle-epi-type2-example-paracetamol.html){:target="_blank"} - Structured product details.
    *   [**ePI Type 3 (WonderDrug)**](examples/bundle-epi-type3-example-wonderdrug.html){:target="_blank"} - Full structured clinical data.

3.  **Examine the Underlying FHIR JSON**
    Understand the structure of the machine-readable ePI document:
    *   [**Type 1 JSON**](bundle-epi-type1-example-paracetamol.json.html){:target="_blank"}
    *   [**Type 2 JSON**](bundle-epi-type2-example-paracetamol.json.html){:target="_blank"}
    *   [**Type 3 JSON**](bundle-epi-type3-example-wonderdrug.json.html){:target="_blank"}

4.  **Validate your ePI**
    Ensure your Bundle follows the rules defined in this IG. Use the [Official FHIR Validator](https://validator.fhir.org) with the ePI IG package to check for compliance.

5.  **Build your own**
    Use the provided examples as a template for your own ePI implementations.