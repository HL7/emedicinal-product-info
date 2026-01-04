The following page provides basic tips and recommendations to help implementers get started with ePI.

### Prerequisites

**Component Authoring Tool (Required)**:
You will need a structured authoring tool to create the FHIR resources. This tool should support rich text, product metadata, and lifecycle management (versioning).

**Style Sheets (Required)**:
Converting raw FHIR JSON/XML into human-readable views requires CSS. You can use the [provided stylesheet](rendering.html) in this IG as a foundation.

**FHIR R5 Server (Recommended)**:
A central storage system (e.g., HAPI FHIR, Google Cloud Healthcare API) is recommended for searching, versioning, and sharing ePI documents via standard APIs.

---

### Required Skills
To successfully implement ePI, your team should have familiarity with:

<table style="width:100%; border-collapse: collapse; border: 1px solid #d0d0d0; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif; font-size: 14px;">
  <thead>
    <tr style="background-color: #003087; color: #ffffff;">
      <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left; width: 50%;">Technical Staff</th>
      <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left;">Regulatory / Business Staff</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">FHIR R5 Core Specification</td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">National Regulatory Guidance on ePI</td>
    </tr>
    <tr>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">JSON & XML Editing</td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">Medicinal Product Metadata</td>
    </tr>
    <tr>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">RESTful APIs</td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">Controlled Terminology (SNOMED, MedDRA)</td>
    </tr>
    <tr>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">CSS & XSLT</td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">Structured Authoring Workflows</td>
    </tr>
  </tbody>
</table>

---

### Quick Start Steps

1.  **Choose your ePI Type**
    Select the maturity level that fits your organization's needs. Review the [Use Cases](usecases.html) to understand which Type (1-4) is right for you.

2.  **Review the provided HTML Examples**
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