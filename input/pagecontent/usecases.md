<html xmlns="http://www.w3.org/1999/xhtml">
     <h3>FHIR Resources for ePI</h3>
    <p>FHIR solutions are built from a set of modular components called "Resources". Of the 150+ resources available for use, the following 14 are in-scope for ePI:</p>
<head>
    <title>Two-Column Bulleted List</title>
    <style>
        .two-column-list {
            display: grid;
            grid-template-columns: 2fr 3fr;
            list-style-type: circle;
            padding: 2;
        }
        .two-column-list li {
            margin-bottom: 0.5em;
        }
    </style>
</head>
<body>
    <ul class="two-column-list">
        <li>List</li>
        <li>Manufactured Item Definition</li>
        <li>Bundle</li>
        <li>Administrable Product Definition</li>
        <li>Composition </li>
        <li>Ingredient</li>
        <li>Binary</li>
        <li>Substance Definition</li>
        <li>Organization</li>
        <li>Packaged Product Definition</li>
        <li>Regulated Authorization</li>
        <li>Clinical Use Definition</li>
        <li>Medicinal Product Definition</li>
        <li>Medication Statement</li>
    </ul>
</body>
    <p>Not all 14 resources are required to support all ePI related use cases. Different resources can be combined to support different use cases. To help implementors decide what resources are needed when, ePI resources are combined into the following four types and sub-types:</p>
<table style="border: 1px solid grey; border-collapse: collapse; vertical-align: middle;">
    <style>
        table, th, td {
            border: 1px solid grey;
            border-collapse: collapse;
        }
    </style>
    <thead style="border: 1px solid grey; background-color: #f0f0f0;">
        <tr>
            <th>ePI Type</th>
            <th>In-Scope Resources</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td style="width: 90px; vertical-align: middle;">ePI Type 1</td>
            <td>
              <p>Bundle</p>
              <p>Composition (contained Binary)</p>
            </td>
            <td>Reproduces the local label template; i.e., section headings, text, bullets, tables, images</td>
        </tr>
        <tr>
          <td rowspan="7">ePI Type 2</td>
          <td>Includes Type 1 plus the following:</td>
          <td></td>
        </tr>
        <tr>
          <td>a. Organization</td>
          <td>Describes company name, identifier, address, and type</td>
        </tr>
        <tr>
          <td>b. Medicinal Product Definition</td>
          <td>Describes regulatory details about the product (e.g., name, route of administration, legal/marketing status)</td>
        </tr>
        <tr>
          <td>c. Regulated Authorization</td>
          <td>Describes authorization details (e.g., approval date, license number)</td>
        </tr>
                <tr>
          <td>
            <p>d. Manufactured Item Definition</p>
                                  <ul>
                        <li>Ingredient</li>
                        <li>Substance Definition</li>
                      </ul>
          </td>
          <td>Describes the physical properties of the product in its primary package (strength, ingredients, size, colour, shape)</td>
        </tr>
                <tr>
          <td>
                                  <p>e. Administrable Product Definition</p>
                      <ul>
                        <li>Ingredient</li>
                        <li>Substance Definition</li>
                      </ul>
          </td>
          <td>Describes the physical properties of the product in its final form ready for administration to the patient (e.g., after reconstitution)</td>
        </tr>
                <tr>
          <td>f. Packaged Product Definition</td>
          <td>Describes the primary and second layers of the product’s authorized packaging</td>
        </tr>        
        <tr>
          <td rowspan="2">ePI Type 3</td>
          <td>Includes Type 1 and 2 plus the following:</td>
          <td></td>
        </tr>
        <tr>
            <td>
                    <p>a. Clinical Use Definition</p>
                    <p>b. Medication Statement</p>
            </td>
            <td>
              <p>Describes Indication, contraindication, interactions, undesirable effects, and warnings</p>
              <p>Describes how to structure dose instructions</p>
            </td>
        </tr>
        <tr>
            <td>ePI Type 4</td>
            <td>Includes Type 1, 2, and 3 plus the narrative label content is now populated by discrete structured elements/components</td>
            <td>Describes how to structure narrative content to a degree that the entire label is structured</td>
        </tr>
    </tbody>
</table>
    <p>Refer to Appendix XX for the recommended list of elements, attributes, and terminologies needed for each resource to support ePI.</p>
    <h3>ePI Type 1</h3>
    <p>ePI Type 1 represents the minimum requirement to be considered an ePI since it allows for the recreation of the existing label template. It can be used to create the Healthcare professional (HCP) label, Patient Information Leaflet (PIL), or label text for artwork. For example, it can be used to recreate EMA’s QRD template.</p>
    <h3>ePI Type 2 (a to f)</h3>
    <p>ePI Type 2a to f can be used to support numerous use cases dependent on the products physical attributes or the companies associated with the product. There is no requirement to use A to F together. For example, these combinations are needed to support the following use cases:</p>
    <table>
<thead style="border: 1px solid grey; background-color: #f0f0f0;">
<tr>
<th style="text-align: left;" colspan="2">Use Case</th>
<th>ePI Sub-type Combinations</th>
</tr>
</thead>
<tbody style="vertical-align: middle;">
<tr>
<td style="text-align: center;">1</td>
<td>Advanced search</td>
<td>
<p>Just A - only need to search by company and not by product details.</p>
<p>A and B &ndash; Search by company, product name/status.</p>
<p>A, B, C, and D &ndash; search by company, product name, license, and manufactured form (including ingredients, strength).</p>
<p>A, B, C, D, and F - search by company, product name, license, manufactured form, and packaging details.</p>
<p>A, B, C, D, E, and F - search by company, product name, license, manufactured dose form, administrable dose form, and packaging details.</p>
</td>
</tr>
<tr>
<td style="width: 54px; text-align: center;">2</td>
<td style="width: 168.729px;">Drug shortages</td>
<td>A, B, C, D, and F are needed to search by company, product name, license status, manufactured form, and pack details across drug classes and categories to find a suitable match to resolve the shortage.</td>
</tr>
<tr>
<td style="width: 54px; text-align: center;">3</td>
<td style="width: 168.729px;">Cross-border travel</td>
<td>A, B, and D are needed to search by company and product details across international borders to find a suitable match to a patient&rsquo;s prescription in another country.</td>
</tr>
<tr>
<td style="width: 54px; text-align: center;">4</td>
<td style="width: 168.729px;">Distribution</td>
<td>A, B, C and F are needed to facilitate ordering and distribution of packaged products. The Packaged Product Definition (F) carries product and pack identifiers like GTIN, Stock Keeping Unit (SKUs), or other local pack identifiers.</td>
</tr>
<tr>
<td style="width: 54px; text-align: center;">5</td>
<td style="width: 168.729px;">Allergens</td>
<td>D is needed to identify ingredients that are known or possible allergens (e.g., lactose or aspartame).</td>
</tr>
<tr>
<td style="width: 54px; text-align: center;">6</td>
<td style="width: 168.729px;">Electronic Health</td>
<td>
<p>A, B, C, and D are needed to support Electronic Medical Records and ePrescription since these resources help to uniquely identify and differentiate between medicinal products and their manufacturers.</p>
<p>E can be added if there is a need to differentiate between the manufactured dose form and the administrable dose form of the product; or a need to determine how much of the reconstituted solution for infusion was administered to the patient.</p>
</td>
</tr>
</tbody>
</table>
    <h3>ePI Type 3 (a and b)</h3>
    <p>ePI Type 3a can be used to support personalization use cases; particularly ones related to polypharmacy. For example:</p>
    <ul>
        <li>use the structured interaction data to confirm if a patient is likely to encounter drug:drug, drug:food, drug:lab, or drug:other interactions</li>
        <li>use the structured ingredient data to determine whether this medication contains anything the patient is allergic to.</li>
    </ul>
    <p>ePI Type 3b can be used to support the creation of machine-readable dosing instructions. For example, encoded way of saying take two 20 mg tablets once per day one for two weeks. This structured dosing data can be sent to a mobile device or eHealth app to provide a patient with automated notifications.</p>

<h3>ePI Type 4</h3>
<p>ePI Type 1 to 3 involves associating structured data to semi-structured narrative text. ePI Type 4 is different since all data is presented as discrete, structured data components. Narrative text is still present but only where needed and is always incorporated into the relevant discrete structured data component. For example:</p>
<ul>
    <li>Each individual indication has a corresponding ClinicalUseDefinition resource with SNOMED, ICD, MED-RT, or MedDRA encoding about the indication; the disease, symptom, or procedure; and comorbidity. The ClinicalUseDefinition resource also includes space for narrative text.</li>
    <li>Each undesirable effect has a corresponding ClinicalUseDefinition resource with the symptom, condition, effect, classification, and frequency of occurrence. As a result, there is no table of adverse event frequencies. Instead, there is now a series of data objects that contain the same information. Those data objects can be transformed and presented as a traditional table using a style sheet; or they can be presented in different formats if needed.</li>
</ul>
<h3>Recommendation</h3>
<p>As a first step, “Type 2 A, B, C and D (strength, ingredients)” is recommended for countries in the APAC region.</p> 
<p>It will help to enable advanced search functions for key information such as company, product name, license, ingredients, and strength. Also, the cross-border use case can be made possible, which provides patients the ability to get access to medicines they need while traveling. The use case for Electronic Health to better support Electronic Medical Records, ePrescription, and Allergies can also be started with the availability of these resources, even though it could be further enhanced when resource E is available.</p>
<p>If the markets allow adding more resources, “Type 2 A, B, C, D (strength, ingredients), and F” is recommended for countries in the APAC region, because the use cases for drug shortage and supply chain/distribution are also useful.</p> 
<p>Drug shortage is a common issue around the world, including countries in the APAC region. Also, it would be ideal to improve the supply chain and distribution within countries in the APAC region, since there are some scenarios for the shared pack.</p>
