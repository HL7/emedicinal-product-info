This page outlines the controlled terminology used in the Electronic Medicinal Product Information (ePI) FHIR Implementation Guide (IG) for ePI Types 1, 2, 3, and 4. Controlled terminology ensures consistency, interoperability, and regulatory compliance across digital drug labels, supporting global harmonization of medicinal product information.

## Introduction to Controlled Terminology

Controlled terminology refers to standardized code systems and vocabularies used to represent data consistently in healthcare systems. In the ePI IG, these terminologies enable precise, machine-readable structuring of drug label information, facilitating interoperability across jurisdictions (e.g., EMA, FDA, PMDA) and integration with systems like electronic health records (EHRs). By using established standards, ePI ensures that content like indications, dosages, and warnings is universally understood and compliant with regulatory requirements.

## Terminology for ePI Types

The ePI IG uses standardized terminologies to support the structuring of ePI Type 1 (Summary of Product Characteristics, SmPC, Patient Information Leaflet, PIL, and packaging), Type 2 (PIL), Type 3 (Clinical Use), and Type 4 (PIL in a specified language). The use of controlled terminologies increases from ePI Type 1, which broadly covers SmPC, PIL, and packaging, to Type 4, which requires additional language and jurisdictional specificity. Key terminologies include:
- **SNOMED CT**: Codes clinical concepts (e.g., indications, contraindications) for precise medical terminology.
- **LOINC**: Defines document and section codes for structuring ePI content, aligned with regional regulator guidance for section headings (e.g., EMA’s SmPC template, FDA’s labeling guidance).
- **UCUM**: Standardizes units of measure for dosages and quantities.
- **ISO Language Codes**: Specifies two-letter language codes (per ISO 639-1, e.g., "en" for English, "fr" for French) for a single language per ePI document.
- **ISO Country Codes**: Uses two-letter codes (per ISO 3166-1 alpha-2, e.g., "US", "JP") for jurisdictional references.
- **EDQM Standard Terms**: Recommended default for pharmaceutical dose forms, routes/methods of administration, units of presentation, and containers, closures, and delivery devices.
- **MedDRA**: Codes adverse events and medical terms for regulatory reporting.
- **NCI Thesaurus**: Codes clinical and pharmacological terms for detailed descriptions.
- **ICD**: Codes diseases and health conditions for indications and contraindications.

For detailed terminology resources, see the [Terminology Value Sets](https://build.fhir.org/ig/HL7/emedicinal-product-info/artifacts.html#3).

## International Harmonization

Controlled terminologies ensure ePI documents are consistent and interoperable across jurisdictions. For example, EDQM codes for dose form and packaging allow an ePI Type 2 document to describe a product consistently in the EU, USA, and Japan, while SNOMED CT, NCI Thesaurus, and ICD codes for indications enable ePI Type 3 to be understood globally.

The Base ePI Profile leverages these standards to create a unified framework, enabling an ePI document to meet diverse regulatory needs with minimal adaptation.