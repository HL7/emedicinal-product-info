Controlled terminology ensures consistency, interoperability, and regulatory compliance across digital drug labels, supporting global harmonization of medicinal product information.

### Introduction to Controlled Terminology

Standardized code systems allow drug label information to be precise and machine-readable. In the ePI IG, these terminologies facilitate integration with systems like Electronic Health Records (EHRs) and ePrescribing apps.

**Clinical Precision**: SNOMED CT, ICD, and MedDRA are used for indications, contraindications, and adverse reactions, ensuring that clinical content is universally understood by medical software globally.

### Key Terminologies Used

<table style="width:100%; border-collapse: collapse; border: 1px solid #d0d0d0; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif; font-size: 14px;">
  <thead>
    <tr style="background-color: #003087; color: #ffffff;">
      <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left; width: 30%;">Standard</th>
      <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left;">Usage in ePI</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 12px; border: 1px solid #d0d0d0;"><strong>LOINC</strong></td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">Document and section codes (e.g., SmPC, PIL headings)</td>
    </tr>
    <tr>
      <td style="padding: 12px; border: 1px solid #d0d0d0;"><strong>UCUM</strong></td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">Standardized units of measure for dosages</td>
    </tr>
    <tr>
      <td style="padding: 12px; border: 1px solid #d0d0d0;"><strong>ISO 639-1</strong></td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">Two-letter language codes (e.g., "en", "fr")</td>
    </tr>
    <tr>
      <td style="padding: 12px; border: 1px solid #d0d0d0;"><strong>ISO 3166-1</strong></td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">Two-letter country/jurisdiction codes (alpha-2, e.g., "US", "JP")</td>
    </tr>
    <tr>
      <td style="padding: 12px; border: 1px solid #d0d0d0;"><strong>EDQM</strong></td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">Dose forms, routes of administration, packaging, and unit of presentation</td>
    </tr>
    <tr>
      <td style="padding: 12px; border: 1px solid #d0d0d0;"><strong>MedDRA</strong></td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">Adverse event and safety reporting codes</td>
    </tr>
  </tbody>
</table>

---

### International Harmonization

> [!IMPORTANT]
> **Cross-Border Reciprocity**: By using **EDQM** and **SNOMED CT**, a single ePI Type 2 or 3 document can be understood and processed by healthcare systems in multiple jurisdictions with minimal adaptation.

For a full list of supported terminologies and technical constraints, refer to the [Artifacts Summary](artifacts.html).