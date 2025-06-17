Not all 14 resources are required to support all ePI-related use cases. Different resources can be combined to support different use cases. To help implementors decide what resources are needed when, ePI resources are combined into the following four types and sub-types:

<table style="border-collapse: collapse; width: 100%;">
  <thead>
    <tr>
      <th style="border: 1px solid black; padding: 8px; text-align: left; background-color: #f2f2f2;">ePI Type</th>
      <th style="border: 1px solid black; padding: 8px; text-align: left; background-color: #f2f2f2;">In-Scope Resources</th>
      <th style="border: 1px solid black; padding: 8px; text-align: left; background-color: #f2f2f2;">Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">ePI Type 1</td>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">Bundle<br>Composition (contained Binary)</td>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">Reproduces the local label template; i.e., section headings, text, bullets, tables, images</td>
    </tr>
    <tr>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">ePI Type 2</td>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">Includes Type 1 plus the following:<br><br>a. Organization<br>b. Medicinal Product Definition<br>c. Regulated Authorization<br>d. Manufactured Item Definition<br>&nbsp;&nbsp;- Ingredient<br>&nbsp;&nbsp;- Substance Definition<br>e. Administrable Product Definition<br>&nbsp;&nbsp;- Ingredient<br>&nbsp;&nbsp;- Substance Definition<br>f. Packaged Product Definition</td>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">a. Describes company name, identifier, address, and type<br>b. Describes regulatory details about the product (e.g., name, route of administration, legal/marketing status)<br>c. Describes authorization details (e.g., approval date, license number)<br>d. Describes the physical properties of the product in its primary package (strength, ingredients, size, colour, shape)<br>e. Describes the physical properties of the product in its final form ready for administration to the patient (e.g., after reconstitution)<br>f. Describes the primary and second layers of the product’s authorized packaging</td>
    </tr>
    <tr>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">ePI Type 3</td>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">Includes Type 1 and 2 plus the following:<br><br>a. Clinical Use Definition<br>b. Dose structure</td>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">a. Describes Indication, contraindication, interactions, undesirable effects, and warnings<br>b. Describes how to structure dose instructions</td>
    </tr>
    <tr>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">ePI Type 4</td>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">Includes Type 1, 2, and 3 plus the narrative label content is now populated by discrete structured elements/components</td>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">Describes how to structure narrative content to a degree that the entire label is structured</td>
    </tr>
  </tbody>
</table>

Refer to [ePI Components](https://build.fhir.org/ig/HL7/emedicinal-product-info/epi-components.html) for an overview of the Resources in-scope for use with ePI or the [Artifacts](https://build.fhir.org/ig/HL7/emedicinal-product-info/artifacts.html) page for details about profiles, terminologies, and examples.

### ePI Type 1

ePI Type 1 represents the minimum requirement to be considered an ePI since it allows for the recreation of the existing label template. It can be used to create the Healthcare professional (HCP) label, Patient Information Leaflet (PIL), or label text for artwork. For example, it can be used to recreate EMA’s QRD template.

### ePI Type 2 (a to f)

<table style="border-collapse: collapse; width: 100%;">
  <thead>
    <tr>
      <th style="border: 1px solid black; padding: 8px; text-align: left; background-color: #f2f2f2;">Use Case</th>
      <th style="border: 1px solid black; padding: 8px; text-align: left; background-color: #f2f2f2;">Description</th>
      <th style="border: 1px solid black; padding: 8px; text-align: left; background-color: #f2f2f2;">ePI Sub-type Combinations</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">1</td>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">Advanced search</td>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">Just A - only need to search by company and not by product details.<br>A and B – Search by company, product name/status.<br>A, B, C, and D – search by company, product name, license, and manufactured form (including ingredients, strength).<br>A, B, C, D, and F - search by company, product name, license, manufactured form, and packaging details.<br>A, B, C, D, E, and F - search by company, product name, license, manufactured dose form, administrable dose form, and packaging details.</td>
    </tr>
    <tr>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">2</td>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">Drug shortages</td>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">A, B, C, D, and F are needed to search by company, product name, license status, manufactured form, and pack details across drug classes and categories to find a suitable match to resolve the shortage.</td>
    </tr>
    <tr>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">3</td>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">Cross-border travel</td>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">A, B, and D are needed to search by company and product details across international borders to find a suitable match to a patient’s prescription in another country.</td>
    </tr>
    <tr>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">4</td>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">Distribution</td>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">A, B, C, and F are needed to facilitate ordering and distribution of packaged products. The Packaged Product Definition (F) carries product and pack identifiers like GTIN, Stock Keeping Unit (SKUs), or other local pack identifiers.</td>
    </tr>
    <tr>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">5</td>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">Allergens</td>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">D is needed to identify ingredients that are known or possible allergens (e.g., lactose or aspartame).</td>
    </tr>
    <tr>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">6</td>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">Electronic Health</td>
      <td style="border: 1px solid black; padding: 8px; text-align: left;">A, B, C, and D are needed to support Electronic Medical Records and ePrescription since these resources help to uniquely identify and differentiate between medicinal products and their manufacturers.<br>E can be added if there is a need to differentiate between the manufactured dose form and the administrable dose form of the product; or a need to determine how much of the reconstituted solution for infusion was administered to the patient.</td>
    </tr>
  </tbody>
</table>

### ePI Type 3 (a and b)

ePI Type 3a can be used to support personalization use cases, particularly ones related to polypharmacy. For example:

- Use the structured interaction data to confirm if a patient is likely to encounter drug:drug, drug:food, drug:lab, or drug:other interactions.
- Use the structured ingredient data to determine whether this medication contains anything the patient is allergic to.

ePI Type 3b can be used to support the creation of machine-readable dosing instructions. For example, an encoded way of saying "take two 20 mg tablets once per day for two weeks." This structured dosing data can be sent to a mobile device or eHealth app to provide a patient with automated notifications.

### ePI Type 4

ePI Type 1 to 3 involves associating structured data with semi-structured narrative text. ePI Type 4 is different since all data is presented as discrete, structured data components. Narrative text is still present but only where needed and is always incorporated into the relevant discrete structured data component. For example:

- Each individual indication has a corresponding ClinicalUseDefinition resource with SNOMED, ICD, MED-RT, or MedDRA encoding about the indication; the disease, symptom, or procedure; and comorbidity. The ClinicalUseDefinition resource also includes space for narrative text.
- Each undesirable effect has a corresponding ClinicalUseDefinition resource with the symptom, condition, effect, classification, and frequency of occurrence. As a result, there is no table of adverse event frequencies. Instead, there is now a series of data objects that contain the same information. Those data objects can be transformed and presented as a traditional table using a style sheet; or they can be presented in different formats if needed.

### Recommendation

As a first step, ePI Type 2 is the recommended starting point for most implementers. 

It will help to enable advanced search functions for key information such as company, product name, license, ingredients, and strength. Also, the cross-border use case can be made possible, which provides patients the ability to get access to medicines they need while traveling. The use case for Electronic Health to better support Electronic Medical Records, ePrescription, and Allergies can also be started with the availability of these resources, even though it could be further enhanced when the Administrable Product Definition Resource is available.