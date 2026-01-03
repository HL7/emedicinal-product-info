Electronic Product Information (ePI) is designed to support a wide range of regulatory and clinical scenarios. To assist implementers, ePI is arranged into four "Types" based on technical maturity and data depth.

> [!TIP]
> **Recommended Starting Point**: **ePI Type 2** is recommended for most implementers as it enables the most common digital health and regulatory use cases immediately.

### ePI Maturity Matrix

| Type       | Core FHIR Resources                                                                                                                                                            | Primary Value & Use Cases                                                                                                                                         |
| :--------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | :---------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Type 1** | Bundle, Composition, Binary                                                                                                                                                    | **Digital Reproduction**: Faithful digital version of approved labeling (SmPC, PIL, carton). Acceptable as a legal document of record.                            |
| **Type 2** | MedicinalProductDefinition, RegulatedAuthorization, Organization, PackagedProductDefinition, ManufacturedItemDefinition, AdministrableProductDefinition, Ingredient, Substance | **Product Identification**: Enables fast lookup in national catalogues and hospital formularies. Supports **Drug Shortage** management and **Allergen** tracking. |
| **Type 3** | ClinicalUseDefinition, MedicationKnowledge                                                                                                                                     | **Clinical Guidance**: Structured indications and contraindications. Enables **Interaction Alerts** (Drug-Drug, Drug-Food) in EMRs/Apps.                          |
| **Type 4** | All resources *except* Composition                                                                                                                                             | **Digital-First Components**: Fully granular, computable components. Enables batch-specific label variations and **Personalized** patient counseling material.    |

---

### Detailed Use Case Scenarios

> [!NOTE]
> **Product Identification (Type 2a)**
> Enables accurate lookup in hospital systems and national medicine databases.

> [!IMPORTANT]
> **Managing Drug Shortages (Type 2b)**
> Rapid identification of therapeutic equivalents during supply disruptions. Find alternative products by active substance, strength, and form.

> [!TIP]
> **Digital Health Interoperability (Type 2f)**
> Persistent product linking across clinical and regulatory systems to support seamless ePrescribing and patient medication lists.

> [!CAUTION]
> **Allergen & Excipient Safety (Type 2e)**
> Instantly identify and flag excipients of interest (e.g., lactose, gluten, aspartame) to prevent adverse reactions.
