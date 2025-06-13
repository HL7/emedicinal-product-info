# FHIR ePI Implementation Guide

## Overview

This guide provides a step-by-step approach for implementing electronic Product Information (ePI) using HL7 FHIR standards. It is designed to support regulators, industry stakeholders, healthcare professionals (HCPs), and patients in transitioning from traditional formats (e.g., PDFs) to structured, interoperable digital formats.

---

## Step 1: Stakeholder Alignment

Establish alignment among key stakeholders:

- **Regulators**: Define policy and compliance requirements.
- **Industry**: Pharmaceutical companies and distributors.
- **Healthcare Professionals (HCPs)**: Start with pharmacists and expand to other HCPs.
- **Patients**: Engage patient advocacy groups for feedback and usability testing.

---

## Step 2: Select Use Case(s)

Choose one or more use cases to guide your implementation strategy:

### 1. Central ePI Website
- Decide on the host: regulator, company, or third-party.
- Plan the transition from PDF to FHIR-based ePI.
- Implement advanced search capabilities.

### 2. eHealth Interoperability
- Enable personalization via EHRs and health apps (e.g., drug interactions, contraindications).
- Support cross-border access to ePI.

### 3. Drug Shortage Management
- Use ePI to communicate availability and alternatives.

### 4. Distribution and Stock Management
- Integrate with GTIN and supply chain systems.

---

## Step 3: Determine ePI Type

Select the appropriate ePI Type:

- **Type 1**: Basic structured content.
- **Type 2**: Structured content with controlled vocabularies (recommended starting point).
- **Type 3**: Fully interoperable with EHRs and apps.
- **Type 4**: Advanced features like real-time updates and AI integration.

---

## Step 4: Define Controlled Vocabularies and Identifiers

Identify and standardize:

- Terminologies (e.g., SNOMED CT, RxNorm, ATC).
- Identifiers (e.g., GTIN, national drug codes).
- Metadata (e.g., versioning, language, jurisdiction).

---

## Step 5: Design and Validate ePI Sample

- Create an ePI sample using a local or national template.
- Incorporate selected controlled vocabularies.
- Update the local/regional Implementation Guide (IG).
- Gather feedback from stakeholders.
- Revise the sample, vocabularies, and IG accordingly.
- Define a local stylesheet for rendering ePI content.
  - Collect feedback from HCPs and patients on preferred styles.

---

## Step 6: Procure and Prepare Systems

Align with the Vulcan business case and acquire necessary tools:

- **Structured Authoring Tool**: Supports stylesheet integration.
- **Database**: Stores structured ePI data.
- **Website**: Public access to ePI with search and display features.
- **APIs**: Enable interoperability with external systems.
- **Health Apps**: National or international apps for patient access.

---

## Step 7: Implementation Phases

Roll out the implementation in stages:

1. **Technical Pilot** (Voluntary, small scale)
2. **Production Pilot** (Voluntary, small scale)
3. **Full Production** (Voluntary)
4. **Full Production** (Mandatory)

At each stage:

- Collect and incorporate stakeholder feedback.
- Simplify processes where possible.
- Communicate progress and publish results.

---

## Conclusion

This guide provides a foundational roadmap for implementing FHIR-based ePI. By following these steps, stakeholders can ensure a smooth transition to digital, interoperable product information that benefits regulators, healthcare providers, and patients alike.
