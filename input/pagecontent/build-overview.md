### Purpose of This Tab

The "How to Build ePI Type 1 to 4" tab offers detailed guidance, examples, and best practices for creating ePI resources for each type. It covers:

- **FHIR Resource Usage**: How to use FHIR resources like Composition, Medication, and Bundle to structure ePI data.
- **Profiling**: Applying the ePI IG profiles to ensure conformance with regulatory requirements.
- **Examples**: Sample FHIR instances for each ePI type to illustrate implementation.
- **Tooling**: Guidance on using tools like the FHIR IG Publisher to validate and publish ePI resources.
- **Interoperability**: Ensuring ePI data aligns with global standards and regional regulations.

Recommend reading the [use cases](usecases.html) to select the appropriate use case and ePI type to suit your needs.

### Who Should Use This Tab?

This tab is intended for:
- **Developers** building ePI systems or applications.
- **Regulators** defining ePI requirements for medicinal product submissions.
- **Pharmaceutical companies** creating compliant ePI for their products.
- **Healthcare IT professionals** integrating ePI into electronic health record (EHR) systems.

### ePI Resources and Types

FHIR solutions are built from a set of modular components called "Resources". Of the 150+ resources available for use, ePI leverages only 14 of them to support various labeling use cases (See the [Use Cases](usecases.html) tab for details).

The following table lists the in-scope resources and provides a brief description of its role in the ePI context.

<table style="border-collapse: collapse; width: 100%;">
  <thead>
    <tr>
      <th style="border: 1px solid black; padding: 8px; text-align: left; background-color: #f2f2f2;">Resource</th>
      <th style="border: 1px solid black; padding: 8px; text-align: left; background-color: #f2f2f2;">Purpose in ePI Context</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">List</td>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">Provides a structured collection of references to other resources or items relevant to the ePI, enabling organization and navigation of label content or related data for use cases like advanced search or label presentation.</td>
    </tr>
    <tr>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">Bundle</td>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">Acts as a container to group Composition and other resources, enabling the reproduction of the local label template (e.g., EMA’s QRD template) with structured sections, text, bullets, tables, and images. Essential for ePI Type 1.</td>
    </tr>
    <tr>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">Composition</td>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">Serves as the core resource for structuring the ePI label content, including section headings, text, bullets, tables, and images. Contains Binary resources and is critical for ePI Type 1 to recreate HCP labels, PILs, or artwork.</td>
    </tr>
    <tr>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">Binary</td>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">Contained within the Composition resource to store raw data (e.g., images, tables, or text) needed to reproduce the local label template, such as section headings or artwork for the Healthcare Professional (HCP) label or Patient Information Leaflet (PIL).</td>
    </tr>
    <tr>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">Organization</td>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">Describes details about the company associated with the product, including name, identifier, address, and type. Enables use cases like advanced search by company and distribution tracking.</td>
    </tr>
    <tr>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">Regulated Authorization</td>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">Captures authorization details for the medicinal product, such as approval date and license number. Supports use cases like advanced search, drug shortages, and electronic health records.</td>
    </tr>
    <tr>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">Medicinal Product Definition</td>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">Captures regulatory details about the medicinal product, such as name, route of administration, and legal/marketing status. Supports use cases like advanced search, cross-border travel, and electronic health records.</td>
    </tr>
    <tr>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">Manufactured Item Definition</td>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">Describes the physical properties of the medicinal product in its primary package (e.g., strength, ingredients, size, color, shape). Supports use cases like advanced search, drug shortages, and electronic health records.</td>
    </tr>
    <tr>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">Administrable Product Definition</td>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">Describes the physical properties of the medicinal product in its final form ready for administration to the patient (e.g., after reconstitution, including strength and ingredients). Supports use cases like electronic health records and precise dosing.</td>
    </tr>
    <tr>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">Ingredient</td>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">Defines specific ingredients in the medicinal product, used within Manufactured Item Definition and Administrable Product Definition. Supports use cases like allergen identification (e.g., lactose or aspartame) and advanced search by ingredient.</td>
    </tr>
    <tr>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">Substance Definition</td>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">Provides detailed information about substances used in the product, linked to Ingredient resources within Manufactured Item Definition and Administrable Product Definition. Supports allergen checks and advanced search by substance.</td>
    </tr>
    <tr>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">Packaged Product Definition</td>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">Details the primary and secondary layers of the product’s authorized packaging, including identifiers like GTIN or SKUs. Supports use cases like drug shortages, distribution, and advanced search by packaging details.</td>
    </tr>
    <tr>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">Clinical Use Definition</td>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">Captures structured data for indications, contraindications, interactions, undesirable effects, and warnings. In ePI Type 3, supports personalization (e.g., polypharmacy checks). In ePI Type 4, encodes each indication or effect with terminologies like SNOMED or MedDRA.</td>
    </tr>
    <tr>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">Medication Knowledge</td>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">Structures dosing instructions in a machine-readable format (e.g., "take two 20 mg tablets once per day for two weeks"). In ePI Type 3, enables automated notifications via mobile devices or eHealth apps.</td>
    </tr>
  </tbody>
</table>

**Notes**
- Not all resources are required for every ePI use case. They are combined into ePI Types (1, 2, 3, and 4) to address specific needs, as outlined in the [Use Cases](usecases.html) page.
- This overview is intended to guide implementers in understanding the role of each FHIR resource in supporting ePI-related functionality. Refer to the [Artifacts](artifacts.html) page for more detail on profiles, terminology, and sample data.

### Getting Started

To begin, explore the sub-sections linked below for each ePI type. 

- **Type 1: Narrative Only**  
  Reproduces the local health authority's DOCX or PDF-based template. Which includes all human-readable narrative (e.g., paragraphs, tables, bullets, images), section headings, sub-section headings, and document metadata (e.g., Document title, original date of approval, last date of modification, version, language).  
  [Learn how to build ePI Type 1](build-epi1.html)

- **Type 2: Narrative with Structured Product Data**  
  Includes structured data about the product (e.g., medication name, ingredients, dosage forms, market authorization holder). This type supports partial machine processing while prioritizing the narrative.  
  [Learn how to build ePI Type 2](build-epi2.html)

- **Type 3: Narrative with Structured Clinical Data**  
  Includes structured clinical data (e.g., indications, contraindications, warnings, undesireable  effects). This type enables machine-readable clinical information for personalization, advanced search, and analytics.  
  [Learn how to build ePI Type 3](build-epi3.html)

- **Type 4: Fully Structured**  
  Supports full machine processing and prioritizes structure over narrative (e.g., structured dose instructions, structured adverse event tables). Still includes narrative but the narrative is now a child of a structured component. This type is optimized for machine-to-machine exchange and advanced personalization (e.g., autogenerate an ePI for a specific individual or patient profile grouping).  
  [Learn how to build ePI Type 4](build-epi4.html)
