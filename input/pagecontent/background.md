This page introduces drug labels, Electronic Product Information (ePI), and the FHIR standard, highlighting their role in global medicine harmonization.

### What is a Drug Label?
Drug labels (such as SmPCs, Product Monographs, and Patient Leaflets) are critical regulatory documents that provide essential safety and usage information. They are not static; they are continuously updated with new safety warnings, indications, and dosing adjustments.

**Fragmentation Challenge**: Currently, regions use a mix of SPL, custom XML, or static PDFs. This fragmentation delays safety updates and hinders the global exchange of critical medical data.

### Why ePI? The Need for Digital Transformation
**Electronic Product Information (ePI)** transforms these labels into structured, machine-readable formats. Unlike static PDFs, ePI enables:
- **Real-Time Access**: Instant updates via apps, EHRs, and ePrescriptions.
- **Granular Personalization**: Highlighting warnings for specific patient profiles (e.g., elderly vs. pediatric).
- **Interoperability**: Seamless sharing across FHIR-compliant global health systems.

---

### FHIR: The Engine of ePI
FHIR (Fast Healthcare Interoperability Resources) provides the technical standard for this transformation using modern web technologies like JSON and RESTful APIs.

<table style="width:100%; border-collapse: collapse; border: 1px solid #d0d0d0; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif; font-size: 14px;">
  <thead>
    <tr style="background-color: #003087; color: #ffffff;">
      <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left; width: 20%;">Concept</th>
      <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left; width: 40%;">Description</th>
      <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left;">ePI Implementation</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 12px; border: 1px solid #d0d0d0;"><strong>Structured Data</strong></td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">Resources organize label content</td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;"><code>Composition</code> structures clinical sections</td>
    </tr>
    <tr>
      <td style="padding: 12px; border: 1px solid #d0d0d0;"><strong>Interoperability</strong></td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">APIs enable real-time sharing</td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">Type 2 details exchanged via FHIR APIs</td>
    </tr>
    <tr>
      <td style="padding: 12px; border: 1px solid #d0d0d0;"><strong>Standardization</strong></td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">Common data model</td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">Base ePI Profile harmonizes structures</td>
    </tr>
    <tr>
      <td style="padding: 12px; border: 1px solid #d0d0d0;"><strong>Flexibility</strong></td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">Adaptable to regional rules</td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">EU/FDA/PMDA specific profiles</td>
    </tr>
  </tbody>
</table>

---

### Global Harmonization
ePI and FHIR promote international alignment by providing a unified technical standard. A single ePI document, built on the Base ePI Profile, can be adapted for multiple jurisdictions, reducing redundancy and ensuring patients receive the most up-to-date information regardless of their location.

**Collaborative Standard**: Efforts like the **HL7 Vulcan Accelerator** are ensuring that global regulators align on these technical standards and improve access to medicinal product information. Discussions are underway to develop a governance model with regulators to maintain the ePI standard collaboratively.