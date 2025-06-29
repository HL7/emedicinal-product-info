This page introduces drug labels, electronic Product Information (ePI), and the Fast Healthcare Interoperability Resources (FHIR) standard, highlighting their role in the ePI FHIR Implementation Guide (IG). It emphasizes how ePI and FHIR enable global standardization and seamless exchange of drug label information across jurisdictions.

## What is a Drug Label?

A drug label is a regulatory document providing critical information about a medicinal product, tailored for healthcare professionals, patients, and product packaging. These documents are not static; they are continuously updated with new or revised information, such as new safety warnings (e.g., black box warnings for adverse effects), updated indications (e.g., expanded use for a new condition), or revised dosing instructions (e.g., adjusted pediatric doses based on clinical trials). For **healthcare professionals**, documents like Health Canada’s Product Monograph or the EMA’s Summary of Product Characteristics (SmPC) offer detailed scientific and regulatory information on properties, indications, dosage, and safety. For **patients**, documents like the EMA’s package leaflet or FDA’s patient package insert provide accessible guidance on usage, side effects, and precautions. For **packaging**, concise labeling includes dosage and storage instructions directly on the product. 

Current challenges include **fragmentation** in formats: the USA uses Structured Product Labeling (SPL), some regions use custom XML or FHIR, and many rely on DOCX or PDF, leading to interoperability issues, inconsistent standards, and difficulties in updating or sharing data globally. ePI addresses these by unifying formats into a standardized, digital framework.

## Why ePI? The Need for Digital Transformation

Electronic Product Information (ePI) transforms drug labels into structured, digital formats using FHIR. Unlike static PDFs, ePI offers:
- **Enhanced Access**: Available via apps, EHRs, ePrescriptions, or product catalogues.
- **Interoperability**: Seamlessly shared across FHIR-compliant systems.
- **Real-Time Updates**: Reflects the latest safety or regulatory changes.
- **Patient Empowerment**: Delivers clear, tailored information to patients.
- **Personalization**: FHIR’s modularity and granularity allow ePI content to be tailored to specific patients or profiles (e.g., highlighting warnings for elderly patients or simplifying instructions for pediatric use).

The shift to ePI addresses challenges like outdated formats, limited searchability, and inconsistent regional standards, aligning with global digital health strategies.

## FHIR: Enabling ePI

FHIR (Fast Healthcare Interoperability Resources) is an HL7 standard for exchanging healthcare data using modern web technologies (e.g., JSON, XML, RESTful APIs). In ePI, FHIR structures drug label information for interoperability and accessibility. The Base ePI Profile provides a universal template, adaptable to regional needs (e.g., EMA, FDA, PMDA, Jordan FDA).

The table below highlights FHIR’s role in ePI:

<table style="border-collapse: collapse; width: 100%; border: 1px solid #ddd; font-family: Arial, Helvetica, sans-serif; font-size: 14px;">
  <thead style="background-color: #f2f2f2;">
    <tr>
      <th style="border: 1px solid #ddd; padding: 8px; text-align: left; font-weight: bold;">Aspect</th>
      <th style="border: 1px solid #ddd; padding: 8px; text-align: left; font-weight: bold;">Description</th>
      <th style="border: 1px solid #ddd; padding: 8px; text-align: left; font-weight: bold;">Example in ePI</th>
    </tr>
  </thead>
  <tbody>
    <tr style="background-color: #ffffff;">
      <td style="border: 1px solid #ddd; padding: 8px;">Structured Data</td>
      <td style="border: 1px solid #ddd; padding: 8px;">FHIR resources organize label content.</td>
      <td style="border: 1px solid #ddd; padding: 8px;"><code>Composition</code> structures SmPC sections in ePI Type 1.</td>
    </tr>
    <tr style="background-color: #f9f9f9;">
      <td style="border: 1px solid #ddd; padding: 8px;">Interoperability</td>
      <td style="border: 1px solid #ddd; padding: 8px;">APIs enable real-time data sharing across systems.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">ePI Type 2 product details exchanged in real-time to EHRs via FHIR APIs.</td>
    </tr>
    <tr style="background-color: #ffffff;">
      <td style="border: 1px solid #ddd; padding: 8px;">Standardization</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Common data model ensures consistency.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Base ePI Profile harmonizes how to structure ePI Type 2 product details.</td>
    </tr>
    <tr style="background-color: #f9f9f9;">
      <td style="border: 1px solid #ddd; padding: 8px;">Flexibility</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Profiles adapt to regional regulations.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">EU-specific profile extends Base ePI Profile.</td>
    </tr>
    <tr style="background-color: #ffffff;">
      <td style="border: 1px solid #ddd; padding: 8px;">FHIR Servers</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Central system to store and retrieve ePI documents via APIs.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">HAPI FHIR server provides out of the box version tracking and advance search of all ePIs in the server.</td>
    </tr>
  </tbody>
</table>

## Global Harmonization Through ePI

ePI and FHIR promote international harmonization by providing a unified technical standard for drug labels, addressing regional technical variations. A single ePI document, built on the Base ePI Profile, can be adapted for multiple jurisdictions, reducing redundancy and costs. For example, an ePI Type 1 can unify technical standards across EMA, PMDA, and FDA whil still respecting local regulatory rules, templates, and regulations. 

Collaborative efforts like the HL7 Vulcan Accelerator and Gravitate-Health project ensure regulators align on standards, enhance access to up-to-date medicinal product information.