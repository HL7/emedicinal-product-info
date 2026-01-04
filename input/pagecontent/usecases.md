Electronic Product Information (ePI) is designed to support a wide range of regulatory and clinical scenarios. To assist implementers, ePI is arranged into four "Types" based on technical maturity and data depth.

### ePI Maturity Matrix

<table style="width:100%; border-collapse: collapse; border: 1px solid #d0d0d0; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif; font-size: 14px;">
  <thead>
    <tr style="background-color: #003087; color: #ffffff;">
      <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left; width: 15%;">Type</th>
      <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left; width: 35%;">Core FHIR Resources</th>
      <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left;">Primary Value & Use Cases</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 12px; border: 1px solid #d0d0d0; border-left: 6px solid #0071e3;"><strong>Type 1</strong></td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">Bundle, Composition, Binary</td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;"><strong>Digital Reproduction</strong>: Faithful digital version of approved labeling (SmPC, PIL, carton). Acceptable as a legal document of record.</td>
    </tr>
    <tr style="background-color: #f0f7ff; border: 2px solid #003087;">
      <td style="padding: 12px; border: 1px solid #d0d0d0; border-left: 6px solid #34c759;">
        <strong>Type 2</strong><br>
        <span style="display: inline-block; background-color: #003087; color: #ffffff; font-size: 10px; padding: 2px 6px; border-radius: 4px; margin-top: 4px; font-weight: bold;">RECOMMENDED</span>
      </td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">MedicinalProductDefinition, RegulatedAuthorization, Organization, PackagedProductDefinition, ManufacturedItemDefinition, AdministrableProductDefinition, Ingredient, Substance</td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;"><strong>Product Identification</strong>: Enables fast lookup in national catalogues and hospital formularies. Supports <strong>Drug Shortage</strong> management and <strong>Allergen</strong> tracking.</td>
    </tr>
    <tr>
      <td style="padding: 12px; border: 1px solid #d0d0d0; border-left: 6px solid #5856d6;"><strong>Type 3</strong></td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">ClinicalUseDefinition, MedicationKnowledge</td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;"><strong>Clinical Guidance</strong>: Structured indications and contraindications. Enables <strong>Interaction Alerts</strong> (Drug-Drug, Drug-Food) in EMRs/Apps.</td>
    </tr>
    <tr>
      <td style="padding: 12px; border: 1px solid #d0d0d0; border-left: 6px solid #af52de;"><strong>Type 4</strong></td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">All resources <em>except</em> Composition</td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;"><strong>Digital-First Components</strong>: Fully granular, computable components. Enables batch-specific label variations and <strong>Personalized</strong> patient counseling material.</td>
    </tr>
  </tbody>
</table>

---

### Use Case Scenario Examples

**Product Identification (Type 2a)**:
Enables accurate lookup in hospital systems and national medicine databases.

**Managing Drug Shortages (Type 2b)**:
Rapid identification of therapeutic equivalents during supply disruptions. Find alternative products by active substance, strength, and form.

**Digital Health Interoperability (Type 2f)**:
Persistent product linking across clinical and regulatory systems to support seamless ePrescribing and patient medication lists.

**Allergen & Excipient Safety (Type 2e)**:
Instantly identify and flag excipients of interest (e.g., lactose, gluten, aspartame) to prevent adverse reactions.
