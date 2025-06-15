## Implementing Structured Dose Syntax in ePI

This section provides guidance on implementing structured dose syntax within an ePI system using a custom FHIR R5 profile for the `ClinicalUseDefinition` resource, which incorporates the FHIR R5 `Dosage` structure. The implementation ensures interoperability across healthcare systems, supports both product-based and dose-based prescribing. These instructions are based on the [NHS Dose Syntax Implementation Guide](https://developer.nhs.uk/apis/dose-syntax-implementation/).

### Overview

Structured dose syntax in ePI systems enables precise, machine-readable representation of dosage instructions for medicinal products. This is critical for:
- **Interoperability**: Sharing medication information between primary and secondary care settings (e.g., hospital admissions, discharge summaries).
- **Patient Safety**: Reducing errors in dose conversion between product-based and dose-based instructions.
- **Patient Engagement**: Supporting patient-facing applications with alerts for medication compliance.
- **Automation**: Enabling interactions with health systems (ePrescription, Electronic Healthcare records) or devices (mobile patient medication apps) to use structured data for accurate communications.

The FHIR R5 `Dosage` structure encodes dosage instructions, supporting simple and complex dosing scenarios. To integrate dosage instructions into the ePI, a custom profile for `ClinicalUseDefinition` is defined to include `Dosage` as a standard element, linked to a `MedicinalProductDefinition` for product-centric information.

**note**: Instructions for product manipulation or transformation (e.g., reconstitution) are Out-of-Scope.

### Prerequisites

Before implementing structured dose syntax, ensure familiarity with:
- **FHIR Dosage**: Refer to [Dosage](https://www.hl7.org/fhir/R5/dosage.html) for details on the structure.
- **NHS Dose Syntax Implementation Guide**: Refer to the NHS' guide for more detailed examples ([NHS Dose Syntax](https://developer.nhs.uk/apis/dose-syntax-implementation/)).

### Custom Profile for ClinicalUseDefinition

The `ClinicalUseDefinition` resource captures clinical particulars (e.g., indications, dosage recommendations) for a medicinal product. By default, it does not include a `Dosage` element. To address this, a custom FHIR R5 profile, `EPIDosageClinicalUseDefinition`, is defined to add a `dosage` element of type `Dosage` (0..*). This profile ensures dosage instructions are a first-class component of the ePI, improving clarity and interoperability compared to using extensions.

### Key Components of FHIR R5 Dosage Structure

The FHIR R5 `Dosage` structure includes elements to describe dosage instructions comprehensively. Below are the key components relevant to ePI implementation, with their purpose and usage:

- **sequence**: Indicates the order of doses in a multi-step regimen (e.g., "take 2 tablets for 5 days, then 1 tablet for 5 days").
- **text**: A human-readable summary of the dosage instructions (e.g., "Take 1 tablet daily").
- **additionalInstruction**: Coded or free-text instructions (e.g., "Take with food").
- **patientInstruction**: Patient-friendly instructions (e.g., "Swallow with water").
- **timing**: Specifies when and how often the dose is taken, including frequency, period, and time of day.
- **asNeeded**: Indicates if the medication is taken as needed (boolean).
- **asNeededFor**: Specifies conditions for as-needed use (e.g., "for pain").
- **site**: The anatomical site of administration (e.g., "oral").
- **route**: The route of administration (e.g., "oral", "intravenous").
- **method**: The method of administration (e.g., "swallow", "inject").
- **doseAndRate**: The quantity or range of the dose (e.g., "500 mg") and rate (e.g., "10 ml/hour" for infusions).
- **maxDosePerPeriod**: The maximum dose allowed in a time period (e.g., "4 g per day").
- **maxDosePerAdministration**: The maximum dose per administration (e.g., "1 g per dose").
- **maxDosePerLifetime**: The maximum dose over a patient’s lifetime.

### Implementation Steps

Follow these steps to integrate structured dose syntax into an ePI system using the custom `EPIDosageClinicalUseDefinition` profile:

1. **Create the Resources**
   - Use `MedicinalProductDefinition` to define the medicinal product (e.g., "Paracetamol 500mg tablets").
   - Use the profiled `ClinicalUseDefinition` to specify clinical particulars, including dosage instructions.
   - Ensure resources reference coded identifiers for the medicinal product (e.g., using SNOMED-CT or other standard terminologies).

2. **Map Dosage Instructions**
   - **Simple Dosing**: For common instructions (e.g., "Take 1 tablet daily"):
     - Set `ClinicalUseDefinition.dosage.text` to "Take 1 tablet daily".
     - Use `dosage.timing` to specify `frequency: 1`, `period: 1`, `periodUnit: day`.
     - Set `dosage.doseAndRate.doseQuantity` to `value: 1`, `unit: tablet`.
     - Set `dosage.route` to a coded value for "oral" (e.g., SNOMED-CT).
   - **Complex Dosing**: For multi-step or conditional regimens (e.g., "Take 2 tablets every 6 hours for 3 days, then 1 tablet daily"):
     - Use multiple `dosage` entries with `sequence` to indicate order.
     - Specify `timing` for each step (e.g., `frequency: 4`, `period: 1`, `periodUnit: day` for every 6 hours).
     - Include `additionalInstruction` for conditions like "Take with food" (use coded values where possible).

3. **Support Product-Based and Dose-Based Instructions**
   - **Product-Based**: Reference a specific medicinal product formulation in `MedicinalProductDefinition`. Include `dosage.doseAndRate.doseQuantity` with the product unit (e.g., "2 tablets").
   - **Dose-Based**: Reference a generic medicinal product and specify `dosage.doseAndRate.doseQuantity` with the active ingredient dose (e.g., "1000 mg").
   - Provide logic to map between product-based and dose-based instructions using standard terminologies.

4. **Enhance Patient-Facing Features**
   - Populate `dosage.patientInstruction` with clear, non-technical language (e.g., "Take one tablet every morning with breakfast").
   - Use `dosage.timing` to generate reminders in patient apps (e.g., schedule notifications for "08:00 AM daily").
   - Validate `dosage.maxDosePerPeriod` and `dosage.maxDosePerAdministration` to alert patients or clinicians about potential overdosing.

5. **Ensure Interoperability**
   - Validate the profiled `ClinicalUseDefinition` and `Dosage` structures against FHIR R5 using validation tools.
   - Use standard terminologies (e.g., SNOMED-CT) for `dosage.route`, `dosage.site`, `dosage.method`, and `dosage.additionalInstruction`.
   - Test data sharing between systems (e.g., manufacturer to healthcare provider) to confirm accurate interpretation of dosage instructions.

6. **Handle Special Cases**
   - **As-Needed Medications**: Set `dosage.asNeeded` to `true` and use `dosage.asNeededFor` for conditions (e.g., "pain").
   - **Infusions**: Use `dosage.doseAndRate.rateQuantity` for continuous administration (e.g., "10 ml/hour").
   - **Variable Dosing**: Use `doseRange` instead of `doseQuantity` for flexible doses (e.g., "1-2 tablets").

### Examples

Below are examples of a `MedicinalProductDefinition` and a profiled `ClinicalUseDefinition` with an extension (as an interim approach) for "Paracetamol 500mg, take 2 tablets every 6 hours for 3 days, maximum 8 tablets per day". Note that in the custom profile, the `dosage` element would replace the extension, but the extension is included here as an interim example.

#### MedicinalProductDefinition
```json
{
  "resourceType": "MedicinalProductDefinition",
  "id": "paracetamol-500mg",
  "name": [
    {
      "productName": "Paracetamol 500mg Tablets"
    }
  ],
  "clinicalUseIssue": [
    {
      "reference": "ClinicalUseDefinition/paracetamol-dosage"
    }
  ]
}
```

#### ClinicalUseDefinition (with Extension)

```json
{
  "resourceType": "ClinicalUseDefinition",
  "id": "paracetamol-dosage",
  "meta": {
    "profile": [
      "http://example.org/fhir/StructureDefinition/EPIDosageClinicalUseDefinition"
    ]
  },
  "type": "indication",
  "subject": [
    {
      "reference": "MedicinalProductDefinition/paracetamol-500mg"
    }
  ],
  "indication": {
    "diseaseSymptomProcedure": {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "387517004",
          "display": "Pain"
        }
      ]
    }
  },
  "extension": [
    {
      "url": "http://hl7.org/fhir/StructureDefinition/recommendedDosage",
      "valueDosage": {
        "sequence": 1,
        "text": "Take 2 tablets every 6 hours for 3 days",
        "patientInstruction": "Take 2 tablets every 6 hours with water, do not exceed 8 tablets in 24 hours",
        "timing": {
          "repeat": {
            "frequency": 4,
            "period": 1,
            "periodUnit": "d",
            "duration": 3,
            "durationUnit": "d"
          }
        },
        "route": {
          "coding": [
            {
              "system": "http://snomed.info/sct",
              "code": "26643006",
              "display": "Oral"
            }
          ]
        },
        "doseAndRate": [
          {
            "doseQuantity": {
              "value": 2,
              "unit": "tablet",
              "system": "http://snomed.info/sct",
              "code": "428673006"
            }
          }
        ],
        "maxDosePerPeriod": {
          "numerator": {
            "value": 8,
            "unit": "tablet",
            "system": "http://snomed.info/sct",
            "code": "428673006"
          },
          "denominator": {
            "value": 1,
            "unit": "day",
            "system": "http://unitsofmeasure.org",
            "code": "d"
          }
        }
      }
    }
  ]
}
```