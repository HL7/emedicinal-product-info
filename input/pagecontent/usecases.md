# FHIR Resources for ePI

FHIR solutions are built from a set of modular components called "Resources". Of the 150+ resources available for use, the following 14 are in-scope for ePI:

- List
- Manufactured Item Definition
- Bundle
- Administrable Product Definition
- Composition
- Ingredient
- Binary
- Substance Definition
- Organization
- Packaged Product Definition
- Regulated Authorization
- Clinical Use Definition
- Medicinal Product Definition
- Medication Statement

Not all 14 resources are required to support all ePI-related use cases. Different resources can be combined to support different use cases. To help implementors decide what resources are needed when, ePI resources are combined into the following four types and sub-types:

| ePI Type | In-Scope Resources | Description |
|----------|--------------------|-------------|
| ePI Type 1 | Bundle<br>Composition (contained Binary) | Reproduces the local label template; i.e., section headings, text, bullets, tables, images |
| ePI Type 2 | Includes Type 1 plus the following: | |
| | a. Organization | Describes company name, identifier, address, and type |
| | b. Medicinal Product Definition | Describes regulatory details about the product (e.g., name, route of administration, legal/marketing status) |
| | c. Regulated Authorization | Describes authorization details (e.g., approval date, license number) |
| | d. Manufactured Item Definition<br>- Ingredient<br>- Substance Definition | Describes the physical properties of the product in its primary package (strength, ingredients, size, colour, shape) |
| | e. Administrable Product Definition<br>- Ingredient<br>- Substance Definition | Describes the physical properties of the product in its final form ready for administration to the patient (e.g., after reconstitution) |
| | f. Packaged Product Definition | Describes the primary and second layers of the product’s authorized packaging |
| ePI Type 3 | Includes Type 1 and 2 plus the following: | |
| | a. Clinical Use Definition<br>b. Medication Statement | Describes Indication, contraindication, interactions, undesirable effects, and warnings<br>Describes how to structure dose instructions |
| ePI Type 4 | Includes Type 1, 2, and 3 plus the narrative label content is now populated by discrete structured elements/components | Describes how to structure narrative content to a degree that the entire label is structured |

Refer to Appendix XX for the recommended list of elements, attributes, and terminologies needed for each resource to support ePI.

## ePI Type 1

ePI Type 1 represents the minimum requirement to be considered an ePI since it allows for the recreation of the existing label template. It can be used to create the Healthcare professional (HCP) label, Patient Information Leaflet (PIL), or label text for artwork. For example, it can be used to recreate EMA’s QRD template.

## ePI Type 2 (a to f)

ePI Type 2a to f can be used to support numerous use cases dependent on the product's physical attributes or the companies associated with the product. There is no requirement to use A to F together. For example, these combinations are needed to support the following use cases:

| Use Case | Description | ePI Sub-type Combinations |
|----------|-------------|---------------------------|
| 1 | Advanced search | Just A - only need to search by company and not by product details.<br>A and B – Search by company, product name/status.<br>A, B, C, and D – search by company, product name, license, and manufactured form (including ingredients, strength).<br>A, B, C, D, and F - search by company, product name, license, manufactured form, and packaging details.<br>A, B, C, D, E, and F - search by company, product name, license, manufactured dose form, administrable dose form, and packaging details. |
| 2 | Drug shortages | A, B, C, D, and F are needed to search by company, product name, license status, manufactured form, and pack details across drug classes and categories to find a suitable match to resolve the shortage. |
| 3 | Cross-border travel | A, B, and D are needed to search by company and product details across international borders to find a suitable match to a patient’s prescription in another country. |
| 4 | Distribution | A, B, C, and F are needed to facilitate ordering and distribution of packaged products. The Packaged Product Definition (F) carries product and pack identifiers like GTIN, Stock Keeping Unit (SKUs), or other local pack identifiers. |
| 5 | Allergens | D is needed to identify ingredients that are known or possible allergens (e.g., lactose or aspartame). |
| 6 | Electronic Health | A, B, C, and D are needed to support Electronic Medical Records and ePrescription since these resources help to uniquely identify and differentiate between medicinal products and their manufacturers.<br>E can be added if there is a need to differentiate between the manufactured dose form and the administrable dose form of the product; or a need to determine how much of the reconstituted solution for infusion was administered to the patient. |

## ePI Type 3 (a and b)

ePI Type 3a can be used to support personalization use cases, particularly ones related to polypharmacy. For example:

- Use the structured interaction data to confirm if a patient is likely to encounter drug:drug, drug:food, drug:lab, or drug:other interactions.
- Use the structured ingredient data to determine whether this medication contains anything the patient is allergic to.

ePI Type 3b can be used to support the creation of machine-readable dosing instructions. For example, an encoded way of saying "take two 20 mg tablets once per day for two weeks." This structured dosing data can be sent to a mobile device or eHealth app to provide a patient with automated notifications.

## ePI Type 4

ePI Type 1 to 3 involves associating structured data with semi-structured narrative text. ePI Type 4 is different since all data is presented as discrete, structured data components. Narrative text is still present but only where needed and is always incorporated into the relevant discrete structured data component. For example:

- Each individual indication has a corresponding ClinicalUseDefinition resource with SNOMED, ICD, MED-RT, or MedDRA encoding about the indication; the disease, symptom, or procedure; and comorbidity. The ClinicalUseDefinition resource also includes space for narrative text.
- Each undesirable effect has a corresponding ClinicalUseDefinition resource with the symptom, condition, effect, classification, and frequency of occurrence. As a result, there is no table of adverse event frequencies. Instead, there is now a series of data objects that contain the same information. Those data objects can be transformed and presented as a traditional table using a style sheet; or they can be presented in different formats if needed.

## Recommendation

As a first step, ePI Type 2 is the recommended starting point for most implementers. 

It will help to enable advanced search functions for key information such as company, product name, license, ingredients, and strength. Also, the cross-border use case can be made possible, which provides patients the ability to get access to medicines they need while traveling. The use case for Electronic Health to better support Electronic Medical Records, ePrescription, and Allergies can also be started with the availability of these resources, even though it could be further enhanced when the Administrable Product Definition Resource is available.