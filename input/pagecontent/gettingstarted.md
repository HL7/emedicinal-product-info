Not sure where to start? Whether you're a regulator evaluating the standard, a vendor building an authoring tool, or a developer creating the FHIR resources — this page will point you in the right direction. Start with the path that best describes your role, then follow the steps that apply to you.

---

### Choose Your Path

<table style="width:100%; border-collapse: collapse; border: 1px solid #d0d0d0; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; margin-bottom: 24px;">
  <thead>
    <tr style="background-color: #003087; color: #ffffff;">
      <th style="padding: 14px 12px; border: 1px solid #d0d0d0; text-align: left; width: 33%;">🏛️ Regulator / Business Analyst</th>
      <th style="padding: 14px 12px; border: 1px solid #d0d0d0; text-align: left; width: 33%;">🏭 Vendor / Implementer</th>
      <th style="padding: 14px 12px; border: 1px solid #d0d0d0; text-align: left;">👩‍💻 FHIR Developer</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 12px; border: 1px solid #d0d0d0; vertical-align: top;">
        <em>You want to understand what ePI is, what it enables, and how your organization should position itself.</em><br><br>
        <ol style="margin: 0; padding-left: 16px;">
          <li>Read the <a href="index.html">Home page</a> for context and benefits</li>
          <li>Review the <a href="index.html#epi-maturity--use-cases">ePI Types</a> to identify the right starting point</li>
          <li>Review the <a href="build-overview.html">ePI Structure overview</a></li>
          <li>Share the <a href="https://github.com/HL7/emedicinal-product-info" target="_blank">GitHub repository</a> with your technical team</li>
        </ol>
      </td>
      <td style="padding: 12px; border: 1px solid #d0d0d0; vertical-align: top;">
        <em>You are building a system that creates, stores, or renders ePI documents.</em><br><br>
        <ol style="margin: 0; padding-left: 16px;">
          <li>Review the <a href="index.html#epi-maturity--use-cases">ePI Types</a> to select your target scope</li>
          <li>Review the rendered HTML examples below</li>
          <li>Examine the underlying FHIR JSON</li>
          <li>Review the <a href="stylesheets.html">provided stylesheets</a> for rendering</li>
          <li>Set up a FHIR R5 server (e.g., HAPI FHIR) for storage and API exchange</li>
        </ol>
      </td>
      <td style="padding: 12px; border: 1px solid #d0d0d0; vertical-align: top;">
        <em>You are mapping, profiling, or validating FHIR resources for ePI.</em><br><br>
        <ol style="margin: 0; padding-left: 16px;">
          <li>Review the <a href="build-overview.html">ePI Structure overview</a></li>
          <li>Study the <a href="artifacts.html">Profiles &amp; Extensions</a> in the Artifacts tab</li>
          <li>Examine the FHIR JSON examples</li>
          <li>Validate your Bundle using the <a href="https://validator.fhir.org" target="_blank">Official FHIR Validator</a></li>
          <li>Reference the <a href="tech-details.html">Technical Details</a> page for implementation notes</li>
        </ol>
      </td>
    </tr>
  </tbody>
</table>

---

### Prerequisites

Before you start building, make sure you have the following in place:

**Component Authoring Tool** *(Required)*
A structured authoring tool to create FHIR resources, supporting rich text, product metadata, and lifecycle management (versioning).

**Style Sheets** *(Required)*
Converting raw FHIR JSON/XML into human-readable views requires CSS. Use the [provided stylesheet](stylesheets.html) in this IG as a foundation.

**FHIR R5 Server** *(Recommended)*
A central storage system (e.g., HAPI FHIR, Google Cloud Healthcare API) for searching, versioning, and sharing ePI documents via standard APIs.

---

### Required Skills

To successfully implement ePI, your team should have familiarity with the following:

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
      <td style="padding: 12px; border: 1px solid #d0d0d0;">JSON &amp; XML Editing</td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">Medicinal Product Metadata</td>
    </tr>
    <tr>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">RESTful APIs</td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">Controlled Terminology (SNOMED, MedDRA)</td>
    </tr>
    <tr>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">CSS &amp; XSLT</td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">Structured Authoring Workflows</td>
    </tr>
  </tbody>
</table>

---

### Example ePI Documents

See how raw FHIR data is transformed into a modern, user-friendly interface. The examples below use a 2-pane design with structured navigation:

*   [**ePI Type 1 (Paracetamol)**](examples/bundle-epi-type1-example-paracetamol.html){:target="_blank"} — Narrative-focused digital reproduction
*   [**ePI Type 2 (Paracetamol)**](examples/bundle-epi-type2-example-paracetamol.html){:target="_blank"} — Adds structured product identification
*   [**ePI Type 3 (WonderDrug)**](examples/bundle-epi-type3-example-wonderdrug.html){:target="_blank"} — Full structured clinical data with dosing

**Underlying FHIR JSON**:
*   [Type 1 JSON](https://github.com/HL7/emedicinal-product-info/blob/master/input/examples/bundle-epi-type1-example-paracetamol.json){:target="_blank"}
*   [Type 2 JSON](https://github.com/HL7/emedicinal-product-info/blob/master/input/examples/bundle-epi-type2-example-paracetamol.json){:target="_blank"}
*   [Type 3 JSON](https://github.com/HL7/emedicinal-product-info/blob/master/input/examples/bundle-epi-type3-example-wonderdrug.json){:target="_blank"}

---

### Validate &amp; Build

Once you have reviewed the examples:

1.  **Validate your ePI** — Use the [Official FHIR Validator](https://validator.fhir.org){:target="_blank"} with the ePI IG package to check for compliance with the profiles defined in this guide.
2.  **Build your own** — Use the provided examples as a template. Start with Type 2 if you are unsure — it offers the best balance of implementability and clinical value.